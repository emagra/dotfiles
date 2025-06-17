# Shell Configuration Files

This project is a collection of personal shell configuration files for customizing Bash and Zsh shell environments.

## Files

* **.bash_aliases**: Contains custom aliases for the Bash shell.
* **.bash_functions**: Holds custom functions for the Bash shell.
* **.bashrc**: The main configuration file for Bash, sourced for interactive non-login shells.
* **.zshrc**: The main configuration file for Zsh, sourced for interactive shells.
* **.gitignore**: Specifies intentionally untracked files that Git should ignore.

## Usage

These files are intended to be used by sourcing them in your respective shell configuration files (e.g., `~/.bashrc` for Bash, `~/.zshrc` for Zsh).

**Bash:**

You can source the `.bashrc` file directly, or if you prefer to keep your existing `~/.bashrc` clean, you can add the following lines to it:

```bash
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi
```

**Zsh:**

You can source the `.zshrc` file directly, or add relevant parts to your existing `~/.zshrc`.

**Note:** Review the files and customize them to your needs before using them. You might want to remove or modify aliases and functions that you don't need.
