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

