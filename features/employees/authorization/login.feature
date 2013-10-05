#language: ru
Функционал: Вход в систему
  Чтобы начать работать с системой
  Как сотрудник отеля
  Я хочу войти в систему

  Предыстория:
    Допустим я не залогинен
    И существует пользователь с email "user@example.com" и паролем "12345678"
    И я зашёл на главную страницу для сотрудников
    Тогда я должен увидеть "Вам необходимо войти в систему или зарегистрироваться"

  Сценарий: Успешный вход
    Если я заполняю форму следующими данными:
      | Поле   | Значение         |
      | Email  | user@example.com |
      | Пароль | 12345678         |
    И нажимаю кнопку "Войти"
    То я должен увидеть "Вход в систему выполнен"

  Сценарий: Неудачkный вход
    Если я заполняю форму следующими данными:
      | Поле   | Значение         |
      | Email  | user@example.com |
      | Пароль | 00000000         |
    И нажимаю кнопку "Войти"
    То я должен увидеть "Неверный адрес e-mail или пароль"