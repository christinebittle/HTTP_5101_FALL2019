<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aspx_validation.aspx.cs" Inherits="HTTP_5101_FALL2019.aspx_validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="/Content/Site.css" />
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <h1>Halloween Costume Party RSVP!</h1>
            <p>The party takes place on October 25th</p>
        </section>
        <section>
            <h2>Please Enter Your First Name</h2>
            <asp:TextBox runat="server" ID="guest_fname"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter your first name" ControlToValidate="guest_fname"></asp:RequiredFieldValidator>
        </section>
        <section>
            <h2>Please Enter Your Last Name</h2>
           <asp:TextBox runat="server" ID="guest_lname"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter your last name" ControlToValidate="guest_lname"></asp:RequiredFieldValidator>
        </section>
        <section>
            <h2>What kind of costume will you wear?</h2>
            <asp:DropDownList runat="server" ID="guest_costumetype">
                <asp:ListItem Value="" Text="-- Choose One --"></asp:ListItem>
                <asp:ListItem Value="scary" Text="Scary"></asp:ListItem>
                <asp:ListItem Value="cute" Text="Cute"></asp:ListItem>
                <asp:ListItem Value="funny" Text="funny"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter a costume type (going by yourself is not an option)!" ControlToValidate="guest_costumetype"></asp:RequiredFieldValidator>
        </section>
        <section>
            <h2>How many friends will you bring? (maximum 2)</h2>
            <asp:TextBox runat="server" ID="guest_friendcount"></asp:TextBox>
            <asp:RangeValidator runat="server" EnableClientScript="true" ControlToValidate="guest_friendcount" ErrorMessage="Please enter a friend number between 0 and 2." MinimumValue="0" MaximumValue="2" ></asp:RangeValidator>
        </section>
        <section>
            <h2>Enter Your Phone Number i.e. (999) 212 8350:</h2>
            <asp:TextBox runat="server" ID="guest_phone"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="guest_phone" ValidationExpression="[(]{0,1}[0-9]{3}[)]{0,1}(\s*|\-+)[0-9]{3}(\s*|\-+)[0-9]{4}" ErrorMessage="Please enter a valid phone number."></asp:RegularExpressionValidator>
        </section>
        <section>
            <asp:ValidationSummary runat="server" ShowSummary="true" />
        </section>
        <section id="confirmbox" runat="server">

        </section>
        <section>
            <input type="submit" value="submit" />
        </section>
    </form>
</body>
</html>
