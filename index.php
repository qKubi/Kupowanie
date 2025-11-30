
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Shopy</title>
</head>
<body>
    <header>
        <h1>Welcome to the BASIC STUFF SHOP</h1>
    </header>
    <aside class="sidea">
        BASIC drink 
    </aside>
    <main>
        <h2>Choose category</h2>
        <form method="POST">
            <select name="cat" onchange="this.form.submit()">
                <option hidden >Pick category</option>
                <?php
                    include 'db.php';
                    $result = mysqli_query($db, "SELECT DISTINCT category FROM `products`;");
                    while ($row = mysqli_fetch_array  ($result))
                    {
                        echo "<option>".$row['category']."</option>";
                    }
                    mysqli_close($db);
                ?>
                
            </select>
        </form>
        <?php       //wyswietla produkty
                     if (isset($_POST['cat'])) {
                    $cat_option = $_POST["cat"];
                    echo "</br><strong>Picked Category:</strong> $cat_option";

                    include 'db.php';
                    $result = mysqli_query($db, "SELECT id , `name`, price FROM `products` WHERE category = '$cat_option';");
                    while ($row = mysqli_fetch_array  ($result))
                    {
                        echo "<form method='POST'>";
                        echo "<div class='thing'";
                        echo "<p><b>".$row['name']."</b> ".$row['price']."$</p> ";
                        echo "<input type='submit' name='Choose' value='Choose'>";
                        echo "</div>";
                        echo "<input type='hidden' name='product_id' value='".$row['id']."'>";
                        echo "</form>";
                    }
                    if($cat_option == "Accessories"){
                        echo "</br><button onclick = 'location.reload()'>GO UP</button>";
                    }
                    mysqli_close($db);
                }
                    //1 produkt
                    if (isset($_POST['Choose'])) {
                    $id = $_POST['product_id'];
                    include 'db.php';
                    $result = mysqli_query($db, "SELECT id , `name`, `description`, price  , amount, category FROM `products` WHERE id = $id;");
                    while ($row = mysqli_fetch_array  ($result))
                    {
                        echo "<form method='POST'>";
                        echo "<p><strong>".$row['name']."</strong> $".$row['price']."</p> ";
                        echo "<p><b>Description</b>: ".$row['description'].".</p>";
                        echo "<p>Only ".$row['amount']." left!</p>";
                        //zmienne
                        echo "<input type='hidden' name='product_id' value='".$row['id']."'>";
                        echo "<input type='hidden' name='product_name' value='".$row['name']."'>";
                        echo "<input type='hidden' name='product_price' value='".$row['price']."'>";
                        //wybor ilosci
                        echo "SET AMOUNT <input class='amount' name='product_amo' placeholder='PICK A NUMBER' type='number' min = '1' max='".$row['amount']."'>";
                        echo "<input type='submit' name='buy' value='BUY'>";
                        echo "</form>";
                    }
                    mysqli_close($db);

                    }
                    //odejmowanie ilosci
                    if(isset($_POST['buy'])){
                        $name = $_POST['product_name'];
                        $id = $_POST['product_id'];
                        $amo = (int)$_POST['product_amo'];
                        $price = (float)$_POST['product_price'];
                        $money = $amo*$price;
                        include 'db.php';
                        $result = mysqli_query($db, "UPDATE products SET amount = amount - $amo WHERE id = $id ;");
                        echo "</br>Purchase successful! You bought $amo of <strong>$name</strong>! Paying only $money$!</br>";
                        echo "</br><a href='index.php'><button>MAIN</button></a>";
                        mysqli_close($db);
                    }
                
                ?>

    </main>
     <aside class="sideb">
        BASIC drink 
    </aside>
    <footer>
        <p>PZDR</p>
    </footer> 
</body>
</html>