-- Практическая работа №13.

-- 1.Создайте таблицу table1
CREATE TABLE table1 (
id1 int,
id2 int,
gen1 text,
gen2 text,
PRIMARY KEY (id1, id2, gen1)
);

-- 2.Создайте таблицу table2 с помощью директивы LIKE
CREATE TABLE table2 (LIKE table1 INCLUDING ALL);

-- 3.Проверим, какое количество внешних таблиц присутствует в бд
SELECT COUNT(*) as kolvo FROM pg_catalog.pg_foreign_table;

-- 4.Сгенерировать данные и вставить в таблицы
insert into table1 select gen,gen, gen::text  "text1", gen::text  "text2" from generate_series(1,200000) gen;

insert into table2 select gen,gen, gen::text  "text1", gen::text  "text2" from generate_series(1,400000) gen;

-- 5.Просмотрите план соединения таблиц table1 и table2 по ключу id1
EXPLAIN SELECT * FROM table1 INNER JOIN table2 ON table1.id1 = table2.id1;

-- 6.Реализовать план запроса.
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON)
SELECT * FROM table1 INNER JOIN table2 ON table1.id1 = table2.id1;

-- 7.Реализовать запросы с использованием JOIN, GROUP BY и подзапроса.
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON)
SELECT  t1.id1, t1.gen1 AS t1_gen1, t2.gen2 AS t2_gen2
FROM table1 t1
INNER JOIN table2 t2 ON t1.id1 = t2.id1
WHERE t1.id1 BETWEEN 1 AND 20000;

EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON)
SELECT gen1, COUNT(*) as kolvo
FROM table1 GROUP BY gen1;

EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON)
SELECT id1, id2, gen2 FROM table1
WHERE id1 IN (SELECT id1 FROM table2 WHERE LENGTH(gen2) > 6)
LIMIT 5;