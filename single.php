<?php
date_default_timezone_set('America/Cuiaba');
require_once "config/DB.php";

$db = new DB;

$url = $_SERVER["REQUEST_URI"];

$urlCompleta = $url;

// echo $urlCompleta;
// echo "<br>";


$string = $url;
$last_hyphen_pos = strrpos($string, "-");
$code = substr($string, $last_hyphen_pos + 1);
// echo $code;

if (isset($code)) {
  $data = $db->buscarImovel($code);
  // echo "<pre>";
  // print_r($data);
  // echo "</pre>";

}


foreach ($data as $key => $value) {
  # code...
  // echo "<pre>";
  // print_r($value);
  // echo "</pre>";
}

// atualizando imóvel

$db->incrementarVisita($value['id_imovel']);

if (!isset($value['id_imovel'])) {
  header("Location: index.php");
}

// pegando as imagens

// echo $value['id'];

$dataImagem = $db->getImageByIdImovel($value['id_imovel']);

// echo "<pre>";
// print_r(count($dataImagem));
// print_r($dataImagem);
// echo "</pre>";

$img = [];
for ($i = 0; $i < count($dataImagem); $i++) {
  if ($dataImagem[$i]['url_webp']) {
    # code...

    if ($i < 5) {
      $img[] = $dataImagem[$i]['url_webp'];
    } else {
      $img[] = $dataImagem[$i]['url_webp'];
    }
  } else {
    if ($i < 5) {
      $img[] = $dataImagem[$i]['url'];
    } else {
      $img[] = $dataImagem[$i]['url'];
    }
  }
}

// print_r($img);


foreach ($dataImagem as $keyImagem => $valueImagem) {
  # code...
  // echo "<pre>";
  // print_r($valueImagem);
  // echo "</pre>";
}

// último quatro imóveis

$dataMenorViews = $db->getImoveisMenorViews();

// echo "<pre>";
// print_r($dataMenorViews);
// echo "</pre>";


?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0" /> -->
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="icon" type="image/x-icon" href="imagem/icon.png">
  <!-- CSS only -->
  <link rel="stylesheet" href="css/style.css" />
  <link rel="stylesheet" href="css/single.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/css/lightbox.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />
  <script src="https://kit.fontawesome.com/6c66823518.js" crossorigin="anonymous"></script>


  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />




  <title>
    <?php echo mb_convert_encoding($value['titulo'], 'UTF-8', 'ISO-8859-1'); ?>
  </title>

  <meta property="og:title" content="<?php echo $value['titulo']; ?>" />
  <meta property="og:description" content="<?php echo $value['descricao']; ?>" />
  <meta property="og:url" content="<?php echo $urlCompleta; ?>" />
  <meta property="og:image" content="./app/<?php echo ($dataImagem[0]['url_webp'] ? $dataImagem[0]['url_webp'] : $dataImagem[0]['url']); ?>" />

  <meta property="og:image:secure_url" content="./app/<?php echo $dataImagem[0]['url']; ?>" />
  <meta property="og:image:type" content="image/jpeg" />
  <meta property="og:image:width" content="500" />
  <meta property="og:image:height" content="500" />
  <meta property="og:image:alt" content="<?php echo $value['titulo']; ?>" />

  <!-- Google tag (gtag.js) -->
  <script async src="https://www.googletagmanager.com/gtag/js?id=G-R6YEMTGPBZ"></script>
  <script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
      dataLayer.push(arguments);
    }
    gtag('js', new Date());

    gtag('config', 'G-R6YEMTGPBZ');
  </script>
  <!-- Meta Pixel Code -->
  <script>
    ! function(f, b, e, v, n, t, s) {
      if (f.fbq) return;
      n = f.fbq = function() {
        n.callMethod ?
          n.callMethod.apply(n, arguments) : n.queue.push(arguments)
      };
      if (!f._fbq) f._fbq = n;
      n.push = n;
      n.loaded = !0;
      n.version = '2.0';
      n.queue = [];
      t = b.createElement(e);
      t.async = !0;
      t.src = v;
      s = b.getElementsByTagName(e)[0];
      s.parentNode.insertBefore(t, s)
    }(window, document, 'script',
      'https://connect.facebook.net/en_US/fbevents.js');
    fbq('init', '650163389954385');
    fbq('track', 'PageView');
  </script>
  <noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=650163389954385&ev=PageView&noscript=1" /></noscript>
  <!-- End Meta Pixel Code -->
  </script>

  <style>
    /* Estilo para fazer o carrossel em tela cheia */
    .carousel-fullscreen {
      height: auto;
    }

    .carousel-inner {
      height: auto;
      background-color: red;
    }

    .carousel-item img {
      object-fit: cover;
      height: 450px;
      width: 100%;
      cursor: pointer;
    }
  </style>

</head>

<body>

  <header class="main">
    <nav class="menu">
      <div class="container">
        <div class="logo">
          <a href="./">
            <img src="imagem/logo.png" class="img-fluid logo-img" alt="" />
          </a>
        </div>
      </div>
    </nav>
  </header>
  <!-- <div class="filter-main">
    <div class="container filter-main-search">
      <form action="#" method="post" enctype="multipart/form-data">
        <div class="row">
          <div class="col-xl-3 col-md-3 col-sm-12 search-nivel">
            <select class="form-select">
              <option selected>Qual o melhor bairro para você?</option>
              <option value="1">Aráes</option>
              <option value="2">Tijucal</option>
              <option value="3">Pedra</option>
            </select>
          </div>
          <div class="col-xl-3 col-md-3 col-sm-12 search-nivel">
            <select class="form-select">
              <option selected>Faixa de valor do Imóvel?</option>
              <option value="1">100mil - 200mil</option>
              <option value="2">200mil - 300mil</option>
              <option value="3">300mil - 400mil</option>
              <option value="3">400mil - 500mil</option>
              <option value="3">Acima de 500mil</option>
            </select>
          </div>
          <div class="col-xl-3 col-md-3 col-sm-12 search-nivel">
            <select class="form-select">
              <option selected>Você prefere com quantos quartos?</option>
              <option value="1">1 Quarto</option>
              <option value="2">2 Quartos</option>
              <option value="3">3 Quartos</option>
              <option value="3">4 Quartos</option>
              <option value="3">5 Quartos</option>
            </select>
          </div>

          <div class="col-xl-3 col-md-3 col-sm-12 search-nivel">
            <button type="button" class="btn btn-outline-success search">
              🔎 Buscar o Imóvel Ideal
            </button>
          </div>
        </div>
      </form>
    </div>
  </div> -->

  <div class="slide-main">
    <div id="carouselExampleControls" class="carousel slide carousel-fullscreen carrossel-main " data-bs-ride="carousel">
      <div class="carousel-inner">

        <?php $i = 0;
        foreach ($dataImagem as $row) : ?>
          <?php if ($i == 0) {
            $set_ = 'active';
          } else {
            $set_ = '';
          } ?>

          <div class='carousel-item <?php echo $set_; ?>'>
            <img src='<?php echo "./app/" . ($row['url_webp'] ? $row['url_webp'] : $row['url']); ?>' class="d-block w-100" alt="<?php echo $value['titulo'];  ?>" data-bs-toggle="modal" data-bs-target="#imageModal">
          </div>


        <?php $i++;
        endforeach ?>


      </div>



    </div>

    <div class="col-lg-12 float-left preco-titulo">
      <div class="titulo-preco">

        <div class="tituloLeft">
          <h1 class="imovel-title" title="<?php
                                          echo $value['titulo'];
                                          ?>">
            <?php echo $value['titulo']; ?>
          </h1>
          <p class="bairro-title">
            <?php echo "Bairro: " . $value['nome'] ?><i class="fas fa-search-location"></i>
          </p>
        </div>

        <div class="precoRight">
          <h2 class="imovel-valor" title="<?php echo $value['valor'] ?>">R$
            <?php

            $valorImovel = $value['valor'];
            $valorImovelMostrar = $valorImovel;
            $valorImovelFormatado = number_format($valorImovelMostrar, 2, ",", ".");
            echo " " . $valorImovelFormatado;
            ?>
          </h2>
          <small>Condomínio:
            <?php

            $valorCond = $value['valor_condominio'];
            $valorCondMostrar = $valorCond;
            $valorCondFormatado = number_format($valorCondMostrar, 2, ",", ".");
            echo "" . $valorCondFormatado;

            ?>
          </small><br>
          <small>IPTU:
            <?php

            $valorIptu = $value['iptu'];
            $valorIptuMostrar = $valorIptu;
            $valorIptuFormatado = number_format($valorIptuMostrar, 2, ",", ".");
            echo "" . $valorIptuFormatado;
            ?>
          </small>
        </div>

      </div>
    </div>

  </div>




  <div class="container py-0">
    <div class="row">
      <a href="index.php" target="_blank" class="voltar w-100 mb-3"><i class="fas fa-home"></i> Voltar > Inicial</a>


      <div class="col-lg-12">
        <div class="row whatsapp-mensagem">
          <div class="col-lg-9 galeria-main">
            <div class="row">
              <div class="col-lg-6">
                <a href="<?php echo "./app/" . ($dataImagem[0]['url_webp'] ? $dataImagem[0]['url_webp'] : $dataImagem[0]['url']); ?>" data-lightbox="image-gallery" data-title="<?php echo $value['titulo']; ?>">
                  <div class="img-container">
                    <img class="img-fluid img-imovel zoom" src="<?php echo "./app/" . ($dataImagem[0]['url_webp'] ? $dataImagem[0]['url_webp'] : $dataImagem[0]['url']); ?>" alt="<?php echo $value['titulo']; ?>">
                  </div>
                </a>
              </div>


              <div class="col-lg-6">
                <div class="row m-0 p-0 position-relative">

                  <?php
                  $totalImages = count($img); // Obtém o total de imagens

                  foreach ($img as $key => $i) {
                    // Adiciona a classe d-none para imagens além da quarta
                    $class = ($key > 4) ? 'd-none' : '';

                    // Exibir imagens da segunda à quarta sem interromper o loop
                    if ($key >= 1) {
                  ?>
                      <div class="col-lg-6 photo <?php echo $class; ?>">
                        <a href="<?php echo "./app/" . $i; ?>" data-lightbox="image-gallery" data-title="<?php echo $value['titulo']; ?>">
                          <div class="img-container">
                            <img class="img-fluid img-imovel2" src="<?php echo "./app/" . $i; ?>" alt="<?php echo $value['titulo']; ?>">
                          </div>
                        </a>
                      </div>


                  <?php
                    }
                  }
                  ?>

                  <?php
                  // Adicionar o texto +X sobreposto à última imagem
                  $remainingImages = max(0, $totalImages - 5);
                  if ($remainingImages > 0) {
                  ?>
                    <div class="col-lg-3 pointer  photo position-absolute bottom-0 end-0 <?php echo ($totalImages > 5) ? '' : 'd-none'; ?>">
                      <p class="overlay-text text-center mt-2">+<?php echo $remainingImages; ?> fotos</p>
                    </div>
                  <?php
                  }
                  ?>

                </div>
              </div>

            </div>

            <div class="col-lg-12 float-left">
              <div class="titulo-preco">

                <div class="tituloLeft">
                  <h1 class="imovel-title" title="<?php
                                                  echo $value['titulo'];
                                                  ?>">
                    <?php echo $value['titulo']; ?>
                  </h1>
                  <p class="bairro-title">
                    <?php echo "Bairro: " . $value['nome'] ?><i class="fas fa-search-location"></i>
                  </p>
                </div>

                <div class="precoRight">
                  <h2 class="imovel-valor" title="<?php echo $value['valor'] ?>">R$
                    <?php

                    $valorImovel = $value['valor'];
                    $valorImovelMostrar = $valorImovel;
                    $valorImovelFormatado = number_format($valorImovelMostrar, 2, ",", ".");
                    echo " " . $valorImovelFormatado;
                    ?>
                  </h2>
                  <small>Condomínio:
                    <?php

                    $valorCond = $value['valor_condominio'];
                    $valorCondMostrar = $valorCond;
                    $valorCondFormatado = number_format($valorCondMostrar, 2, ",", ".");
                    echo "" . $valorCondFormatado;

                    ?>
                  </small><br>
                  <small>IPTU:
                    <?php

                    $valorIptu = $value['iptu'];
                    $valorIptuMostrar = $valorIptu;
                    $valorIptuFormatado = number_format($valorIptuMostrar, 2, ",", ".");
                    echo "" . $valorIptuFormatado;
                    ?>
                  </small>
                </div>

              </div>
            </div>
          </div>



          <div class="col-lg-3 p-0 float-left">
            <div class="row">
              <div class="col-sm-12 col-lg-12 info-corretor-main p-0">

                <!-- mensagem -->
                <div class="mensagem-corretor p-0 mb-3">


                  <form action="whatsapp.php" method="POST">
                    <div class="form-header">
                      <h3>Chamar anunciante no WhatsApp</h3>
                    </div>
                    <div class="form-body">
                      <p class="aviso-form">Preencha corretamente para poder falar direto com o anunciante deste imóvel pelo
                        whatsapp</p>

                      <legend>Seu Nome <small class="text-secondary">(insira seu nome)</small></legend>
                      <input class="form-control form-control-lg" id="nome" name="nomeLead" type="text" placeholder="Qual o seu nome?" required>
                      <legend>Seu WhatsApp <small class="text-secondary">(preencha somente os números)</small></legend>
                      <input class="form-control form-control-lg" maxlength="15" id="telefone" name="whatsappLead" type="text" placeholder="(65) 99999-9999" required>
                      <!-- inputs data -->

                      <input type="hidden" name="titulo" value="<?php echo $value['titulo']; ?> ">
                      <input type="hidden" name="valor" value="<?php echo $value['valor']; ?> ">
                      <input type="hidden" name="bairroNome" value="<?php echo $value['nome']; ?> ">
                      <input type="hidden" name="whatsapp" value="<?php echo $value['whatsapp']; ?> ">
                      <input type="hidden" name="url" value="<?php echo $urlCompleta ?> ">
                      <input type="hidden" name="quarto" value="<?php echo $value['quartos']; ?> ">
                      <input type="hidden" name="area" value="<?php echo $value['area_construida']; ?> ">




                      <div class="d-grid mt-4">
                        <input class="botao-zap" onclick="saveData()" type="submit" name="enviar" value="Chamar no WhatsApp">
                      </div>
                    </div>
                  </form>
                </div>
                <!-- /mensagem -->

                <div class="info-corretor">
                  <header>
                    <img src="<?php
                              $retVal = ($value['img'] != null) ? "app/" . $value['img'] : "imagem/perfil.jpg";
                              echo $retVal;
                              ?>" alt="Anunciante" class="profile-thumbnail" />
                    <div class="profile-name">
                      <h3>
                        <?php echo $value['nome_user'];  ?>
                      </h3>
                      <h4>Anunciante</h4>
                      <h5>WhatsApp:
                        <?php echo $value['whatsapp']; ?>
                      </h5>
                    </div>
                  </header>
                  <div id="inner">
                    <p>
                      <?php echo $value['descricao_user'];  ?>

                    </p>
                    <!-- <span class="creci">CRECI-MT 12130 F</span> -->
                    <hr />
                  </div>
                  <footer>
                    <div class="stats">

                      <?php if ($value['ig'] !== "") {
                      ?>
                        <div class="Retweets">
                          <a href="<?php echo $value['ig']; ?>" target="_new"> <i class="fa fa-instagram"></i></a>
                        </div>
                      <?php } ?>

                      <?php if ($value['fb'] !== "") {
                      ?>
                        <div class="Retweets">
                          <a href="<?php echo $value['fb']; ?>" target="_new"> <i class="fa fa-facebook-square"></i></a>
                        </div>
                      <?php } ?>

                      <?php if ($value['linkedin'] !== "") {
                      ?>
                        <div class="Retweets">
                          <a href="<?php echo $value['linkedin']; ?>" target="_new"> <i class="fab fa-linkedin"></i></a>
                        </div>
                      <?php } ?>

                      <?php if ($value['site'] !== "") {
                      ?>
                        <div class="Retweets">
                          <a href="<?php echo $value['site']; ?>" target="_new"> <i class="fas fa-sitemap"></i></a>
                        </div>
                      <?php } ?>
                    </div>
                  </footer>
                </div>

                <?php
                $urlEncaminha = "https://api.whatsapp.com/send?text=";
                $urlEncaminha .= "🏢 *" . $value['titulo'] . "* %0A%0A";
                $urlEncaminha .= "💰```Valor: R$" . number_format($value['valor'], 2, ',', '.') . "```%0A";
                $urlEncaminha .= "📍```Bairro: " . $value['nome'] . "```%0A";
                $urlEncaminha .= "⏹```Quartos: " . $value['quartos'] . "```%0A";
                $urlEncaminha .= "📐```Área: " . $value['area_construida'] . "m²```%0A%0A";
                $urlEncaminha .= "Vi esse imóvel no site: *APARTAMENTOAVENDACUIABA*: %0A"
                  . "https://www.apartamentoavendacuiaba.com.br" . $urlCompleta;

                ?>



                <a href="<?php echo $urlEncaminha; ?>" class="shareImovel mt-4"><i class="fab fa-whatsapp"></i> Compartilhar este
                  imóvel</a>
              </div>
            </div>
          </div>
          <!-- fecha aqui col-lg-3 p-0 -->

          <div class="col-lg-9">
            <p class="descricao">
              <strong>Descrição do Imóvel: </strong> <br>
              <?php echo nl2br($value['descricao']); ?>
            </p>
            <div class="container">
              <div class="row itens">


                <div class="col-md-4 text-center item">
                  <i class="fas fa-bed"></i>
                  <p>
                    <?php echo $value['quartos'] ?> Quartos
                  </p>
                </div>

                <?php if ($value['suite'] == "") {
                ?>

                  <div class="col-md-4 text-center item">
                    <i class="fas fa-bath"></i>
                    <p>Suíte</p>
                  </div>

                <?php } ?>

                <!-- sala -->
                <?php if ($value['sala'] == 1) {
                ?>
                  <div class="col-md-4 text-center item">
                    <i class="fas fa-tv"></i>
                    <p>
                      <?php echo "Sala"; ?>
                    </p>
                  </div>
                <?php } ?>



                <!-- cozinha -->

                <?php if ($value['cozinha'] == 1) {
                ?>
                  <div class="col-md-4 text-center item">
                    <i class="fas fa-utensil-spoon"></i>
                    <p>
                      <?php echo "Cozinha"; ?>
                    </p>
                  </div>

                <?php } ?>

                <!-- lavanderia -->

                <?php if ($value['lavanderia'] == 1) {
                ?>
                  <div class="col-md-4 text-center item">
                    <i class="fas fa-tshirt"></i>
                    <p>
                      <?php echo "Lavanderia"; ?>
                    </p>
                  </div>

                <?php } ?>

                <!-- sacada -->

                <?php if ($value['sacada'] == 1) {
                ?>
                  <div class="col-md-4 text-center item">
                    <i class="fas fa-building"></i>
                    <p>
                      <?php echo "Sacada"; ?>
                    </p>
                  </div>
                <?php } ?>




                <!-- banheiro social -->

                <?php if ($value['banheiros'] !== "") {
                ?>
                  <div class="col-md-4 text-center item">
                    <i class="fas fa-shower"></i>
                    <p>
                      <?php echo $value['banheiros'] ?> Banheiro(s)
                    </p>
                  </div>
                <?php } ?>

                <!-- elevador -->

                <?php if ($value['elevador'] == 1) {
                ?>
                  <div class="col-md-4 text-center item">
                    <i class="fas fa-chevron-circle-up"></i>
                    <p>
                      <?php echo "Elevador"; ?>
                    </p>
                  </div>
                <?php } ?>


                <!-- garagem -->

                <?php if ($value['garagem'] !== "") {
                ?>
                  <div class="col-md-4 text-center item">
                    <i class="fas fa-car"></i>
                    <p>
                      <?php echo $value['garagem']; ?> Garagem
                    </p>
                  </div>
                <?php } ?>

                <!-- andar -->

                <?php if ($value['andar'] !== "") {
                ?>
                  <div class="col-md-4 text-center item">
                    <i class="fas fa-arrows-alt-v"></i>
                    <p>
                      <?php echo $value['andar']; ?>º Andar
                    </p>
                  </div>
                <?php } ?>



                <!-- area de lazer -->

                <?php if ($value['area_lazer'] == 1) {
                ?>
                  <div class="col-md-4 text-center item">
                    <i class="fas fa-swimming-pool"></i>
                    <p>
                      <?php echo "Área de Lazer"; ?>
                    </p>
                  </div>
                <?php } ?>

                <!-- area construída -->

                <?php if ($value['area_construida'] !== "") {
                ?>
                  <div class="col-md-4 text-center item">
                    <i class="fas fa-ruler-combined"></i>
                    <p>Área:
                      <?php echo $value['area_construida'] . "m²"; ?>
                    </p>
                  </div>
                <?php } ?>
                <!-- area construída -->

              </div>
            </div>

          

        </div>

      </div>
      </div>
    </div>
  </div>

  <!-- final nova container -->



  <div class="container">


    <div class="row col-lg-12 mx-auto outrosImoveis">
      <div class="tituloOutrosImoveis">
        <h1>Outros imóveis</h1>
      </div>

      <?php

      foreach ($dataMenorViews as $value) {
        // var_dump($value);
        // criando URL
        $urlBase = "http://localhost/apartamentoavendacuiaba/";
        // $urlBase = "https://www.apartamentoavendacuiaba.com.br/";
        $urlAntiga = $urlBase;
        $tituloDeImovel = $value['titulo'];
        $codigoImovel = $value['cod_imovel'];


        $imovelUrl = $db->criar_url_amigavel($urlAntiga, $tituloDeImovel, $codigoImovel);

        // var_dump($imovelUrl);
      ?>

        <div class="col-md-3 outrosImoveisCard my-2">
          <div class="card">
            <?php
            $imagemOutros = ($value['segunda_imagem'] ? $value['segunda_imagem'] : $value['primeira_imagem_url']);

            ?>
            <img src="<?php echo "app/" . $imagemOutros ?>" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">
                <?php echo $value['titulo']; ?>
              </h5>
              <!-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p> -->
            </div>
            <ul class="list-group list-group-flush">
              <li class="list-group-item">
                <?php echo "Quartos " . $value['quartos']; ?>
              </li>
              <li class="list-group-item">
                <?php echo "Bairro " .  $value['nome_bairro']; ?>
              </li>
              <li class="list-group-item">
                <?php echo "Valor R$" . number_format($value['valor'], 2, ",", "."); ?>
              </li>
            </ul>
            <div class="card-body">
              <a href="<?php echo $imovelUrl; ?>" target="_new" class=" btn btn-success w-100">Ver Imóvel</a>
            </div>
          </div>
        </div>

      <?php

      }

      ?>

    </div>
  </div>

  <footer class="footer">
    <div class="container">
      <div class="row">
        <ul>
          <li>
            <a href="index.php">Página Inicial</a>
          </li>
          <li>
            <a href="planos.php">Quero Anunciar meu Ap</a>
          </li>
        </ul>
        <h1>APARTAMENTOAVENDACUIABA.COM.BR</h1>
        <a class="aemail" target="_blank" href="mailto:anuncie@apartamentoavendacuiaba.com.br">anuncie@apartamentoavendacuiaba.com.br</a>
        <p>&copy; Todos os Direitos Reservados</p>
      </div>
    </div>
  </footer>


  <!-- Modal -->
  <div class="modal fade" id="imageModal" tabindex="-1" aria-labelledby="imageModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-xl">
      <div class="modal-content">
        <img src="" class="img-fluid" id="modalImage" alt="Imagem em destaque">
        <button type="button" class="btn btn-secondary" id="prevButton">Anterior</button>
        <button type="button" class="btn btn-primary" id="nextButton">Próxima</button>
      </div>
    </div>
  </div>

  <script>
    const modalImage = document.getElementById('modalImage');
    const carouselItems = document.querySelectorAll('.carousel-item');
    const prevButton = document.getElementById('prevButton');
    const nextButton = document.getElementById('nextButton');

    let currentIndex = 0;

    // Adiciona um ouvinte de evento para cada imagem do carrossel
    carouselItems.forEach((item, index) => {
      item.addEventListener('click', function() {
        currentIndex = index;
        modalImage.src = this.querySelector('img').src;
        $('#imageModal').modal('show'); // Exibe a modal
      });
    });

    // Adiciona um ouvinte de evento para o botão anterior
    prevButton.addEventListener('click', function() {
      currentIndex = (currentIndex - 1 + carouselItems.length) % carouselItems.length;
      modalImage.src = carouselItems[currentIndex].querySelector('img').src;
    });

    // Adiciona um ouvinte de evento para o botão seguinte
    nextButton.addEventListener('click', function() {
      currentIndex = (currentIndex + 1) % carouselItems.length;
      modalImage.src = carouselItems[currentIndex].querySelector('img').src;
    });

    // Adiciona a funcionalidade de swipe para o carrossel
    let startX;
    let startY;
    document.getElementById('carouselExampleControls').addEventListener('touchstart', function(e) {
      startX = e.touches[0].clientX;
      startY = e.touches[0].clientY;
    });
    document.getElementById('carouselExampleControls').addEventListener('touchmove', function(e) {
      const diffX = e.touches[0].clientX - startX;
      const diffY = e.touches[0].clientY - startY;
      if (Math.abs(diffX) > Math.abs(diffY)) {
        if (diffX > 0) {
          // Desliza para a imagem anterior
          $('#carouselExampleControls').carousel('prev');
        } else {
          // Desliza para a próxima imagem
          $('#carouselExampleControls').carousel('next');
        }
      }
    });
  </script>

  <!-- JavaScript Bundle with Popper -->
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/js/lightbox.min.js"></script>



  <script>
    // Função para salvar os dados no LocalStorage e aplicar a máscara
    function saveData() {
      var nome = document.getElementById('nome').value;
      var telefone = document.getElementById('telefone').value;

      localStorage.setItem('nome', nome);
      localStorage.setItem('telefone', telefone);

      mascara(document.getElementById('telefone'), mtel);
    }

    // Restaurar os dados do LocalStorage ao carregar a página e aplicar a máscara
    window.onload = function() {
      var nome = localStorage.getItem('nome');
      var telefone = localStorage.getItem('telefone');

      if (nome) {
        document.getElementById('nome').value = nome;
      }

      if (telefone) {
        document.getElementById('telefone').value = telefone;
        mascara(document.getElementById('telefone'), mtel);
      }
    };

    /* Máscaras ER */
    function mascara(o, f) {
      v_obj = o
      v_fun = f
      setTimeout("execmascara()", 1)
    }

    function execmascara() {
      v_obj.value = v_fun(v_obj.value)
    }

    function mtel(v) {
      v = v.replace(/\D/g, ""); //Remove tudo o que não é dígito
      v = v.replace(/^(\d{2})(\d)/g, "($1) $2"); //Coloca parênteses em volta dos dois primeiros dígitos
      v = v.replace(/(\d)(\d{4})$/, "$1-$2"); //Coloca hífen entre o quarto e o quinto dígitos
      return v;
    }

    function id(el) {
      return document.getElementById(el);
    }

    // Aplicar a máscara ao digitar no campo de telefone
    id('telefone').onkeyup = function() {
      mascara(this, mtel);
    }
  </script>



</body>

</html>