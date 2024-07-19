{ lib, buildGoPackage, fetchFromGitHub }:

buildGoPackage rec {
  pname = "gotree";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "elbachir-one";
    repo = "gt";
    rev = "v${version}";
    hash = "sha256-sM4iEsobN4ZLVW2Nk1/lP5utsu8qaKIytxrOPK3/2nY=";
  };

  goPackagePath = "github.com/elbachir-one/gt";

  meta = {
    description = "gt is a tree-like program written in Go with a lot of features.";
    homepage = "https://github.com/elbachir-one/gt";
    changelog = "https://github.com/elbachir-one/gt/releases/tag/v${version}";
    license = lib.licenses.bsd3;
    mainProgram = "gt";
    maintainers = with lib.maintainers; [ schnow265 ];
  };
}