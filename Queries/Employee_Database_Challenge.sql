-- Deliverable 1:

--- 1. Create Retirement Titles Tables
SELECT e.emp_no, e.first_name, e.last_name,
	ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees as e
LEFT JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '01-01-1952' AND '12-31-1955')
ORDER BY e.emp_no;
---- retirement_titles.csv exported to Data folder

--- 2. Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) 
rt.emp_no, rt.first_name, rt.last_name,rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, to_date DESC;
---- unique_titles.csv exported to Data folder

--- 3. Number of Employees by title who are about to retire
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;
---- retiring_titles.csv exported to Data folder

-------------------------

-- Deliverable 2:

--- Determine list of current employees eligible for the mentorship program
SELECT DISTINCT ON(e.emp_no)
e.emp_no, e.first_name, e.last_name, e.birth_date,
	de.from_date, de.to_date,
		ti.title
INTO mentorship_eligibility
FROM employees as e
LEFT JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
	LEFT JOIN titles as ti
		ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;
---- mentorship_eligibility.csv exported to Data folder