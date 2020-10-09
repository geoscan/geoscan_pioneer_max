# Утилита Network Manager

Для подключения к Wi-fi сети предустановлена утилита NetworkManager.

[Неплохая статья на русском об этой утилите](https://losst.ru/upravlenie-networkmanager-iz-konsoli)

Внимание: Данная утилита не может быть использована одновременно с точкой доступа самой RPi перед использованием и активацией нужно отключить dhcp сервер и сервис конфигурации интерфейса wlan0

### Для активации и включения NetworkManager и отключения режима точки доступа используйте
```
sudo systemctl disable config-wlan
sudo systemctl stop isc-dhcp-server
sudo systemctl disable isc-dhcp-server
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager
```

### Для деактивациии и переключение RPi в режим точки доступа используйте
```
sudo systemctl stop NetworkManager
sudo systemctl disable NetworkManager
sudo systemctl enable config-wlan
sudo systemctl start config-wlan
sudo systemctl enable isc-dhcp-server
sudo systemctl start isc-dhcp-server
```
