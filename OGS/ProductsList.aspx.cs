using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OGS.Models;
using System.Web.ModelBinding;

namespace OGS
{
    public partial class ProductsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<ProductsModel> lvProductsList_GetData(
                        [QueryString("id")] int? categoryId,
                        [RouteData] string categoryName)
        {
            var _db = new OGS.Models.ApplicationDbContext();
            IQueryable<ProductsModel> query = _db.ogsProducts;

            if (categoryId.HasValue && categoryId > 0)
            {
                query = query.Where(p => p.CategoryID == categoryId);
            }

            if (!String.IsNullOrEmpty(categoryName))
            {
                query = query.Where(p =>
                                    String.Compare(p.Category.CategoryName,
                                    categoryName) == 0);
            }
            return query;
        }
    }
}