{ lib
, python3Packages
, darknet
, fetchgit
}:

with python3Packages;

buildPythonPackage rec {
  pname = "pydnet";
  version = "0.0.1";

  src = ./.;
  #src = fetchgit {
  #  #inherit pname version;
  #  url = "https://github.com/leonardp/pydnet";
  #  rev = "62f87d6aae13e623e80a2088d553703a68f8cb29";
  #  hash = "sha256-BEHRvPaqnY1JtJNHn23kcDW5xXxQ3aLo1hzT27f0gP0=";
  #};

  postPatchPhase = ''
    sed -i 's|find_library("darknet")|"${darknet}/lib/libdarknet.so"|' src/pydnet/pydnet.py
'';

  doCheck = false;

  meta = with lib; {
    homepage = "https://github.com/leonardp/pydnet";
    description = "Python bindings and applications for AlexeyAB/darknet";
    license = licenses.gpl3;
  };
}
