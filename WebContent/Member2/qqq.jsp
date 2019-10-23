<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">

$(function() {

    $("#cal").on("click", function() {

        var ea = price = total = 0;

        $("table tr").each(function() {


            price = $(this).find("input[name='wr8[]']:eq(2)").val();

            total += ea * price;

        });

        $("#result").text(total);

    });

});

</script>

<body>

</body>
</html>