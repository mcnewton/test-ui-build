# FreeRadius Wiki Theme

A modification of the default Antora docs theme.

## Development

From the ui theme dir run `npm run dev` or `gulp preview` to develop using sample content

## Deploying

From the ui theme dir run `gulp bundle` then `gulp bundle:pack` to build ui theme zip file.

Then to build the site using this theme with antora use this command from the root dir:

`antora site.yaml`

Sample `site.yaml file:

```
site:
  title: The FreeRADIUS project - Documentation
  url: https://www.freeradius.org/docs
content:
  sources:
  - url: https://github.com/FreeRADIUS/freeradius-server
    branches: HEAD
    start_path: doc/antora
asciidoc:
  attributes:
    attribute-missing: skip
ui:
  bundle:
    # Path to ui theme zip file:
    # url: https://gitlab.com/antora/antora-ui-default/-/jobs/artifacts/master/raw/build/ui-bundle.zip?job=bundle-stable
    url: ./antora-ui-default/build/ui-bundle.zip 
    # snapshot: true
  # supplemental_files: assets
  # default_layout: default
output:
  clean: true
  dir: ./prod-build
```

To stage the built site use `npm run stage` which is a shortcut for surge.

the site can then be previewed at [https://freeradius-wiki.surge.sh/freeradius-server/latest/](https://freeradius-wiki.surge.sh/freeradius-server/latest/)
