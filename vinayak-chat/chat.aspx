<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chat.aspx.cs" Inherits="vinayak_chat.chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/css/fonts.googleapis.com.css" rel="stylesheet" />
    <link href="assets/css/ace.min.css" rel="stylesheet" />
    <link href="assets/css/ace-rtl.min.css" rel="stylesheet" />
    <title></title>
</head>
<body class="login-container loading-icon">
    <form id="form1" runat="server">
    <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <%--<fieldset>--%>
        <div>
            <table class="table-hover">
                <tr>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: right"></td>
                    <td style="width: 94px; text-align: center">
                        <strong><span style="font-size: 15px; color: #0000cc" class="header blue lighter bigger">Simple Chat&nbsp;&nbsp;
                        </span></strong></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: right"></td>
                    <td style="width: 94px">
                        <%--<asp:TextBox ID="txtname" runat="server"></asp:TextBox>--%>
                        <%--<asp:Button ID="brnadd" runat="server" OnClick="brnadd_Click" Text="ADD" Font-Bold="True" />--%>
                        <asp:Label ID="lbluname" runat="server" Font-Bold="True" ForeColor="SteelBlue"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="logout" OnClick="logout_Click1" Text="log out" runat="server" CssClass="btn-purple pull-right white" /></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 260px"></td>
                    <td style="width: 94px; height: 260px">
                        <%--<%–<asp:TextBox ID="txtmsg" runat="server" Height="250px" TextMode="MultiLine" Width="472px"></asp:TextBox>–%>--%>
                        <asp:UpdatePanel ID="panel1" runat="server" UpdateMode="Always">
                            <ContentTemplate>
                                <iframe height="315" src="msg.aspx" width="515" onscroll="yes"></iframe>
                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 77px;"></td>
                    <td style="width: 94px; height: 77px;">
                        <table style="width: 480px">
                            <tr>
                                <td style="width: 100px; height: 50px;">&nbsp;&nbsp;
                                    <asp:TextBox ID="txtsend" runat="server" Height="40px" TextMode="MultiLine" Width="430px"></asp:TextBox>&nbsp;</td>
                                <td style="width: 100px; height: 50px;">
                                    <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="Send" Width="65px" CssClass="btn-purple pull-right white " /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

        </div>
        <%--</fieldset>--%>
        <br />
        <br />
        
    </div>
    </form>
</body>
</html>

