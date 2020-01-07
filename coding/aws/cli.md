# CLI

## Pagination
- control # of items in response
- 1k by default
- ```--page-size``` CLI still retrieve the full list, but performs larger number of API calls in the background and retrieves a smaller number of items with each call
- ```--max-items``` returns fewer items in the CLI output