<?php
 //private function createXML() {

        // hammer
        $config = new Phalcon\Config\Adapter\Ini(__DIR__ . '/../app/config/config.ini');

        // Start XML file, create parent node
        $doc = new DOMDocument('1.0');
        $node = $doc->createElement('maplocations');
        $parnode = $doc->appendChild($node);



        // Opens a connection to a MySQL server
        $connection = mysql_connect($config->database->host, $config->database->username, $config->database->password);
        if (!$connection) {
            die('Not connected : ' . mysql_error());
        }

        // Set the active MySQL database
        $db_selected = mysql_select_db($config->database->dbname, $connection);
        if (!$db_selected) {
            die('Can\'t use db : ' . mysql_error());
        }

        // Select all the rows in the maplocations table
        $query = "SELECT * FROM maplocations WHERE 1";
        $result = mysql_query($query);
        if (!$result) {
            die('Invalid query: ' . mysql_error());
        }

        header("Content-type: text/xml");

        // Iterate through the rows, adding XML nodes for each
        while ($row = @mysql_fetch_assoc($result)) {
            // ADD TO XML DOCUMENT NODE
            $name = $row['name'];
            $address = $row['address'];
            $lat = $row['lat'];
            $lng = $row['lng'];
            $type = $row['type'];

            $node = $doc->createElement('maplocation');
            $newnode = $parnode->appendChild($node);


            $newnode->setAttribute("name", $row['name']);
            $newnode->setAttribute("address", $row['address']);
            $newnode->setAttribute("lat", $row['lat']);
            $newnode->setAttribute("lng", $row['lng']);
            $newnode->setAttribute("type", $row['type']);
        }

        $xmlfile = $doc->save("mapLocations.xml");
        
        //echo $xmlfile;
        echo $doc->saveXML ();
   ?> 