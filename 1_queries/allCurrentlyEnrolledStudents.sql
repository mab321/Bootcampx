SELECT name, id , cohort_id
FROM students 
WHERE end_date IS NULL
ORDER By cohort_id;