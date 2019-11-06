<%@ Page Title ="Login Page" Language="C#" MasterPageFile="HomePage.master" Inherits="loginpage.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <h1 >
            <asp:Label ID = "Label1" runat="server" Text="Home Page" ></asp:Label>             
        </h1>        
        <asp:TextBox runat="server" id="login" ></asp:TextBox>
        <div>  
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="gender" />  
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="gender" />  
        </div>  
        
        <div style="padding-left : 150px;">
            
             <asp:HyperLink Target="_blank" HRef="http://www.gmail.com" id="a1" runat="server" >Visit Gmail</asp:HyperLink>

             <asp:HyperLink Target="_blank" HRef="http://www.yahoo.com" id="a2" runat="server" >Visit Yahoo</asp:HyperLink>
        </div>
        
        <div>
            Click here: <asp:HyperLink ID="hyp1" runat="server" Target="_blank" NavigateUrl= "http://www.youtube.com" Text="You Tube" ></asp:HyperLink>
        </div>
        
<!--        panel web server control.  -->
        
         <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="Aqua" Height="100px" Width="250px">Panel displayed:
            </asp:Panel>
        </div>
        
<!--        Validators.-->
        <br/>
        <br/>
        <div>
            <asp:Label id="Label5" runat="server" Text="User Name" ></asp:Label>
            <asp:TextBox id="TextBox5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter Values" BackColor="Aquamarine">
            </asp:RequiredFieldValidator>
            <br/>
      </div>

        <br/>
        
<!--        Compare validators-->
        
     <div>
       <asp:Label ID="Label6" runat="server" Text="Number1" ></asp:Label>
       <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please Enter Values" BackColor="Aquamarine">
            </asp:RequiredFieldValidator><br/>
       <asp:Label ID="Label7" runat="server" Text="Number2" ></asp:Label>
       <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please Enter Values" BackColor="Aquamarine">
            </asp:RequiredFieldValidator>
       <br/>
       <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Values must be different" ControlToCompare="TextBox7" ControlToValidate="TextBox6" Type="Integer" Operator="NotEqual" BackColor="Aquamarine" >
       </asp:CompareValidator>
       <br/>
     </div>
     <div>   
         <asp:Button id="button1" runat="server" Text="Click me!" OnClick="Button1_Clicked" />
         <asp:HiddenField id="hfield1" runat="server" Value="0" />   
     </div>   
     <asp:Button id="Button2" runat="server" Text="Viewfied test" OnClick="Button2_Clicked" />   
     <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>      
    <asp:Label Visible=true runat="server" id="genderId"></asp:Label>  
</asp:Content>


