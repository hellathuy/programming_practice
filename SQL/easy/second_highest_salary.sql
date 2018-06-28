/* https://leetcode.com/problems/second-highest-salary/description/ */

SELECT IFNULL(
  (SELECT DISTINCT salary 
    FROM employee 
      ORDER BY salary DESC 
      LIMIT 1 OFFSET 1), NULL) 
as SecondHighestSalary;