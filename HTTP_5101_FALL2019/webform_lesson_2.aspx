<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webform_lesson_2.aspx.cs" Inherits="HTTP_5101_FALL2019.webform_lesson_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Content/Site.css" />
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <h1>Server Controls</h1>
            <p>It can be a lot of hassle to write out HTML input elements inside forms. Server Controls are a tool exclusive to Web Forms which aim to assist us with markup. <strong>Server Controls aren't HTML</strong>, but they look like HTML.</p>
        </section>
        <!-- note: The below markup could be done with a <table> tag, however, CSS is fine too.-->
        <main>
            <div class="col2">
                <h2>HTML input elements</h2>
                <section>
            
                    <label>Tell me your first name:</label>
                    <input type="text" id="html_bachelor_firstname" name="html_bachelor_firstname" />
                </section>
                <section>
                    <h3>That's really interesting. I'd like to know more.</h3>
                    <label>What is your favorite color?</label>
                    <div>
                        <input type="radio" id="html_color_option_1" name="html_bachelor_favoritecolor" value="red" /><label for="html_color_option_1">RED</label>
                    </div>
                    <div>
                        <input type="radio" id="html_color_option_2" name="html_bachelor_favoritecolor" value="blue" /><label for="html_color_option_2">BLUE</label>
                    </div>
                    <div>
                        <input type="radio" id="html_color_option_3" name="html_bachelor_favoritecolor" value="yellow" /><label for="html_color_option_3">YELLOW</label>
                    </div>
                </section>
                <section>
                    <h3>What is your favorite animal?</h3>
                    <select id="html_bachelor_favorite_animal" name="html_bachelor_favorite_animal">
                        <option value="cat">Cat</option>
                        <option value="dog">Dog</option>
                        <option value="hampster">Hampster</option>
                    </select>
                </section>
                <section>
                    <h3>Where would you like to travel?</h3>
                    <div><input type="checkbox" value="california" id="html_bachelor_wishdestination_1" name="html_bachelor_wishdestination_1"/><label for="html_bachelor_wishdestination_1">California</label></div>
                    <div><input type="checkbox" value="northpole" id="html_bachelor_wishdestination_2" name="html_bachelor_wishdesination_2"/><label for="html_bachelor_wishdestination_2">North Pole</label></div>
                    <div><input type="checkbox" value="paris"  id="html_bachelor_wishdestination_3" name="html_bachelor_wishdestination_3"/><label for="html_bachelor_wishdestination_3">Paris</label></div>
                </section>
                <section>
                    <input type="submit" value="submit" />
                </section>
            </div>
            <div class="col2">
                <h2>Server Controls</h2>
                <section>
            
                    <label>Tell me your first name:</label>
                    <asp:TextBox runat="server" ID="aspx_bachelor_firstname" ></asp:TextBox>
                </section>
                <section>
                    <h3>That's really interesting. I'd like to know more.</h3>
                    <label>What is your favorite color?</label>
                    <div>
                        <asp:RadioButtonList runat="server" ID="aspx_bachelor_favoritecolor">
                            <asp:ListItem Text="RED" Value="red"></asp:ListItem>
                            <asp:ListItem Text="BLUE" Value="blue"></asp:ListItem>
                            <asp:ListItem Text="YELLOW" Value="yellow"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </section>
                <section>
                    <h3>What is your favorite animal?</h3>
                    <asp:DropDownList runat="server" ID="aspx_bachelor_favorite_animal">
                        <asp:ListItem Text="Cat" Value="cat"></asp:ListItem>
                        <asp:ListItem Text="Dog" Value="dog"></asp:ListItem>
                        <asp:ListItem Text="Hampster" Value="hampster"></asp:ListItem>
                    </asp:DropDownList>
                </section>
                <section>
                    <h3>Where would you like to travel?</h3>
                    <asp:CheckBoxList ID="aspx_bachelor_wishdestination" runat="server">
                        <asp:ListItem Text="California" Value="california"></asp:ListItem>
                        <asp:ListItem Text="North Pole" Value="northpole"></asp:ListItem>
                        <asp:ListItem Text="Paris" Value="paris"></asp:ListItem>
                    </asp:CheckBoxList>
                </section>
                <section>
                    <asp:Button runat="server" />
                </section>
            </div>
        </main>
    </form>
</body>
</html>
