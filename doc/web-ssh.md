#  Веб-доступ SSH
 
## В образе есть доступ к браузерной версии ssh доступа ( с использованием [Butterfly](https://github.com/paradoxxxzero/butterfly))

В Linux развернуты два сервиса, которые активируются при запуске RPi. Первый сервис wlan-butterfly запускает веб-терминал на адаптере wlan0 (обычно wi-fi адаптер). Второй сервис eth-butterfly запускает веб-терминал на адаптере eth0 (Ethernet адаптер). Если какой-то из адаптеров не активирован или не подключен к сети, то сервис этого адаптера диактивируется. Если по какой-то причине ip адресс к которому подключен адаптер изменился во время сеанса(Например подключился к другой сети), то для запуска веб-терминала достаточно перезагрузить сервис этого адаптера:
``` 
sudo systemctl restart wlan-butterfly
```
или

```
sudo systemctl restart eth-butterfly
```
Или же перезагрузить RPi если есть автоподключение к нужной сети
### Для отключение сервиса в данном сеансе достаточно выполнить
```
sudo systemctl stop wlan-butterfly
```
или
```
sudo systemctl stop eth-butterfly
```

### Для отключение автозапуска сервиса при запуске RPi достаточно выполнить
```
sudo systenctl stop wlan-butterfly
sudo systemctl disable wlan-butterfly
```
или
```
sudo systemctl stop eth-butterfly
sudo systemctl disable eth-butterfly
```
После перезагрузки RPi данные изменения вступят в силу
### Для повторной активации автозапуска сервиса при запуске RPi достаточно выполнить
```
sudo systemctl enable wlan-butterfly
sudo systemctl start wlan-butterfly
```
или
```
sudo systemctl enable eth-butterfly
sudo systemctl start eth-butterfly
```

После перезагрузки RPi данные изменения вступят в силу

### Подключение
Оба сервиса открыты на порте 8090

Что бы подключиться к веб терминалу наберите в вашем браузере
```
http://ip.адресс.вашего.RPi:8090 
```

Пример:
```
http://192.168.0.0:8090
```
