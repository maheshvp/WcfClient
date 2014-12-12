<%@ page language="C#" autoeventwireup="true" inherits="index, App_Web_e3xs1yse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>WCF Employee Service</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="pnlForm" runat="server" DefaultButton="btnSubmit">
            <table style="width: 33%; margin: 50px auto 0 auto">
                <tr>
                    <td>
                        <span>Name</span>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rvName" runat="server" ErrorMessage="Name can't be empty"
                            ControlToValidate="txtName" ValidationGroup="RegistrationForm" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span>Age</span>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server" MaxLength="2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAge" runat="server" ErrorMessage="Age can't be empty"
                            ControlToValidate="txtAge" ValidationGroup="RegistrationForm" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span>Designation</span>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDesignation" runat="server" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDesignation" runat="server" ErrorMessage="Designation can't be empty"
                            ControlToValidate="txtDesignation" ValidationGroup="RegistrationForm" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span>Location</span>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLocation" runat="server" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLocation" runat="server" ErrorMessage="Location can't be empty"
                            ControlToValidate="txtLocation" ValidationGroup="RegistrationForm" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="RegistrationForm"
                            OnClick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <div style="margin: 50px auto 0 auto; width: 400px;">
        <asp:GridView ID="gvEmployee" runat="server" AutoGenerateColumns="False" DataKeyNames="EmpId">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Age" HeaderText="Age" />
                <asp:BoundField DataField="Designation" HeaderText="Designation" />
                <asp:BoundField DataField="Location" HeaderText="Location" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkEdit" runat="server" OnClick="EditEmployee">Edit</asp:LinkButton>
                        &nbsp;|
                        <asp:LinkButton ID="lnkDelete" runat="server" OnClick="DeleteEmployee" OnClientClick="return confirm('Do you want to delete?')">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
