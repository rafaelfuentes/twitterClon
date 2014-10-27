<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="format-detection" content="telephone=no" />
        <meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width, height=device-height, target-densitydpi=device-dpi" />

        <!-- CSS -->
        <link rel="stylesheet" type="text/css" href="css/index.css" />
        <link rel="stylesheet" href="framework/bootstrap/css/bootstrap.min.css">        

        <!-- JS -->        
        <script type="text/javascript" src="js/index.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="cordova.js"></script>

        <script type="text/javascript">

            function validarCampos(){
                var faltaCampo = false;
                
                var valida = document.getElementsByClassName("login");
                for(var i=0; i<valida.length; i++){
                    if(!faltaCampo && valida[i].value.length == 0){
                        faltaCampo = true;
                    }
                }

                if(faltaCampo){
                    document.getElementById("log-in").disabled = true;
                }else{
                    document.getElementById("log-in").disabled = false;
                }
                
                
            }

            function mostrarClave(){
                var tipo = document.getElementById("clave").type; 
                if(tipo == "text")
                    document.getElementById("clave").type = "password"; 
                else
                    document.getElementById("clave").type = "text"; 
            }

        </script>

        <title>Twitter</title>
    </head>
    <body>
        <header>
            <div>                                       
                <a href="index.html" type="button" class="btn btn-primary" id="colorTwitt">
                    <span class="glyphicon glyphicon-chevron-left"></span><img src="img/b_tweet.png" styles="width: 80px; height: 71px">
                    Login
                </a>
                <a href="registrar.jsp" type="button" class="btn btn-primary float-left" id="colorTwitt" align="right" >
                    REGÍSTRATE
                </a>

            </div>
        </header>
        <div class="container-fluid" style="margin-top: 100px;">
            <div class="row-fluid bordes">
                <div class="col-md-12 col-xs-12"><label>Teléfono, correo o usuario</label></div>                
                <div class="form-group"><input type="text" class="form-control login" onkeyup="validarCampos();"></div>
                <div class="col-md-12 col-xs-12"><label>Contraseña</label></div>
                <div class="form-group">
                    <div class="input-group">
                        <input type="password" class="form-control login" placeholder="Al menos 6 caracteres" id="clave" onkeyup="validarCampos();">                    
                        <div class="input-group-addon twitt-input" onclick="mostrarClave();"><span class="glyphicon glyphicon-eye-open"></span></div>
                    <div>
                </div>
            </div>
            <HR>
            <div class="row-fluid">
                <div class="col-md-12 col-xs-12">
                    <button type="button" class="btn btn-primary btn-lg btn-block" id="log-in" disabled="disabled">Log in</button>
                </div>
            </div>
        </div>
    </body>
</html>