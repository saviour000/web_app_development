using System;
using System.Data;
using System.Xml;

public partial class _Default : System.Web.UI.Page
{
    string path = @"D:\student.xml"; // XML file path

    protected void btnWrite_Click(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(path);

        XmlElement student = doc.CreateElement("Student");

        XmlElement name = doc.CreateElement("Name");
        name.InnerText = txtName.Text;

        XmlElement age = doc.CreateElement("Age");
        age.InnerText = txtAge.Text;

        student.AppendChild(name);
        student.AppendChild(age);

        doc.DocumentElement.AppendChild(student);
        doc.Save(path);

        lblOutput.Text = "Data written successfully!";
    }

    protected void btnRead_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds.ReadXml(path);

        lblOutput.Text = "Students:<br/>";
        foreach (DataRow row in ds.Tables[0].Rows)
        {
            lblOutput.Text += row["Name"] + " - " + row["Age"] + "<br/>";
        }
    }
}