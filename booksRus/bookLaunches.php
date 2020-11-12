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
                $sql = "SELECT launch_time, author, book_name FROM booklaunches ORDER BY launch_time";
                $recset = $conn->query($sql);
            ?>
            <table id=launchTable>
                <thead>
                    <tr>
                        <th>Launch Date & Time</th>
                        <th>Author</th>
                        <th>Book</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $html = "";
                    if (mysqli_num_rows($recset)>0) {
                        while ($row = $recset->fetch_assoc()) {
                            $html .= "<tr><td>$row[launch_time]</td> "
                                    . "<td>$row[author]</td> "
                                    . "<td>$row[book_name]</td></tr>\n";
                        }
                        echo $html;
                    } else {
                        exit("<p>Sorry! We have no upcoming launches</p>");
                    }
                    ?>
                </tbody>
            </table>
        </div>   
        <?php
        $recset->free_result();
        $conn->close();
        ?>     
    </body>
</html>