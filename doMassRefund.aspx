<%@ Page Language="C#" AutoEventWireup="true" CodeFile="doMassRefund.aspx.cs" Inherits="doMassRefund" %>

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
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/logo.gif" /></span><span style="font-family: Arial">&nbsp;</span></h2>
                    <h2>
                        <span style="color: #5f5f5f; font-family: Arial">Do mass refund</span></h2>
                        <span style="color: #ff6600"></span>
                    <hr style="font-family: Arial" />
                    <p>
                            <asp:Label ID="LabelError" runat="server" Font-Bold="True" ForeColor="Red" Text="Error"
                                Visible="False"></asp:Label><span style="font-family: Arial">&nbsp;</span></p>
                    <p>
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
                    </p>
                    <hr style="font-family: Arial" />
                    <p>
                        <strong><span style="color: #5f5f5f; font-family: Arial">Returned results</span></strong></p>
                    <p>
                        <span style="font-family: Arial">
                                Return mass treatment ID : </span>
                                <asp:TextBox ID="TextBoxMassTreatmentID" runat="server" ReadOnly="True"></asp:TextBox></p>
                    <hr style="font-family: Arial" />
                    <p>
                        <span style="font-family: Arial">
                        <span style="color: #ff6600">&nbsp;</span>&nbsp;<strong><span style="font-size: 16pt"><span
                            style="color: #5f5f5f;">First item</span><span style="color: #ff6600"></span></span></strong></span></p>
                    <p>
                                <table style="width: 840px; text-align: center; font-family: Arial;">
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
                                            <asp:TextBox ID="TextBoxTransactionID1" runat="server" Width="373px"></asp:TextBox></td>
                                        <td style="width: 638px; height: 26px; text-align: left">
                                            (Required)</td>
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
                                            <asp:TextBox ID="TextBoxPaymentAmount1" runat="server" Width="373px">33300</asp:TextBox></td>
                                        <td style="width: 638px; height: 21px; text-align: left">
                                            (Required)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            Payment mode:</td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:DropDownList ID="DropDownListPaymentMode1" runat="server" Width="374px">
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
                                            <asp:DropDownList ID="DropDownListPaymentFunction1" runat="server" Width="374px">
                                                <asp:ListItem Value="421">Refund</asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td style="width: 638px; height: 21px; text-align: left">
                                            (Required)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            Payement currency:</td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:TextBox ID="TextBoxPaymentCurrency1" runat="server" Width="373px"></asp:TextBox></td>
                                        <td style="width: 638px; height: 21px; text-align: left">
                                            (Required)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            Contract number:</td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:TextBox ID="TextBoxPaymentContract1" runat="server" Width="373px"></asp:TextBox></td>
                                        <td style="width: 638px; height: 21px; text-align: left">
                                            (Required)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            Differed action date:</td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:TextBox ID="TextBoxPaymentDifferedDate1" runat="server" Width="373px"></asp:TextBox></td>
                                        <td style="width: 638px; height: 21px; text-align: left">
                                            dd/mm/yy</td>
                                    </tr>
                                </table>
                                </p>
                    <p>
                        <span style="font-family: Arial">
                        <strong><span style="font-size: 16pt; color: #5f5f5f;">Second item</span></strong><br />
                        </span>
                                <table style="width: 832px; text-align: center; font-family: Arial;">
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
                                            <asp:TextBox ID="TextBoxTransactionID2" runat="server" Width="373px"></asp:TextBox></td>
                                        <td style="width: 638px; height: 26px; text-align: left">
                                            (Required)</td>
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
                                            <asp:TextBox ID="TextBoxPaymentAmount2" runat="server" Width="373px">33300</asp:TextBox></td>
                                        <td style="width: 638px; height: 21px; text-align: left">
                                            (Required)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            Payment mode:</td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:DropDownList ID="DropDownListPaymentMode2" runat="server" Width="374px">
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
                                            <asp:DropDownList ID="DropDownListPaymentFunction2" runat="server" Width="374px">
                                                <asp:ListItem Value="421">Refund</asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td style="width: 638px; height: 21px; text-align: left">
                                            (Required)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            Payement currency:</td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:TextBox ID="TextBoxPaymentCurrency2" runat="server" Width="373px"></asp:TextBox></td>
                                        <td style="width: 638px; height: 21px; text-align: left">
                                            (Required)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 19px; text-align: left">
                                            Contract number:</td>
                                        <td style="width: 638px; height: 19px">
                                            <asp:TextBox ID="TextBoxPaymentContract2" runat="server" Width="373px"></asp:TextBox></td>
                                        <td style="width: 638px; height: 19px; text-align: left">
                                            (Required)</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            Differed action date:</td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:TextBox ID="TextBoxPaymentDifferedDate2" runat="server" Width="373px"></asp:TextBox></td>
                                        <td style="width: 638px; height: 21px; text-align: left">
                                            dd/mm/yy</td>
                                    </tr>
                                </table>
                    </p>
                    <p>
                                <table style="width: 828px; text-align: center; font-family: Arial;">
                                    <tr>
                                        <td style="width: 450px; height: 26px; text-align: left">
                                            Comment:
                                        </td>
                                        <td style="width: 638px; height: 26px">
                                            <asp:TextBox ID="TextBoxComment" runat="server" Width="373px"></asp:TextBox></td>
                                    </tr>
                                </table>
                    </p>
                    <p>
                                <asp:Button ID="ButtonDoMassRefund" runat="server" OnClick="ButtonDoPayment_Click"
                                    Text="Do mass refund" /><span style="font-family: Arial">&nbsp;</span></p>
                    <p>
                        &nbsp;</p>
                </div>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
