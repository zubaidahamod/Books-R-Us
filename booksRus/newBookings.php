<!DOCTYPE html>

<html>
    <head>
        <title>Books-R-Us</title>
        <meta charset="UTF-8">
        <style> @import "css/stylesheet.css";</style>
        <script src="js/booksrus.js"></script>
    </head>
    <body>
        <div class="menu">
            <a href="index.html">HOME</a>
            ABOUT US
            <a href="bookLaunches.php">BOOK LAUNCHES</a>
            <a href="bookings.php">BOOKINGS</a>
            CONTACT US
        </div>
        <hr id="menuHR">
        <div>
            <?php
            require_once 'inc/dbconn.php';
            $sql = "SELECT * FROM bookings WHERE customer_phone = '$_POST[phone]' AND launch_id = '$_POST[launch_id]'";
            $recset = $conn->query($sql);

            if (mysqli_num_rows($recset) === 0) {
                $sql = "INSERT INTO bookings (customer_name, customer_phone, launch_id) VALUES ('$_POST[name]', '$_POST[phone]', '$_POST[launch_id]')";
                echo "<p>Your booking has been successfully created $_POST[name]</p>";
            } else {
                $recset->free_result();
                $conn->close();
                exit ("<p>Oops! Looks like you've already created a booking to attend this launch.</p>");
            }
            $recset = $conn->query($sql);
            ?>
        </div>
        <?php
        $recset->free_result();
        $conn->close();
        ?>   
    </body>
</html>

