<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이거슨 계약서!?</title>
<style>
    table, th, td{
        border-collapse: collapse;
        padding: 10px;
        margin: auto;
    }
    th{
        text-align: right;
    }
</style>
</head>
<body>

	<form action="member_testSignContract.mem?${_csrf.parameterName}=${_csrf.token}" method="post">
	
		<table border="1">
			<tr>
				<th>FROM:&nbsp;</th>
                <td><input type="text" name="fromAccount"></td>
            </tr>
            <tr>
				<th>TO:&nbsp;</th>
                <td><input type="text" name="toAccount"></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="전송하기"></td>
            </tr>
		</table>
	
	</form>
	
	

</body>
</html>