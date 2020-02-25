with import ./nixpkgs.nix {
  config = {};
};
mkShell {
  buildInputs = [
    (python3.withPackages (p: with p; [
      matplotlib
      numpy
      opencv3
      pillow
      pyqtgraph
      pyscreenshot
      pyside
    ]))
  ];
}
