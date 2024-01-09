SELECT coalesce(u.unique_id, null) unique_id, e.name
FROM Employees e LEFT JOIN EmployeeUNI u ON e.id=u.id