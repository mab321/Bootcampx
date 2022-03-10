SELECT teachers.name as teacher, students.name AS student, assignments.name AS assignment, (started_at - completed_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN assignments ON assignments.id = assistance_requests.assignment_id
ORDER BY duration DESC;