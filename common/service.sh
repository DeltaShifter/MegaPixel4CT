MODDIR=${0%/*}
#更改captive路径去掉网络连接受限
sleep 15
settings put global captive_portal_http_url "http://connect.rom.miui.com/generate_204"
settings put global captive_portal_https_url "https://connect.rom.miui.com/generate_204"
settings put global captive_portal_fallback_url "http://connect.rom.miui.com/generate_204"
settings put global captive_portal_other_fallback_urls "http://connect.rom.miui.com/generate_204"
