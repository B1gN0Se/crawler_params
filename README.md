## crawler  

Tested on **Kali Linux**  

**Description:** The install.sh file will install the necessary tools to perform subdomain crawling. Always remember that this does not replace manual crawling; however, it is a great option for automation. Follow the steps below to install the tools and perform the crawling.

**Steps:**
```sh
git clone https://github.com/thpereira1/crawler.git
```
```sh
cd crawler
```
```sh
chmod +x install.sh && ./install.sh
```
Now that all the tools have been installed, create a wordlist with the subdomains named 'subdomains_final' and execute the following steps:  

```sh
for y in $(cat subdomains_final); do gau "$y" | grep "=" | sort | uniq | httpx_bug -silent >> urls; done;
```
```sh
for y in $(cat subdomains_final); do katana -silent -d 5 -u "$y" | grep "=" >> urls; done;
```
```sh
cat urls | sort | uniq | uro >> urls_final
```
```sh
rm urls
```
