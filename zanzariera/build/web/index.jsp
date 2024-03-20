<%-- 
    Document   : zanzariere
    Created on : 29 feb 2024, 12:36:32
    Author     : simon
--%>

<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="CSS/index.css" rel="stylesheet" type="text/css"/>
    <script src="JS/index.js" type="text/javascript"></script>
    
    <!-- file di Bootstrap -->
    <script src="Bootstrap/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="Bootstrap/popper.min.js" type="text/javascript"></script>
    <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    
    <title>Zanzariere per una Casa Senza Insetti</title>
</head>
<body>
    <div class="container">
        <h1 class="mt-5 text-center">Zanzariere per una Casa Senza Insetti</h1>
        <div class="offer mt-5">
            <h2>Perché le nostre zanzariere sono la scelta ideale:</h2>
            <ul>
                <li><strong>Massima Protezione:</strong> Le nostre zanzariere sono realizzate con materiali di alta qualità che garantiscono una protezione completa contro zanzare, mosche e altri insetti fastidiosi.</li>
                <li><strong>Design Elegante:</strong> Le zanzariere XYZ non solo proteggono la tua casa, ma migliorano anche l'estetica grazie al loro design elegante e discreto.</li>
                <li><strong>Facili da Installare:</strong> Grazie alle nostre istruzioni passo-passo e al supporto tecnico dedicato, l'installazione delle zanzariere è un gioco da ragazzi.</li>
                <li><strong>Durature e Affidabili:</strong> Realizzate per durare nel tempo, le zanzariere XYZ sono progettate per resistere alle intemperie e rimanere efficaci nel tempo.</li>
            </ul>
        </div>

        <!-- Carosello di immagini -->
        <div id="carouselExampleControls" class="carousel slide mt-5" data-bs-ride="carousel" data-bs-interval="2000">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/catalogo.png" class="d-block img-fluid w-50 mx-auto" alt="Immagine 1">
                </div>
                <div class="carousel-item">
                    <img src="img/img1.jpg" class="d-block img-fluid w-50 mx-auto" alt="Immagine 2">
                </div>
                <div class="carousel-item">
                    <img src="img/porta.jpg" class="d-block img-fluid w-50 mx-auto" alt="Immagine 3">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Precedente</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Successivo</span>
            </button>
        </div>

        <p class="mt-5"><strong>Offerta Speciale Esclusiva:</strong> Non lasciarti sfuggire questa fantastica offerta per proteggere la tua casa dagli insetti,
            compila il
            <a href="jsp/formInvioCatalogo.jsp">form</a>
             per ottenere il nostro catalogo
        </p>
    </div>
</body>
</html>
