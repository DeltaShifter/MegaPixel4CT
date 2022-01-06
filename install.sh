SKIPMOUNT=false

PROPFILE=true

POSTFSDATA=true

LATESTARTSERVICE=true

  ui_print "Module installation is complete."
  ui_print "************************************"
  ui_print "             MegaPixel4CT "
  ui_print " Another CT support with some goodies "
  ui_print "  Thank you for choosing this module"
  ui_print "************************************"
  ui_print "- Cleaning radio cache..."
rm -r /data/vendor/radio
rm -r /data/vendor/modem_fdr
rm /data/vendor/radio/iccid_0
rm /data/vendor/radio/qcril.db
rm /data/vendor/radio/qcril_backup.db
  ui_print "- Execution complete!"

REPLACE="
/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw
/system/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw
"

on_install() {
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  }
  ui_print "- Parameter compiling"
  
  set_permissions() {
  set_perm_recursive $MODPATH/system/vendor/mbn 0 0 0755 0644 u:object_r:vendor_file:s0
  set_perm_recursive $MODPATH 0 0 0755 0644 u:object_r:vendor_file:s0
}

  ui_print "- Fully completed"
  ui_print "______________________________________________"
  ui_print "           Original created by E.Z.C"
  ui_print "   Consider donating if you like this module."
  ui_print "               Modded by DaleSaika."
  ui_print "                    Coolapk"
  ui_print "----------------------------------------------"
