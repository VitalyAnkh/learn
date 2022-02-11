from time import sleep
import requests

headers = {
    "Accept": "application/vnd.github.v3+json",
    "Authorization": "token xxxxx",  # 填入token
    "X-OAuth-Scopes": "repo",
}

with open("./repos.txt", "r", encoding="utf-8") as f:
    data = f.readlines()

url = "https://api.github.com/repos/{}/{}"
urls = []
for line in data:
    name, repo = line.strip().split("/")
    urls.append(url.format(name, repo))

for url in urls:
    requests.delete(url=url, headers=headers)
    print("{} is deleted".format(url))
