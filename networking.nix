{ config, ... }:

{
 networking = { 
   hostName = "rpi4";
   firewall.enable = false;
   useDHCP = false;
   interfaces = { 
     eth0 = {
       useDHCP = false;
     };
   };
   networkmanager = {
     enable = true;
     wifi = {
       backend = "iwd";
       powersave = false;
     };
   };
 };
}
