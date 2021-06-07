# Pewlett-Hackard-Analysis
Performing analysis to audit a recent local congressional election in Colorado.

**Overview of the Employee Analysis**

The purpose of this employee analysis is to:
1. Determine the number of employees that are retiring per title.
2. Identify employees who are eligible to participate in a mentorship program.
3. Prepare a report for the team's manager summarizing the analysis for the 'silver tsunami'.

**Employee Analysis Results**

Based on the csv files provided, the results of the employee analysis are as follows:
* Out of the 90,000 employees approaching retirement:
	* Approximately 1/3 of the employees have the title of 'Senior Engineer'. An additional 1/6 of the employees have the title of 'Engineer'.
	* Approximately 1/3 of the employees have the title of 'Senior Staff'. An additional 1/6 of the employees have the title of 'Staff'.
* Additional analysis must be completed on the original datasets provided for Deliverable 1, as the current analysis does not provide insight into:
	* The percentage of current employees at each position who are retiring.
	* The amount of employees who are eligible (and qualified) for promotion to the 'Senior' level.

* Approximately 1,500 employees are eligible for the 'mentorship program' based on if the employee:
	* Has a birth date during the year 1965.
	* Is currently employeed.
* Additional analysis must be completed on the original datasets provided for Deliverable 2, as the current analysis:
	* Does not provide insight into the historical performance of those eligible for the mentorship program.
	* Severly limits the mentorship eligibility to one birth year, whereas the retirement analysis considers 4 birth years.

**Employee Analysis Summary**

Based on the datasets and instructions provided:
* Approximately 90,000 individuals will be up for retirement as the 'silver tsunami' begins to make an impact. However, this does not necessarily have a strong correlation with number of roles that need to be filled. Additional analysis is required to determine if those who are retiring can be replaced by better performing employees and additional automation.
* The question on if there is enough qualified individuals cannot be answered based on the provided data. This answer is most likely yes, however the analysis requested severly limits the number of current employees eligible for the program and does not take into consideration qualifications such as:
	* Historical performance
	* Length of time at the company
	* Ratio of eligible employees versus retiring employees based on title
	* The amount of effort and knowledge required to replace the retiring employees

Two additional queries that can improve this analysis include:
1. Calculating the percentage of each title that is nearing retirement. This can be completed by:
	1. Grouping by title on a dataset that is not filtered by birth date.
	2. Joining the results of the grouped title data with the retiring_titles table.
	3. Dividing the retiring employees count per title by the total employees per title.
2. Based on the available data, re-work the mentorship_eligibility query to not filter by a single birth year and instead:
	1. Greatly increase the range of eligibility
	2. Use length of employment as another eligibility requirement
	3. If additional data can be provided, add years of experience in similar roles and performance metrics to eligibility.
	4. Do not strictly use data to quantitative data to determine eligibility, but also include qualitative factors, such as interviews with managers or those approaching retirement.
	
