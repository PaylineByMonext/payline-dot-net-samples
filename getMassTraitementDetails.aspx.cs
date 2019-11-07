using System;
using SDKPaylineDotNet;
using SDKPaylineDotNet.MassPaymentAPI;

public partial class getMassTraitementDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonDoPayment_Click(object sender, EventArgs e)
    {
        //Returned datas
        string returnedID = "";
        string totalLinesNumber = "";
        string failedLinesNumber = "";
        transaction[] failedListObject;

        try
        {
            var client = PaymentApiFactory.GetMassPaymentAPIClient();
            var Result = client.getMassTraitmentDetails(GlobalVariables.APIVersion, TextBoxMassTraitementID.Text, out returnedID, out totalLinesNumber, out failedLinesNumber, out failedListObject);

            //Returned datas
            TextBoxResultCode.Text = Result.code;
            TextBoxResultShortMessage.Text = Result.shortMessage;
            TextBoxResultLongMessage.Text = Result.longMessage;

            TextBoxReturnedID.Text = returnedID;
            TextBoxTotalLines.Text = totalLinesNumber;
            TextBoxFailedLines.Text = failedLinesNumber;
        }
        catch (Exception E)
        {
            LabelError.Visible = true;
            LabelError.Text = "Error : " + E.ToString();
        }
    }
}
