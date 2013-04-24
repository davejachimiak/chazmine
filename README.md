# Chazmine
A lil' helper to convert Jasmine assertions to Chai in vim.

## Installation
In your vundle.vim:
```vim
Bundle 'davejachimiak/chazmine'
```

Then `:BundleInstall` from the vim or `vim +BundleInstall +qall` from the command line.

## Usage
`:Chaz` will find and replace Jasmine assertions with the equivalent Chai ones. Current substitutions are listed in the `s:chaz()` function in plugin/chazmine.vim.

## Contribute
1. Fork.
2. Branch.
3. Add a substitution to the `s:chaz()` function in line with the pattern there.
4. Pull.
