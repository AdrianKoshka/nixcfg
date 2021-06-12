{ config, ...}:

{
 # container testing
 containers = {
   staticFiles = {
     ephemeral = true;
     autoStart = true;
     bindMounts = {
       "/var/www/" = {
       hostPath = "/var/www/";
       isReadOnly = true;
       };
       "/var/containers/certs/" = {
        hostPath = "/var/containers/certs";
        isReadOnly = true;
       };
     };
     config = { config, pkgs, ... }: {
       services.httpd.enable = true;
       services.httpd.adminAddr = "contact@rpi4.local";
       services.httpd.virtualHosts = {
         "rpi4.local" = {
          hostName = "rpi4.local";
          documentRoot = "/var/www/";
          http2 = true;
          addSSL = true;
          sslServerKey = "/var/containers/certs/key.pem";
          sslServerCert = "/var/containers/certs/cert.pem";
          
         };
       };
     };
   };
 };
}
