from urllib.parse import urlparse, parse_qs, urlencode

def remove_param_values(url):
    parsed_url = urlparse(url)
    query_params = parse_qs(parsed_url.query)
    
    empty_params = {key: '' for key in query_params}
    
    new_query = urlencode(empty_params, doseq=True)
    new_url = parsed_url._replace(query=new_query)
    
    return new_url.geturl()

with open('urls_final.txt', 'r') as file:
    urls = file.readlines()

for url in urls:
    cleaned_url = remove_param_values(url.strip())
    print(cleaned_url)
