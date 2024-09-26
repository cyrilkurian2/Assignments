using System;
using System.Collections.Generic;

namespace EmployeeManagement
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<Employee> employees = new List<Employee>
            {
                new Employee(1, "Joe", 20000, "Permanent"),
                new Employee(2, "Ajai", 30000, "Permanent"),
                new Employee(3, "Cyril", 15000, "Contract")
            };

            foreach (var employee in employees)
            {
                employee.Display();
            }

            
        }
    }

    public class Employee
    {
        public int EmpId { get; private set; }
        public string EmployeeName { get; set; }
        public double EmployeeSalary { get; set; }

        private string employeeType;
        public string EmployeeType
        {
            get { return employeeType; }
            set
            {
                if (value == "Permanent" || value == "Contract")
                {
                    employeeType = value;
                }
                else
                {
                    throw new ArgumentException("Employee type must be either 'Permanent' or 'Contract'");
                }
            }
        }

        public Employee(int id, string name, double salary, string type)
        {
            EmpId = id;
            EmployeeName = name;
            EmployeeSalary = salary;
            EmployeeType = type;
        }

        public void Display()
        {
            Console.WriteLine($"Employee Id: {EmpId}, Name: {EmployeeName}, Salary: {EmployeeSalary}");
        }
    }
}
