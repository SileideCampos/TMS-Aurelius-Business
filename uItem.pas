unit uItem;

interface

uses Aurelius.Mapping.Attributes, Aurelius.Types.Nullable;

type
  [Entity, Automapping]
  TItem = class
  private
    Fid: Integer;
    FcProd: Integer;
    FcEAN: Integer;
    FxProd: string;
  public
    property id: Integer read Fid write Fid;
    property cProd: Integer read FcProd write FcProd;
    property cEAN: Integer read FcEAN write FcEAN;
    property xProd: string read FxProd write FxProd;
  end;

implementation

end.
