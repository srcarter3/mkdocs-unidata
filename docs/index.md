# Unidata Material Design Theme
<small>
> this project is based on [github.com/squidfunk/mkdocs-material](https://github.com/squidfunk/mkdocs-material)
</small>

---

## Standardized project documentation


Material is a theme for [MkDocs][1], a static site generator geared
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

Add the following line to your `mkdocs.yml`:

``` yaml
theme: 'unidata'
```

If you cloned Material from GitHub:

``` yaml
theme_dir: 'mkdocs-unidata/unidata'
```

MkDocs includes a development server, so you can review your changes as you go.
The development server can be started with the following command:

``` sh
mkdocs serve
```

Now you can point your browser to [localhost:8000][9] and the Material theme
should be visible. From here on, you can start writing your documentation, or
read on and customize the theme through some options.

  [9]: http://localhost:8000

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

For detailed instructions see the [getting started guide][3].

  [3]: getting-started.md

