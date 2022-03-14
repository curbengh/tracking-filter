# Tracking JS Blocklist

> Edit 2021/01/08: the default branch has changed to **main**.

A blocklist of javascript links (or webpages with javascript) that perform [browser fingerprinting](https://en.wikipedia.org/wiki/Web_tracking). The original data set is collected by DuckDuckGo's [Tracker Radar](https://github.com/duckduckgo/tracker-radar) project. Blocklist is updated on the first day of the month.

The list contains **all** the links that Tracker Radar detected to have browser fingerprinting, there is no further processing to remove false positive.

- uBlock Origin (uBO) -> [URL-based](#url-based) section
- AdGuard browser extension -> [URL-based](#url-based) section
- Vivaldi -> [URL-based (Vivaldi)](#url-based-vivaldi) section
- [Plain URL](#plain-url) - original links without filter syntax

Check out my other filters:
- [urlhaus-filter](https://gitlab.com/curben/urlhaus-filter)
- [phishing-filter](https://gitlab.com/curben/phishing-filter)
- [pup-filter](https://gitlab.com/curben/pup-filter)

## URL-based

Import the following URL into uBO/AdGuard to subscribe:

- https://curben.gitlab.io/malware-filter/tracking-filter.txt

<details>
<summary>Mirrors</summary>

- https://curbengh.github.io/malware-filter/tracking-filter.txt
- https://curbengh.github.io/tracking-filter/tracking-filter.txt
- https://curben.gitlab.io/tracking-filter/tracking-filter.txt
- https://malware-filter.pages.dev/tracking-filter.txt
- https://tracking-filter.pages.dev/tracking-filter.txt

</details>

## URL-based (Vivaldi)

_Requires Vivaldi Desktop/Android 3.3+, blocking level must be at least "Block Trackers"_

Import the following URL into Vivaldi's **Tracker Blocking Sources** to subscribe:

- https://curben.gitlab.io/malware-filter/tracking-filter-vivaldi.txt

<details>
<summary>Mirrors</summary>

- https://curbengh.github.io/malware-filter/tracking-filter-vivaldi.txt
- https://curbengh.github.io/tracking-filter/tracking-filter-vivaldi.txt
- https://curben.gitlab.io/tracking-filter/tracking-filter-vivaldi.txt
- https://malware-filter.pages.dev/tracking-filter-vivaldi.txt
- https://tracking-filter.pages.dev/tracking-filter-vivaldi.txt

</details>

## Plain URL

A list of URLs without any filter syntax.

- https://curben.gitlab.io/malware-filter/tracking-data.txt

<details>
<summary>Mirrors</summary>

- https://curbengh.github.io/malware-filter/tracking-data.txt
- https://curbengh.github.io/tracking-filter/tracking-data.txt
- https://curben.gitlab.io/tracking-filter/tracking-data.txt
- https://malware-filter.pages.dev/tracking-data.txt
- https://tracking-filter.pages.dev/tracking-data.txt

</details>

## See also

- [Blokada version](https://blokada.org/blocklists/ddgtrackerradar/standard/hosts.txt) can block more tracking domains but with more false positives. [More details](https://community.blokada.org/t/introducing-duckduckgo-tracker-radar-to-blokada/469)

## FAQ and Guides

See [wiki](https://gitlab.com/curben/malware-filter/-/wikis/home)

## License

[src/](src/): [CC0 1.0](LICENSE.md)

filters: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)

DuckDuckGo Tracker Radar data: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)

This repository is not endorsed by DuckDuckGo.
