'use strict'

const { join } = require('path')
const { appendFile, readdir, readFile, writeFile } = require('fs').promises
const { parse } = JSON

const f = async () => {
  // __dirname is src/
  const outputFile = join(__dirname, '../dist/tracking-data.txt')
  await writeFile(outputFile, `# Title: Tracking URL
# Updated: ${new Date().toUTCString()}
# Repo: https://gitlab.com/curben/tracking-data
# License: https://creativecommons.org/licenses/by-nc-sa/4.0/
# Source: https://github.com/duckduckgo/tracker-radar\n`)
  const domains = join(__dirname, '../tmp/tracker-radar/domains')
  const countries = await readdir(domains)
  for (const country of countries) {
    const files = await readdir(join(domains, country))
    for (const file of files) {
      const data = await readFile(join(domains, country, file))
      const { resources } = parse(data)
      const tracking = resources.filter(({ fingerprinting }) => fingerprinting === 1)
      for (const { rule } of tracking) {
        const link = rule.replace(/\\/g, '') + '\n'
        await appendFile(outputFile, link)
      }
    }
  }
}

f()
