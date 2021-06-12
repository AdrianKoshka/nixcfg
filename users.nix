{ config, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users = { 
    users.alc = {
       description = "Adrian Lucrèce Céleste";
       isNormalUser = true;
       extraGroups = [ "wheel" "networkmanager" ]; # Enable ‘sudo’ for the user.
       openssh = { 
          authorizedKeys.keys = [
            "ecdsa-sha2-nistp521 AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBACxewoWf/RGhUfbJ8DYk8fLmdW4FfSwTIkyFkjlYdxV24lqVOTopTQP0tHIbARd8WMKxKiLyo6Eb/YtAHnPYSJvlwADin9ahimF72BdQ6/3o+50F0k6GIY0WLZcyK6Z3JD39NqYeO7ZCC/IVXHfbCT9fAp8DvCBFntDnbp6McukWHe+EA== alc@Adrians-Mac-mini.local"
            "ecdsa-sha2-nistp521 AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBAH19WN6f0fyJUCR8vY5p0NTWOgWZkpMBYnwhUjZkAyM+F/u5LRCuMv7SawKBMOcf3+04aUleCUCadZDCn0ifzmJeQFvZaUJdlylyv4OK39JUiYH7FTCG5hcSU0zlYX8/1GYgkQQeo4x1HSGDh8Zr89FazEkRurUuvQQnz8SblSOZ5h4Bg== alc@ipp"
          ];
       };
    };
  };
}
