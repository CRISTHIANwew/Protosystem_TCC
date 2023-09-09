unit ProtoSystem.Controller.Dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.VCLUI.Wait,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.IOUtils, System.Variants;

type
  TDM = class(TDataModule)
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    conexao: TFDConnection;
    QueryPRODUTO: TFDQuery;
    QueryCLIENTE: TFDQuery;
    QueryFORNECEDOR: TFDQuery;
    FDQuery: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure CreateDB;
  public
    { Public declarations }
  end;

var
  Dm: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
var
  LPath: string;
  LFile: TextFile;
begin
{$IFDEF MSWINDOWS}
  LPath := System.SysUtils.GetCurrentDir;
{$ELSE}
  LPath := System.IOUtils.TPath.GetDocumentsPath;
{$ENDIF}
  LPath := System.IOUtils.TPath.Combine(LPath, 'Database');
  ForceDirectories(LPath);
  LPath := System.IOUtils.TPath.Combine(LPath, 'Dados.db');
  if not(FileExists(LPath)) then
  begin
    try
      AssignFile(LFile, LPath);
      Rewrite(LFile);
    finally
      CloseFile(LFile);
    end;
  end;
  conexao.Params.Values['Database'] := LPath;
  CreateDB;
end;

procedure TDM.CreateDB;
var
  LPath: string;
  LFile: TextFile;
begin
{$IFDEF MSWINDOWS}
  LPath := System.SysUtils.GetCurrentDir;
{$ELSE}
  LPath := System.IOUtils.TPath.GetDocumentsPath;
{$ENDIF}
  LPath := System.IOUtils.TPath.Combine(LPath, 'Database');
  ForceDirectories(LPath);
  LPath := System.IOUtils.TPath.Combine(LPath, 'Dados.db');
  if not(FileExists(LPath)) then
  begin
    try
      AssignFile(LFile, LPath);
      Rewrite(LFile);
    finally
      CloseFile(LFile);
    end;
 end;
  conexao.Params.Values['Database'] := LPath;

  FDQuery.ExecSQL(
    'CREATE TABLE IF NOT EXISTS CLIENTE (' +
      'ID INTEGER PRIMARY KEY,' +
      'NOME VARCHAR(100),' +
      'CFPCNPJ VARCHAR(100),' +
      'EMAIL VARCHAR(100));'
    );

  FDQuery.ExecSQL(
    'CREATE TABLE IF NOT EXISTS DOC_PAGAR (' +
      'ID INTEGER PRIMARY KEY,' +
      'NOME VARCHAR(100),' +
      'CFPCNPJ VARCHAR(100),' +
      'EMAIL VARCHAR(100));'
    );

  FDQuery.ExecSQL(
    'CREATE TABLE IF NOT EXISTS DOC_RECEBER (' +
      'ID INTEGER PRIMARY KEY,' +
      'NOME VARCHAR(100),' +
      'CFPCNPJ VARCHAR(100),' +
      'EMAIL VARCHAR(100));'
    );

  FDQuery.ExecSQL(
    'CREATE TABLE IF NOT EXISTS FORNECEDOR (' +
      'ID INTEGER PRIMARY KEY,' +
      'NOME VARCHAR(100),' +
      'CFPCNPJ VARCHAR(100),' +
      'EMAIL VARCHAR(100));'
    );

  FDQuery.ExecSQL(
    'CREATE TABLE IF NOT EXISTS PRODUTO (' +
      'ID INTEGER PRIMARY KEY,' +
      'NOME VARCHAR(100),' +
      'CFPCNPJ VARCHAR(100),' +
      'EMAIL VARCHAR(100));'
    );

  FDQuery.ExecSQL(
    'CREATE TABLE IF NOT EXISTS USUARIO (' +
      'ID INTEGER PRIMARY KEY,' +
      'USERNAME VARCHAR(100),' +
      'PASSWORD VARCHAR(100));'
    );

    FDQuery.SQL.Text :='INSERT INTO USUARIO (ID, USERNAME, PASSWORD) VALUES (:ID, :USERNAME, :PASSWORD)';
    FDQuery.ParamByName('ID').AsString := '01';
    FDQuery.ParamByName('USERNAME').AsString := 'CRISTHIAN';
    FDQuery.ParamByName('PASSWORD').AsString := '123';
    FDQuery.ExecSQL;

end;

end.
