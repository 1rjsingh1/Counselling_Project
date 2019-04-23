
Imports System
Imports System.Data.SqlClient
Imports System.Data
Imports Microsoft.VisualBasic
Imports System.Collections

Partial Class Default3
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim cmd As New SqlCommand
        Dim con As New SqlConnection
        con.ConnectionString = ("Data Source=LAPTOP-3OSSUTQ9;Initial Catalog=PROJECT;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "savepref"
        cmd.Parameters.Add("@rollno", SqlDbType.Int).Value = Session("User")
        Dim diff As Int16 = 0
        If ((String.Compare(DropDownList1.Text(), DropDownList3.Text()) <> 0) Or (String.Compare(DropDownList2.Text(), DropDownList4.Text()) <> 0)) Then
            If ((String.Compare(DropDownList1.Text(), DropDownList5.Text()) <> 0) Or (String.Compare(DropDownList2.Text(), DropDownList6.Text()) <> 0)) Then
                If ((String.Compare(DropDownList3.Text(), DropDownList5.Text()) <> 0) Or (String.Compare(DropDownList4.Text(), DropDownList6.Text()) <> 0)) Then
                    cmd.Parameters.Add("@instname1", SqlDbType.NChar, 100).Value = DropDownList1.Text()
                    cmd.Parameters.Add("@streamname1", SqlDbType.NChar, 100).Value = DropDownList2.Text()
                    cmd.Parameters.Add("@instname2", SqlDbType.NChar, 100).Value = DropDownList3.Text()
                    cmd.Parameters.Add("@streamname2", SqlDbType.NChar, 100).Value = DropDownList4.Text()
                    cmd.Parameters.Add("@instname3", SqlDbType.NChar, 100).Value = DropDownList5.Text()
                    cmd.Parameters.Add("@streamname3", SqlDbType.NChar, 100).Value = DropDownList6.Text()
                    cmd.Parameters.Add("@check", SqlDbType.Int).Direction = ParameterDirection.Output
                    cmd.ExecuteNonQuery()

                    Dim i As Int16
                    i = cmd.Parameters("@check").Value
                    If (i = 1) Then
                        MsgBox("Preferences have been saved!")
                    Else
                        MsgBox("Preferences already present!")

                    End If
                Else
                    diff = 1
                End If
            Else
                diff = 1
            End If
        Else
            diff = 1
        End If

        If (diff = 1) Then
            MsgBox("Please Select Different Choices")
        End If




    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim cmd As New SqlCommand
        Dim con As New SqlConnection
        con.ConnectionString = ("Data Source=LAPTOP-3OSSUTQ9;Initial Catalog=PROJECT;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "checkpref"
        cmd.Parameters.Clear()
        If (Session("User") Is Nothing) Then
            MsgBox("Please Login First")
            Response.Redirect("~/Login.aspx")
        Else


            cmd.Parameters.Add("@rollno", SqlDbType.Int).Value = Session("User")
            cmd.Parameters.Add("@coun", SqlDbType.Int).Direction = ParameterDirection.Output
            cmd.ExecuteNonQuery()
            If (cmd.Parameters("@coun").Value > 0) Then
                Response.Redirect("~/showpreferences.aspx")
            End If
            cmd.Parameters.Clear()
        End If
    End Sub
End Class
