{ config, pkgs, ... }:

{
   environment.systemPackages = with pkgs; [
     vim
     wget
     htop
     git
     python39
     ncdu
     lm_sensors
     pinentry_curses
   ];
}
