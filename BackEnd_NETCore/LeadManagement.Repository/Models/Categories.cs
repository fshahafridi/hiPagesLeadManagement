using System;
using System.Collections.Generic;

namespace LeadManagement.Repository.Models
{
    public partial class Categories
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int ParentCategoryId { get; set; }
    }
}
