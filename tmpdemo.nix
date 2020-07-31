{ mkDerivation, base, hello, hpack, stdenv, typed-process }:
mkDerivation {
  pname = "tmpdemo";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base typed-process ];
  libraryToolDepends = [ hello hpack ];
  executableHaskellDepends = [ base typed-process ];
  executableToolDepends = [ hello ];
  prePatch = "hpack";
  license = "unknown";
  hydraPlatforms = stdenv.lib.platforms.none;
}
