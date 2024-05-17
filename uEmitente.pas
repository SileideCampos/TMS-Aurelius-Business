unit uEmitente;

interface

uses Aurelius.Mapping.Attributes;

type
  [Entity, Automapping]
  TEmitente = class
  private
    Fid: Integer;
    Fcnpj: string;
    FxNome: string;
    FxFant: string;
    FIE: Integer;
  public
    property id: Integer read Fid write Fid;
    property cnpj: string read Fcnpj write Fcnpj;
    property xNome: string read FxNome write FxNome;
    property xFant: string read FxFant write FxFant;
    property IE: Integer read FIE write FIE;
  end;

implementation

end.
