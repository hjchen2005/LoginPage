<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 183px;
        }
        .style3
        {
            width: 183px;
            height: 26px;
        }
        .style4
        {
            height: 26px;
        }
        .style5
        {
            width: 167px;
        }
        .style6
        {
            width: 167px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                Username</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>
                &nbsp;*</td>
            <td>
                <asp:RequiredFieldValidator ID="RequireFieldValidatorUsername" runat="server" 
                    ErrorMessage="A username is required for registration" 
                    ControlToValidate="TextBoxUsername" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                E-mail</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                &nbsp;*</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatoremail" runat="server" 
                    ErrorMessage="An valid email address is required" 
                    ControlToValidate="TextBoxEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^([a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]){1,70}$"
                    ControlToValidate="TextBoxEmail" 
                    ErrorMessage="It is not a valid email address" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Password</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxPassword" TextMode="Password" runat="server"></asp:TextBox>
                &nbsp;*</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPword" runat="server" 
                    ErrorMessage="Please enter your password" 
                    ControlToValidate="TextBoxPassword" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Confirm password</td>
            <td class="style6">
                <asp:TextBox ID="TextBoxConfirmPword" TextMode="Password" runat="server"></asp:TextBox>
                &nbsp;*</td>
            <td class="style4">
                <asp:CompareValidator ID="CompareValidatorConfirmPword" runat="server" 
                    ControlToCompare="TextBoxPassword" 
                    ErrorMessage="Passwords are not matching" 
                    ControlToValidate="TextBoxConfirmPword" ForeColor="Red"></asp:CompareValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPword" runat="server" 
                    ErrorMessage="Please repeat the password you entered" 
                    ControlToValidate="TextBoxConfirmPword" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Country</td>
            <td class="style5">
                <asp:DropDownList ID="DropDownListCountry" runat="server" Height="16px" 
                    Width="127px">
                    <asp:ListItem>Select country</asp:ListItem>
                    <asp:ListItem>United States</asp:ListItem>
                    <asp:ListItem>United Kingdom</asp:ListItem>
                    <asp:ListItem>Canada</asp:ListItem>
                    <asp:ListItem>Brazil</asp:ListItem>
                    <asp:ListItem>China</asp:ListItem>
                    <asp:ListItem>Russia</asp:ListItem>
                    <asp:ListItem>Israel</asp:ListItem>
                </asp:DropDownList>
                &nbsp;*</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCountry" runat="server" 
                    ErrorMessage="Please select a country" 
                    ControlToValidate="DropDownListCountry" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Telephone</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxPhone" runat="server"></asp:TextBox>
                &nbsp;*</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" 
                    ErrorMessage="A phone number is required for registration" 
                    ControlToValidate="TextBoxPhone" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" 
                    onclick="SubmitButton_Click" />
                &nbsp;<input id="Reset1" type="reset" value="reset"  /></td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
