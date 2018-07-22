SELECT date, amount
FROM payments;

SELECT amount
FROM payments
WHERE amount > 500;

SELECT *
FROM payments
WHERE payee = 'Mega Foods';

SELECT email, signup
FROM users
WHERE name = 'DeAndre Data'

SELECT userid
FROM users
WHERE email = 'aleesia.algorithm@uw.edu'

SELECT *
FROM users
WHERE userid = 4
