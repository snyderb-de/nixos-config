# /etc/nixos/flake.nix

{
 description = "flake for the-roadhouse";

 inputs = {
   nixpkgs = {
     url = "github:NixOS/nixpkgs/nixos-unstable";
   };
 };


 outputs = { self, nixpkgs }: {
  nixosConfigurations = {
   the-roadhouse = nixpkgs.lib.nixosSystem {
     system = "x86_64-linux";
     modules = [
       ./configuration.nix
     ];		
   };
  };
 };
}
