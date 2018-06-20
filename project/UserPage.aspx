﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserPage.aspx.cs" Inherits="UserPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Buy Online Books</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link href="css/Custom-Cs.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    
        <div>

            <div class="navbar navbar-default navbar-fixed-top" role="navigation">

                <div class="container">

                    <div class="navbar-header">

                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">

                            <span class="sr-only">Toggle navigation</span>

                            <span class="icon-bar"></span>

                            <span class="icon-bar"></span>

                            <span class="icon-bar"></span>

                        </button>

                        <a class="navbar-brand" href="#"><span>

                            <img alt="Logo" src="images/bookland2.jpg" height="30" /></span>BookLand</a>

                    </div>

                    <div class="navbar-collapse collapse">

                        <ul class="nav navbar-nav navbar-right">

                           

                            <li><a href="AboutPage.aspx">About</a></li>

                            <li><a href="RequestPage.aspx">Request</a></li>
                             <li><a href="RequestAdmin.aspx">Requested Books</a></li>
                            <li><a href="Books.aspx">Books</a></li>
                            <li><a href="Users.aspx">Users</a></li>
                            <li><a href="AdminHome.aspx">Admin</a></li>
                           

                                

                               

                                <li><a href="AddBook.aspx">Add Books</a></li>
                               


                              

                          

                           <li><a href="Default.aspx">Log Out</a></li>

                        </ul>

                    </div>

                </div>

            </div>

        </div>
        <hr />
        <hr />
        <div class="container">

            <div class="form-group">
             <div class="col-md-2"></div>
             
        </div>

        <asp:Repeater ID="rptruser" runat="server">
            <ItemTemplate>
                <h2 style="color:red; font-family=Times New Roman", Georgia, Serif ;">UserName : <%#Eval("username") %></h2>
                <h4>Email : <%#Eval("email") %></h4>
                <h4>Full Name : <%#Eval("name") %></h4>
                <h4>UserID : <%#Eval("uid") %></h4>

                <%
                     if( on)
                     {
                         %>
                               <h4>TotalCash : <%#Eval("cash") %></h4>
                         <%
                     }
                 %>
                

             </ItemTemplate>
        </asp:Repeater>
            <div class="col-md-6">
                 <%
                     if( on)
                     {
                         %>
                               <asp:Button ID="Button1" runat="server" Text="CASHOUT" CssClass="btn btn-default" OnClick="Button1_Click"  />
                         <%
                     }
                 %>
                  
                  
             </div>
    </div>
    

    

    <div class="container">
        <h2 style="color:red; font-family=Times New Roman", Georgia, Serif ;">Authored Books: </h2>

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <h4 >BookName : <a href="BookProcess.aspx?book_id=<%#Eval("book_id") %>"> <%#Eval("book_name") %> </a>    Price: <%#Eval("final_price") %> Type: <%#Eval("type") %> No. of Download: <%#Eval("noDownload") %></h4>
             </ItemTemplate>
        </asp:Repeater>
        
    </div>
   </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
