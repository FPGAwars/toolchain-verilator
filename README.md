# Archived!
* **2022-May-9**: This repo has been archived, since the verilator is no longer used as an isolated Apio package. Use the [Tools-oss-cad-suite](https://github.com/FPGAwars/tools-oss-cad-suite) package instead

# Toolchain-verilator

[![Build Status](https://travis-ci.org/FPGAwars/toolchain-verilator.svg)](https://travis-ci.org/FPGAwars/toolchain-verilator)

## Introduction

Static binaries of the [Verilator](https://www.veripool.org/wiki/verilator) tools. Packaged for [Apio](https://github.com/FPGAwars/apio) and [Platformio](http://platformio.org/).

## Usage

Build:

```
bash build.sh linux_x86_64
```

Clean:

```
bash clean.sh linux_x86_64
```

Target architectures:
* linux_x86_64
* linux_i686
* linux_armv7l
* linux_aarch64
* windows_x86
* windows_amd64
* darwin

Final packages will be deployed in the **\_packages/build_ARCH/** directories.

## Authors

* [Miodrag Milanovic](https://github.com/mmicko)
* [Jesús Arroyo Torrens](https://github.com/Jesus89)

## License

Licensed under a GPL v2 and [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).
