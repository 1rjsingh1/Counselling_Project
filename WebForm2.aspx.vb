Imports System
Imports System.Data.SqlClient
Imports System.Data
Imports Microsoft.VisualBasic
Imports System.Collections
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim cmd As New SqlCommand
        Dim con As New SqlConnection
        con.ConnectionString = ("Data Source=LAPTOP-3OSSUTQ9;Initial Catalog=PROJECT;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "showimage"
        cmd.Parameters.Add("@roll", SqlDbType.Int).Value = 2
        Dim bytes As Byte() = CType(cmd.ExecuteScalar(), Byte())

        Dim s As String = Convert.ToBase64String(bytes)

        Image2.ImageUrl = "data:Image/png;base64," & s

    End Sub
End Class
