# IPS-Practica-Haskell

Instalacion de Haskell

  Instalacion para Windows:
    
   -Correr el siguiente comando en powershell (sin permisos de Admin)
  
    Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;Invoke-Command -ScriptBlock ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -ArgumentList $true
    
   -En caso de error con la instalacion de HLS, correr
   
    ghcup --metadata-caching=0 install hls

-------------------------------------
  Instalacion para Linux/WSL:
    
   -Correr el siguiente comando en la terminal
  
    curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
  
  
  Para usar una IDE, utilizar VSC y descargar la extension para Haskell
 
