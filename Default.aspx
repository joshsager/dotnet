<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart Applicaiton</title>
    <link rel="stylesheet" href="css/styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header><h1>This is My Shopping Cart Store</h1></header>
        <section>
            <asp:DropDownList ID="productList" AutoPostBack="True" runat="server" DataSourceID="productData" DataTextField="name" DataValueField="id"></asp:DropDownList>
            <asp:SqlDataSource ID="productData" runat="server" ConnectionString="<%$ ConnectionStrings:ProductsConnectionString %>" SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
        </section>
        <section>
            <strong>Name:</strong> <asp:Label ID="productName" runat="server" Text="Label"></asp:Label><br />
            <strong>Description:</strong> <asp:Label ID="productDescription" runat="server" Text="Label"></asp:Label><br />
            <strong>Price: </strong> <asp:Label ID="productPrice" runat="server" Text="Label"></asp:Label><br />
            <strong>Quantity: </strong><asp:TextBox ID="quantity" runat="server" MaxLength="3" Width="40px"></asp:TextBox>&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Add to Cart" /><br />
            <asp:RequiredFieldValidator ID="RequiredFieldQuantity" runat="server" ErrorMessage="A quantity must be entered" ControlToValidate="quantity" ForeColor="red"></asp:RequiredFieldValidator><br />
            <asp:RangeValidator ID="RangeValidatorquantity" runat="server" ErrorMessage="A quantity of 1 to 300 must be entered." ControlToValidate="quantity" MaximumValue="300" MinimumValue="1" ForeColor="red"></asp:RangeValidator>

        </section>
    </form>
</body>
</html>
