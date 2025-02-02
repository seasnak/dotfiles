#! /bin/bash
# toggles both wezterm theme and xfce theme

WEZ_LIGHT_THEME="Material"
WEZ_DARK_THEME="darkmoss (base16)"
WM_LIGHT_THEME="Tokyonight-Purple-Light"
WM_DARK_THEME="Tokyonight-Purple-Dark"

case "$(xfconf-query -c xfwm4 -p /general/theme)" in
"$WM_LIGHT_THEME") CURRENT_THEME="LIGHT" ;;
*) CURRENT_THEME="DARK" ;;
esac

if [ "$CURRENT_THEME" = "LIGHT" ]; then
    xfconf-query -c xsettings -p /Net/ThemeName -s $WM_DARK_THEME
    xfconf-query -c xfwm4 -p /general/theme -s $WM_DARK_THEME
    sed -i s/"$WEZ_LIGHT_THEME"/"$WEZ_DARK_THEME"/g ~/.wezterm.lua
else
    xfconf-query -c xsettings -p /Net/ThemeName -s $WM_LIGHT_THEME
    xfconf-query -c xfwm4 -p /general/theme -s $WM_LIGHT_THEME
    sed -i s/"$WEZ_DARK_THEME"/"$WEZ_LIGHT_THEME"/g ~/.wezterm.lua
fi

[[ $CURRENT_THEME = "LIGHT" ]] && echo "Changing Theme to DARK" || echo "Changing Theme to LIGHT"
