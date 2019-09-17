<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="codebehind_lesson_1.aspx.cs" Inherits="HTTP_5101_FALL2019.codebehind_lesson_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Code-Behind</h1>
            <p>Markup is meant to be exactly that, markup. 
                If we want to display some dynamically generated information, 
                it shouldn't be done within the markup. 
                The WebForm architecture aims to separate
                the markup from the logic of the page.</p>

            <h2>Example of in-line Server Scripting</h2>
            <p><% Response.Write("I am writing to you from the server!"); %></p>

            <h2>Example of Server Scripting using the Code-Behind</h2>
            <p id="ptarget" runat="server"></p>
        </div>
    </form>
</body>
</html>
