Doctor Utilization
  SELECT
    d.doctor_name,
    COUNT(a.appointment_id) AS total_appointments
FROM Doctors d
JOIN Appointments a
ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_name;

Patient Visit History
SELECT
    p.patient_name,
    d.doctor_name,
    a.appointment_date
FROM Patients p
JOIN Appointments a
ON p.patient_id = a.patient_id
JOIN Doctors d
ON a.doctor_id = d.doctor_id
ORDER BY a.appointment_date;

Revenue Report
SELECT
    d.doctor_name,
    SUM(a.consultation_fee) AS revenue
FROM Doctors d
JOIN Appointments a
ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_name;

Monthly Revenue
SELECT
    MONTH(appointment_date) AS month,
    SUM(consultation_fee) AS total_revenue
FROM Appointments
GROUP BY MONTH(appointment_date);

Top Doctor Ranking
SELECT
    doctor_name,
    total_appointments,
    RANK() OVER (ORDER BY total_appointments DESC) AS doctor_rank
FROM (
    SELECT
        d.doctor_name,
        COUNT(*) AS total_appointments
    FROM Doctors d
    JOIN Appointments a
    ON d.doctor_id = a.doctor_id
    GROUP BY d.doctor_name
) x;
