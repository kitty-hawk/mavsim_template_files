/*
NIXPKGS version

Any archive of nixpkgs can be used.

The simplest update solution is to look at
http://github.com/NixOS/nixpkgs-channels and pick the latest commit for
nixpkgs-unstable. The archive can then be fetched at:

https://github.com/NixOS/nixpkgs-channels/archive/COMMIT_NUMBER.tar.gz;

and the control sum computed using `sha256`.
*/

let
  # nixpkgs-master 2020-02-25
  sha256 = "17nv5gwlq6b33c5sxiy1ydhk8f73gx5kvvxfxn55342da1zsj2ys";
  rev = "8246c35875d1564b99e2e65db229abaa11a09386";
in
import (fetchTarball {
  inherit sha256;
  url = "https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz";
})
