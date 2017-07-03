<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="msg.aspx.cs" Inherits="vinayak_chat.msg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/css/fonts.googleapis.com.css" rel="stylesheet" />
    <link href="assets/css/ace.min.css" rel="stylesheet" />
    <link href="assets/css/ace-rtl.min.css" rel="stylesheet" />
    <title></title>
    <meta http-equiv="REFRESH" content="2"/>
</head>
<body class="login-layout blue ajax-loading-overlay">
    <form id="form1" runat="server">
    <div>
    <asp:TextBox ID="txtmsg" runat="server" Height="290px" ReadOnly="True" TextMode="MultiLine" Width="490px"></asp:TextBox>
    </div>
    </form>
</body>
</html>
