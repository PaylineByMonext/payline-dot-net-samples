using System;
using SDKPaylineDotNet;
using SDKPaylineDotNet.MassPaymentAPI;

public partial class doMassRefund : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonDoPayment_Click(object sender, EventArgs e)
    {
        // Retrieve first item informations
        var myPayment1 = new payment();
        myPayment1.amount = TextBoxPaymentAmount1.Text;
        myPayment1.currency = TextBoxPaymentCurrency1.Text;
        myPayment1.action = DropDownListPaymentFunction1.SelectedValue;
        myPayment1.mode = DropDownListPaymentMode1.SelectedValue; ;
        myPayment1.contractNumber = TextBoxPaymentContract1.Text;
        myPayment1.differedActionDate = TextBoxPaymentDifferedDate1.Text;

        refund myRefund1 = new refund();
        myRefund1.payment = myPayment1;
        myRefund1.transactionID = TextBoxTransactionID1.Text;

        // Retrieve seconde item informations
        var myPayment2 = new payment();
        myPayment2.amount = TextBoxPaymentAmount2.Text;
        myPayment2.currency = TextBoxPaymentCurrency2.Text;
        myPayment2.action = DropDownListPaymentFunction2.SelectedValue;
        myPayment2.mode = DropDownListPaymentMode2.SelectedValue; ;
        myPayment2.contractNumber = TextBoxPaymentContract2.Text;
        myPayment2.differedActionDate = TextBoxPaymentDifferedDate2.Text;

        refund myRefund2 = new refund();
        myRefund2.payment = myPayment2;
        myRefund2.transactionID = TextBoxTransactionID2.Text;

        refund[] myRefundList = new refund[] { myRefund1, myRefund2 };

        string massTreatmentID = "";
        string date = "";

        try
        {
            var client = PaymentApiFactory.GetMassPaymentAPIClient();
            var Result = client.doMassRefund(GlobalVariables.APIVersion, myRefundList, TextBoxComment.Text, out massTreatmentID, out date);

            //Returned datas
            TextBoxResultCode.Text = Result.code;
            TextBoxResultShortMessage.Text = Result.shortMessage;
            TextBoxResultLongMessage.Text = Result.longMessage;

            TextBoxMassTreatmentID.Text = massTreatmentID;
        }
        catch (Exception E)
        {
            LabelError.Visible = true;
            LabelError.Text = "Error : " + E.ToString();
        }
    }
}
