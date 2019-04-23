Imports System
Imports System.Data.SqlClient
Imports System.Data
Imports Microsoft.VisualBasic
Imports System.Collections
Imports System.IO
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim c As Int16 = 0
    Protected Sub btnUpload_Click(sender As Object, e As EventArgs) Handles btnUpload.Click

        c = c + 1
        If (FileUpload1.HasFile And c = 1) Then
            Dim postedFile As HttpPostedFile = FileUpload1.PostedFile
            Dim filename As String = FileUpload1.FileName()
            Dim fileExtension As String = System.IO.Path.GetExtension(filename)
            Dim fileSize As Integer = FileUpload1.PostedFile.ContentLength

            If fileExtension.ToLower() = ".jpg" OrElse fileExtension.ToLower() = ".gif" OrElse fileExtension.ToLower() = ".png" OrElse fileExtension.ToLower() = ".bmp" Then
                Dim stream As System.IO.Stream = postedFile.InputStream
                Dim binaryReader As New System.IO.BinaryReader(stream)
                Dim bytes As Byte() = binaryReader.ReadBytes(CInt(stream.Length))

                Dim cmd As New SqlCommand
                Dim con As New SqlConnection
                con.ConnectionString = ("Data Source=LAPTOP-3OSSUTQ9;Initial Catalog=PROJECT;Integrated Security=True")

                cmd.Connection = con
                cmd.CommandType = CommandType.StoredProcedure
                cmd.CommandText = "uploadimage"
                Dim i As Int32 = 2
                cmd.Parameters.Add("@roll", SqlDbType.Int).Value = Session.Item("User")
                Dim paramName As SqlParameter = New SqlParameter() With {
                        .ParameterName = "name",
                        .Value = filename
                    }
                cmd.Parameters.Add(paramName)
                Dim paramSize As SqlParameter = New SqlParameter() With {
                        .ParameterName = "@size",
                        .Value = fileSize
                    }
                cmd.Parameters.Add(paramSize)
                Dim paramImageData As SqlParameter = New SqlParameter() With {
                        .ParameterName = "@imagedata",
                        .Value = bytes
                    }
                cmd.Parameters.Add(paramImageData)

                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
                lblMessage.Visible = True
                lblMessage.ForeColor = System.Drawing.Color.Green
                lblMessage.Text = "Upload Successful"

                Response.Redirect("~/personal.aspx")

            Else
                lblMessage.Visible = True
                lblMessage.ForeColor = System.Drawing.Color.Red
                lblMessage.Text = "Only images (.jpg, .png, .gif and .bmp) can be uploaded"

            End If

        Else
            lblMessage.Visible = True
            lblMessage.ForeColor = System.Drawing.Color.Red
            lblMessage.Text = "Only images (.jpg, .png, .gif and .bmp) can be uploaded"

        End If

    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        If Not IsPostBack Then
            lblMessage.Visible = False

        End If
    End Sub

End Class
