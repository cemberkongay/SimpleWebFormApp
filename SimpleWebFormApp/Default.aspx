<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SimpleWebFormApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="updatePanel" runat="server">
        <ContentTemplate>
            <div class="form-group">
                <table>
                <tr>
                    <td><asp:RadioButtonList ID="rbList"  AutoPostBack="true" runat="server">
                            <asp:ListItem Text="Round Trip" Value="1" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="One Way" Value="2"></asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td>
                        <h4><asp:Label ID="lblfrom" runat="server" Text="From :"></asp:Label></h4>
                    </td>
                    <td>
                        <asp:DropDownList ID="fromList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="fromList_SelectedIndexChanged">
                        <asp:ListItem Text="Select City" Value=""></asp:ListItem>
                        <asp:ListItem Text="Antalya" Value="Antalya"></asp:ListItem>
                        <asp:ListItem Text="Ankara" Value="Ankara"></asp:ListItem>
                        <asp:ListItem Text="İzmir" Value="İzmir"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <asp:Calendar ID="departure" runat="server"></asp:Calendar>
                </tr>
                 <tr>
                    <td>
                       <h4><asp:Label ID="lblto" runat="server" Text="To :"></asp:Label></h4>
                    </td>
                    <td>
                        <asp:DropDownList ID="toList" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <asp:Calendar ID="returnDate" runat="server"></asp:Calendar>
                </tr>
            </table>
                <tr>
                    <asp:Button ID="submit" CssClass="btn btn-primary" runat="server" OnClick="submit_Click"  Text="Submit"/>
                </tr>
            
            </div>
            <h3>Event Repeater</h3>
            <div style="float: left">
                <table>
                    <tr>
                        <td><asp:Label ID="fromLbl" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="toLbl" runat="server" Text=""></asp:Label></td>
                        <td><small><asp:Label ID="departureLbl" runat="server" Text=""></asp:Label></small></td>
                    </tr>
                </table>
           </div>
            <div style="padding-left:350px">
                <table>
                    <tr>
                        <td><asp:Label ID="toLabel" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="fromLabel" runat="server" Text=""></asp:Label></td>
                        <td><small><asp:Label ID="returnLbl" runat="server" Text=""></asp:Label></small></td>
                    </tr>
                </table>
           </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="submit" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
