# Change Log

This file lists the changes made to the [ClickBeyond fork](https://github.com/ClickBeyond/easyengine) of the [EasyEngine project](https://github.com/rtCamp/easyengine).

## v2.2.3.3 [11-Feb-2015]
- Fixed duplicate swap file error.
- Delete pre-installed plugins: `Akismet` and `Hello Dolly`.

## v2.2.3.2 [11-Feb-2015]
- Fix missing references to the ClickBeyond repo.
- Automatically create a swap file for all systems with 8192MB of RAM or less. The size of the swap file created is relative to the available RAM, as recommended by [this EasyEngine article](https://rtcamp.com/easyengine/installation/).
- Change the WordPress permalink structure to `/%postname%/` instead of `/%year%/%monthnum%/%day%/%postname%/`.
- Change the WordPress time-zone to Europe/London.
- Change the WordPress time format to HH:MM.

## v2.2.3.1 [08-Feb-2015]
- Forked the project from [rtCamp/easyengine](https://github.com/rtCamp/easyengine) and updated the `install` and `update` scripts to reference this [ClickBeyond repo](https://github.com/ClickBeyond/easyengine).
- Set the default WordPress locale to en_GB.
