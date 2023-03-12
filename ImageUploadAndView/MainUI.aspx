<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainUI.aspx.cs" Inherits="ImageUploadAndView.MainUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Image Upload View</title>
    <style type="text/css">
        .newStyle1 {
            font-family: Georgia, "Times New Roman", Times, serif;
        }
        .newStyle2 {
            font-family: Impact, Haettenschweiler, "Arial Narrow Bold", sans-serif;
        }
        .newStyle3 {
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
        }
    </style>
</head>
    <body style="width: 645px; margin-left: 79px; margin-top: 74px;">  
        <form id="form1" runat="server" style="border-style: solid; border-width: 1px; border-color: inherit; width: 668px; height: 813px; margin-left: 494px; background-color: #CCFF;">  
            

        <div style="margin-left: 80px; color: #99CCFF;">  
            <br />
&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="UPLOAD AND VIEW IMAGES" style="font-size: xx-large; font-weight: 700; color: #000000;" CssClass="newStyle3"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            &nbsp;<asp:Label ID="Label1" runat="server" Text="Select Image : " style="font-size: x-large; color: #000000; font-weight: 700;"></asp:Label>
            &nbsp;&nbsp;
   <asp:FileUpload runat="server" ID="UploadImages" AllowMultiple="true" style="margin-left: 0px" ForeColor="Black" />  
            <br />
            <br />
   <asp:Button runat="server" ID="uploadedFile" Text="View" OnClick="uploadFile_Click" style="margin-left: 2px; font-size: large;" Width="152px" BorderStyle="Solid" ForeColor="Black" />  &nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Delete" Text="Delete" Width="132px" style="font-size: large" BorderStyle="Solid" ForeColor="Black" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" style="color: #FF0000; font-weight: 700; font-size: x-large;" ForeColor="#FF3300"></asp:Label>
            <br />
            <br />
   <asp:Label ID="listofuploadedfiles" runat="server" ForeColor="Black" />  

            <br />
            <br />
           
            
            

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" ShowHeader="false" Height="242px" Width="355px" style="color: #000000; font-weight: 700">
    <Columns>
        <asp:BoundField DataField="Text" />
        <asp:ImageField DataImageUrlField="Value" ControlStyle-Height="200" ControlStyle-Width="200" />
    </Columns>
</asp:GridView>

            <br />
            <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Submit" ForeColor="Black" Width="136px" />
            <br />

            <br />

            


            <br />
            <br />

            </div>  
        </form>  
    </body>
</html>
