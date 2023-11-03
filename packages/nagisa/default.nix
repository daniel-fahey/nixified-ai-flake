{ lib
, buildPythonPackage
, fetchPypi
, cython
, numpy
, six
, dynalite-devices
, pythonOlder
, stdenv }:

buildPythonPackage rec {
  pname = "nagisa";
  version = "0.2.9";

  src = fetchPypi {
    inherit pname version;
    sha256 = "rykmKR5+AkFigZ12n5KhnP3cm/34Fc0+aFdBLED/eOs=";
  };

  buildInputs = [ cython numpy ];

  propagatedBuildInputs = [
    six
    numpy
  ];

  checkInputs = [ ];

  meta = with lib; {
    description = "A Japanese tokenizer based on recurrent neural networks";
    homepage = "https://github.com/taishi-i/nagisa";
    license = licenses.mit;
    maintainers = with maintainers; [ ];
  };
}
