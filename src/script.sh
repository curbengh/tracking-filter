#!/bin/sh

set -efux -o pipefail

mkdir -p "tmp/"
cd "tmp/"


# Prepare datasets
rm -rf "tracker-radar/"
git clone --depth 1 "https://github.com/duckduckgo/tracker-radar" "tracker-radar/"

# Extract tracking links
node "../src/script.js"

# Cleanup
cat "tracking-data-raw.txt" | \
# exclude false positives
grep -F -vf "../src/exclude.txt" | \
sort -u > "tracking-url.txt"


CURRENT_TIME="$(date -R -u)"
FIRST_LINE="! Title: Tracking JS Blocklist"
SECOND_LINE="! Updated: $CURRENT_TIME"
THIRD_LINE="! Expires: 7 day (update frequency)"
FOURTH_LINE="! Homepage: https://gitlab.com/curben/tracking-filter"
FIFTH_LINE="! License: https://gitlab.com/curben/tracking-filter#license"
SIXTH_LINE="! Source: https://github.com/duckduckgo/tracker-radar"
COMMENT_UBO="$FIRST_LINE\n$SECOND_LINE\n$THIRD_LINE\n$FOURTH_LINE\n$FIFTH_LINE\n$SIXTH_LINE"

# Original data
cat "tracking-url.txt" | \
sed '1 i\'"$COMMENT_UBO"'' | \
sed "s/^!/#/g" > "../dist/tracking-data.txt"

# uBO & Adguard
cat "tracking-url.txt" | \
sed "s/^/||/g" | \
sed "s/$/\$all/g" | \
sed '1 i\'"$COMMENT_UBO"'' > "../dist/tracking-filter.txt"

# Vivaldi
cat "tracking-url.txt" | \
sed "s/^/||/g" | \
sed "s/$/\$document/g" | \
sed '1 i\'"$COMMENT_UBO"'' | \
sed "1s/Blocklist/Blocklist (Vivaldi)/" > "../dist/tracking-filter-vivaldi.txt"

## This took more than 10 minutes on my not-so-sham laptop which is equivalent of *forever* on puny CI/CD VM.
# # Snort & Suricata
# COMMENT_HASH=$(printf "$COMMENT_UBO" | sed "s/^!/#/g" | awk '{printf "%s\\n", $0}' | head -c -2)

# ## Temporarily disable command print
# set +x

# rm -f "../dist/tracking-filter-snort2.rules" \
#   "../dist/tracking-filter-snort3.rules" \
#   "../dist/tracking-filter-suricata.rules"

# SID="400000001"

# while read URL; do
#   HOST=$(echo "$URL" | cut -d"/" -f1)
#   URI=$(echo "$URL" | sed -e "s/^$HOST//" -e "s/;/\\\;/g")

#   # Snort2 only supports <=2047 characters of `content`
#   SN_RULE="alert tcp \$HOME_NET any -> \$EXTERNAL_NET [80,443] (msg:\"tracking-filter tracking link detected\"; flow:established,from_client; content:\"GET\"; http_method; content:\"$(echo $URI | cut -c -2047)\"; http_uri; nocase; content:\"$HOST\"; content:\"Host\"; http_header; classtype:attempted-recon; sid:$SID; rev:1;)"

#   SN3_RULE="alert http \$HOME_NET any -> \$EXTERNAL_NET any (msg:\"tracking-filter tracking link detected\"; http_header:field host; content:\"$HOST\",nocase; http_uri; content:\"$URI\",nocase; classtype:attempted-recon; sid:$SID; rev:1;)"

#   SR_RULE="alert http \$HOME_NET any -> \$EXTERNAL_NET any (msg:\"tracking-filter tracking link detected\"; flow:established,from_client; http.method; content:\"GET\"; http.uri; content:\"$URI\"; endswith; nocase; http.host; content:\"$HOST\"; classtype:attempted-recon; sid:$SID; rev:1;)"

#   echo "$SN_RULE" >> "../dist/tracking-filter-snort2.rules"
#   echo "$SN3_RULE" >> "../dist/tracking-filter-snort3.rules"
#   echo "$SR_RULE" >> "../dist/tracking-filter-suricata.rules"

#   SID=$(( $SID + 1 ))
# done < "tracking-url.txt"

# ## Re-enable command print
# set -x

# sed -i '1 i\'"$COMMENT_HASH"'' "../dist/tracking-filter-snort2.rules"
# sed -i "1s/Blocklist/Snort2 Ruleset/" "../dist/tracking-filter-snort2.rules"

# sed -i '1 i\'"$COMMENT_HASH"'' "../dist/tracking-filter-snort3.rules"
# sed -i "1s/Blocklist/Snort3 Ruleset/" "../dist/tracking-filter-snort3.rules"

# sed -i '1 i\'"$COMMENT_HASH"'' "../dist/tracking-filter-suricata.rules"
# sed -i "1s/Blocklist/Suricata Ruleset/" "../dist/tracking-filter-suricata.rules"


## Clean-up artifacts
rm -rf "tracker-radar/"


cd ../
