#language: ru
Функционал: Бронирование номера
  Как потенциальный клиент
  Я хочу забронировать номер

  Предыстория:
    Допустим существуют номера в категории "Люкс"
    И я зашёл на сайт отеля
    И нажимаю "Онлайн-бронирование"
    И выбираю "Люкс" в поле "Категория номера"
    И заполняю форму следующими данными:
      | Поле           | Значение         |
      | Фамилия        | Иванов           |
      | Имя            | Иван             |
      | Отчество       | Иванович         |
      | Номер телефона | +7(915)555-55-55 |
      | E-mail         | ivan@gmail.com   |

  Сценарий: Бронирование свободного номера
    Допустим есть свободные номера за выбранный период
    Если я нажимаю "Отправить"

  Сценарий: Бронирование занятого номера
    Допустим нет свободных номеров за выбранный период в категории "Люкс"
    Если я нажимаю "Отправить"