<?php

    require '../config/database.php';
    $db = new Database();
    $con = $db->conection();

    $sql_front_card = $con->prepare("SELECT Productos.id, nombre, tipo, codType, municion, calibre, cargador, precio , Peso, Longitud, Longitud_Canion, Sistema_Disparo, Cadencia, Alcance, Velocidad FROM productos, atras where Productos.id = Atras.id and activo = 1");
    $sql_front_card->execute();
    $resultado_front = $sql_front_card->fetchAll(PDO::FETCH_ASSOC); //matriz indexada por nombre de columna

    // $sql_back_card = $con->prepare("SELECT id, Peso, Longitud, Longitud_Canion, Sistema_Disparo, Cadencia, Alcance, Velocidad FROM Atras ");
    // $sql_back_card->execute();
    // $resultado_back = $sql_back_card->fetchAll(PDO::FETCH_ASSOC);

    $sql_type = $con->prepare("SELECT productos.codType, tipos.nombre FROM productos inner join tipos on productos.codType = tipos.codType group by productos.codType");
    $sql_type->execute();
    $resultado_type = $sql_type->fetchAll(PDO::FETCH_ASSOC);

    // $sql_type = $con->prepare("SELECT codType, nombre FROM tipos");
    // $sql_type->execute();
    // $resultado_type = $sql_type->fetchAll(PDO::FETCH_ASSOC);

?>





<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Maverick</title>
    <link rel="stylesheet" href="./css/style_catalogo_prueba.css">
    <link rel="stylesheet" href="./css/cards.css">

        <?php require ('./nav.php');?>

    </header>
    <main>
        <section class="aside__container">
            <div class="filter__container">
                <h4 class="filter__title"> <span class="filter__arrow--show"><img src="./img/arrow-up.png" class="filter__arrow_img"> </span> Tipo de Armas : </h4>
                <div class="filter__elements filter--show">

                    <?php foreach($resultado_type as $type){?>

                        <?php $type_name = "type" . $type['codType'] . ""?>
                    <div class="category">
                        <input type="checkbox" value="<?php echo $type_name?>" class="category_filter" onclick="filter: filter()">
                        <label for="chkbox"><?php echo $type['nombre']; ?></label>
                    </div>
                    <?php }?>
                </div>
            </div>

        </section>

        <section class="weapons__container">
            <?php foreach($resultado_front as $row ) {?>
                <?php $id = $row['id'];?>
                <?php $typeid = $row['codType'];?>
                <?php $chk = "chk" . $id . ""?>
                <?php $cart = "cart" . $id . ""?>
                <?php $type = "type" . $typeid . ""?>

                <style>
                    input[id='<?php echo $chk; ?>']:checked ~ .front{
                        transform: perspective(500px) rotateY(-180deg);
                    }

                    input[id='<?php echo $chk; ?>']:checked ~ .back{
                        transform: perspective(500px) rotateY(0deg);
                    }

                    label[for='<?php echo $chk; ?>']{

                        cursor: pointer;
                    }
                </style>
                <!-- <div class="cards" name="" name="card"> -->
                <div class="cards" name="<?php echo $type; ?>" class="card">
                    
                    <input type="checkbox" name="change" id="<?php echo $chk; ?>">
                    <div class="front">

                        <figure class="image_card">
                            <?php
                                $nombre = $row['nombre'];
                                $images = "./img/weapons/" . $id . "/" . $nombre . ".png";
                                // if(!file_exists($images))
                                // {
                                //     $image = "images/no_photo.jpg";
                                // }

                            ?>
                            <img src="<?php echo $images; ?>">
                        </figure>

                        <div class="title">
                            <h3><?php echo $row['nombre']; ?></h3>
                        </div>

                        <div class="text">
                            <p>Tipo de Arma :   <?php echo $row['tipo']; ?></p>
                            <p>Municion :   <?php echo $row['municion']; ?></p>
                            <p>Calibre :    <?php echo $row['calibre']; ?></p>
                            <p>Cargador :   <?php echo $row['cargador']; ?></p>
                        </div>
                        <div class="btns__section_cards_bc">
                            <label for="<?php echo $chk; ?>" class="label_btn">
                                <div class="cards__bt">
                                    <h4 class="text_card_bt">Ver Más</h4>
                                </div>
                            </label>
                            <!-- <label for="<?php echo $chk; ?>" class="label_btn">
                                <div class="cards__bt">
                                    <img src="./img/cart.svg" alt="">
                                </div>
                            </label> -->
                        </div>

                        
                    </div>
                    
                    
                    <div class="back">
                        <div class="title">
                            <h3><?php echo $row['nombre']; ?></h3>
                        </div>
                        <div class="text">
                            <p>Peso: <?php echo $row['Peso']; ?></p> 
                            <p>Longitud: <?php echo $row['Longitud']; ?></p>
                            <p>Longitud del cañón: <?php echo $row['Longitud_Canion']; ?></p>
                            <p>Sistema de disparo:  <?php echo $row['Sistema_Disparo']; ?></p>
                            <p>Cadencia de tiro: <?php echo $row['Cadencia']; ?></p>
                            <p>Alcance efectivo: <?php echo $row['Alcance']; ?></p>
                            <p>Velocidad máxima: <?php echo $row['Velocidad']; ?></p>
                        </div>
                        <div class="btns__section_cards_bc">
                            <label for="<?php echo $chk; ?>" class="label_btn">
                                <div class="cards__bt">
                                    <h4 class="text_card_bt">Ver Menos</h4>
                                </div>
                            </label>
                        </div>
                        

                    </div>
                </div>
                </div>
            <?php }?>
        </section>
    </main>

    <script src="./scripts/script.js"></script>
    <script src="./scripts/filter.js"></script>
    <script src="./scripts/nav.js"></script>
    <script src="./scripts/filter_toggle.js"></script>
</body>
</html>