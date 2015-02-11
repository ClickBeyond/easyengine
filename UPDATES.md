# Updates and Changes

This file documents the modifications made to the [EasyEngine Github project](https://github.com/rtCamp/easyengine).

## WordPress

### ee_mod_setup_wordpress.sh
- Download and install the `en_GB` version of WordPress from [en-gb.WordPress.org](http://en-gb.wordpress.org/).
- Set the WordPress permalink structure to `/%postname%/` instead of `/%year%/%monthnum%/%day%/%postname%/`.
- Change the WordPress time-zone to Europe/London.
- Change the WordPress time format to HH:MM.

## Swap File

- By default EasyEngine would only create a swap file if the system had 512MB of RAM or less. This has been changed so that a swap file is always created when the system RAM is 8192MB or less. The size of the swap file created is relative to the available RAM, as recommended by [this EasyEngine article](https://rtcamp.com/easyengine/installation/).

