<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Screen</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', sans-serif;
        background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
        height: 100vh;
    }

    .form-box {
        width: 450px;
        margin: 80px auto;
        background: #111;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 0 25px rgba(255, 0, 100, 0.4);
    }

    h3 {
        text-align: center;
        color: #ff2e63;
        margin-bottom: 25px;
        letter-spacing: 1px;
    }

    table {
        width: 100%;
    }

    td {
        padding: 10px;
        color: #fff;
        font-size: 15px;
    }

    td:first-child {
        width: 40%;
        font-weight: 600;
        color: #ffd369;
    }

    input[type="text"] {
        width: 100%;
        padding: 9px;
        border-radius: 6px;
        border: none;
        background: #1f1f1f;
        color: #fff;
        outline: none;
    }

    input[type="text"]:focus {
        border: 1px solid #ff2e63;
        box-shadow: 0 0 8px #ff2e63;
    }

    input[type="submit"] {
        margin-top: 20px;
        width: 100%;
        background: linear-gradient(45deg, #ff2e63, #ff7a18);
        border: none;
        color: white;
        padding: 12px;
        border-radius: 30px;
        font-size: 16px;
        cursor: pointer;
        transition: 0.3s;
    }

    input[type="submit"]:hover {
        transform: scale(1.05);
        box-shadow: 0 0 15px #ff2e63;
    }
</style>

</head>
<body>

<div class="form-box">

    <h3>🎥 Add Screen</h3>

    <form action="addScreen" method="post">
        <table>

            <tr>
                <td>Screen ID</td>
                <td><input type="text" name="screenId" required></td>
            </tr>

            <tr>
                <td>Theater ID</td>
                <td><input type="text" name="theaterId" required></td>
            </tr>

            <tr>
                <td>Name</td>
                <td><input type="text" name="name" required></td>
            </tr>

            <tr>
                <td>Description</td>
                <td><input type="text" name="description"></td>
            </tr>

        </table>

        <input type="submit" value="💾 SAVE SCREEN">
    </form>

</div>

</body>
</html>