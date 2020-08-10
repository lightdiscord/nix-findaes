{ stdenv, fetchzip }:

stdenv.mkDerivation {
  pname = "findaes";
  version = "1.0.2";

  src = fetchzip {
    url = "mirror://sourceforge/project/findaes/findaes-1.2.zip";
    sha256 = "1356qxw0ws62w68dhhpa1y9a0s1bfvyrnr1v2vhd4635xmjgl45q";
  };

  installPhase = ''
    install -Dm555 -t $out/bin findaes
  '';
}
