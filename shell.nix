{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "profil-prodi-trm";

  packages = with pkgs; [
    # Static file server untuk preview
    nodePackages.live-server

    # Alternatif server sederhana
    python3

    # Optimasi gambar
    optipng
    imagemagick

    # Editor & tools
    nodePackages.prettier
  ];

  shellHook = ''
    echo ""
    echo "  Profil Prodi TRM - Dev Environment"
    echo "  -----------------------------------"
    echo "  live-server  : jalankan live-server untuk auto-reload"
    echo "  python3 -m http.server 8080  : atau server Python"
    echo ""
  '';
}
