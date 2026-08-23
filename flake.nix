{
  description = "Profil Prodi TRM - Dev Environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default = pkgs.mkShell {
          name = "profil-prodi-trm";

          packages = with pkgs; [
            # Static file server untuk preview
            live-server

            # Alternatif server sederhana
            python3

            # Optimasi gambar
            optipng
            imagemagick

            # Editor & tools
            prettier
          ];

          shellHook = ''
            echo ""
            echo "  Profil Prodi TRM - Dev Environment"
            echo "  -----------------------------------"
            echo "  live-server  : jalankan live-server untuk auto-reload"
            echo "  python3 -m http.server 8080  : atau server Python"
            echo ""
          '';
        };
      });
}
