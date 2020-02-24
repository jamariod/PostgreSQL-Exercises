CREATE TABLE restaurant
(
    id serial PRIMARY KEY,
    name text,
    distance int,
    stars int,
    category text,
    favorite_dish text,
    does_takeout text,
    last_time_you_ate_there text
);


INSERT INTO restaurant
    (name, stars)
VALUES
    ('Pizza Hut', 3),
    ('Taco Bell', 2),
    ('KFC', 3),
    ('Subway', 1);

INSERT INTO restaurant
    (name, favorite_dish)
VALUES
    ('Papa Johns', 'chicken pizza'),
    ('Wild Wings', 'hot wings'),
    ('Moes', 'chicken bowl');

INSERT INTO restaurant
    (name, distance)
VALUES
    ('Pizza King', 35),
    ('Wing World', 15),
    ('Rib Hut', 10);

INSERT INTO restaurant
    (name, stars)
VALUES
    ('P.F. Changs', 5),
    ('Bonefish Grill', 5),
    ('Yard House', 5),
    ('The Cheesecake Factory', 5);

--The names of the restaurants that you gave a 5 stars to
SELECT *
FROM restaurant
WHERE stars >= 5;

--The favorite dishes of all 5-star restaurants
INSERT INTO restaurant
    (name, favorite_dish)
VALUES
    ('P.F. Changs', 'Mongolian Beef'),
    ('Bonefish Grill', 'Oyster Rockefeller'),
    ('Yard House', 'bbq chicken wings'),
    ('The Cheesecake Factory', 'Red Velvet Cheese Cake');

SELECT *
FROM restaurant(favorite_dish)
WHERE stars >= 5;

SELECT name, favorite_dish
FROM restaurant
WHERE stars >= 5;