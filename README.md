# wordlist

Collection of wordlists

Wordlist which can be useful during the testing.

Structure:
- attacks - payloads for triggering weaknesses
- general - general usage wordlists, common words
- testfile - general test files
- passwords - most common passwords
- usernames - most common usernames
- webshell - most common webshells

Convention for easy to change parameters:
- {SERVER} - defines a server by IP/name like example.com
- {FILE}  - defines filename

Scripts:
- web.sh - generate big list from everything which is in webdiscovery directory, additionally create a dir and filename version
- subdomain.sh - generate big list from everything which is in subdomain directory