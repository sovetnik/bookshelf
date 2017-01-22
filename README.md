Hanami Bookshelf (example application)

This repository is the result of going through Hanami's
[Getting Started](http://hanamirb.org/guides/getting-started/) guide.


## Usage
__Hanami__ supports Ruby (MRI) 2.3+

```bash
git clone git@github.com:sovetnik/bookshelf.git hanami-bookshelf
cd hanami-bookshelf
bundle install
bundle exec hanami db prepare
bundle exec hanami server # visit http://localhost:2300/books/new
```

## Test suite
```bash
rake test
```

If you see that test db not exist, run
```bash
 createdb bookshelf_test
```
