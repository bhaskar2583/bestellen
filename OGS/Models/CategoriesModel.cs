using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace OGS.Models
{
    public class CategoriesModel
    {
        [ScaffoldColumn(false)]
        [Key]
        public int CategoryID { get; set; }
        [Required, StringLength(100), Display(Name = "Name")]
        public string CategoryName { get; set; }
        [Required, StringLength(250), Display(Name = "Short Desc")]
        public string CategoryShortDescription { get; set; }
        public string CategoryLongDescription { get; set; }
        [DefaultValue(true)]
        public bool IsActive { get; set; }
        [DefaultValue(false)]
        public bool IsTopCategory { get; set; }
        [DefaultValue(true)]
        public bool OffersAllowed { get; set; }
        public string CategoryImage { get; set; }
        [DefaultValue(0)]
        public int OrderId { get; set; }        
        public DateTime CreatedOn { get; set; }
        public int CreatedBy { get; set; }        
        public DateTime? ModifiedOn { get; set; }
        public int? ModifiedBy { get; set; }

        public virtual ICollection<ProductsModel> Products { get; set; }
    }
}