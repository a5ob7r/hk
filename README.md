# hk

Casual command line history statistics script for bash, zsh and fish.

```sh
$ history | hk
       total entry number: 145054
total unique entry number: 1403
      6620(0.045638) vim
      6488(0.044728) docker-compose
      6290(0.043363) git
      6211(0.042818) exit
      5417(0.037344) ls
      4073(0.028079) haskellorls
      3923(0.027045) yay
      3634(0.025052) sudo
      3373(0.023253) echo
      ...
```

## Install

Copy `bin/hk` to your prefer directory which is on `$PATH`.

## Usage

### bash

```bash
$ history | hk
```

### zsh

```zsh
$ history 1 | hk
```

### fish

```fish
$ history | hk
```

## Test

Use [bats](https://github.com/bats-core/bats-core).

```sh
$ bats test/test.bats
```
