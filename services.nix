{ config, pkgs, ...}:

{
 systemd = {
  services = {
   create-statping-pod = with config.virtualisation.oci-containers; {
    serviceConfig.Type = "oneshot";
    wantedBy = [ "${backend}-statping-postgres.service" ];
    script = ''
     ${pkgs.podman}/bin/podman pod exists statping || \
     ${pkgs.podman}/bin/podman pod create -n statping -p '443:443'
    '';
   };
  };
 };
 services = {
  # List services that you want to enable:
  xserver = {
    enable = false;
  };
  openssh = {
    enable = true;
    passwordAuthentication = false;
    startWhenNeeded = true;
  };
  avahi = {
    nssmdns = true;
    enable = true;
    ipv4 = true;
    ipv6 = true;
    extraServiceFiles = { 
      ssh = "${pkgs.avahi}/etc/avahi/services/ssh.service";
      sftp-ssh = "${pkgs.avahi}/etc/avahi/services/sftp-ssh.service";
    };
    publish = {
      enable = true;
      addresses = true;
      workstation = true;
      hinfo = true;
      userServices = true;
    };
   };
 };
}
