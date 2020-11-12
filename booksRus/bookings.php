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
        <div id="createBooking">
            <h3>Reserve Your Seat!</h3>
            <form action="newBookings.php" method="post" onsubmit="return checkData();">
                <p>Full Name
                    <input 
                    type="text" 
                    placeholder="Your first & last name" 
                    name="name" 
                    id="name">
                </p>
                <p>Phone Number
                    <input
                    type="text"
                    placeholder="e.g. 0712531987"
                    name="phone"
                    id="phone">
                </p>
                <p id=launch_option>Launch<br>
                <select id="launch_id" name="launch_id">
                    <?php
                    require_once 'inc/dbconn.php';
                    $sql = "SELECT launch_id, launch_time, author FROM booklaunches ORDER BY launch_time";
                    $recset = $conn->query($sql);
                    if (mysqli_num_rows($recset)>0) {
                        $html = "";
                        while ($row = $recset->fetch_assoc()) {
                            $html .="<option value='$row[launch_id]'> $row[author] ($row[launch_time]) </option>\n";
                        }
                        echo $html;
                    } else {
                        $recset->free_result();
                        $conn->close();
                        exit ("<p>Sorry! We have no upcoming launches!</p>");                   
                    }
                    ?>
                </select> 
                </p>               
                <p>
                    <input
                    type="submit"
                    value="Book">
                </p>
            </form>
        </div>
        <?php
        $recset->free_result();
        $conn->close();
        ?>   
    </body>
</html>