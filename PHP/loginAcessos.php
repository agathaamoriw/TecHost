<?php

namespace PROGRAMAÇÃO/PHP;

class Login
{
    // Verificar se o usuário está logado
    public static function isLogged(){
        return false;
    }

    // Acesso permitido apenas para usuários logados
    public static function requireLogin(){

        if(!self::isLogged()){
            header('location: login.php');
            exit;
        }
    }

    // Se usuário estiver logado
    public static function requireLogout(){

        if(self::isLogged()){
            header('location: index.php');
            exit;
        }
    }
}