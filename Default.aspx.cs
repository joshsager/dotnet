using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    private Product product;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack) productList.DataBind();
            product = this.GetProduct();
            productName.Text = product.pName;
            productDescription.Text = product.pDescription;
            productPrice.Text = product.pPrice.ToString("c");
    }

    private Product GetProduct()
    {
        // Pull data in from the drop down list
        DataView product = (DataView) productData.Select(DataSourceSelectArguments.Empty);
        product.RowFilter = string.Format("id = '{0}'", productList.SelectedValue);
        DataRowView row = (DataRowView)product[0];

        // Create a product object
        Product p = new Product();
        p.pID = (int)row["id"];
        p.pName = row["name"].ToString();
        p.pDescription = row["description"].ToString();
        p.pPrice = (decimal)row["price"];

        return p;
    }
}