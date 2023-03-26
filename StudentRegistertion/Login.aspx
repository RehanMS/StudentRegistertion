<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StudentRegistertion.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="d-flex justify-content-center m-4">
            <div class="card alert alert-dismissible">
                <div class="m-5 alert alert-success border border-3 border-info rounded-3 fw-bold">

                    <h2 class="tab-content m-4 alert alert-warning text-center border-0 fw-bolder">Student Login Page !!!</h2>
                    <%--<div>
                        <asp:Label ID="lblfuid" runat="server" Text="User Id"></asp:Label> 
                        <asp:TextBox CssClass="form-control" ID="txtuid" runat="server"></asp:TextBox>
                    </div>--%>
                    <div>
                        <asp:Label ID="lbluname" runat="server" Text="User Name"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txtluname" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblpwd" runat="server" Text="Password" ></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txtpwd" TextMode="Password" runat="server"></asp:TextBox>
                    </div>
                    <div class="mt-2 border-0 " style="margin-left:25%">
                        <asp:Button CssClass="btn btn-outline-info w-75" ID="btnsubmit" runat="server" Text="SUBMIT" OnClick="btnsubmit_Click" />
                    </div>
                    <div>
                       <asp:HyperLink NavigateUrl="~/studentUI.aspx" runat="server" ID="hplink" Text="Back to List"  />
                    </div>
                 </div>
            </div>
        </div>
    </form>
</body>
</html>
