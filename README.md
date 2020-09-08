# Automate creating your ReactJs components

This script is built for personal use when I got frustrated creating components manually and was all the same work I had to do, I came across this sample script to boot my productivity creating ReactJs component through the shell script by one single command with the code snippet along with the scss file too.

## Usage
syntax
```shell
$ arc [COMPONENT NAME]
```
### example
```bash
$ arc Header
$ tree
.
└── src
    └── components
        └── Header
            ├── Header.scss
            └── Header.tsx
```

### example 2
```bash
$ arc Header/Navbar
$ tree
.
└── src
    └── components
        └── Header
            ├── Header.scss
            ├── Header.tsx
            └── Navbar
                ├── Navbar.scss
                └── Navbar.tsx

```


## New features need to be added
It works fine until now for me even if I try to create a nested component, at the moment I'm configured for `TypeScript` only. and hope to add `Javascript`, `CSS` as well. perhaps stop overwriting component
