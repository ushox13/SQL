--1

SELECT 
    Typ,
    SUM(CASE WHEN Value1 LIKE '%a%' THEN 1 ELSE 0 END) +
    SUM(CASE WHEN Value2 LIKE '%a%' THEN 1 ELSE 0 END) +
    SUM(CASE WHEN Value3 LIKE '%a%' THEN 1 ELSE 0 END) AS CountOfA
FROM GroupbyMultipleColumns
GROUP BY Typ --2 Puzzle




SELECT * 
FROM TESTDuplicateCount 
WHERE EmpName IN (
    SELECT EmpName
    FROM TESTDuplicateCount
    GROUP BY EmpName
    HAVING COUNT(*) > 1
) --3 Puzzle