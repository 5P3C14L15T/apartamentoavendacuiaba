<?php
  require_once "config/DB.php"; 

  if(isset($_SESSION['login2']) && $_SESSION['login2'] == "logado2") {
    header("Location: app/dashboard.php");
    
    }


?>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0" /> -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta property="og:title" content="Anuncie Gratuitamente no Apartamento a Venda Cuiabá" />
  <meta property="og:description" content="Encontre os diversos apartamentos em todos os bairros de Cuiabá que estão anunciados a venda." />
  <meta property="og:url" content="https://www.apartamentoavendacuiaba.com.br/login.php" />
  <meta property="og:image" content="/imagem/somente-apto.jpg" />

  <meta property="og:image:secure_url" content="/imagem/somente-apto.jpg" />
  <meta property="og:image:type" content="image/jpeg" />
  <meta property="og:image:width" content="500" />
  <meta property="og:image:height" content="500" />
  <meta property="og:image:alt" content="" />
    <link rel="icon" type="image/x-icon" href="imagem/icon.png">
    <!-- CSS only -->
    <link rel="stylesheet" href="css/style.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
      crossorigin="anonymous"
    />
    <script
    src="https://kit.fontawesome.com/6c66823518.js"
    crossorigin="anonymous"
  ></script>

  <script src='https://www.google.com/recaptcha/api.js'></script>
    <title>Apartamento a Venda Cuiabá</title>
  </head>
  <body>
    <header class="main">
      <nav class="menu">
        <div class="container">
          <div class="logo">
            <a href="index.php">
            <img
              src="imagem/logo.png"
              class="img-fluid logo-img"
              alt=""
              srcset=""
            />
            </a>
          </div>
        </div>
      </nav>
    </header>


  <div class="loginForm">
    <input type="checkbox" id="flip">
    <div class="cover">
      <div class="front">
        <img src="imagem/frontImg.jpg" alt="">
     
      </div>
      <div class="back">
        <img class="backImg" src="imagem/frontImg.jpg" alt="">
        <div class="text">
         
        </div>
      </div>
    </div>
    <div class="forms">
        <div class="form-content">
          <div class="login-form">
            <div class="title">Entrar</div>
            <?php 
              if(isset($_SESSION['login']) and $_SESSION['login'] == "error") {
                $css = "display:block;";
              } else {
                $css = "display:none;";
              }

              unset($_SESSION['login']);
               
            ?>
            <div style="<?=$css;?>" class="alert alert-danger mt-4" role="alert">
  Seu email ou senha não conferem!
</div>
          <form action="config/verify.php" method="post" enctype="multipart/form-data">
            <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="email" name="email" placeholder="Insira seu Email" required>
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" name="senha" placeholder="Insira sua senha" required>
              </div>
              <div class="text"><a href="#">Esqueci minha senha?</a></div>
              <div class="g-recaptcha" data-sitekey="6LcpxL4mAAAAAI4oSoZ5ZZvJKzNTGK3vIjeOvSP8"></div>
              <div class="button input-box">
              
                <input type="submit" value="Entrar" name="login">
              </div>
              <div class="text sign-up-text">Ainda não tem uma conta? <label for="flip">Criar conta</label></div>
            </div>
        </form>
      </div>
        <div class="signup-form">
          <div class="title">Criar conta</div>
          <?php 
              if(isset($_SESSION['loginExiste']) and $_SESSION['loginExiste'] == "existe") {
                $css = "display:block;";
              } else {
                $css = "display:none;";
              }

              unset($_SESSION['loginExiste']);
               
            ?>

            
             <div style="<?=$css;?>" class="alert alert-danger mt-4" role="alert">
  Esse e-mail já foi cadastrado!
</div>
        <form action="config/verify.php" method="post" enctype="multipart/form-data">
            <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-user"></i>
                <input type="text" name="name" placeholder="Insira seu nome" required>
              </div>
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="email" name="email" placeholder="Insira seu email" required>
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" name="password" placeholder="Insira uma senha" required>
              </div>
              <div class="g-recaptcha" data-sitekey="6LcpxL4mAAAAAI4oSoZ5ZZvJKzNTGK3vIjeOvSP8"></div>
              <div class="button input-box">
                <input type="submit" value="Cadastrar" name="cadastrar">
              </div>
              <div class="text sign-up-text">Já possui sua conta? <label for="flip">Entrar</label></div>
            </div>
      </form>
    </div>
    </div>
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

    <!-- JavaScript Bundle with Popper -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
