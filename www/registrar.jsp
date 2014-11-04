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

            var minimo = false;

            function validar(obj, tamaño){
                var id = obj.id + "Span";
                if(obj.value.length > tamaño){
                    document.getElementById(id).style.display = "block";
                }else{
                    document.getElementById(id).style.display = "none";
                }

                validarCampos();
            }

            function validarMinUs(obj){
                if(obj.value.length >= 6){
                    minimo = true;
                }else{
                    minimo = false;
                }

                validarCampos();
            }

            function validarCampos(){
                var faltaCampo = false;
                if(minimo){
                    var valida = document.getElementsByClassName("registro");
                    for(var i=0; i<valida.length; i++){
                        if(!faltaCampo && valida[i].value.length == 0){
                            faltaCampo = true;
                        }
                    }

                    if(faltaCampo){
                        document.getElementById("registrar").disabled = true;
                    }else{
                        document.getElementById("registrar").disabled = false;
                    }
                }else{
                    document.getElementById("registrar").disabled = true;
                }
                
            }

            function mostrarClave(){
                var tipo = document.getElementById("clave").type; 
                if(tipo == "text")
                    document.getElementById("clave").type = "password"; 
                else
                    document.getElementById("clave").type = "text"; 
            }

            function registrar(){
                var nombre;
            }
            
        </script>

        <title>Twitter</title>
    </head>
    <body>
        <header>
            <div>                                       
                <a href="index.html" type="button" class="btn btn-primary" id="colorTwitt">
                    <span class="glyphicon glyphicon-chevron-left"></span><img src="img/b_tweet.png" styles="width: 80px; height: 71px">Regístrate</a>
            </div>
        </header>
        <div class="container-fluid" style="margin-top: 100px;">
            <div class="row-fluid bordes">
                <div class="col-md-12 col-xs-12"><label>Nombre completo</label></div>
                <div class="form-group">
                    <div class="input-group">
                        <input type="text" class="form-control registro" placeholder="Nombre y apellido" id="nombre" onkeyup="validar(this, 0);">
                        <div class="input-group-addon twitt-input"><span class="glyphicon glyphicon-ok" style="display: none;" id="nombreSpan">
                    </div>
                </div>
                <div class="col-md-12 col-xs-12"><label>Correo electrónico</label></div>                
                <div class="form-group"><input type="text" class="form-control registro" onkeyup="validarCampos();"></div>
                <div class="col-md-12 col-xs-12"><label>Nombre de usuario</label></div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon twitt-input">@</div>
                        <input type="text" class="form-control registro" placeholder="6-15 caracteres" maxlength="15" id="usuario" onkeyup="validarMinUs(this);">
                    </div>
                </div>
                <div class="col-md-12 col-xs-12"><label>Contraseña</label></div>
                <div class="form-group">
                    <div class="input-group">
                        <input type="password" class="form-control registro" placeholder="Al menos 6 caracteres" id="clave" onkeyup="validar(this, 5); validarMinUs(this);">                    
                        <div class="input-group-addon twitt-input" onclick="mostrarClave();"><span class="glyphicon glyphicon-eye-open"></span></div>
                        <div class="input-group-addon twitt-input"><span class="glyphicon glyphicon-ok" style="display: none;" id="claveSpan"></span></div>
                    <div>
                </div>
            </div>
            <HR>
            <div class="row-fluid">
                <div class="col-md-12 col-xs-12" styles="background-color: #d6d6d6;">
                    <button type="button" class="btn btn-primary btn-lg btn-block" id="registrar" disabled="disabled">Regístrate</button>

                </div>
            </div>
        </div>
    </body>
</html>
