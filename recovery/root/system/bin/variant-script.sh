#!/system/bin/sh
# This script is needed to automatically set device props.

load_sunstone()
{
    resetprop "ro.product.model" "22101317C"
    resetprop "ro.product.vendor.model" "22101317C"
    resetprop "ro.product.name" "sunstone"
    resetprop "ro.build.product" "sunstone"
    resetprop "ro.product.device" "sunstone"
    resetprop "ro.product.system.device" "sunstone"
    resetprop "ro.product.vendor.device" "sunstone"
    resetprop "ro.vendor.product.device" "sunstone"
}

load_sunstone_global()
{
    resetprop "ro.product.model" "22111317G"
    resetprop "ro.product.vendor.model" "22111317G"
    resetprop "ro.product.name" "sunstone_global"
    resetprop "ro.build.product" "sunstone_global"
    resetprop "ro.product.device" "sunstone_global"
    resetprop "ro.product.system.device" "sunstone_global"
    resetprop "ro.product.vendor.device" "sunstone_global"
    resetprop "ro.vendor.product.device" "sunstone_global"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "GLOBAL")
        load_sunstone
        ;;
    *)
        load_sunstone_global
        ;;
esac

exit 0
