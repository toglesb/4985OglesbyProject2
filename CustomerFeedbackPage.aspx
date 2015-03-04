﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerFeedbackPage.aspx.cs" Inherits="CustomerFeedbackPage" %>

<!DOCTYPE html>
<link href="Styles/Style.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <h1>
            Digital Upscale Manager for Ballgames</h1>
        <h3>
            Managing Ballgames with Technology</h3>
        <asp:Label ID="lblCustomerID" runat="server" Text="Customer ID: " CssClass="label"></asp:Label>
        <asp:TextBox ID="txtCustomerID" runat="server"></asp:TextBox>
        <asp:Button ID="btnConfirmID" runat="server" Text="Search ID" ValidationGroup="Customer" OnClick="btnConfirmID_Click" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCustomerID" Display="Dynamic" ErrorMessage="Must enter Customer ID"></asp:RequiredFieldValidator>
        
        
        <p>
        <asp:ListBox ID="lbFeedback" runat="server" CssClass="ddl" Width="660px"></asp:ListBox>
                <asp:SqlDataSource ID="FeedbackData" runat="server" ConnectionString="<%$ ConnectionStrings:FeedbackConnection %>" ProviderName="<%$ ConnectionStrings:FeedbackConnection.ProviderName %>" SelectCommand="SELECT * FROM [Feedback] WHERE ([CustomerID] = ?)">
         <SelectParameters>
             <asp:ControlParameter ControlID="txtCustomerID" Name="CustomerID" PropertyName="Text" Type="Int32" />
         </SelectParameters>
</asp:SqlDataSource>
        </p>
        <asp:Label ID="lblServiceTime" runat="server" Text="Service Time:" CssClass="label"></asp:Label>
                    <asp:RadioButtonList ID="rblServiceTime" runat="server" RepeatDirection="Horizontal" Height="16px" >
                <asp:ListItem Value="1" Selected="True">Satisfied</asp:ListItem>
                <asp:ListItem Value="2">Neither Satisfied Nor Dissatisfied</asp:ListItem>
                <asp:ListItem Value="3">Dissatisfied</asp:ListItem>
            </asp:RadioButtonList>

        <p>
            <asp:Label ID="lblTechEfficiency" runat="server" Text="Technical efficiency:" CssClass="label"></asp:Label>
                        <asp:RadioButtonList ID="rblTechEfficiency" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1" Selected="True">Satisfied</asp:ListItem>
                <asp:ListItem Value="2">Neither Satisfied Nor Dissatisfied</asp:ListItem>
                <asp:ListItem Value="3">Dissatisfied</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p>
            <asp:Label ID="txtProbResolution" runat="server" Text="Problem resolution:" CssClass="label"></asp:Label>
            <asp:RadioButtonList ID="rblProbResolution" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1" Selected="True">Satisfied</asp:ListItem>
                <asp:ListItem Value="2">Neither Satisfied Nor Dissatisfied</asp:ListItem>
                <asp:ListItem Value="3">Dissatisfied</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p>
        <asp:Label ID="lblAdditonalComments" runat="server" BorderStyle="None" Text="Additional Comments:" CssClass="label"></asp:Label>
        <asp:TextBox ID="txtAdditionalComments" runat="server" Height="62px" Width="348px" TextMode="MultiLine"></asp:TextBox>
            </p>
        <p>
            <asp:Label ID="lblContacted" runat="server" Text="Check if you would like to contacted:" CssClass="label"></asp:Label>
            <asp:CheckBox ID="cbContacted" runat="server" Enabled="False"  />
        </p>
        <p>
        <asp:Label ID="lblContactMethod" runat="server" Text="Contact Method:" CssClass="label"></asp:Label>
            <asp:RadioButtonList ID="rblContact" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Email</asp:ListItem>
                <asp:ListItem>Telephone</asp:ListItem>
            </asp:RadioButtonList>
            </p>
        <p>
            <asp:Button ID="btnSubmitFeedback" runat="server" OnClick="btnSubmitFeedback_Click" Text="Submit Feedback" ValidationGroup="Feedback" CssClass="button" />
        </p>
        
    </form>
</body>
</html>
