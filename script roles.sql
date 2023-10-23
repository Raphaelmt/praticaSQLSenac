CREATE ROLE 'rConsulta';
GRANT SELECT ON modashop.* TO 'rConsulta';
CREATE ROLE 'rDesenvolvedor';
GRANT SELECT,INSERT,UPDATE,DELETE ON modashop.* TO 'rDesenvolvedor';
FLUSH PRIVILEGES;

CREATE USER 'consulta'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'desenvolvedor'@'localhost' IDENTIFIED BY '9876';

GRANT 'rConsulta' TO 'consulta'@'localhost';
GRANT 'rDesenvolvedor' TO 'desenvolvedor'@'localhost';
FLUSH PRIVILEGES;

SET DEFAULT ROLE 'rConsulta' TO 'consulta'@'localhost';
SET DEFAULT ROLE 'rDesenvolvedor' TO 'desenvolvedor'@'localhost';
