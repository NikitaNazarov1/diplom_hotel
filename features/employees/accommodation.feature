#language: ru
Функционал: Заселение

  Предыстория:
    Допустим я залогинен как администратор гостиницы

  Сценарий: Заселение без предварительной брони
    И существуют номера в категории "Люкс"
    И я нажимаю "Проживающие клиенты"
    И нажимаю "Новое заселение"
    И выбираю "Люкс" в поле "Категория комнаты"
    И выбираю дату выезда
    И заполняю форму следующими данными:
      | Поле           | Значение                 |
      | Фамилия        | Иванов                   |
      | Имя            | Иван                     |
      | Отчество       | Иванович                 |
      | Дата рождения  | 06.11.1990               |
      | Номер паспорта | 4520 932795              |
      | Дата выдачи    | 12.12.2010               |
      | Кем выдан      | Кировским РОВД г. Перми. |
      | Номер телефона | +7(915)555-55-55         |
      | E-mail         | ivan@gmail.com           |
    Если я нажимаю "Сохранить"
    То я должен увидеть "Заселение выполнено успешно"

  Сценарий: Заселение с предварительной бронью
    Допустим существуют несколько броней
    И я нажимаю "Брони"
    И выбираю первую бронь в списке
    И нажимаю "Заселить"
    И заполняю форму следующими данными:
      | Поле           | Значение                 |
      | Дата рождения  | 06.11.1990               |
      | Номер паспорта | 4520 932795              |
      | Дата выдачи    | 12.12.2010               |
      | Кем выдан      | Кировским РОВД г. Перми. |
    Если я нажимаю "Сохранить"
    То я должен увидеть "Заселение выполнено успешно"

  Сценарий: Заселение с предварительной бронью (не все данные введены)
    Допустим существуют несколько броней
    И я нажимаю "Брони"
    И выбираю первую бронь в списке
    И нажимаю "Заселить"
    Если я нажимаю "Сохранить"
    То я должен увидеть "Пожалуйста, исправьте следующие проблемы:"
    И я должен увидеть следующие сообщения об ошибках заполнения формы:
      | Поле           | Сообщение            |
      | Дата рождения  | не может быть пустым |
      | Номер паспорта | не может быть пустым |
      | Дата выдачи    | не может быть пустым |
      | Кем выдан      | не может быть пустым |

