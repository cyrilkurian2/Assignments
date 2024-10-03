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
                new Employee(1, "John Doe", 15000, "Permanent"),
                new Employee(2, "Liam Smith", 20000, "Permanent"),
                new Employee(3, "Mary James", 15000, "Contract")
            };

            foreach (var employee in employees)
            {
                employee.Display();
            }

            Employee.CountDisplay();
            
        }
    }

    public class Employee
    {
        public static int count = 0;
        public string EmpId { get; private set; }
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

        public Employee(int id)
        {
            EmpId = "Emp" + (1000 + id);
            count++;
        }

        public Employee(int id, string name) : this(id)
        { 
            EmployeeName = name;
        }

        public Employee(int id, string name,  double salary) : this(id,name)
        {
            EmployeeSalary = salary;
        }
        public Employee(int id, string name, double salary, string type) : this (id, name,salary)
        {
            EmployeeType = type;
        }

        public void Display()
        {
            Console.WriteLine($"Employee Id: {EmpId}, Name: {EmployeeName}, Salary: {EmployeeSalary}, Type: { EmployeeType}");
        }

        public static void CountDisplay() 
        {
           Console.WriteLine("Total Number of Employees: " +  count);
        }
    }
}
