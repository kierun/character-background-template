# character background template

LaTeX template for ttRPG characters

## Usage

Clone the repository, rename a few files, and start editing… More to come soon.

## Development

### Pre commit hooks

We use [pre-commit](https://pre-commit.com/). Please install it and use it.

```bash
pipx install gitlint                        # Or use pip, or whatever package management you have.
pipx install pre-commit                     # Or use pip, or whatever package management you have.
pre-commit install                          # Initialisation, not shocker there.
pre-commit install --hook-type commit-msg   # This is for gitlint!
pre-commit autoupdate                       # To update pre-commit hooks.
```

### CI/CD

… To be done soon.

## Styles

We can have several styles, in both A4 and a5 variants.

### Modern

![Modern style](showcase/modern.png?raw=true "Modern style")
![Modern style, A5](showcase/modern-a5.png?raw=true "Modern style, A5 paper")

### Fantasy

![Fantasy style](showcase/fantasy.png?raw=true "Fantasy style")
![Fantasy style, A5](showcase/fantasy-a5.png?raw=true "Fantasy style, A5 paper")

### Eldritch

![Eldritch style](showcase/eldritch.png?raw=true "Eldritch style")
![Eldritch style, A5](showcase/eldritch-a5.png?raw=true "Eldritch style, A5 paper")
