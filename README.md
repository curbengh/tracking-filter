# Tracking JS Blocklist

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

- https://cdn.statically.io/gl/curben/phishing-filter/master/dist/tracking-filter.txt
- https://glcdn.githack.com/curben/phishing-filter/raw/master/dist/tracking-filter.txt
- https://raw.githubusercontent.com/curbengh/phishing-filter/master/dist/tracking-filter.txt
- https://cdn.statically.io/gh/curbengh/phishing-filter/master/dist/tracking-filter.txt
- https://gitcdn.xyz/repo/curbengh/phishing-filter/master/dist/tracking-filter.txt
- https://cdn.jsdelivr.net/gh/curbengh/phishing-filter/dist/tracking-filter.txt

</details>

## URL-based (Vivaldi)

_Requires Vivaldi Desktop/Android 3.3+, blocking level must be at least "Block Trackers"_

Import the following URL into Vivaldi's **Tracker Blocking Sources** to subscribe:

- https://curben.gitlab.io/malware-filter/tracking-filter-vivaldi.txt

<details>
<summary>Mirrors</summary>

- https://cdn.statically.io/gl/curben/tracking-filter/master/dist/tracking-filter-vivaldi.txt
- https://glcdn.githack.com/curben/tracking-filter/raw/master/dist/tracking-filter-vivaldi.txt
- https://raw.githubusercontent.com/curbengh/tracking-filter/master/dist/tracking-filter-vivaldi.txt
- https://cdn.statically.io/gh/curbengh/tracking-filter/master/dist/tracking-filter-vivaldi.txt
- https://gitcdn.xyz/repo/curbengh/tracking-filter/master/dist/tracking-filter-vivaldi.txt
- https://cdn.jsdelivr.net/gh/curbengh/tracking-filter/dist/tracking-filter-vivaldi.txt

</details>

## Plain URL

A list of URLs without any filter syntax.

- https://curben.gitlab.io/malware-filter/tracking-data.txt

<details>
<summary>Mirrors</summary>

- https://cdn.statically.io/gl/curben/tracking-filter/master/dist/tracking-data.txt
- https://glcdn.githack.com/curben/tracking-filter/raw/master/dist/tracking-data.txt
- https://raw.githubusercontent.com/curbengh/tracking-filter/master/dist/tracking-data.txt
- https://cdn.statically.io/gh/curbengh/tracking-filter/master/dist/tracking-data.txt
- https://gitcdn.xyz/repo/curbengh/tracking-filter/master/dist/tracking-data.txt
- https://cdn.jsdelivr.net/gh/curbengh/tracking-filter/dist/tracking-data.txt

</details>

## License

[src/](src/): [CC0 1.0](LICENSE.md)

[badge.sh](src/badge.sh) & [.gitlab/](.gitlab/) contain badges that are licensed by [Shields.io](https://shields.io) under [CC0 1.0](LICENSE.md)

[dist/](dist/): [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)

DuckDuckGo Tracker Radar data: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)

This repository is not endorsed by DuckDuckGo.
