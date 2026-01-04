#!/system/bin/sh

SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=true
LATESTARTSERVICE=true

REPLACE="
"

print_modname() {
  # Banner: RAIRIN
  ui_print " "
  ui_print "░█▀▄░█▀█░▀█▀░█▀▄░▀█▀░█▀█"
  sleep 0.05
  ui_print "░█▀▄░█▀█░░█░░█▀▄░░█░░█░█"
  sleep 0.05
  ui_print "░▀░▀░▀░▀░▀▀▀░▀░▀░▀▀▀░▀░▀"
  ui_print " "
  
  ui_print "░█░░░█░█▀█░█░█░█░█▀▄"
  sleep 0.05
  ui_print "░█░░░█░▀▀█░█░█░█░█░█"
  sleep 0.05
  ui_print "░▀▀▀░▀░░░▀░▀▀▀░▀░▀▀░"
  sleep 0.05
  ui_print " "
  sleep 1
  ui_print "Made by : kaminarich | kaminarich_here"
  ui_print " "
}

on_install() {
  ui_print "> Merging into reality ..."
  sleep 1.5
  ui_print "> Extracting module files..."
  
  unzip -o "$ZIPFILE" 'post-fs-data.sh' -d $MODPATH >&2
  unzip -o "$ZIPFILE" 'touch' -d $MODPATH >&2 
  unzip -o "$ZIPFILE" 'rairin.avif' -d $MODPATH >&2
  
  ui_print " "
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm $MODPATH/post-fs-data.sh 0 0 0755
  set_perm $MODPATH/touch 0 0 0755
}
