<%@ Page Language="C#" AutoEventWireup="true" CodeFile="doRefund.aspx.cs" Inherits="doRefund" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Payline demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <div style="text-align: center">
                    <h2 style="text-align: left">
                        <span style="color: #ff6600">
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Medium" NavigateUrl="~/Index.aspx">Back to Index</asp:HyperLink></span><span
                                style="font-family: Arial">&nbsp;</span></h2>
                    <h2>
                        <span style="color: #ff6600">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/logo.gif" /></span>&nbsp;</h2>
                    <h2>
                        <span style="color: #5f5f5f; font-family: Arial">Do refund</span></h2>
                        <span style="color: #ff6600"></span>
                    <hr style="font-family: Arial" />
                    <p>
                            <asp:Label ID="LabelError" runat="server" Font-Bold="True" ForeColor="Red" Text="Error"
                                Visible="False"></asp:Label><span style="font-family: Arial">&nbsp;</span></p>
                    <p>
                        <span style="color: #ff6600">
                                <table style="width: 698px; text-align: center; font-family: Arial;">
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            <strong><span style="color: #97cb00">Result</span></strong></td>
                                        <td style="width: 638px; height: 21px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            <span style="color: black">Code:</span></td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:TextBox ID="TextBoxResultCode" runat="server" Width="373px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            <span style="color: #000000">Short message:</span></td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:TextBox ID="TextBoxResultShortMessage" runat="server" Width="373px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            <span style="color: #000000">Long message:</span></td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:TextBox ID="TextBoxResultLongMessage" runat="server" Width="373px"></asp:TextBox></td>
                                    </tr>
                                </table>
                        </span></p>
                    <span style="color: #ff6600">
                        <hr style="font-family: Arial" />
                    </span>
                    <p>
                        <span style="color: #ff6600"><span style="font-family: Arial"><strong><span style="color: #5f5f5f">
                            Returned results</span></strong> </span></span>
                    </p>
                    <p>
                        <span style="font-family: Arial">Return transaction date: </span>
                                <asp:TextBox ID="TextBoxTransactionDate" runat="server" ReadOnly="True" Width="213px"></asp:TextBox><br />
                        <span style="font-family: Arial">Return transaction ID: </span>
                                <asp:TextBox ID="TextBoxReturnedID" runat="server" ReadOnly="True" Width="223px"></asp:TextBox></p>
                    <hr style="font-family: Arial" />
                    <p>
                                <table style="width: 824px; text-align: center; font-family: Arial;">
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            <span style="color: #ff6600"><strong style="color: #97cb00">Information about transaction</strong></span></td>
                                        <td style="width: 638px; height: 21px">
                                        </td>
                                        <td style="width: 638px; height: 21px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 26px; text-align: left">
                                            Transaction ID:
                                        </td>
                                        <td style="width: 638px; height: 26px">
                                            <asp:TextBox ID="TextBoxTransactionID" runat="server" Width="373px"></asp:TextBox></td>
                                        <td style="width: 638px; height: 26px; text-align: left">
                                            (Required)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 26px; text-align: left">
                                            Comment:
                                        </td>
                                        <td style="width: 638px; height: 26px">
                                            <asp:TextBox ID="TextBoxTransactionComment" runat="server" Width="373px"></asp:TextBox></td>
                                        <td style="width: 638px; height: 26px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                        </td>
                                        <td style="width: 638px; height: 21px">
                                        </td>
                                        <td style="width: 638px; height: 21px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            <strong><span style="color: #97cb00">Information about payment</span></strong></td>
                                        <td style="width: 638px; height: 21px">
                                        </td>
                                        <td style="width: 638px; height: 21px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            Payment amount:</td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:TextBox ID="TextBoxPaymentAmount" runat="server" Width="373px">33300</asp:TextBox></td>
                                        <td style="width: 638px; height: 21px; text-align: left">
                                            (Required)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            Payment mode:</td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:DropDownList ID="DropDownListPaymentMode" runat="server" Width="374px">
                                                <asp:ListItem>CPT</asp:ListItem>
                                                <asp:ListItem>DIF</asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td style="width: 638px; height: 21px; text-align: left">
                                            (Required)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            Payment fonction:</td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:DropDownList ID="DropDownListPaymentFunction" runat="server" Width="374px">
                                                <asp:ListItem Value="421">Refund</asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td style="width: 638px; height: 21px; text-align: left">
                                            (Required)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            Payement currency:</td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:TextBox ID="TextBoxPaymentCurrency" runat="server" Width="373px"></asp:TextBox></td>
                                        <td style="width: 638px; height: 21px; text-align: left">
                                            (Required)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            Contract number:</td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:TextBox ID="TextBoxPaymentContract" runat="server" Width="373px"></asp:TextBox></td>
                                        <td style="width: 638px; height: 21px; text-align: left">
                                            (Required)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            Differed action date:</td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:TextBox ID="TextBoxPaymentDifferedDate" runat="server" Width="373px"></asp:TextBox></td>
                                        <td style="width: 638px; height: 21px; text-align: left">
                                            dd/mm/yy</td>
                                    </tr>
                                </table>
                                </p>
                    <p>
                        <span style="color: #ff6600"></span>
                    </p>
                    <p>
                        <span style="color: #ff6600"><span style="font-family: Arial">&nbsp;</span><asp:Button ID="ButtonDoRefund" runat="server" OnClick="ButtonDoPayment_Click" Text="Do refund" /><span
                                style="font-family: Arial"> </span>
                        </span><span style="font-family: Arial">&nbsp;</span></p>
                </div>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
