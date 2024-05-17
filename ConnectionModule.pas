unit ConnectionModule;

interface

uses
  Aurelius.Drivers.Interfaces,
  Aurelius.Drivers.SQLite, 
  System.SysUtils, System.Classes, Aurelius.Comp.Connection, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, Aurelius.Sql.Sqlite, Aurelius.Schema.Sqlite,
  Aurelius.Drivers.FireDac
  , Aurelius.Engine.ObjectManager
  ;

type
  TSQLiteConnection = class(TDataModule)
    AureliusConnection: TAureliusConnection;
    FDConnection: TFDConnection;
  private
  public
    function CreateConnection: IDBConnection;
  end;

var
  SQLiteConnection: TSQLiteConnection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses 
  Aurelius.Drivers.Base;

{$R *.dfm}

{ TMyConnectionModule }

function TSQLiteConnection.CreateConnection: IDBConnection;
begin
  Result := AureliusConnection.CreateConnection;
//  Result := TObjectManager.Create(Conexao.CreateConnection);
end;




end.
