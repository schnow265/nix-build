{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "gotree";
  version = "1.2.0";

  src = fetchFromGitHub {
    owner = "elbachir-one";
    repo = "gt";
    rev = "v${version}";
    hash = "sha256-baK2pA+jVTeMy06jrn2VrQZUsMCf7wpX7gX8mnnDh3A=";
  };

  vendorHash = null;

  meta = {
    description = "gt is a tree-like program written in Go with a lot of features.";
    homepage = "https://github.com/elbachir-one/gt";
    changelog = "https://github.com/elbachir-one/gt/releases/tag/v${version}";
    license = lib.licenses.bsd3;
    mainProgram = "gt";
    maintainers = with lib.maintainers; [ schnow265 ];
  };
}
