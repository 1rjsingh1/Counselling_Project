
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If (Session("User") Is Nothing Or Session("UserName") Is Nothing) Then

            MsgBox("Please Login First")
            Response.Redirect("~/Login.aspx")
        Else
            Dim firstName As String = CType(Session.Item("UserName"), String)
            Label1.Text = "Welcome " + (firstName)
        End If


    End Sub









End Class

