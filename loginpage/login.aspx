<%@ Page Title ="Login Page" Language="C#" MasterPageFile="HomePage.master" Inherits="loginpage.login" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <body>
            <form id="form1" runat="server">
                <div>
                    <table style="width:100%;">
                        <caption class="style1">
                            <strong>Login Form</strong>
                        </caption>
                                
                        <tr>
                            <td class="style2">
                                Login ID:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Username"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Mobile Number:
                            </td>
                            <td>
                                <asp:TextBox ID="mobilenumber" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="mobilenumber" ErrorMessage="Please Enter Your Mobile#"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Password:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"  ErrorMessage="Please Enter Your Password"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button id="Button2" runat="server" Text="Log In" onclick="Button2Clicked" />
                            </td>
                            <td>
                                <asp:Label id="Label2" runat="server"></asp:Label>
                            </td>
                        </tr> 
                    </table>
                    <asp:GridView id="Gridview1" runat="server"></asp:GridView>
                </div>
            </form>
        </body>
    </asp:Content>
        