<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="REST_WCF._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <button onclick="doWork();return false;">DoWork</button>
		<button onclick="doOperation();return false;">DoOperation</button>
    </div>

	<script type="text/javascript">
		function doWork() {
			console.log("Welcome!");

			$.ajax({
				url: "Service/Service1.svc/DoWork",
				type: "GET",
				dataType: "json",
				success: function (result) {
					console.log(result);
				}
			});
		}

		function doOperation() {
			console.log("Welcome to Mathematical Operation");
			var val = 2;

			$.ajax({
				url: "Service/Service1.svc/DoOperation",
				type: "POST",
				data: JSON.stringify(val),
				dataType: "json",
				contentType: "application/json",
				success: function (result) {
					console.log(result);
				}
			});
		}
	</script>

</asp:Content>
