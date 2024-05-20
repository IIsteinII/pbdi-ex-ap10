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

-- 1.2 Write a program that reads 6 numbers. These numbers will only be positive or negative (disregard null values). Print the total number of positive numbers.
-- Gerar inteiros no intervalo de -50 a 50

DO $$
DECLARE
    num INTEGER;
    cont_positivo INTEGER := 0;
BEGIN
    FOR i IN 1..6 LOOP
        num := (CASE WHEN RANDOM() < 0.5 THEN -1 ELSE 1 END) * (FLOOR(RANDOM() * 101) - 50);
        IF num > 0 THEN
            cont_positivo := cont_positivo + 1;
        END IF;
        RAISE NOTICE 'Número: %', num;
    END LOOP;
    RAISE NOTICE 'Total de números positivos: %', cont_positivo;
END $$;