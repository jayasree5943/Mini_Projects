<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Movies</title>

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
        width:800px;
        margin:60px auto;
        background:#111;
        padding:25px;
        border-radius:12px;
        box-shadow:0 0 25px rgba(255,0,100,0.4);
    }

    h3{
        color:#ff2e63;
        margin-bottom:15px;
    }

    p{
        color:#ffd369;
        margin:12px 0;
        font-weight:600;
    }

    .action{
        background:linear-gradient(45deg,#ff2e63,#ff7a18);
        color:#fff;
        padding:6px 14px;
        border-radius:20px;
        font-size:13px;
        display:inline-block;
        margin-left:10px;
    }

    .table{
        margin-top:15px;
        background:#1a1a1a;
        padding:15px;
        border-radius:8px;
        color:#fff;
        font-size:14px;
    }
</style>

</head>
<body>

<div class="box">

    <h3>🎬 Manage Movies</h3>

    <p>SEARCH MOVIES:</p>

    <p>
        ADD MOVIE:
        <span class="action">+ Add</span>
    </p>

    <div class="table">
        <p>MOVIES LIST (Table)</p>
        <p>
            ID | TITLE | LANGUAGE | GENRE | DURATION | EDIT | DELETE
        </p>
    </div>

</div>

</body>
</html>