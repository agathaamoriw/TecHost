

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>LOGIN</title>
    <link rel="stylesheet" href="../CSS/style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>

  <div class="container">
    <input type="checkbox" id="flip">

    <!-- PÁGINA QUE MEXE -->
    <div class="cover">
      <div class="front">
        <img src="../IMAGENS/SUP.jpeg" alt="Imagem Médico">
        <div class="text">
          <span class="text-1" style="font-weight: bold;">TecHost</span>
          <span class="text-2" >Conecte-se e solicite o leito <br> de seu paciente!</span>
        </div>
      </div>

      <!-- IMAGEM ATRÁS -->
      <div class="back">
        <img class="backImg" src="../IMAGENS/SUP.jpeg" alt="Imagem Supervisor">
        <div class="text">
          <p class="text-1">TecHost<br> </p>
          <p class="text-2">Conecte-se e gerencie leitos!</p>
        </div>
      </div>
    </div>

    <div class="forms">
        <div class="form-content">
          <div class="login-med">
            <div class="title">Login</div>

            <!--FORM LOGIN MÉDICOS-->
          <form action="" method="POST">
            <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="text" placeholder="Digite seu email" required>
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="Digite sua senha" required>
              </div>
              <div class="text"><a href="#">Esqueceu a senha?</a></div>
              <div class="button input-box">
                <input type="submit" value="Enviar">
              </div>
              <div class="text sign-up-text">Não é Médico? <label for="flip"> Sou Supervisora!</label></div>
            </div>
        </form>
      </div>

        <div class="login-sup">
          <div class="title">Inscrever-se</div>

          <!--FORM LOGIN SUPERVISORES-->
        <form action="" method="POST">
            <div class="input-boxes">
                <div class="input-box">
                  <i class="fas fa-envelope"></i>
                  <input type="text" placeholder="Digite seu email" required>
                </div>
                <div class="input-box">
                  <i class="fas fa-lock"></i>
                  <input type="password" placeholder="Digite sua senha" required>
                </div>
                <div class="text"><a href="#">Esqueceu a senha?</a></div>
                <div class="button input-box">
                  <input type="submit" value="Enviar">
                </div>
                <div class="text sign-up-text">Não é supervisor? <label for="flip"> Sou Médica!</label></div>
              </div>
      </form>

    </div>
    </div>
    </div>
  </div>

</body>
</html>