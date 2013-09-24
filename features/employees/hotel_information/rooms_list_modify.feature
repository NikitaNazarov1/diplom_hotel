#language: ru
Функционал: Изменение списка номеров

  Предыстория:
    Допустим я залогинен как администратор
    И существует категория номеров "Люкс"
    И я нажимаю "Данные об отеле"
    И нажимаю "Номера"
    И нажимаю "Люкс"

  Сценарий: Добавление номера
    Допустим я нажимаю "Добавить номер"
    Если я ввожу "1" в поле "№"
    И нажимаю "Сохранить"
    То я должен увидеть "Номер сохранён"