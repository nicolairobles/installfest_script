#-------------------------------------------------------------------------------
# Copy over Sublime settiings & packages (settings/sublime_settings_settings.sh)
#-------------------------------------------------------------------------------

SUBLIME_DIR="${HOME}/Library/Application\ Support/Sublime\ Text\ 3"
SUBLIME_SETTINGS_DIR="${SUBLIME_DIR}/Packages/User"
SUBLIME_PACKAGES_DIR="${SUBLIME_DIR}/Installed \Packages"

# if [[ $os_version == *10.6* ]]; then
#   # skip for now
#   subl_app_support="${HOME}/Library/Application\ Support/Sublime\ Text\ 2"
# else
#   # Setup Sublime Preferences
#   subl_app_support="${HOME}/Library/Application\ Support/Sublime\ Text\ 2"
# fi

# ensure files exist before copying for 10.6
mkdir -p "SUBLIME_SETTINGS_DIR"
mkdir -p "SUBLIME_PACKAGES_DIR"

inform "Copying Sublime settings..." true
copy_files subl_settings "$SUBLIME_SETTINGS_DIR" "$SCRIPT_SUBL_SETTINGS"
show "Complete!"

inform "Copying Sublime packages..." true
copy_files subl_packages "$SUBLIME_PACKAGES_DIR" "$SCRIPT_SUBL_PACKAGES"
show "Complete!"

# Installing Package Control

# pkg_url="https://sublime.wbond.net/Package%20Control.sublime-package"
# pkg_control="Package Control.sublime-package"
# pkg_settings="Package Control.sublime-settings"
# backup "$subl_app_support/Installed Packages/$pkg_settings"

# # NOTE (phlco) curling then mving because curl gave a malformed url in 10.6
# mkdir -p "$SRC_DIR/../packages"

# curl -O "$SRC_DIR/../packages" $pkg_url
# mv "$SRC_DIR/../packages" "$subl_app_support/Installed\ Packages/$pkg_control"
