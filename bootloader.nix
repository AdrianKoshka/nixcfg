{ config, pkgs, ... }:

{
 boot = { 
   kernelPackages = pkgs.linuxPackages_latest;
   loader = {
     systemd-boot.enable = false;
     efi = {
       canTouchEfiVariables = false;
     };
     grub = { 
       enable = true;
       efiSupport = true;
       efiInstallAsRemovable = true;
       device = "nodev";
     };
   };
 };
}
