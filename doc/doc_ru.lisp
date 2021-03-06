(defconstants
  (+title+
    "Библиотека Bluetooth_HC05")
  (+top-header+
    "Описание библиотеки Bluetooth_HC05")
  (+synopsis+
    "Библиотека предназначена для работы с Bluetooth-модулем HC-05 и реализует
    все 36 функций, описанных в документации (datasheet) к модулю от компании Wavesen,
    в виде класса Bluetooth_HC05 и его методов.
    Почти все методы принимают в качестве последнего агрумента тайм-аут на чтение ответа
    от модуля (в миллисекундах). К класс Bluetooth_HC05 реализует интерфейс Print
    так что вы можете посылать данные, пользуясь методом print(),
    как в объект класса Serial. В качестве источника информации был использован
    китайский даташит с кучей ошибок и неясностей - такие места я буду обозначать
    специальным значком: ~a. Если вы видите этот значок в описании - значит, я
    ничерта не понял из документации и объяснить не могу.")
  
  (+module-hints+
    "По умолчанию скорость работы модуля - 38400 бод. Для правильной инициализации
    модуля требуется примерно 700 мс, так что сразу после вызова метода begin()
    желательно выдержать паузу в 1 секунду для гарантии.")

  (+table-of-contents-header+ "Оглавление")
  (+methods-header+ "Методы")
  (+types-header+ "Типы")
  (+constants-header+ "Константы")
  
  (+m-begin+ "Подключает модуль HC-05")
  (+m-probe+ "Простой тест работоспособности модуля путём посылки команды AT.")
  (+m-hardReset+
    "Перезагружает модуль, прижимая его вывод RESET к 0 на 6 мс.
    Пин для управления выводом RESET задаётся в методе ~a.")
  (+m-softReset+
    "Перезагружает модуль, посылая команду AT+RESET. Разумеется, это менее надёжно,
    чем управление выводом RESET.")
  (+m-getVersion+
    "Запрашивает версию и кладёт её в массив ~a размера ~a.
    Если размер буфера слишком мал, занесётся только влезающая по размеру часть версии.")
  (+m-restoreDefaults+
    "Восстанавливает заводские настройки: тип устройства 0 (неизвестное устрйоство),
    код опроса IAC - 0x009e8b33, роль - slave, соединение - по заданному адресу,
    скорость 38400 бод, 1 стоп-бит, без бита чётности, пароль - 1234,
    имя модуля - H-C-2010-06-01")
  (+m-getAddress+
    "Возвращает Bluetooth-адрес модуля в ~a.")
  (+m-getName+
    "Возвращает имя модуля в ~a, размер которого должен быть не менее ~a.")
  (+m-setName+ "Устанавливает имя модуля.")
  (+m-getRemoteDeviceName+ "Возвращает имя устройства с адресом ~a в ~a размером ~a.")
  (+m-getRole+ "Возвращает текущую роль модуля в ~a.")
  (+m-setRole+ "Устанавливает роль модуля.")
  (+m-getDeviceClass+ "Возвращает класс устройства в ~a.")
  (+m-setDeviceClass+ "Устанавливает класс устройства")
  (+m-getInquiryAccessCode+ "Возвращает в ~a код опроса IAC.")
  (+m-setInquiryAccessCode+ "Устанавливает IAC.")
  (+m-getInquiryMode+
    "Возвращает настройки опроса (inquiry): режим опроса в ~a, максимальное число
    опрашиваемых устройств в ~a, максимальную длительность в ~a (в интервалах по
    1.28 с ~a).")
  (+m-setInquiryMode+
    "Устанавливает настройки опроса.")
  (+m-getPassword+ "Возвращает пароль в ~a, который должет иметь размер не менее ~a.")
  (+m-setPassword+ "Устанавливает новый пароль.")
  (+m-getSerialMode+
    "Возвращает настройки UART: скорость в ~a, число стоп-битов в ~a,
    настройки чётности в ~a.")
  (+m-setSerialMode+ "Устанавливает настройки UART.")
  (+m-getConnectionMode+ "Возвращает режим соединения в ~a.")
  (+m-setConnectionMode+ "Устанавливает режим соединения.")
  (+m-bind+
    "Привязывает модуль к устройству с адресом ~a. Адрес 00:00:00:00:00:00 означает,
    что модуль не привязан к конкретному устройству.")
  (+m-getAddressBound+
    "Возвращает адрес, к которуму привязан модуль, в ~a.")
  (+m-getLeds+
    "Возвращает состояния (включен/выключен) индикаторов (светодиодов) статуса
    (PIO8) в ~a и соединения (PIO9) в ~a.")
  (+m-setLeds+ "Устанавливает состояния индикаторов статуса и соединения.")
  (+m-setPortState+ "Задаёт состояние ~a порта PIO с номером ~a.")
  (+m-getMultiplePorts+
    "Возвращает состояния портов PIO в ~a в виде битовой маски: например,
    результат 0x008 (1 << 3) означает, что на PIO3 - логическая 1, а на остальных - 0.")
  (+m-setMultiplePorts+ "Устанавливает состояние портов PIO.")
  (+m-getInquiryAndPagingParams+
    "Возвращает интервалы и длительности опроса и какого-то paging ~a")
  (+m-setInquiryAndPagingParams+ "Устанавливает параметры, которые возвращает ~a ~a")
  (+m-getSniffParams+ "Возвращает параметры энергосберегающего (?) режима ~a")
  (+m-setSniffParams+ "Устанавливает параметры, которые возвращает ~a ~a")
  (+m-enterSniffMode+ "Войти в режим энергосбережения (?) ~a")
  (+m-exitSniffMode+ "Выйти и режима энергосбережения (?) ~a")
  (+m-getSecurityAndEncryption+
    "Возвращает в ~a настройки безопасности соединения, а в ~a - настройки шифрования.")
  (+m-setSecurityAndEncryption+
    "Устаннавливает настройки безопасности и шифрования соединения.")
  (+m-deleteDeviceFromList+
    "Удаляет устройство с адресом ~a из списка авторизованных.")
  (+m-deleteAllDevicesFromList+
    "Удаляет все адреса устройств из списка авторизованных (оцищает список).")
  (+m-findDeviceInList+
    "Ищет устройство с адресом ~a в списке авторизованных. Возвращает true,
    если устройство в списке.")
  (+m-countDevicesInList+ "Возвращает длину списка авторизованных устройств.")
  (+m-getLastAuthenticatedDevice+
    "Возвращает адрес последнего авторизованного устройства в ~a.")
  (+m-getState+ "Возвращает текущее состояние модуля в ~a.")
  (+m-initSerialPortProfile+
    "Инициализирует профиль последовательного порта.
    Только после этого модуль сможет устанавливать соединения.")
  (+m-inquire+
    "Опрашивает Bluetooth-устройства в эфире. В качестве аргумента ~a нужно
    передать адрес функции, принимающей Bluetooth-адрес - ~a будет вызывать её
    каждый раз при обнаружении нового устройства в эфире.")
  (+m-cancelInquiry+ "Останавливает опрос устройств.")
  (+m-pair+ "Образует пару с указанным устройством (~a).")
  (+m-connect+ "Образует соединение с указанным устройством (~a).")
  (+m-disconnect+ "Разрывает соединение.")
  (+m-getLastError+ "Возвращает код результата последней выполненной команды.")

  (HC05_DEFAULT_TIMEOUT
    "Тайм-аут по умолчанию для большинства команд.")
  (HC05_INQUIRY_DEFAULT_TIMEOUT
    "Тайм-аут по умолчанию для опроса (inquiry) Bluetooth-устройств.")
  (HC05_PAIRING_DEFAULT_TIMEOUT
    "Тайм-аут по умолчанию для образования пары (pairing) между устройствами.")
  (HC05_PASSWORD_MAXLEN
    "Максимальная длина пароля (PIN-кода), которую позволяет задать модуль.")
  (HC05_PASSWORD_BUFSIZE
    "Размер буфера, способного вместить самый длинный пароль.")
  (HC05_NAME_MAXLEN "Максимальная длина имени устройства.")
  (HC05_NAME_BUFSIZE "Размер буфера для имени устройства.")
  (HC05_ADDRESS_MAXLEN
    "Максимальная длина строкового представления адреса Bluetooth-устройства.")
  (HC05_ADDRESS_BUFSIZE
    "Размер буфера для строкового представления Bluetooth-адреса.")

  (BluetoothAddress "Адрес Bluetooth-устройства, 6-байтовый массив")
  (InquiryCallback
    "Callback-функция, принимающая в качестве аргумента адрес
    Bluetooth-устройства. Вызывается методом ~a при обнаружении
    очередного Bluetooth-устройства в эфире.")

  (HC05_Mode "Режим работы модуля")
  (HC05_MODE_DATA "приём-передача данных")
  (HC05_MODE_COMMAND "управление AT-командами")

  (HC05_Role "Роль Bluetooth-модуля")
  (HC05_ROLE_SLAVE "Пассивное подключение (к модулю можно подключаться)")
  (HC05_ROLE_MASTER
    "Активное подключение (модуль сам подключается к устройствам)")
  (HC05_ROLE_SLAVE_LOOP
    "Пассивное подключение с эхом: все принятые данные передаются обратно")

  (HC05_InquiryMode "Режим опроса устройств")
  (HC05_INQUIRY_STANDARD "Обычный (все устройства)")
  (HC05_INQUIRY_RSSI "Только устройства с ~a")
  (+RSSI-wikipedia-link+
    '("RSSI" . "http://ru.wikipedia.org/wiki/Received_Signal_Strength_Indication"))

  (HC05_Parity "Использование ~a")
  (HC05_NO_PARITY "Без бита чётности")
  (HC05_PARITY_ODD "Нечётный")
  (HC05_PARITY_EVEN "Чётный")
  (+parity-bit-wikipedia-link+
    '("бита чётности" . "http://ru.wikipedia.org/wiki/Бит_чётности"))

  (HC05_Connection "Режим соединения")
  (HC05_CONNECT_BOUND "Принимать соединение только от устройства
    с определённым адресом, задаваемым методом ")
  (HC05_CONNECT_ANY "Принимать соединения от любых устройств")
  (HC05_CONNECT_SLAVE_LOOP
    "slave-loop?")

  (+security-link-name+ "безопасности")
  (HC05_Security "Настройки ~a")
  (HC05_SEC_OFF "Выключено?")
  (HC05_SEC_NON_SECURE "Незащищённое соединение")
  (HC05_SEC_SERVICE "Защита на сервисном уровне (service-level)")
  (HC05_SEC_LINK "Защита на уровне соединения (link-level)")
  (HC05_SEC_UNKNOWN "Неизвестный режим?")

  (+packet-encryption-section+ "Packet Encryption")
  (HC05_Encryption
    "Настройки шифрования (см. статью по ~a, раздел ~a)")
  (HC05_ENC_OFF "Без шифрования")
  (HC05_ENC_PTP "Шифруется только трафик PTP (point-to-point)")
  (HC05_ENC_PTP_BROADCAST "Шифруется весь трафик")

  (HC05_State "Состояние модуля")
  (HC05_INITIALIZED "Инициализирован")
  (HC05_READY "Готов. К чему?")
  (HC05_PAIRABLE "Готов к образованию пары")
  (HC05_PAIRED "Образована пара")
  (HC05_INQUIRING "Опрашивает устройства")
  (HC05_CONNECTING "Соединяется")
  (HC05_CONNECTED "Соединён")
  (HC05_DISCONNECTED "Отсоединён")
  (HC05_UNKNOWN "Неизвестное состояние?")

  (HC05_Result
    "Результат последней выполненной команды")
  (HC05_OK "Команда выполнена успешно")
  (HC05_FAIL "Ошибка выполнения, причина неизвестна")
  (HC05_ERR_TIMEOUT "Вышло время ожидания ответа от модуля")
  (HC05_ERR_ARGUMENT "Методу переданы неверные аргументы")
  (HC05_ERR_DISC_LINK_LOSS "Связь с устройсвом потеряна")
  (HC05_ERR_DISC_NO_SLC "")
  (HC05_ERR_DISC_TIMEOUT "Тайм-аут отсоединения?")
  (HC05_ERR_DISC_ERROR "Ошибка отсоединения?")
  (HC05_ERR_AT_COMMAND "Ошибка синтаксиса AT-команды")
  (HC05_ERR_DEFAULT_RESULT "Результат по умолчанию?")
  (HC05_ERR_PSKEY_WRITE "Ошибка сохранения пароля")
  (HC05_ERR_DEVICE_NAME_TOO_LONG "Слишком длиное имя устройства")
  (HC05_ERR_NO_DEVICE_NAME "Имя устройства не указано")
  (HC05_ERR_NAP_TOO_LONG "Часть адреса NAP слишком длинная")
  (HC05_ERR_UAP_TOO_LONG "Часть адреса UAP слишком длинная")
  (HC05_ERR_LAP_TOO_LONG "Часть адреса LAP слишком длинная")
  (+setMultiplePorts-method-name+ "setMultiplePorts()")
  (HC05_ERR_NO_PIO_MASK "Не указана маска портов")
  (+setPortState-method-name+ "setPortState()")
  (HC05_ERR_NO_PIO_NUMBER "Не указан номер порта")
  (+setDeviceClass-method-name+ "setDeviceClass()")
  (HC05_ERR_NO_DEVICE_TYPE "Не указан класс устройства")
  (HC05_ERR_DEVICE_TYPE_TOO_LONG
    "Слишком длинное значение класса устройства")
  (+setInquiryAccessCode-method-name+ "setInquiryAccessCode()")
  (HC05_ERR_NO_IAC "Пустой код опроса IAC (Inquire Access Code)")
  (HC05_ERR_IAC_TOO_LONG "Слишком длинный IAC")
  (HC05_ERR_INVALID_IAC "Недопустимый IAC")
  (HC05_ERR_NO_PASSWORD "Пароль пуст")
  (HC05_ERR_PASSWORD_TOO_LONG "Слишком длинный пароль")
  (HC05_ERR_INVALID_MODULE_ROLE "Неверная роль устройства")
  (HC05_ERR_INVALID_BAUD_RATE "Недопустимая скорость передачи")
  (HC05_ERR_INVALID_STOP_BITS "Недопустимая настройка стоп-битов")
  (HC05_ERR_INVALID_PARITY_BITS "Недопустимая настройка бита чётности")
  (HC05_ERR_DEVICE_NOT_IN_LIST "Устройство не в списке авторизованных")
  (HC05_ERR_SPP_NOT_INITIALIZED
    "Профиль последовательного порта (SPP, Serial Port Profile) не инициализирован")
  (HC05_ERR_SPP_REINIT "Повторная инициализация SPP")
  (HC05_ERR_INVALID_INQUIRY_MODE "Недопустимый режим опроса")
  (HC05_ERR_INQUIRY_TIMEOUT_TOO_LONG "Слишком большой тайм-аут опроса")
  (HC05_ERR_NO_BLUETOOTH_ADDRESS "Не указан Bluetooth-адрес")
  (HC05_ERR_SECURITY_MODE "Недопустимый режим безопасности")
  (HC05_ERR_ENCRYPTION_MODE "Недопустимый режим шифрования")
  )
