<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Criminal Record Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        h2 {
            text-align: center;
        }

        .form-group {
            margin-bottom: 16px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input, select, textarea {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            margin-bottom: 8px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Enter Criminal or Crime Details</h2>

        <form action="insertt.jsp" method="post">
            <!-- Criminal Details -->
            <div class="form-group">
                <label for="first_name">First Name:</label>
                <input type="text" name="first_name" required>
            </div>
            <div class="form-group">
                <label for="last_name">Last Name:</label>
                <input type="text" name="last_name" required>
            </div>
            <div class="form-group">
                <label for="date_of_birth">Date of Birth:</label>
                <input type="date" name="date_of_birth" required>
            </div>
            <div class="form-group">
                <label for="gender">Gender:</label>
                <select name="gender" required>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                </select>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <textarea name="address" rows="4" required></textarea>
            </div>

            <!-- Crime Details -->
            <div class="form-group">
                <label for="crime_type">Crime Type:</label>
                <input type="text" name="crime_type" required>
            </div>
            <div class="form-group">
                <label for="crime_date">Crime Date:</label>
                <input type="date" name="crime_date" required>
            </div>
            <div class="form-group">
                <label for="location">Location:</label>
                <input type="text" name="location" required>
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea name="description" rows="4" required></textarea>
            </div>
            <div class="form-group">
                <label for="crime_case_no">Crime Case Number:</label>
                <input type="text" name="crime_case_no" required>
            </div>

            <div class="form-group">
                <input type="submit" value="Submit">
            </div>
        </form>
    </div>

</body>
</html>
