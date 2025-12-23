<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Seat Layout</title>

<style>
    body{
        margin:0;
        padding:0;
        font-family:'Segoe UI', sans-serif;
        background:linear-gradient(135deg,#0f2027,#203a43,#2c5364);
        height:100vh;
        color:#fff;
    }

    .box{
        width:350px;
        margin:100px auto;
        background:#111;
        padding:25px;
        border-radius:12px;
        text-align:center;
        box-shadow:0 0 25px rgba(255,0,100,0.4);
    }

    h3{
        color:#ff2e63;
        margin-bottom:15px;
    }

    p{
        color:#ffd369;
        margin:10px 0;
        font-size:14px;
        font-weight:600;
    }

    button{
        margin-top:15px;
        background:linear-gradient(45deg,#ff2e63,#ff7a18);
        border:none;
        color:#fff;
        padding:10px 25px;
        border-radius:30px;
        font-size:15px;
        cursor:pointer;
    }

    button:hover{
        box-shadow:0 0 12px #ff2e63;
        transform:scale(1.05);
    }
</style>

</head>
<body>

<div class="box">

    <h3>🎬 Manage Seats</h3>

    <p>REGULAR / VIP / ECONOMY</p>
    <p>Show Seat GRID</p>

    <button>SAVE</button>

</div>

</body>
</html>