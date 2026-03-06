<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/script.js"></script>
    <title>Aranymancs</title>
</head>
<body id="top">
    <header>
        <?php include_once("./pages/header.php");?>
    </header>
    <nav class="navbar navbar-expand-lg">
        <?php include_once("./pages/nav.php");?>
    </nav>
    <main>
        <?php  
           /* $page = isset($_GET['page']) ? $_GET['page'] : '';
            if($page == "kisallataink"){
                include_once("./pages/kisallataink.php");
            }
            elseif($page == "orokbefogadas"){
                include_once("./pages/kisallataink.php");
            }
            else{
                include_once("./pages/rolunk.php");
            }*/
             include_once("./pages/home.php");   
        ?>
    </main>
    <footer>
        <?php include_once("./pages/footer.php");?>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>