SELECT birthdate,
    DAY(birthdate) AS DATE,
    DAYOFWEEK(birthdate) AS DAYOFWEEK,
    DAYOFYEAR(birthdate) AS DAYOFYEAR,
    MONTHNAME(birthdate) AS MONTHNAME
FROM people;