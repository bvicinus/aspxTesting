<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo.aspx.cs" Inherits="Demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration </title>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="btnSubmit">
    <div>
    
        Please Register<br />
        <br />
        <br />
        <asp:TextBox ID="tbLastName" runat="server" AutoPostBack="True" 
            ontextchanged="tbLastName_TextChanged" TabIndex="1"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbFirstName" runat="server" AutoPostBack="True" 
            ontextchanged="tbFirstName_TextChanged" TabIndex="2"></asp:TextBox>
        <br />
        Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        First Name<br />
        <br />
        <br />
        Gender<br />
        <asp:RadioButton ID="rbUndisclosed" runat="server" Checked="True" 
            GroupName="genderButtons" Text="Undisclosed" />
        <br />
        <asp:RadioButton ID="rbMale" runat="server" GroupName="genderButtons" 
            Text="Male" />
        <br />
        <asp:RadioButton ID="rbFemale" runat="server" GroupName="genderButtons" 
            Text="Female" />
        <br />
        <br />
        <br />
        <asp:CheckBox ID="cbCseStudent" runat="server" 
            Text="USF Computer Science Student" />
        <br />
        <br />
        <br />
        Classification
        <br />
        <asp:DropDownList ID="ddClass" runat="server">
            <asp:ListItem Selected="True" Value="0">Unclassified</asp:ListItem>
            <asp:ListItem Value="1">Freshman</asp:ListItem>
            <asp:ListItem Value="2">Sophomore</asp:ListItem>
            <asp:ListItem Value="3">Junior</asp:ListItem>
            <asp:ListItem Value="4">Senior</asp:ListItem>
            <asp:ListItem Value="5">Graduate</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="94px" 
            Enabled="False" onclick="btnSubmit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
            UseSubmitBehavior="False" />
    
    </div>
    </form>
</body>
</html>
