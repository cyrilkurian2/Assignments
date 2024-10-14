using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Security.Principal;
using System.Text.RegularExpressions;
using CardManagement;
using CardManagement.Models;
using CardManagement.Models.Models;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Microsoft.Identity.Client;



class Program
{


    static void Main()
    {

        using (var context = new CardManagementContext())
        {
            int getCustId()
            {
                return context.Customers.Any() ?
                        context.Customers.OrderByDescending(x => x.id).Select(x => int.Parse(x.id.Substring(4))).First() + 1
                            : 1001;
            }

            int getAccId() 
            { 
                return context.Account.Any() ?
                    context.Account.OrderByDescending(x => x.id).Select(x => int.Parse(x.id.Substring(3))).First() + 1
                    : 1001;
            }
            
            int getTranId() 
            {
                return context.Transactions.Any() ?
                    context.Transactions.OrderByDescending(x => x.id).Select(x => int.Parse(x.id.Substring(3))).First() + 1
                    : 1001;
            }
 

            // Create a customer
            //int CustomerId = getCustId();
            var customer = new Customer(getCustId())
            {
                CustomerName = "Jane Smith",
                CustomerAddress = "456 Elm St",
                Email = "jane.smith@example.com",
                PhoneNumber = "987-054-3210",
                Accounts = new List<Account>() // Initialize Accounts list
            };
            context.Customers.Add(customer);
            context.SaveChanges();

            // Create accounts
            var account1 = new Account(getAccId())
            {
                AccountNumber = "123457689",
                Type = Account.AccountType.Debit,
                Balance = 500.0
            };
            customer.Accounts.Add(account1);
            context.SaveChanges();

            var account2 = new Account(getAccId())
            {
                AccountNumber = "987654376",
                Type = Account.AccountType.Credit,
                Balance = 1000.0
            };

            // Add accounts to the customer
            customer.Accounts.Add(account2);
            context.SaveChanges();

            // Save customer and accounts to the database
            

            // Display customer details and accounts
            customer.Display();
            customer.AccountDisplay();

            // Create transactions
            var depositTransaction = new Transaction(getTranId())
            {
                Type = Transaction.TransactionType.Deposit,
                Amount = 200.0,
                Description = "Deposit for savings",
                Accounts = account1 // Associate with the account
            };

            account1.AddTransaction(depositTransaction);
            context.Transactions.Add(depositTransaction);
            context.SaveChanges();


            var withdrawalTransaction = new Transaction(getTranId())
            {
                Type = Transaction.TransactionType.Withdrawal,
                Amount = 100.0,
                Description = "ATM Withdrawal",
                Accounts = account1 // Associate with the account
            };

            // Add transactions to account and update balances
            account1.AddTransaction(withdrawalTransaction);
            context.Transactions.Add(withdrawalTransaction);


            // Save transactions to the database
            context.SaveChanges();

            // Display updated account details
            customer.AccountDisplay();

            // List transactions for account1
            account1.ListTransactions();



            var service = new Actions();

            // Display a customer with ID "Cust1002"
            service.DisplayCustomer(context,"Cust1002");

           

            // Check an account with ID "Acc1005"
            service.CheckAccount(context, "Acc1005");

        }
    }
}

