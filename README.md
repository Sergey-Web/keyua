## PHP
Существует несколько видов работников: программист, дизайнер,
тестировщик, менеджер.

1.Каждый работник умеет по-своему делать свою работу:
- программист может: 1) писать код, 2) тестировать код, 3)
  общаться с менеджером
- дизайнер может: 4) рисовать, 3) общаться с менеджером
- тестировщик может: 2) тестировать код, 3) общаться с
  менеджером, 5) ставить задачи
- менеджер может: 5) ставить задачи


2.В свою очередь они не умеют:
- программист: 4) рисовать 5) ставить задачи
- дизайнер: 1) писать код 2) тестировать код 5) ставить задачи
- тестировщик: 1) писать код 4) рисовать
- менеджер: 1) писать код 4) рисовать 2) тестировать код
  задание:
- нужно описать умение каждого сотрудника с помощью принципов
  ООП;
  - написать консольную команду средствами Laravel. В качестве
    параметра команда должна принимать название должности.
    Результатом работы команды должен быть список умений
    работника. Для написания логики используйте сервисы.
    пример запуска:

  - php artisan company: employee programmer
  
    на выходе должны получить подобное:
   1) code writing
   2) code testing
   3) communication with manager
- также реализовать проверку, может ли сотрудник делать
  определенные действия. Пример для реализации:
  команда:
  - php artisan employee:can programmer writeCode
  результат: true
  команда:
  - php artisan employee:can programmer draw
  результат: false

Требования:

- php 7 и выше
- Laravel 6, или выше
- Использовать код стайл psr-2 https://www.php-fig.org/psr/psr-2/
- Создать новый репозиторий на https://github.com/ и залить туда
- Использование composer https://getcomposer.org/

## MySQL
1.Для заданного списка товаров получить названия всех категорий,
в которых представлены товары.

Выборка для нескольких товаров (пример: ids = (9, 14, 6, 7, 2)).

2.Для заданной категории получить список предложений всех
товаров из этой категории. Каждая категория может иметь
несколько подкатегорий.

Пример:
Выбираю все товары из категории компьютеры (id = 2) и подкатегории
(id =3 (ноутбуки), id = 4 (планшеты), id = 5 (гибриды)).

3.Для заданного списка категорий получить количество уникальных
товаров в каждой категории.

Выборка для нескольких категорий (пример: ids = (2, 3, 4) ).

4.Для заданного списка категорий получить количество единиц
каждого товара который входит в указанные категории.
Выборка для нескольких категорий (пример: ids = (3, 4, 5) ).

Примечание:
Схема БД создается самостоятельно на основе выше представленных
требований.

В результате вы должны предоставить схему БД и SQL запросы.

## Поднятия docker окружения
1) docker-compose build
2) docker-compose up -d
3) docker exec -ti keyua_php-fpm_1 /bin/sh
4) composer install
5) php artisan migrate
6) php artisan db:seed

## Реализация PHP:
1) php artisan company:employee {designer || manager || programmer || tester}
2) php artisan employee:can {designer || manager || programmer || tester} {draw || setTask || writeCode || writeTest}

## Реализация MySQL:
1) php artisan product:get {ids}
   - select c.name
   from categories c
   inner join product_category pc on c.id = pc.category_id
   where pc.product_id in (?)

2) php artisan category:product {id}
    - select
      c.id as category_id,
      c.name as category_name,
      p.id as product_id,
      p.name as product_name
      from product_category as pc
      inner join products as p on pc.product_id = p.id
      inner join categories as c on pc.category_id = c.id
      inner join categories as c2 on c.id = c2.parent
      where category_id in (?)
3) php artisan product:getUnique {ids}
    - select pc.product_id,
      p.name
      from product_category as pc
      inner join products as p on pc.product_id = p.id
      where pc.category_id in (?)
      group by pc.product_id
4) php artisan category:productsCount {ids}
    - select count(*) as count, product_id
      from product_category pc
      where category_id in (?)
      group by product_id
5) dump.sql
