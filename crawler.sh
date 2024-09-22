for y in $(cat subdomains_final); do gau "$y" | grep "=" | sort | uniq | httpx_bug -silent >> urls; done;
for y in $(cat subdomains_final); do cat subdomains_final | hakrawler -t 16 -d 100 | sort | uniq | grep "$y" | grep "=" >> urls; done;
cat urls | grep "?" | sort | uniq | uro >> urls_final
rm urls
