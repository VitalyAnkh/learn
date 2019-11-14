
from selenium import webdriver
from selenium.webdriver.firefox.firefox_binary import FirefoxBinary
firefox_dev_binary = FirefoxBinary(
    '/usr/bin/firefox-developer-edition')
browser = webdriver.Firefox(firefox_binary=firefox_dev_binary)

browser.get("http:localhost:8000")
assert "Django" in browser.title
