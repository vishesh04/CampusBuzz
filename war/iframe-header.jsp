<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" href="css/iframe.css" type="text/css" />
		
<style type="text/css">
			
	#page-message{
		font: 15px 'Lucida sans', Arial, Helvetica;
    	color: #555;
    	text-align: center;
	}
			
	
	
	.buzz-text{
		font: 20px 'Lucida sans', Arial, Helvetica;
        color: black;
	}
			
	td{
		padding : 10px;
	}
			
	
	.button{
		-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
		-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
		box-shadow:inset 0px 1px 0px 0px #ffffff;
		background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf) );
		background:-moz-linear-gradient( center top, #ededed 5%, #dfdfdf 100% );
		filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#dfdfdf');
		background-color:#ededed;
		-moz-border-radius:6px;
		-webkit-border-radius:6px;
		border-radius:6px;
		border:1px solid #dcdcdc;
		display:inline-block;
		color:#777777;
		font-family:arial;
		font-size:15px;
		font-weight:bold;
		padding:6px 24px;
		text-decoration:none;
		text-shadow:1px 1px 0px #ffffff;
	}
	
	.button:hover {
		background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #dfdfdf), color-stop(1, #ededed) );
		background:-moz-linear-gradient( center top, #dfdfdf 5%, #ededed 100% );
		filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#dfdfdf', endColorstr='#ededed');
		background-color:#dfdfdf;
	}
	
	.button:active {
		position:relative;
		top:1px;
	}

</style>

<script type="text/javascript" src="js/jquery.js"></script>
<script>
function getQueryStringParam(sParam){
	var sPageURL = window.location.search.substring(1);
	var sURLVariables = sPageURL.split('&');
	
	for (var i = 0; i < sURLVariables.length; i++) 
	{
		var sParameterName = sURLVariables[i].split('=');
		if (sParameterName[0] == sParam) 
		{
			return sParameterName[1];
		}
	}
}


</script>

</script>