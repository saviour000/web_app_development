using System;
using System.Linq;

public partial class traindata : System.Web.UI.Page
{
    TrainDataDataContext db = new TrainDataDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) ShowAll();
    }

    void ShowAll()
    {
        GridView1.DataSource = db.sp_GetTrains();
        GridView1.DataBind();
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        db.sp_InsertTrain(txtName.Text, txtType.Text, TimeSpan.Parse(txtArrival.Text),
                          TimeSpan.Parse(txtDeparture.Text), txtStart.Text, txtEnd.Text);
        ShowAll();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        db.sp_UpdateTrain(int.Parse(txtID.Text), txtName.Text, txtType.Text,
                          TimeSpan.Parse(txtArrival.Text), TimeSpan.Parse(txtDeparture.Text),
                          txtStart.Text, txtEnd.Text);
        ShowAll();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        db.sp_DeleteTrain(int.Parse(txtID.Text));
        ShowAll();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = db.sp_SearchTrain(txtSearch.Text);
        GridView1.DataBind();
    }

    protected void btnShow_Click(object sender, EventArgs e)
    {
        ShowAll();
    }
}