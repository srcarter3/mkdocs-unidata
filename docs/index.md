# Unidata Material Design Theme

> <small>This project is based on [github.com/squidfunk/mkdocs-material](https://github.com/squidfunk/mkdocs-material)</small>

## Beautiful project documentation

Material is a theme for [MkDocs][1], an excellent static site generator geared
towards project documentation. It is built using Google's [Material Design][2]
guidelines.

[![Material for MkDocs](images/material.png)](images/material.png)

  [1]: http://www.mkdocs.org
  [2]: https://www.google.com/design/spec/material-design

---

## Quick start

Install the latest version of Material with `pip`:

``` sh
pip install mkdocs-unidata
```

Append the following line to your project's `mkdocs.yml`:

``` yaml
theme: 'unidata'
```

Then run the following commands (create and source the python environment for running mkdocs locally)

``` sh
conda env create -f environment.yml
source activate mkdocs-unidata
```

Finally, serve the docs locally with the command

``` sh
mkdocs serve
```

and then load the page locally at [http://127.0.0.1:8000](http://127.0.0.1:8000)

---

## What to expect

* Responsive design and fluid layout for all kinds of screens and devices,
  designed to serve your project documentation in a user-friendly way with
  optimal readability.

* Easily customizable primary and accent color, fonts, favicon and logo;
  straight forward localization through theme extension; integrated with Google
  Analytics, Disqus and GitHub.

* Well-designed search interface accessible through hotkeys (<kbd>F</kbd> or
  <kbd>S</kbd>), intelligent grouping of search results, search term
  highlighting and lazy loading.

---

## Options

The Unidata Material theme adds extra variables for configuration via your
project's `mkdocs.yml` on top of what [MkDocs Material](http://squidfunk.github.io/mkdocs-material/getting-started/) provides.

### Color palette

The default color scheme attempts to match the existing [Unidata home page](http://www.unidata.ucar.edu) color scheme. Primary color is set to (<span style="font-weight:bold;color:#07778f;">#07778f</span>) in `unidata/assets/stylesheets/application-b1a1975878.css`.

### Corner logo

You can specify the top-left logo file in `mkdocs.yml`:

``` yaml
extra:
  corner_logo: 'images/corner_logo.png'
```

where the file exists in your repo as `docs/images/corner_logo.png`.
