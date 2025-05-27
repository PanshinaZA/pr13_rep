# Практическая работа №13. План запроса

## Цель:


## Ход работы:
1. Создаем базу данных `bd13` и таблицу table1 в ней:

![image](https://github.com/user-attachments/assets/24080ced-9433-4f81-8ac5-e1ee78d6c685)

2. Создаем таблицу table2 с помощью директивы LIKE:

![image](https://github.com/user-attachments/assets/675c93d7-645e-45a9-842c-0af5898472dd)

3. Проверим, какое количество внешних таблиц присутствует в бд:

![image](https://github.com/user-attachments/assets/fd53fdaf-3e08-404b-b313-b4341ccb1254)

4. Сгенерировать данные и вставить в таблицы:

![image](https://github.com/user-attachments/assets/2051d940-7882-4140-ad90-b36cfb42212c)

![image](https://github.com/user-attachments/assets/24d86686-dd05-4384-bf30-3a548c3fba72)

5. С помощью директивы EXPLAIN просмотрим план соединения таблиц table1 и table2 по id1:

![image](https://github.com/user-attachments/assets/38394104-b14c-42b5-84b8-dfa62187dc81)

6. Реализовать план запроса:

![image](https://github.com/user-attachments/assets/ea80b201-faec-4a9d-b320-04aec81aea3e)

![image](https://github.com/user-attachments/assets/f197c1e0-9a12-43c5-81e1-2a03639aefe5)

7. Реализовать запросы с использованием JOIN, GROUP BY и подзапроса. Экспортировать планы запросов в файлы в формате JSON.

![image](https://github.com/user-attachments/assets/0e1282bb-5f12-43e5-942f-a82c8f0c9dff)

![image](https://github.com/user-attachments/assets/09eb84ba-07c4-4f90-9e88-613116fb5617)

![image](https://github.com/user-attachments/assets/33c63e23-174c-42aa-9b25-334c4c288668)

8. Сравнить результаты пункта 6 локально с результатом на сайте https://tatiyants.com/pev/#/plans/new

Локально:
![image](https://github.com/user-attachments/assets/be9144b4-ad1a-4617-9cc3-f44d6072777f)

На сайте:
![image](https://github.com/user-attachments/assets/dac9c755-9a5c-4d4f-949b-7ced0248e4a9)

`pr13_task.sql` - файл с выполненными sql-запросами

## Выводы:
