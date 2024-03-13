for y in $(cat subdomains_final); do gau "$y" | grep "=" | sort | uniq | httpx_bug -silent >> urls; done;
for y in $(cat subdomains_final); do katana -u "$y" -f qurl -d 10 -silent >> urls; done;
cat urls | sort | uniq | uro >> urls_final
rm urls
