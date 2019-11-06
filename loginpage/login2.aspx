<%@ Page Title ="Login Page" Language="C#" MasterPageFile="HomePage.master" Inherits="loginpage.login2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form1" runat="server">
    <table style="width:100%;">
        <caption class="style1">
            <strong>Login Form</strong>
        </caption>
                
        <tr>
            <td class="style2">
                First Name :
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter First Name"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                User Name :
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter User Name"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                   email :
            </td>
            <td>
                <asp:TextBox ID="TextBox3" TextMode="Email" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter email"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Password:
            </td>
            <td>
                <asp:TextBox ID="TextBox4" TextMode="Password" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"  ErrorMessage="Please Enter Your Password"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>            
        <tr>
            <td class="style2">
                Mobile Number:
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter Your Mobile#"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
               <asp:Button id="Button3" runat="server" Text="Insert" OnClick="Insert_Clicked" />   
               <asp:Button id="Button5" runat="server" Text="Enter Username & Delete" OnClick="Delete_Clicked" />   
               <asp:Button id="Button4" runat="server" Text="Gridview Test" OnClick="Gridview_Clicked" />   
            </td>
            <td>
                <asp:Label id="Label2" runat="server"></asp:Label>
            </td>
        </tr> 
    </table>
        
    <asp:Label id="login2label1" runat="server" Text="Grid View"></asp:Label>
    <asp:Label id="msglabel" runat="server" ></asp:Label>        
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
        
    
</form>
</asp:Content>
