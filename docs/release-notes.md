# Release notes

!!! note "This project is based on [github.com/squidfunk/mkdocs-material](https://github.com/squidfunk/mkdocs-material)"

## Upgrading

To upgrade Material to the latest version, use pip:

``` sh
pip install --upgrade mkdocs-unidata
```

To determine the currently installed version, use the following command:

``` sh
pip show mkdocs-unidata | grep -E ^Version
# Version 1.5.5
```

## Changelog

### 1.5.6 <small> _ April 14, 2017</small>

* Always base_url over config.site_url.
* Corner img base_url link.

### 1.5.5 <small> _ April 13, 2017</small>

* Updates for pypi release conflict with mkdocs-material.

### 1.5.4 <small> _ April 13, 2017</small>

* Using Unidata color scheme.
* Added corner logo support muted on small screens.
* Show site_name if page.title equals "Home"
* Initial release copied from https://github.com/squidfunk/mkdocs-material 1.5.4
