# Getting Started

## Install Unidata Theme

#### using pip


``` sh
pip install mkdocs-unidata
```

#### clone from GitHub

Material can also be used without a system-wide installation by cloning the
repository into a subfolder of your project's root directory:

``` sh
git clone https://github.com/Unidata/mkdocs-unidata.git
```

This is especially useful if you want to extend the theme and override some
parts of the theme. The theme will reside in the folder
`mkdocs-unidata/unidata`.

### Troubleshooting

!!! warning "Installation on macOS"

    When you're running the pre-installed version of Python on macOS, `pip`
    tries to install packages in a folder for which your user might not have
    the adequate permissions. There are two possible solutions for this:

    1. **Installing in user space** (recommended): Provide the `--user` flag
      to the install command and `pip` will install the package in a user-site
      location. This is the recommended way.

    2. **Switching to a homebrewed Python**: Upgrade your Python installation
      to a self-contained solution by installing Python with Homebrew. This
      should eliminate a lot of problems you may be having with `pip`.

!!! failure "Error: unrecognized theme 'unidata'"

    If you run into this error, the most common reason is that you installed
    MkDocs through some package manager (e.g. Homebrew or `apt-get`) and the
    Material theme through `pip`, so both packages end up in different
    locations. MkDocs only checks it's install location for themes.

## Usage

In order to enable the Material theme just add one of the following lines to
your `mkdocs.yml`. If you installed Material using pip:

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

## Options

The Unidata Material theme adds some extra variables for configuration via your
project's `mkdocs.yml`. See the following sections for all available options.

### Color palette

The default color scheme attempts to match the existing [Unidata home page](http://www.unidata.ucar.edu) color scheme. Primary color is set to (<span style="font-weight:bold;color:#07778f;">#07778f</span>) in `unidata/assets/stylesheets/application-b1a1975878.css`.

### Corner logo

You can specify the top-left logo file in `mkdocs.yml`:

``` yaml
extra:
  corner_logo: 'images/corner_logo.png'
```

where the file exists in your repo as `docs/images/corner_logo.png`.


### Changing the font family

Material uses the [Roboto font family][12] by default, specifically the regular
sans-serif type for text and the `monospaced` type for code. Both fonts are
loaded from [Google Fonts][13] and can easily be changed to other fonts, like
for example the [Ubuntu font family][14]:

``` yaml
extra:
  font:
    text: 'Ubuntu'
    code: 'Ubuntu Mono'
```

The text font will be loaded in font-weights 400 and **700**, the `monospaced`
font in regular weight. If you want to load fonts from other destinations or
don't want to use the Google Fonts loading magic, just set `font` to `false`:

``` yaml
extra:
  font: false
```

  [12]: https://fonts.google.com/specimen/Roboto
  [13]: https://fonts.google.com
  [14]: https://fonts.google.com/specimen/Ubuntu

### Adding a source repository

To include a link to the repository of your project within your documentation,
set the following variables via your project's `mkdocs.yml`:

``` yaml
repo_name: 'my-github-handle/my-project'
repo_url: 'https://github.com/my-github-handle/my-project'
```

Material will render the name of the repository next to the search bar on
big screens and as part of the main navigation drawer on smaller screen sizes.
Furthermore, if `repo_url` points to a GitHub, BitBucket or GitLab repository,
the respective service logo will be shown next to the name of the repository.
Additionally, for GitHub, the number of stars and forks is shown.

!!! warning "Why is there an edit button at the top of every article?"

    If the `repo_url` is set to a GitHub or BitBucket repository, and the
    `repo_name` is set to *GitHub* or *BitBucket* (implied by default), an
    edit button will appear at the top of every article. This is the automatic
    behavior that MkDocs implements. See the [MkDocs documentation][15] on more
    guidance regarding the `edit_uri` attribute, which defines whether the edit
    button is show or not.

  [15]: http://www.mkdocs.org/user-guide/configuration/#edit_uri

### Adding a logo

Material makes it easy to add your logo. Your logo should have rectangular
shape with a minimum resolution of 128x128, leave some room towards the edges
and be composed of high contrast areas on a transparent ground, as it will be
placed on the colored header bar and drawer. Simply create the folder
`docs/images`, add your logo and embed it with:

``` yaml
extra:
  logo: 'images/logo.svg'
```

### Adding social links

If you want to link your social accounts, the Material theme provides an easy
way for doing this in the footer of the documentation using the automatically
included [FontAwesome][16] webfont. The syntax is simple – the `type` must
denote the name of the social service, e.g. `github`, `twitter` or `linkedin`
and the `link` must contain the URL you want to link to:

``` yaml
extra:
  social:
    - type: 'github'
      link: 'https://github.com/Unidata'
    - type: 'twitter'
      link: 'https://twitter.com/Unidata'
    - type: 'faceboook'
      link: 'https://facebook.com/Unidata'
```

The links are generated in order and the `type` of the links must match the
name of the FontAwesome glyph. The `fa` is automatically added, so `github`
will result in `fa fa-github`.

  [16]: http://fontawesome.io/icons/

### Google Analytics integration

MkDocs makes it easy to integrate site tracking with Google Analytics.
Besides basic tracking, clicks on all outgoing links can be tracked as well as
how site search is used. Tracking can be activated in your project's
`mkdocs.yml`:

``` yaml
google_analytics:
  - 'UA-XXXXXXXX-X'
  - 'auto'
```

### Disqus integation

Material for MkDocs is integrated with [Disqus][17], so if you want to add a
comments section to your documentation set the shortname of your Disqus project
in your `mkdocs.yml`:

``` yaml
extra:
  disqus: 'your-disqus-shortname'
```

A new entry at the bottom of the table of contents is generated that is linking
to the comments section. The necessary JavaScript is automatically included.

  [17]: https://disqus.com

### Localization

Material for MkDocs supports internationalization (i18n). In order to translate
the labels (e.g. *Previous* and *Next* in the footer), you can override the
file `partials/language.html` and provide your own translations inside the
macro `t`:

``` jinja
{% macro t(key) %}{{ {
  "edit.link.title": "Edit this page",
  "footer.previous": "Previous",
  "footer.next": "Next",
  "meta.comments": "Comments",
  "meta.source": "Source",
  "search.placeholder": "Search",
  "search.result.placeholder": "Type to start searching",
  "search.result.none": "No matching documents",
  "search.result.one": "1 matching document",
  "search.result.other": "# matching documents",
  "source.link.title": "Go to repository",
  "toc.title": "Table of contents"
}[key] }}{% endmacro %}
```

Just copy the file from the original theme and make your adjustments. See the
section on [overriding partials][18] and the general guide on
[theme extension][19] in the customization guide.

  [18]: customization.md#overriding-partials
  [19]: customization.md#extending-the-theme

### Tabs

From version 1.1.0 on, Material supports another layer on top of the main
navigation for larger screens in the form of tabs. This is especially useful
for larger documentation projects with a few top-level sections. Tabs can be
enabled by setting the respective feature flag to true:

``` yaml
extra:
  feature:
    tabs: true
```

### More advanced customization

If you want to change the general appearance of the Material theme, see
[this article][20] for more information on advanced customization.

  [20]: customization.md

## Extensions

MkDocs supports several [Markdown extensions][21]. The following extensions
are not enabled by default (see the link for which are enabled by default)
but highly recommended, so they should be switched on at all times:

``` yaml
markdown_extensions:
  - admonition
  - codehilite(guess_lang=false)
  - toc(permalink=true)
```

For more information, see the following list of extensions supported by the
Material theme including more information regarding installation and usage:

* [Admonition][22]
* [Codehilite][23]
* [Footnotes][24]
* [Metadata][25]
* [Permalinks][26]
* [PyMdown Extensions][27]

  [21]: http://www.mkdocs.org/user-guide/writing-your-docs/#markdown-extensions
  [22]: extensions/admonition.md
  [23]: extensions/codehilite.md
  [24]: extensions/footnotes.md
  [25]: extensions/metadata.md
  [26]: extensions/permalinks.md
  [27]: extensions/pymdown.md

## Full example

Below is the full example configuration for this project's `mkdocs.yml`:

``` yaml
# Project information
site_name: Unidata Material Design Theme
site_description: A Custom Material Design Theme for MkDocs
site_author: Michael James
site_url: http://unidata.github.io/mkdocs-unidata/
site_favicon: 'assets/images/favicon.ico'
# Repository
repo_name: Unidata/mkdocs-unidata
repo_url: https://github.com/Unidata/mkdocs-unidata

# Theme directory
theme_dir: unidata

# Options
extra:
  corner_logo: 'images/corner_logo.png'
  feature:
    tabs: false
  social:
    - type: globe
      link: http://www.unidata.ucar.edu
    - type: github-alt
      link: https://github.com/Unidata
    - type: twitter
      link: https://twitter.com/Unidata
    - type: facebook
      link: https://facebook.com/Unidata

# Extensions
markdown_extensions:
  - markdown.extensions.admonition
  - markdown.extensions.codehilite(guess_lang=false)
  - markdown.extensions.def_list
  - markdown.extensions.footnotes
  - markdown.extensions.meta
  - markdown.extensions.toc(permalink=true)
  - pymdownx.arithmatex
  - pymdownx.betterem(smart_enable=all)
  - pymdownx.caret
  - pymdownx.critic
  - pymdownx.emoji:
      emoji_generator: !!python/name:pymdownx.emoji.to_svg
  - pymdownx.inlinehilite
  - pymdownx.magiclink
  - pymdownx.mark
  - pymdownx.smartsymbols
  - pymdownx.superfences
  - pymdownx.tasklist(custom_checkbox=true)
  - pymdownx.tilde

# Page tree
pages:
  - Home: index.md
  - Getting started: getting-started.md
  - Extensions:
    - Admonition: extensions/admonition.md
    - CodeHilite: extensions/codehilite.md
    - Footnotes: extensions/footnotes.md
    - Metadata: extensions/metadata.md
    - Permalinks: extensions/permalinks.md
    - PyMdown: extensions/pymdown.md
  - Specimen: specimen.md
  - Customization: customization.md
  - Release notes: release-notes.md
  - Contributing: contributing.md
  - License: license.md

# Google Analytics
google_analytics:
  - !!python/object/apply:os.getenv ["GOOGLE_ANALYTICS_KEY"]
  - auto
```
