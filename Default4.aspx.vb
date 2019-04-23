Imports System
Imports System.Data.SqlClient
Imports System.Data
Imports Microsoft.VisualBasic
Imports System.Collections
Partial Class Default4
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim cmd As New SqlCommand
        Dim con As New SqlConnection
        con.ConnectionString = ("Data Source=LAPTOP-3OSSUTQ9;Initial Catalog=PROJECT;Integrated Security=True")
        con.Open()

        Dim chk As New CheckBox
        Dim instcode As New Label
        Dim streamcode As New Label


        Try
            Dim i As Int16
            i = 0
            Dim c As Int16 = 0
            For i = 0 To GridView1.Rows.Count() - 1
                chk = CType(GridView1.Rows(i).FindControl("CheckBox1"), CheckBox)
                instcode = CType(GridView1.Rows(i).FindControl("Label1"), Label)
                streamcode = CType(GridView1.Rows(i).FindControl("Label2"), Label)
                If chk.Checked = True Then
                    c = c + 1
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.CommandText = "saveprefv2"
                    cmd.Connection = con

                    'Make Params and insert
                    cmd.Parameters.Add("@rollno", SqlDbType.Int).Value = CType(Session.Item("User"), Int16)
                    cmd.Parameters.Add("@instcode", SqlDbType.Int).Value = CType(instcode.Text, Int16)
                    cmd.Parameters.Add("@streamcode", SqlDbType.Int).Value = CType(streamcode.Text, Int16 )
                    cmd.Parameters.Add("@pref", SqlDbType.Int).Value = c



                    cmd.ExecuteNonQuery()
                    cmd.Parameters.Clear()

                End If
            Next
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Session.Add("User", 1)
    End Sub
End Class
