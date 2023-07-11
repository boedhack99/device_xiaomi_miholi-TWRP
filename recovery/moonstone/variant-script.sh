#!/system/bin/sh
# This script is needed to automatically set device props.

load_moonstone()
{
    resetprop "ro.product.model" "22111317PI"
    resetprop "ro.product.vendor.model" "22111317PI"
    resetprop "ro.product.name" "moonstone"
    resetprop "ro.build.product" "moonstone"
    resetprop "ro.product.device" "moonstone"
    resetprop "ro.product.system.device" "moonstone"
    resetprop "ro.product.vendor.device" "moonstone"
    resetprop "ro.vendor.product.device" "moonstone"
}

load_moonstone_p_global()
{
    resetprop "ro.product.model" "22111317PG"
    resetprop "ro.product.vendor.model" "22111317PG"
    resetprop "ro.product.name" "moonstone_p_global"
    resetprop "ro.build.product" "moonstone_p_global"
    resetprop "ro.product.device" "moonstone_p_global"
    resetprop "ro.product.system.device" "moonstone_p_global"
    resetprop "ro.product.vendor.device" "moonstone_p_global"
    resetprop "ro.vendor.product.device" "moonstone_p_global"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "GLOBAL")
        load_moonstone
        ;;
    *)
        load_moonstone_p_global
        ;;
esac

exit 0
