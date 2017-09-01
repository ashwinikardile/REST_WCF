<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="REST_WCF._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <button onclick="doWork();return false;">DoWork</button><br /><br />
		<input type="text" id="userInput" />
		<button onclick="doSquare();return false;">DoSquare</button><br /><br />
		<input type="text" id="addUserInput1" /><br /><br />
		<input type="text" id="addUserInput2" />
		<button onclick="doAdd();return false;">Addition</button>
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

		function doSquare() {
			console.log("Welcome to Mathematical Operation");
			var val = $("#userInput").val();

			$.ajax({
				url: "Service/Service1.svc/DoSquare",
				type: "POST",
				data: JSON.stringify(val),
				dataType: "json",
				contentType: "application/json",
				success: function (result) {
					console.info(result);
					alert("Result is: " + result);
					
				}
			});
		}

		function doAdd() {
			var valAddition = {
				val1: $("#addUserInput1").val(),
				val2: $("#addUserInput2").val()
			};

			$.ajax({
				url: "Service/Service1.svc/DoAddValues",
				type: "POST",
				data: JSON.stringify(valAddition),
				dataType: "json",
				contentType: "application/json",
				success: function (result) {
					console.info(result);
					alert("Result is: " + result);

				}
			});
		}
	</script>

</asp:Content>
