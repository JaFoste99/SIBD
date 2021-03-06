<?php
  function list_animals(){
    
    include_once "create.php";
    include_once "connect.php";
    
    $VAT = $_SESSION['Owner_VAT'];
    $Own_name = $_SESSION['Owner_Name'];

    $query ="SELECT a.name, a.species_name, YEAR(CURDATE()) - a.birth_year AS age
            FROM _animal a, _person p
            WHERE p.name LIKE CONCAT('%', ?, '%') 
              AND p.VAT = ?
              AND a.VAT = p.VAT;"    
    ;

    $args = [ (string) $Own_name, (int) $VAT];
    $stmt = connect_db($query, $args);
    
    if ($stmt->rowCount() !== 0){ 
      
      echo("<h1>All animals of '$Own_name' with Vat = $VAT </h1>");
      $table_headers = ['Name', 'Species Name', 'Age'];
      
      $var_name  = 'Animal_Name';
      $href = 'show_consults.php';
      
      create_tableh($table_headers, $stmt, $var_name, $href);

    } else {

      echo("<h2> No animals found for '$Own_name' with VAT = $VAT</h2>");
    }
  }
?>
