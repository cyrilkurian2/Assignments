using System;
using System.Linq;
using CardManagement.Models;
using CardManagement.Models.Models;

namespace CardManagement
{
    public class Actions
    {
        public void DisplayCustomer(CardManagementContext context, string checkCustId)
        {
            Console.WriteLine("====================");
            var tempCust = context.Customers.FirstOrDefault(x => x.id == checkCustId);

            if (tempCust != null)
            {
                tempCust.Display(); // Ensure this method exists in the Customer class
            }
            else
            {
                Console.WriteLine("Customer not found.");
            }
        }

        public void CheckAccount(CardManagementContext context, string checkAccId)
        {
            Console.WriteLine("========================");
            var tempAcc = context.Account.FirstOrDefault(x => x.id == checkAccId);

            if (tempAcc != null)
            {
                Console.WriteLine($" - Account ID: {tempAcc.id}, " +
                                  $"Account Number: {tempAcc.AccountNumber}, " +
                                  $"Type: {tempAcc.Type}, " +
                                  $"Balance: {tempAcc.Balance}");
            }
            else
            {
                Console.WriteLine("Account not found.");
            }
        }
    }
}
