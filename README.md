# Tracking JS Blocklist

- Formats
  - [URL-based](#url-based)
  - [URL-based (Vivaldi)](#url-based-vivaldi)
  - [Plain URL](#plain-url)
- [Compressed version](#compressed-version)
- [See also](#see-also)
- [FAQ and Guides](#faq-and-guides)
- [CI Variables](#ci-variables)
- [License](#license)

A blocklist of javascript links (or webpages with javascript) that perform [browser fingerprinting](https://en.wikipedia.org/wiki/Web_tracking). The original data set is collected by DuckDuckGo's [Tracker Radar](https://github.com/duckduckgo/tracker-radar) project. Blocklist is updated on the first day of the month.

The list contains **all** the links that Tracker Radar detected to have browser fingerprinting, there is no further processing to remove false positive.

| Client                                                   | mirror 1                                                                            | mirror 2                                                                      | mirror 3                                                                       | mirror 4                                                                             | mirror 5                                                             | mirror 6                                                              |
| -------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | -------------------------------------------------------------------- | --------------------------------------------------------------------- |
| [uBlock Origin](#url-based), AdGuard (browser extension) | [link](https://malware-filter.gitlab.io/malware-filter/tracking-filter.txt)         | [link](https://curbengh.github.io/malware-filter/tracking-filter.txt)         | [link](https://curbengh.github.io/tracking-filter/tracking-filter.txt)         | [link](https://malware-filter.gitlab.io/tracking-filter/tracking-filter.txt)         | [link](https://malware-filter.pages.dev/tracking-filter.txt)         | [link](https://tracking-filter.pages.dev/tracking-filter.txt)         |
| [Vivaldi](#url-based-vivaldi)                            | [link](https://malware-filter.gitlab.io/malware-filter/tracking-filter-vivaldi.txt) | [link](https://curbengh.github.io/malware-filter/tracking-filter-vivaldi.txt) | [link](https://curbengh.github.io/tracking-filter/tracking-filter-vivaldi.txt) | [link](https://malware-filter.gitlab.io/tracking-filter/tracking-filter-vivaldi.txt) | [link](https://malware-filter.pages.dev/tracking-filter-vivaldi.txt) | [link](https://tracking-filter.pages.dev/tracking-filter-vivaldi.txt) |
| [Plain URL](#plain-url)                                  | [link](https://malware-filter.gitlab.io/malware-filter/tracking-data.txt)           | [link](https://curbengh.github.io/malware-filter/tracking-data.txt)           | [link](https://curbengh.github.io/tracking-filter/tracking-data.txt)           | [link](https://malware-filter.gitlab.io/tracking-filter/tracking-data.txt)           | [link](https://malware-filter.pages.dev/tracking-data.txt)           | [link](https://tracking-filter.pages.dev/tracking-data.txt)           |

For other programs, see [Compatibility](https://gitlab.com/malware-filter/malware-filter/wikis/compatibility) page in the wiki.

Check out my other filters:

- [urlhaus-filter](https://gitlab.com/malware-filter/urlhaus-filter)
- [phishing-filter](https://gitlab.com/malware-filter/phishing-filter)
- [pup-filter](https://gitlab.com/malware-filter/pup-filter)
- [vn-badsite-filter](https://gitlab.com/malware-filter/vn-badsite-filter)

## URL-based

Import the URL into uBO/AdGuard to subscribe.

## URL-based (Vivaldi)

_Requires Vivaldi Desktop/Android 3.3+, blocking level must be at least "Block Trackers"_

Import the URL into Vivaldi's **Tracker Blocking Sources** to subscribe.

## Plain URL

A list of URLs without any filter syntax.

## Compressed version

All filters are also available as gzip- and brotli-compressed.

Gzip: https://malware-filter.gitlab.io/malware-filter/tracking-filter.txt.gz
Brotli: https://malware-filter.gitlab.io/malware-filter/tracking-filter.txt.br

## See also

- [DuckDuckGo Browser Extension](https://github.com/duckduckgo/duckduckgo-privacy-extension) supports more advanced features like script surrogate and CNAME uncloak.

- [Blokada version](https://blokada.org/blocklists/ddgtrackerradar/standard/hosts.txt) can block more tracking domains but with more false positives. [More details](https://community.blokada.org/t/introducing-duckduckgo-tracker-radar-to-blokada/469)

## FAQ and Guides

See [wiki](https://gitlab.com/malware-filter/malware-filter/-/wikis/home)

## CI Variables

Optional variables:

- `CLOUDFLARE_BUILD_HOOK`: Deploy to Cloudflare Pages.
- `NETLIFY_SITE_ID`: Deploy to Netlify.

## Repository Mirrors

https://gitlab.com/curben/blog#repository-mirrors

## License

[src/](src/): [Creative Commons Zero v1.0 Universal](LICENSE-CC0.md) and [MIT License](LICENSE)

filters: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)

DuckDuckGo Tracker Radar data: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)

This repository is not endorsed by DuckDuckGo.
