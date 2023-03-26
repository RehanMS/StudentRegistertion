<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentUI.aspx.cs" Inherits="StudentRegistertion.studentUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style>
        .round{
            border:2px solid black;
            _moz-border-radius:10px;
            _webkit-border-radius:10px;
            border-radius:10px;

        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="d-flex justify-content-center m-4">
            <div class="card alert alert-dismissible">
                <div class="m-5 alert alert-success border border-3 border-info rounded-3 fw-bold">

                    <h2 class="tab-content m-4 alert alert-warning text-center border-0 fw-bolder">New Student Registration Page !!!</h2>

                    <div>
                        <asp:Label ID="lblResult" runat="server" ForeColor="Red" CssClass="fw-bolder"></asp:Label>
                    </div>
                    <br />

                   <%-- <div>
                        <asp:Label ID="lblsid" runat="server" Text="Student ID"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txtsid" runat="server"></asp:TextBox>
                    </div>--%>

                    <div>
                        <asp:Label ID="lblfname" runat="server" Text="First Name"></asp:Label> 
                        <asp:TextBox CssClass="form-control" ID="txtfname" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lbllname" runat="server" Text="Last Name"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txtlname" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblroll" runat="server" Text="Roll Number"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txtroll" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblbgender" runat="server" Text="Gender"></asp:Label>
                        <asp:RadioButton ID="rdmale" GroupName="Gender" Text="Male" runat="server" CssClass="form-check" />
                        <asp:RadioButton ID="rdfemale" GroupName="Gender" Text="Female" runat="server" CssClass="form-check" />
                    </div>
                    <div>
                        <asp:Label ID="lbldob" runat="server" Text="Date Of Birth"></asp:Label>
                        <asp:TextBox CssClass="form-control" TextMode="Date" runat="server" ID="txtdob"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblmobile" runat="server" Text="Mobile Number"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txtmobile" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblqul" runat="server" Text="Qulification"></asp:Label>
                         <asp:DropDownList CssClass="form-control" ID="ddlqual" runat="server">
                            <asp:ListItem Value="Select"/>
                             <asp:ListItem Value="B.Tech"/>
                             <asp:ListItem Value="Intermidiate"/>
                             <asp:ListItem Value="Matriculation"/>
                             <asp:ListItem Value="Post Graduation"/>
                        </asp:DropDownList>
                    </div>
                    <div>
                        <asp:Label ID="lblstate" runat="server" Text="State"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txtstate" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblhom" runat="server" Text="Home Town"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txthom" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lbldist" runat="server" Text="District"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txtdist" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblpin" runat="server" Text="PIN Code"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txtpin" runat="server" onblur="getLocation();"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblcountry" runat="server" Text="Country"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txtcountry" runat="server"></asp:TextBox>
                    </div>

                     <div class="mt-2 border-0 ">
                        <asp:Button CssClass="btn btn-outline-info" ID="btnsubmit" runat="server" Text="Register" OnClick="btnsubmit_Click" />
                         <asp:Button CssClass="btn btn-outline-danger" ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click"/>
                         <asp:Button CssClass="btn btn-outline-warning" ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
                    </div>
                    
                    <div>
                        <h3 class="tab-content m-4 alert alert-warning text-center border-0 fw-bolder">Student All Information Page !!!</h3>

                        <asp:GridView class=" round mt-3 ms-5" ID="gvStudent" runat="server" CellPadding="4" ForeColor="#333333" AutoGenerateColumns="False" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="FristName" HeaderText="FristName" />
                                <asp:BoundField DataField="LastName" HeaderText="LastName"  />
                                <asp:BoundField DataField="RollNumber" HeaderText="RollNumber"  />
                                <asp:BoundField DataField="Gender" HeaderText="Gender"  />
                                <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" DataFormatString="{0:MM/dd/yyyy}" />
                                <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber"  />
                                <asp:BoundField DataField="Qulification" HeaderText="Qulification"  />
                                <asp:BoundField DataField="State" HeaderText="State"  />
                                <asp:BoundField DataField="HomeTown" HeaderText="HomeTown"  />
                                <asp:BoundField DataField="District" HeaderText="District"  />
                                <asp:BoundField DataField="PINCode" HeaderText="PINCode"  />
                                <asp:BoundField DataField="Country" HeaderText="Country"  />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
