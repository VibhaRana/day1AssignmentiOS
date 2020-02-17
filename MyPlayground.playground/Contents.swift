import UIKit
import Foundation
//Make class
class Employee {
    
   //Add instances
  var Id: Int
  var Name: String
  var Email: String?
  var EmployeeType: String
  var EmployeeActive: Bool
   
    //Add a constructor
  init(Id: Int, Name: String, Email: String, EmployeeType: String, EmployeeActive: Bool) {
    self.Id = Id
    self.Name = Name
    self.Email = Email
    self.EmployeeType = EmployeeType
    self.EmployeeActive = EmployeeActive
  }
}

//Make another class
class EmployeeManager {
  var employeeRecord = [Employee]()
    
    //Make a function which access the array and append the number of employees to employeeRecord..
    //problem - cant access any employee except employee1, shows error - "Use of unresolved identifier"
  func addEmployees(){
    employeeRecord.append(employee1)
    employeeRecord.append(employee2)
    employeeRecord.append(employee3)
    employeeRecord.append(employee4)
    employeeRecord.append(employee5)
  }
    
   //to get name from id make the function and saet the datatype of id to Int. Make a for-each loop which says if the id matches, retreive the name of the employee
    func getNamefromId(id: Int) -> String{
    for employeeName in employeeRecord {
      if(employeeName.Id == id) {
        return employeeName.Name
      }
    }
    return ""
  }
    
    
   //Make a function to get email from id. Set the datatype of id as Int. Email is optional in records so force unwrap it by using String!. Use a for-each loop which says if id matches, retrive the email.
  func getEmailfromId(id: Int) -> String!{
    for employeeEmail in employeeRecord{
      if(employeeEmail.Id == id) {
        return employeeEmail.Email
      }
    }
    return ""
  }
    
    //Make a function to get EMPLOYEESTATUS which is a boolean. set the datatype to Int which returns a bool value. Use a for loop to retrive the status of employees
  func getEmployeeStatus(id: Int) -> Bool{
    for employee in employeeRecord{
      if(employee.Id == id) {
        return employee.EmployeeActive
      }
    }
    return false
  }
    
    
    //Make a function which eventually prints the name of the employees in the employeeRecord
  func printEmployeeNames(){
    for Employee in employeeRecord {
      print(Employee.Name)
    }
    //return ""
  }
   
    // delete employee from employeeRecord
  func deleteEmployee(id: Int) -> String{
    for employee in employeeRecord {
      if(employee.Id == id) {
        employeeRecord.remove(at: id)
      }
    }
  }
   
}

//Assign Id, Name, Email, EmployeeType and EmployeeActive values to all 5 employees
var employee1 = Employee(Id: 1, Name: "Vibha", Email: "vibha@gmail.com", EmployeeType: "Inactive", EmployeeActive: false)
var employee2 = Employee(Id: 2, Name: "Rana", Email: "RAna@gmail.com", EmployeeType: "Active", EmployeeActive: false)
var employee3 = Employee(Id: 3, Name: "Anurag", Email: "@gmail.com", EmployeeType: "Active", EmployeeActive: false)
var employee4 = Employee(Id: 4, Name: "Arora", Email: "@gmail.com", EmployeeType: "Active", EmployeeActive: false)
var employee5 = Employee(Id: 5, Name: "Phil", Email: "@gmail.com", EmployeeType: "Active", EmployeeActive: false)



var manager = EmployeeManager()
//add 5 employees to EmployeeManager class
manager.addEmployees()

//print the names of the employees
manager.printEmployeeNames()

//call get method on "Employer Manager" class atleast once
print(manager.getNamefromId(id: 1))
print(manager.getEmailfromId(id: 1)!)
print(manager.getEmployeeStatus(id: 1))

//Delete atleast 3 employees from list
manager.deleteEmployee(id: 3)
print(manager.printEmployeeNames())
