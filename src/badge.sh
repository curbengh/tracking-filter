#!/bin/sh

set -efux -o pipefail

## Set status badge

successBadge='<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="102" height="20"><linearGradient id="b" x2="0" y2="100%"><stop offset="0" stop-color="#bbb" stop-opacity=".1"/><stop offset="1" stop-opacity=".1"/></linearGradient><clipPath id="a"><rect width="102" height="20" rx="3" fill="#fff"/></clipPath><g clip-path="url(#a)"><path fill="#555" d="M0 0h53v20H0z"/><path fill="#4c1" d="M53 0h49v20H53z"/><path fill="url(#b)" d="M0 0h102v20H0z"/></g><g fill="#fff" text-anchor="middle" font-family="DejaVu Sans,Verdana,Geneva,sans-serif" font-size="110"> <text x="275" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="430">pipeline</text><text x="275" y="140" transform="scale(.1)" textLength="430">pipeline</text><text x="765" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="390">passed</text><text x="765" y="140" transform="scale(.1)" textLength="390">passed</text></g> </svg>'

failedBadge='<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="92" height="20"><linearGradient id="b" x2="0" y2="100%"><stop offset="0" stop-color="#bbb" stop-opacity=".1"/><stop offset="1" stop-opacity=".1"/></linearGradient><clipPath id="a"><rect width="92" height="20" rx="3" fill="#fff"/></clipPath><g clip-path="url(#a)"><path fill="#555" d="M0 0h53v20H0z"/><path fill="#e05d44" d="M53 0h39v20H53z"/><path fill="url(#b)" d="M0 0h92v20H0z"/></g><g fill="#fff" text-anchor="middle" font-family="DejaVu Sans,Verdana,Geneva,sans-serif" font-size="110"> <text x="275" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="430">pipeline</text><text x="275" y="140" transform="scale(.1)" textLength="430">pipeline</text><text x="715" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="290">failed</text><text x="715" y="140" transform="scale(.1)" textLength="290">failed</text></g> </svg>'

if [ "$1" = "success" ]; then
  echo "$successBadge" > ".gitlab/status.svg"
elif [ "$1" = "failed" ]; then
  echo "$failedBadge" > ".gitlab/status.svg"
fi
