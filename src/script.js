'use strict'

const { join } = require('path')
const { appendFile, readdir, readFile, rm } = require('fs').promises
const { parse } = JSON

const f = async () => {
  // __dirname is src/
  const outputFile = join(__dirname, '../tmp/tracking-data-raw.txt')
  await rm(outputFile, { force: true })
  const domains = join(__dirname, '../tmp/tracker-radar/domains')
  const countries = await readdir(domains)
  for (const country of countries) {
    const files = await readdir(join(domains, country))
    for (const file of files) {
      const data = await readFile(join(domains, country, file))
      const { resources } = parse(data)
      const tracking = resources.filter(({ fingerprinting }) => fingerprinting === 1)
      for (const { rule } of tracking) {
        const link = rule.replace(/\\/g, '').replace(/^www\./g, '')
        if (link.endsWith('.js')) await appendFile(outputFile, link + '\n')
      }
    }
  }
}

f()
