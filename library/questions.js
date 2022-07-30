const employeeDept = [];
const employeeRole = [];
const employeeStatus = [];


const beginQuestion =
{ type: 'list',
  message: 'What would you like to open?',
  name: 'nextOption',
  choices: ['View Departments', 'View Roles', 'View Employees', 'Add Departments', 'Add Roles', 'Add Employees', 'Update Employee Roles', 'Exit']
};

const deptQuestions =
{ type: 'input',
  message: 'New Department name:',
  name: 'deptNames'
};

const roleQuestions = [
{ type: 'input',
  message: 'New Role name:',
  name: 'roleTitle'
},
{ type: 'input',
  message: 'New Role Salary:',
  name: 'newSalary'
},
{ type: 'list',
  message: 'New Role Department:',
  name: 'roleDept',
  choices: employeeDept
}];

const empQuestions = [
{ type: 'input',
  message: 'New employee first name:',
  name: 'firstName'
},
{ type: 'input',
  message: 'New employee last name:',
  name: 'lastName'
},
{ type: 'list',
  message: 'New employee role:',
  name: 'NewRole',
  choices: employeeRole
},
{ type: 'list',
  message: 'Manager of new employee:',
  name: 'deptManager',
  choices: employeeStatus
}];

const updateRole = [
{ type: 'list',
  message: 'Choose an Employee to update:',
  name: 'currentUpdateEmp',
  choices: employeeStatus
},
{ type: 'list',
  message: 'Choose a new Role for the Employee:',
  name: 'roleUpdate',
  choices: employeeRole
}];

module.exports = {beginQuestion, deptQuestions, roleQuestions, empQuestions, updateRole, employeeDept, employeeRole, employeeStatus};