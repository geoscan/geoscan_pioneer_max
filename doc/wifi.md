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

1. Перезагрузите RPi
```
sudo reboot
```

Одной из причин по которой точка может не работать является работающий NetworkManager

Проверьте активен ли он 
```
sudo systemctl status NetworkManager
```
Если он активен выключите его
```
sudo systemctl stop NetworkManager
sudo systemctl disable NetworkManager
```
Далее перезагрузите RPi
```
sudo reboot
```
