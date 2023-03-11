<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prac15_1.WebForm1" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Practicals</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<style>
.box {
width: 100px;
height: 100px;
background-color: rgb(255, 106, 0);
position: relative;
}
</style>
</head>
<body>
<script>
$(document).ready(function () {
$(".hide-btn").click(function () {
$("div").hide();
});
});
$(document).ready(function () {
$(".show-btn").click(function () {
$("div").show({
duration: 1000,
easing: "linear"
});
});
});
$(document).ready(function () {
$(".ani").click(function () {
$("div").animate({
left: '250px',
opacity: '0.5',
height: '150px',
width: '150px'
});
138
});
});
</script>
<button class="hide-btn">Hide</button>
<button class="show-btn">Show</button>
<button class="ani">Start Animation</button>
<br><br>
<div class="box"></div>
</body>
</html>
