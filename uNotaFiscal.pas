unit uNotaFiscal;

interface

uses Aurelius.Mapping.Attributes
    , System.Generics.Collections
    , uItem
    , uEmitente
    ;

type
  [Entity, Automapping]
  TNotaFiscal = class
  private
    Fid: Integer;
    FnumNF: Integer;
    Fitem: TList<TItem>;
    Femitente: TEmitente;
  public
    property id: Integer read Fid write Fid;
    property numNF: Integer read FnumNF write FnumNF;
    [Association([], CascadeTypeAll)]
    property item: TList<TItem> read FItem;
    //[JoinColumn('emitente', [TColumnProp.Lazy], 'id' )]
    property emitente: TEmitente read Femitente write Femitente;
  end;

implementation

end.
