-- Active: 1709936938494@@127.0.0.1@5432@postgres
--Resolva cada exercício a seguir usando LOOP, WHILE, FOR e FOREACH. Quando o enunciado disser que é preciso “ler” algum valor, gere-o aleatoriamente. Em plpgsql:
-- 1.1 Write a program that prints all even numbers between 1 and 100, including them if it is the case.

DO $$
DECLARE
    num INTEGER;
BEGIN
    FOR num IN 1..100 LOOP
        IF num % 2 = 0 THEN
            RAISE NOTICE 'Número par: %', num;
        END IF;
    END LOOP;
END $$;

