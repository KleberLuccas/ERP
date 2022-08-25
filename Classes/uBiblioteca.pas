unit uBiblioteca;

interface
uses IniFiles, System.SysUtils, Vcl.Forms;
  procedure setValorIni(pLocal, pSessao, pSubSessao, pValor  : string);
  function getValorIni(pLocal, pSessao, pSubSessao : string) : string;

implementation
  procedure setValorIni(pLocal, pSessao, pSubSessao : string; pValor  : string);
    var vArquivo : TIniFile;
    begin
      Varquivo := TIniFile.Create(pLocal);

      Varquivo.WriteString(pSessao, pSubSessao, pValor);
      Varquivo.Free;
    end;

  function getValorIni(pLocal, pSessao, pSubSessao : string) : string;
  var vArquivo : TiniFile;
  begin
    vArquivo := TiniFIle.Create(plocal);

    Result := vArquivo.ReadString(pSessao, pSubSessao, '');

    vArquivo.Free;
  end;
end.
