<?php
                    $db = mysqli_connect("localhost", "root","", "buy");

                    If($db ->connect_error){
                        die("Connection Error ".$db -> connect_error);
                    }

?>