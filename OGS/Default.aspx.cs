using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OGS.Models;

namespace OGS
{
    public partial class _Default : Page
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
        public IQueryable<CategoriesModel> lvCategories_GetData()
        {
            var _db = new OGS.Models.ApplicationDbContext();
            IQueryable<OGS.Models.CategoriesModel> query = _db.ogsCategories;
            return query;
        }
    }
}