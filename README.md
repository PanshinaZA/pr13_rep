# Практическая работа №13. План запроса

## Цель:


## Ход работы:
1. Создаем таблицу table1 в нашей базе данных:

![image](https://github.com/user-attachments/assets/24080ced-9433-4f81-8ac5-e1ee78d6c685)

2. Создаем таблицу table2 с помощью директивы LIKE:

![image](https://github.com/user-attachments/assets/675c93d7-645e-45a9-842c-0af5898472dd)

3. Проверим, какое количество внешних таблиц присутствует в бд:

![image](https://github.com/user-attachments/assets/fd53fdaf-3e08-404b-b313-b4341ccb1254)

4. Сгенерировать данные и вставить в таблицы:

![image](https://github.com/user-attachments/assets/ec1d3968-bcf2-4cc3-b4bd-3583c6ab88fa)

5. С помощью директивы EXPLAIN просмотрим план соединения таблиц table1 и table2 по id1:

![image](https://github.com/user-attachments/assets/38394104-b14c-42b5-84b8-dfa62187dc81)

6. Реализовать план запроса:

![image](https://github.com/user-attachments/assets/eadf0079-099f-4ed9-93e5-4f9c2d6fc2b4)

![image](https://github.com/user-attachments/assets/0a8a2633-1f94-4512-801d-de9b44ec6150)

7. Реализовать запросы с использованием JOIN, GROUP BY и подзапроса. Экспортировать планы запросов в файлы в формате JSON.

![image](https://github.com/user-attachments/assets/8eeec24a-1859-4db2-b08b-b2c62298a987)

![image](https://github.com/user-attachments/assets/b74e7863-1564-4cb6-9817-565a086302e4)

![image](https://github.com/user-attachments/assets/0478c540-8f8a-40b4-a2a1-160ee1270d87)

Файлы с планами запросов находятся в репозитории.(`QUERY_PLAN(1-3).json`)

8. Сравнить результаты пункта 6 локально с результатом на сайте https://tatiyants.com/pev/#/plans/new

Локально:
![image](https://github.com/user-attachments/assets/2abbfb2b-c319-4bee-9a92-d3f61026dab5)

На сайте:
![image](https://github.com/user-attachments/assets/be8ab74c-438f-402a-a6dc-e8310a16493b)

`QUERY_PLAN.json` - план сравниваемого запроса в формате json.

`ERD_pr13_Panshina.png` - файл с ER-диаграммой, находится в репозитории.

`pr13_task.sql` - файл с выполненными sql-запросами, находится в репозитории.

## Выводы:
