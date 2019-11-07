using SDKPaylineDotNet;
using SDKPaylineDotNet.DirectPaymentAPI;
using System;

public partial class doCapture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonDoPayment_Click(object sender, EventArgs e)
    {
        // Retrieve payment informations
        payment myPayment = new payment();
        myPayment.amount = TextBoxPaymentAmount.Text;
        myPayment.currency = TextBoxPaymentCurrency.Text;
        myPayment.action = DropDownListPaymentFunction.SelectedValue;
        myPayment.mode = DropDownListPaymentMode.SelectedValue; ;
        myPayment.contractNumber = TextBoxPaymentContract.Text;
        myPayment.differedActionDate = TextBoxPaymentDifferedDate.Text;

        //Returned datas
        transaction myTransaction = new transaction();
        string reAuth;
        try
        {
            var client = PaymentApiFactory.GetDirectPaymentAPIClient();
            result Result = client.doCapture(GlobalVariables.APIVersion, TextBoxTransactionID.Text, myPayment, null, null, null, out myTransaction, out reAuth);
            //Returned datas
            TextBoxResultCode.Text = Result.code;
            TextBoxResultShortMessage.Text = Result.shortMessage;
            TextBoxResultLongMessage.Text = Result.longMessage;

            TextBoxTransactionDate.Text = myTransaction.date;
            TextBoxReturnedID.Text = myTransaction.id;
        }
        catch (Exception E)
        {
            LabelError.Visible = true;
            LabelError.Text = "Error : " + E.ToString();
        }
    }
}
