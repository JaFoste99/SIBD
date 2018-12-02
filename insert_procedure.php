<?php 
  session_start(); 
  include_once "connect.php";
  
  $vars_names = [ 'Animal_Name', 'Owner_VAT', 'date_timestamp',  'Num', 'Procedure_Descrip', 'VAT_Assistant',
    'Type', 'Indicator_Name', 'Indicator_Value'];
  foreach ($vars_names as $key) {
    if(!empty($_REQUEST[$key])){
      $_SESSION[$key] = $_REQUEST[$key];
    }
  }

  #Obter dados do formulário para variáveis
  $Animal_name = $_SESSION['Animal_Name'];
  $Owner_VAT = $_SESSION['Owner_VAT'];      
  $date_timestamp = $_SESSION['Con_Timestamp'];
  $Num = $_SESSION['Num'];
  $Procedure_Descrip = $_SESSION['Procedure_Descrip'];
  $VAT_Assistant = $_SESSION['VAT_Assistant'];
  $Type = $_SESSION['Type'];   
  $Indicator_Name = $_SESSION['Indicator_Name'];   
  $Indicator_Value = $_SESSION['Indicator_Value'];

  #Inserir dados na Database - Consulta, e diagnosis code
  $query1 = "INSERT INTO _procedure (name, VAT_owner, date_timestamp , num, description) VALUES ( ? , ?, ?, ?, ?) ;";
  $args1 = [(string) $Animal_name, (int) $Owner_VAT,  $date_timestamp, (int) $Num,  (string) $Procedure_Descrip];
  
  $query2 = "INSERT INTO _performed (name, VAT_owner, date_timestamp , num, VAT_assistant) VALUES ( ? , ?, ?, ?, ?) ;" ;
  $args2 = [(string) $Animal_name, (int) $Owner_VAT,  $date_timestamp, (int) $Num,  (string) $VAT_Assistant];

  $query3 = "INSERT INTO _test_procedure (name, VAT_owner, date_timestamp , num, type) VALUES ( ? , ?, ?, ?, ?) ;";
  $args3 = [(string) $Animal_name, (int) $Owner_VAT,  $date_timestamp, (int) $Num,  (string) $Type];
  
  $query4 = "INSERT INTO _produced_indicator (name, VAT_owner, date_timestamp , num, indicator_name, value) VALUES ( ? , ?, ?, ?, ?, ?) ;";
  $args4 = [(string) $Animal_name, (int) $Owner_VAT,  $date_timestamp, (int) $Num, (string) $Indicator_Name, (int) $Indicator_Value];


  $querys = array($query1, $query2, $query3, $query4);
  $arguments = array($args1, $args2, $args3, $args4);
  do_transaction($querys, $arguments );

  header("Location: show_consults.php");
?>
