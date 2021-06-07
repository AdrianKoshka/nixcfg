{ config, ... }:
{
 programs = { 
   vim.defaultEditor = true;

   # Some programs need SUID wrappers, can be configured further or are
   # started in user sessions.
   mtr.enable = true;
   gnupg.agent = {
     enable = true;
     enableSSHSupport = true;
     pinentryFlavor = "curses";
   };
   bash = {
     shellInit = "EDITOR=vim";
   };
 };
}
