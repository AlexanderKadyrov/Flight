# Flight

Приложение Flight выполнено программистом Alexander Kadyrov.

# Описание проекта

Суть проекта заключается в том, чтобы отображать тестовые данные, сформированные случайным образом, в виде табличного представления.
При нажатии на ячейку с данными, должен открываться экран детального вида.
В зависимости от выбранного типа данных открывается специально предназначенный экран.

## Типы данных в приложении

* class Event - дополнен свойством "airline", которое несёт в себе идентификатор авиакомпании, а свойство "name" содержит наименование авиакомпании
* struct Notice
* class Move 

Чтобы продемонстрировать различные навыки работы, в проекте намеренно рассмотрено два подхода:
* Работа с моделями данных через протокол FlightProtocol (табличное представление)
* Работа с моделями данных напрямую (детальное представление)

Для генерации "рандомных" данных используется специальный алгоритм, описанный во FlightController.
FlightController - манипулирует (собирает в случайном порядке) специально подготовленными данными из JSON файлов:
* seeder_event.json
* seeder_notice.json
* seeder_move.json

Для успешной работы с JSON структурой данных, используются инструменты Codable и JSONDecoder

# Инструменты

В проект не интегрированы различные библиотеки и зависимости, всё выполнено с использованием стандартных (нативных) средств.

В ходе работы программист применял различные инструменты разработки.
Проект построен с использованием паттерна проектирования MVC

В проекте используются такие элементы, как:
* NSLocalizedString
* UIViewController
* JSONDecoder
* DateFormatter
* UIImageView
* TimeInterval
* UITableView
* Extensions
* UIButton
* UIImage
* Protocol
* UILabel
* UIColor
* UIview
* Assets
* JSONs
* String
* XIBs
* Data
* Date
* Et Al.

# PS

В приложении используются логотипы и данные от известных авиакомпаний, данная информация была взята из открытых источников в сети Интернет. Программист не преследует цель прорекламировать ту или инную авиакомпанию или как-то навредить её имиджу. Информация была интегрирована в приложение с целью отображения тестовых данных, для того, чтобы интервьюверы оценили профессиональные качества и навыки работы программиста с теми или инными инструментами, не более. Все совпадения случайны и не отражают реальной ситуации в мире.
