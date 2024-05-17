unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Aurelius.Bind.BaseDataset,
  Aurelius.Bind.Dataset
  , Aurelius.Engine.DatabaseManager
  , Aurelius.Engine.ObjectManager
  , ConnectionModule
  , uNotaFiscal
  , uItem
  , uEmitente
  , Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids
  ;

type
  TForm1 = class(TForm)
    DSNF: TDataSource;
    AureliusDatasetNF: TAureliusDataset;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    DBGrid2: TDBGrid;
    DSItens: TDataSource;
    DSEmitente: TDataSource;
    AureliusDatasetItens: TAureliusDataset;
    AureliusDatasetEmitente: TAureliusDataset;
    DBGrid3: TDBGrid;
    AureliusDatasetEmitenteSelf: TAureliusEntityField;
    AureliusDatasetEmitenteid: TIntegerField;
    AureliusDatasetEmitentecnpj: TStringField;
    AureliusDatasetEmitentexNome: TStringField;
    AureliusDatasetEmitentexFant: TStringField;
    AureliusDatasetEmitenteIE: TIntegerField;
    AureliusDatasetNFSelf: TAureliusEntityField;
    AureliusDatasetNFid: TIntegerField;
    AureliusDatasetNFnumNF: TIntegerField;
    AureliusDatasetNFitem: TDataSetField;
    AureliusDatasetNFemitente: TAureliusEntityField;
    AureliusDatasetNFEmitenteNome: TStringField;
    AureliusDatasetItensSelf: TAureliusEntityField;
    AureliusDatasetItensid: TIntegerField;
    AureliusDatasetItenscProd: TIntegerField;
    AureliusDatasetItenscEAN: TIntegerField;
    AureliusDatasetItensxProd: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    Conexao: TSQLiteConnection;
    Manager: TObjectManager;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  AureliusDatasetNF.Close;
  AureliusDatasetItens.Close;
  AureliusDatasetEmitente.Close;

  AureliusDatasetEmitente.Manager := Manager;
  AureliusDatasetEmitente.SetSourceCriteria(Manager.Find<TEmitente>);
  AureliusDatasetEmitente.Open;

  AureliusDatasetNF.Manager := Manager;
  AureliusDatasetNF.SetSourceCriteria(Manager.Find<TNotaFiscal>);
  AureliusDatasetNF.Open;

  AureliusDatasetItens.DatasetField := AureliusDatasetNF.FieldByName('item') as TDatasetField;
  AureliusDatasetItens.Open;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Manager.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Conexao := TSQLiteConnection.Create(self);
  Manager := TObjectManager.Create(Conexao.CreateConnection);
  TDatabaseManager.Update(Conexao.CreateConnection);
end;

end.
