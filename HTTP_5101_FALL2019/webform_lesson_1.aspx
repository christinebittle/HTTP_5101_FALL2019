<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webform_lesson_1.aspx.cs" Inherits="HTTP_5101_FALL2019.webform_lesson_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WEB FORMS</title>
    <link rel="stylesheet" type="text/css" href="Content/Site.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section>
                <h1>Web Forms</h1>
                <p>Web Forms is a technology that hybridizes HTML and server side code. Web Forms leverage the properties of the &lt;form&gt; tag. Web Forms have a (.aspx) filename.</p>
                <p>Web Forms (.aspx) pages can do anything an HTML (.html) page can, however, an HTML (.html) page cannot do anything a Web Form (.aspx) can</p>
                <img src="/Content/images/webformshtml.jpg" alt="A chart depicting that HTML is a small subsection of the web forms technology" />
                <p>Web Forms, like many other technologies, also have the ability to run server side code <strong>before</strong> they reach the browser</p>
                <p>In an attempt to make things simpler, the Web Forms technology will abstract client and server-side communication. Web Forms actively tries to present them together as a blend.</p>                
            </section>
            <aside>
                <h2>Quote from microsoft about web forms - <a href="https://docs.microsoft.com/en-us/aspnet/web-forms/what-is-web-forms">source</a></h2>
                <blockquote>The ASP.NET page framework presents an object model that enables you to think of your forms as a unit, not as separate client and server pieces. In this model, you can program the page </blockquote>
            </aside>
            <section>
                <h2>Example</h2>
                <p>Web Forms can call the server to execute code and print the result to HTML. This happens within milliseconds!</p>
                <div>The Sum of 5 and 10 is <% Response.Write(5 + 10); %></div>
                <div>The Current Day is <%Response.Write(DateTime.Today.DayOfWeek); %></div>
                <p>Try to copy the above two lines and run them in an .html file. You will see a different response!</p>
            </section>


        </div>
    </form>
</body>
</html>
