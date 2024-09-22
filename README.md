## crawler_params  

Tested on **Kali Linux**  

**Description:** The install.sh file will install the necessary tools to perform subdomain crawling. Always remember that this does not replace manual crawling; however, it is a great option for automation. Follow the steps below to install the tools and perform the crawling.

**Steps:**
```sh
git clone https://github.com/B1gN0Se/crawler_params.git
```
```sh
cd crawler
```
```sh
chmod +x install.sh && ./install.sh
```
Now that all the tools have been installed, create a wordlist with the subdomains named 'subdomains_final' and execute the following steps:  

```sh
chmod +x crawler.sh && ./crawler.sh
```
