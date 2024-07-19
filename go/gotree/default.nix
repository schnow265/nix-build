with import <nixpkgs> {};

buildGoModule rec {
  pname = "gotree";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "elbachir-one";
    repo = "gt";
    rev = "v${version}";
    hash = "sha256-SRVXcdgtRpWqvO28CnUcx40nFJnG+Hd94Ezgaj5xK6A=";
  };

  vendorHash = "sha256-/kxEnw8l9S7WNMcPh1x7xqiQ3L61DSn6DCIvJlyrip0=";

  meta = {
    description = "gt is a tree-like program written in Go with a lot of features.";
    homepage = "https://github.com/elbachir-one/gt";
    changelog = "https://github.com/elbachir-one/gt/releases/tag/v${version}";
    license = lib.licenses.bsd3;
    mainProgram = "gt";
    maintainers = with lib.maintainers; [ schnow265 ];
  };
}