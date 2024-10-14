using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CardManagement.Models;
using Microsoft.EntityFrameworkCore;

namespace CardManagement.Models.Models
{
   
    public class CardManagementContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=localhost;Database=db_card;User Id=sa;Password=Pass@123;TrustServerCertificate=true");
            //optionsBuilder.UseSqlServer(@"Server=192.168.100.125;Database=Test1;User Id=essl;Password=essl;TrustServerCertificate=true");

        }

        public DbSet<Customer> Customers { get; set; }
        public DbSet<Account> Account { get; set; }
        public DbSet<Transaction> Transactions { get; set; }
    }

}
