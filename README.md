# url-proxy

* http://localhost:8080/example.com
* http://localhost:8080/http://example.com
* http://localhost:8080/https://example.com
* http://localhost:8080/http://example.com/abc?q=xyz

## Testing
### manual
```
docker build -t miroka96/url-proxy . && docker run --rm -p 8080:80 miroka96/url-proxy
```
After that, perform manual testing in a webbrowser: http://localhost:8080/[url]

## Issues

* removal of base href leaves a slightly broken html (this is necessary to invalidate this statement, because otherwise a regex would be needed for replacement, which is not supportet by nginx sub_filter, but maybe by other substitution plugins)
* some replacements have unwanted side effects, which make it impossible to use google.com or yahoo.com, because some substrings in javascript code match the same patterns as relative URLs and so get replaced too... this breaks further loading of dependencies. It could be fixed by manually specifying all prefixed of relative URLs that should be substituted, but this is hard work
