{
  appimageTools,
  fetchurl,
  lib,
}:
let
  pname = "ente-auth";
  version = "3.0.18-beta.2";

  src = fetchurl {
    url = "https://github.com/ente-io/ente/releases/download/auth-v${version}/ente-auth-v${version}-x86_64.AppImage";
    hash = "sha256-WtFoqW++U+BoDUW1lc6xMJDCC1r2+O/fci492P2iVDg=";
  };
in

appimageTools.wrapType2 {
  inherit pname version src;
  extraPkgs = pkgs: [
    pkgs.libepoxy
    pkgs.brotli
  ];

  meta = {
    description = "An end-to-end encrypted, cross platform and free app for storing your 2FA codes with cloud backups.";
    homepage = "https://ente.io/auth";
    mainProgram = "ente-auth";
    license = lib.licenses.agpl3Only;
    maintainers = with lib.maintainers; [ schnow265 ];
  };
}
