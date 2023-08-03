# TWRP device tree for miholi devices ( POCO X5 5G (moonstone) and Redmi Note 12 5G (sunstone))
This tree is for building TWRP Recovery for the _miholi_ platform: POCO X5 5G / Redmi Note 12 5G

The POCO X5 5G (codenamed _"moonstone"_), Redmi Note 12 5G (codenamed _"sunstone"_) are mid range smartphones from Xiaomi.

## Other miholi devices
Other _miholi_ devices include POCO X4 Pro 5G (_peux_) and Redmi Note 11 Pro 5G (_veux_). This tree cannot be used to build for these devices.

## Building

POCO X5 5G and Redmi Note 12 5G use a Virtual A/B Partition Scheme!

_Lunch_ command :

For **moonstone** :
```
lunch twrp_moonstone-eng && mka bootimage
```
For **sunstone** :
```
lunch twrp_sunstone-eng && mka bootimage
```

## Credits
- [Reference tree by Pranav-Talmale](https://gitlab.com/OrangeFox/device/mikona)
- [Reference tree info by Lect](https://github.com/lectfx)
