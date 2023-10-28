<?php
require_once "../config/DB.php";
require_once "./logado.php";

$db = new DB;

// echo "<pre>";
// var_dump($_GET);
// echo "</pre>";

  // Verificar se os parâmetros "id" e "caminho" estão presentes no URL
  if (isset($_GET['delete']) && (isset($_GET['url']) || isset($_GET['url1']))) {
    $imagem_id = $_GET['delete'];
    $caminho_imagem = $_GET['url'];
    $caminho_imagem1 = $_GET['url1'];

    // Chamar o método para excluir a imagem
    $deletado = $db->deletarImagem($imagem_id, $caminho_imagem, $caminho_imagem1);
    if ($deletado) {
      echo 'Imagem excluída com sucesso.';
    } else {
      echo 'Erro ao excluir a imagem.';
    }
  }
$id = $_GET['id'];
  header("Location: editar.php?id=$id");