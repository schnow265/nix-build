{
  appimageTools,
  fetchurl,
  lib,
}:
let
  pname = "en-croissant";
  version = "0.10.0";

  src = fetchurl {
    url = "https://github.com/franciscoBSalgueiro/en-croissant/releases/download/v${version}/en-croissant_${version}_amd64.AppImage";
    hash = "sha256-dCPDdd9zY7MR6G3HWbNib5LAg7vJYpjcuWh+ZbnxuI4=";
  };
in

appimageTools.wrapType2 {
  inherit pname version src;

  meta = {
    description = "The Ultimate Chess Toolkit";
    homepage = "https://encroissant.org/";
    mainProgram = "en-croissant";
    license = lib.licenses.gpl3Only;
    maintainers = with lib.maintainers; [ schnow265 ];
  };
}
