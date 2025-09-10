



| #  | Collection/Table    | Change Type          | MongoDB Structure (Before)        | PostgreSQL Structure (After)             | purpose/Notes               | 
|----|---------------------|-----------------------|------------------------------------|-------------------------------------------|-------------------------------|
| 1  |       Role           |   Added                |    not existed                     | id,name                                   | Redesigned the RBAC  |
| 2  |        MenuItem       |  Added               |  not existed                      | id,label,icon,path,parentid               | Redesigned the RBAC   | 
| 3  | RoleMenu              |   Junction table              |  not existed                      | roleId,menuItemId                         | Redesigned the RBAC  | 
| 4  |  leavelog            |  dataType changed       | {startDate: string ,endDate:string}      | {startDate: Date ,endDate:Date}            |  enhancement        | 
| 5  | leavemaster          |removed leaveField array  |                                           |                         |   added normalization  | 
| 6  |leaveCount           | added                     |                                    |                               | added normalization |
| 6  |leaveAssignUser      | removed leaveField array  |                                    |                               | added normalization |
| 7  | leaveMaintain       | added                     |                                    |                               | added normalization  |
| 8  |OffcBranch  | removed empList array & added relation to address table |            |                               | added normalization |
| 9  | address       | added                              |   not existed |id,address,city,district,state,country,pincode|  added normalization  |
| 10 | Allowance | added                                  |  not existed | id, name , amount |  added normalization |
| 11 | Deduction | added                                  |  not existed | id, name , amount |  added normalization |
| 12 | Payslip  | removed allowances & reduction array , added createdBy, issuedDate |       |                       |added normalization|
| 13 | salarypaydetails | removed the collection |                |                  | move salary amount and processing date to playslip |
| 14 |payrolldetails | removed allowances & reduction array |                        |                            |                       |
| 15 | client         | removed project array and added relation to address table |  |                            |                         |
| 16 | salarylogs     | pointed salaryPaydetailIdList from salarypaydetails to payslip |                          |                          |
| 17 | user  | pointed to nominee, changed dob data type to Date, modified user Role |         |             |            |
| 18 |userRole| Added junction table to store roles | not existed | userId, roleId | |
