 /*
 * Archivo de soluciones a la guía de Ejercicios de Álgebra y Cálculo Relacional
 * mejor conocida como guía de Bebedores de la Universidad Simón Bolívar para la
 * materia CI3311 "Sistemas de Bases de Datos"
 *
 * Si te gustaría contribuir con una solución, hazlo siguiendo el estilo de
 * "How to Contribute to Open Source" Sección 5 apartado Opening a pull request
 * https://opensource.guide/how-to-contribute/#how-to-submit-a-contribution
 *
 * Si encuentras algún error que no sabes como resolver puedes seguir el estilo
 * del apartado Opening an issue en la guía antes mencionada.
 *
 * Las soluciones alternativas son admitidas.
*/

-- 1. Bebedores que no les gusta la malta
SELECT *
FROM BEBEDOR b
WHERE NOT EXISTS(SELECT *
                 FROM BEBIDA be, GUSTA gu
                 WHERE (be.NombreBeb='Malta' AND
                        gu.CodBeb=be.CodBeb AND
                        gu.CI=b.CI));

-- 2. Las fuentes de soda que no son frecuentadas por Luis Perez
SELECT *
FROM FUENTE_SODA fs
WHERE NOT EXISTS(SELECT *
                 FROM FRECUENTA fl, BEBEDOR be
                 WHERE(be.Nombre='Luis Perez' AND
                       fl.CI=be.CI AND
                       fs.CodFS=fl.CodFS));

-- 3. Los bebedores que les gusta al menos una bebida y que frecuentan al menos
--    una fuente de soda.
SELECT ci, nombre
FROM bebedor b
WHERE EXISTS (SELECT *
              FROM bebedor NATURAL JOIN gusta
              WHERE b.ci = ci) AND
      EXISTS (SELECT *
              FROM bebedor NATURAL JOIN frecuenta
              WHERE b.ci = ci);

-- 4. Para cada bebedor, las bebidas que no le gustan.
SELECT nombre, nombrebeb
FROM bebedor, bebida

EXCEPT

SELECT nombre, nombrebeb
FROM bebedor NATURAL JOIN gusta NATURAL JOIN bebida;

-- 5. Los bebedores que les gusta la malta y que no les gusta la Frescolita y la
--    Coca-Cola.
SELECT ci, nombre
FROM bebedor b
WHERE EXISTS (SELECT *
              FROM gusta NATURAL JOIN bebida
              WHERE b.ci = ci AND nombrebeb = 'Malta') AND
      NOT EXISTS (SELECT *
                  FROM gusta NATURAL JOIN bebida
                  WHERE b.ci = ci AND nombrebeb = 'Frescolita') AND
      NOT EXISTS (SELECT *
                  FROM gusta NATURAL JOIN bebida
                  WHERE b.ci = ci AND nombrebeb = 'Coca-Cola');

-- 6. Los bebedores que no les gusta las bebidas que le gusta a Luis Pérez
-- Plantear una solucion alternativa usando existenciales
SELECT ci, nombre
FROM bebedor b NATURAL JOIN gusta g

EXCEPT

SELECT ci, nombre
FROM bebedor NATURAL JOIN gusta
WHERE CodBeb IN (SELECT CodBeb
                  FROM bebedor NATURAL JOIN gusta
                  WHERE Nombre = 'Luis Perez');

-- 10. Los bebedores que frecuentan alguna fuente de soda que sirve al menos una
--     bebida que les guste
SELECT DISTINCT CI, Nombre
FROM BEBEDOR NATURAL JOIN FRECUENTA NATURAL JOIN VENDE NATURAL JOIN GUSTA;

-- 30. La bebida más servida entre las fuentes de soda que frecuenta Luis Pérez
-- Solucion aportada por @815edwar
SELECT beb.*
FROM BEBIDA beb NATURAL JOIN VENDE v NATURAL JOIN FRECUENTA f NATURAL JOIN BEBEDOR b1
WHERE b1.Nombre='Luis Perez'
GROUP BY CodBeb
HAVING COUNT(CodFS) >= ALL(SELECT COUNT(CodFS)
                        FROM VENDE v NATURAL JOIN FRECUENTA f NATURAL JOIN BEBEDOR b1
                        WHERE b1.Nombre='Luis Perez'
                        GROUP BY codFS);

-- 32. El bebedor a quién más bebidas le gustan y más fuentes de soda frecuenta
SELECT b.*
FROM BEBEDOR b NATURAL JOIN GUSTA g NATURAL JOIN FRECUENTA f
GROUP BY CI
HAVING COUNT(CodBeb) >= ALL(SELECT COUNT(CodBeb)
                            FROM GUSTA g NATURAL JOIN FRECUENTA f
                            GROUP BY CI)
    AND COUNT(CodFS) >= ALL(SELECT COUNT(CodFS)
                            FROM GUSTA g NATURAL JOIN FRECUENTA f
                            GROUP BY CI);

-- 34. La[s] fuente[s] de soda que vende[n] a menor precio la malta
SELECT CodFS, min(precio)
FROM VENDE v NATURAL JOIN BEBIDA b
WHERE b.NombreBeb='Malta'
GROUP BY CodFS
HAVING min(precio) <= ALL(SELECT min(precio)
                          FROM VENDE v NATURAL JOIN BEBIDA b
                          WHERE b.NombreBeb='Malta'
                          GROUP BY CodFS);

-- 35. El precio promedio de venta de la malta en las fuentes de soda frecuentadas
-- por Luis Pérez
SELECT AVG(precio)
FROM BEBEDOR b NATURAL JOIN FRECUENTA f NATURAL JOIN BEBIDA beb NATURAL JOIN VENDE v
WHERE (b.Nombre='Luis Perez' AND beb.NombreBeb='Malta');
