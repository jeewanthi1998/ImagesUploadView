using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;

namespace ImageUploadAndView
{
    public partial class MainUI : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = "";

        }

        [Obsolete]
        protected void uploadFile_Click(object sender, EventArgs e)
        {
            Label2.Text = "";

            if (UploadImages.HasFiles)
            {
                List<ListItem> files = new List<ListItem>();

                string[] filePaths = Directory.GetFiles(Server.MapPath("~/Images/"));

                List<ListItem> filess = new List<ListItem>();

                foreach (HttpPostedFile uploadedFile in UploadImages.PostedFiles)
                {
                    uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/Images/"), uploadedFile.FileName));

                    listofuploadedfiles.Text += String.Format("{0}<br />", uploadedFile.FileName);

                    files.Add(new ListItem(Server.MapPath("~/Images/"), uploadedFile.FileName));

                    string[] FilesInDoc = Directory.GetFiles(Server.MapPath("~/Images/"));

                    for (int i = 0; i < FilesInDoc.Length; i++)
                    {
                        if (FilesInDoc[i] == Server.MapPath("~/Images/") + uploadedFile.FileName)
                        {

                            filess.Add(new ListItem(uploadedFile.FileName, "~/Images/" + uploadedFile.FileName));
                            string path = "~/Images/" + uploadedFile.FileName;
                            byte[] bytes = Encoding.ASCII.GetBytes(path);
                        }
                        else
                        {
                            Response.Write("");
                        }
                    }


                }
                GridView1.DataSource = filess;
                GridView1.DataBind();
            }




        }

        [Obsolete]
        protected void Delete(object sender, EventArgs e)
        {
            listofuploadedfiles.Text = "";
            Label2.Text = "Deleted !";
            GridView1.Visible = false;

        }

        [Obsolete]
        protected void Submit(object sender, EventArgs e)
        {

            Label2.Text = "";

            listofuploadedfiles.Text = "";
            GridView1.Visible = false;

        }
    }
}





       


 
