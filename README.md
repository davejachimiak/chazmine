# Chazmine
A lil' helper to convert Jasmine assertions to Chai in vim.

## Installation
In your vundle.vim:
```vim
...
...
Bundle 'davejachimiak/chazmine'
...
...
```

Then `:BundleInstall` from the vim command line.

## Usage
`:Chaz` will find and replace Jasmine assertions with the equivalent Chai ones.

## Contribute
1. Fork
2. Create a branch
3. Add a substitution to the `s:chaz()` function
4. Send a pull request
