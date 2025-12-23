<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Movie</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', sans-serif;
        background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
        height: 100vh;
    }

    .container {
        width: 520px;
        margin: 40px auto;
        background: #111;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 0 25px rgba(255,0,100,0.4);
    }

    h2 {
        text-align: center;
        color: #ff2e63;
        letter-spacing: 1px;
        margin-bottom: 25px;
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
        width: 35%;
        font-weight: 600;
        color: #ffd369;
    }

    input, select, textarea {
        width: 100%;
        padding: 9px;
        border-radius: 6px;
        border: none;
        background: #1f1f1f;
        color: #fff;
        outline: none;
    }

    input:focus, select:focus, textarea:focus {
        border: 1px solid #ff2e63;
        box-shadow: 0 0 8px #ff2e63;
    }

    textarea {
        height: 80px;
        resize: none;
    }

    .btn {
        text-align: center;
        margin-top: 25px;
    }

    input[type="submit"] {
        background: linear-gradient(45deg, #ff2e63, #ff7a18);
        border: none;
        color: white;
        padding: 12px 30px;
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

<div class="container">
    <h2>🎬 Add Movie</h2>

    <form action="addMovie" method="post">
        <table>

            <tr>
                <td>Title</td>
                <td><input type="text" name="title" required></td>
            </tr>

            <tr>
                <td>Language</td>
                <td>
                    <select name="language" required>
                        <option value="">Select Language</option>
                        <option>Telugu</option>
                        <option>Hindi</option>
                        <option>English</option>
                        <option>Tamil</option>
                        <option>Kannada</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Genre</td>
                <td>
                    <select name="genre" required>
                        <option value="">Select Genre</option>
                        <option>Action</option>
                        <option>Drama</option>
                        <option>Comedy</option>
                        <option>Romance</option>
                        <option>Thriller</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Duration (mins)</td>
                <td><input type="text" name="duration" required></td>
            </tr>

            <tr>
                <td>Description</td>
                <td><textarea name="description"></textarea></td>
            </tr>

            <tr>
                <td>Poster URL</td>
                <td><input type="text" name="posterurl"></td>
            </tr>

        </table>

        <div class="btn">
            <input type="submit" value="🎟 Add Movie">
        </div>
    </form>
</div>

</body>
</html>