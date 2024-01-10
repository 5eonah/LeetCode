SELECT a.machine_id, ROUND(AVG(b.timestamp-a.timestamp),3) processing_time
FROM (SELECT * FROM Activity WHERE activity_type = 'start') a JOIN
     (SELECT * FROM Activity WHERE activity_type = 'END') b 
     ON a.machine_id=b.machine_id AND a.process_id=b.process_id
GROUP BY 1