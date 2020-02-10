import UIKit
class Employee {
   
  var Id: Int
  var Name: String
  var Email: String?
  var EmployeeType: String
  var EmployeeActive: Bool
   
  init(Id: Int, Name: String, Email: String, EmployeeType: String, EmployeeActive: Bool) {
    self.Id = Id
    self.Name = Name
    self.Email = Email
    self.EmployeeType = EmployeeType
    self.EmployeeActive = EmployeeActive
  }
}
class EmployeeManager {
  var employeeList = [Employee]()
  func addEmployees(){
    employeeList.append(employee1)
    employeeList.append(employee2)
    employeeList.append(employee3)
    employeeList.append(employee4)
    employeeList.append(employee5)
  }
   
  func getNamefromId(id: Int) -> String{
    for employee in employeeList {
      if(employee.Id == id) {
        return employee.Name
      }
    }
    return ""
  }
   
  func getEmailfromId(id: Int) -> String!{
    for employee in employeeList {
      if(employee.Id == id) {
        return employee.Email
      }
    }
    return ""
  }
  func getEmployeeStatus(id: Int) -> Bool{
    for employee in employeeList {
      if(employee.Id == id) {
        return employee.EmployeeActive
      }
    }
    return false
  }
  func printEmployeeNames(){
    for Employee in employeeList {
      print(Employee.Name)
    }
  }
   
  func removeEmployee(id: Int){
    for employee in employeeList {
      if(employee.Id == id) {
        employeeList.remove(at: id)
      }
    }
  }
   
}
var employee1 = Employee(Id: 1, Name: "Vibha", Email: "@gmail.com", EmployeeType: "Inactive", EmployeeActive: false)
var employee2 = Employee(Id: 2, Name: "Rana", Email: "@gmail.com", EmployeeType: "Active", EmployeeActive: false)
var employee3 = Employee(Id: 3, Name: "Anurag", Email: "@gmail.com", EmployeeType: "Active", EmployeeActive: false)
var employee4 = Employee(Id: 4, Name: "Arora", Email: "@gmail.com", EmployeeType: "Active", EmployeeActive: false)
var employee5 = Employee(Id: 5, Name: "Phil", Email: "@gmail.com", EmployeeType: "Active", EmployeeActive: false)
var manager = EmployeeManager()
manager.addEmployees()
manager.printEmployeeNames()
print(manager.getNamefromId(id: 1))
print(manager.getEmailfromId(id: 1))
print(manager.getEmployeeStatus(id: 1))
manager.removeEmployee(id: 3)
print(manager.printEmployeeNames())
