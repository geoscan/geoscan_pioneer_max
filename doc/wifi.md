# Устронение неполадок с Wi-fi точкой на RPi
Для начала проверьте IP вашей RPi
```
ifconfig
```

По умолчанию на интерфесе wlan0 должен быть IP 10.0.0.31, если это не так выполните
```
sudo systemctl restart config-wlan
```
Если это не помогло или IP нужный:

1. Перезагрузите dhcp сервер

```
sudo systemctl restart isc-dhcp-server
```

2. Перезагрузите саму точку

```
sudo systemctl restart hostapd
```

3. Перезагрузите RPi
```
sudo reboot
```