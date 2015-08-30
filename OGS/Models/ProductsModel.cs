using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace OGS.Models
{
    public class ProductsModel
    {
        [ScaffoldColumn(false)]
        [Key]
        public int ProductID { get; set; }
        [Required, StringLength(100), Display(Name = "Product Name")]
        public string ProductName { get; set; }
        [Required, StringLength(250)]
        public string ProductShortDescription { get; set; }
        public string ProductLongDescription { get; set; }
        [Required]
        public decimal ProductPrice { get; set; }
        public decimal ProductDiscountPrice { get; set; }
        public int QuantityAvailable { get; set; }
        [DefaultValue(false)]
        public bool QuantityAllowedonUI { get; set; }
        public int QuantityMaxAllowedperUser { get; set; }
        public int QuantitySold { get; set; }
        public int QuantityRemaining { get; set; }
        [Required]
        public string ProductImage { get; set; }
        public int OrderId { get; set; }
        [DefaultValue(true)]
        public bool DiscountAllowed { get; set; }
        [DefaultValue(true)]
        public bool IsActive { get; set; }
        public bool IsTopProduct { get; set; }
        public int Rating { get; set; }
        [DefaultValue(false)]
        public bool IsOutofStock { get; set; }
        [DefaultValue(true)]
        public bool OffersAllowed { get; set; }
        public DateTime CreatedOn { get; set; }
        public int CreatedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public int? ModifiedBy { get; set; }
        public int? CategoryID { get; set; }
        public virtual CategoriesModel Category { get; set; }
    }
}