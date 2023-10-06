unit ProtoSystem.Controller.Dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.VCLUI.Wait,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.IOUtils, System.Variants,
  Datasnap.DBClient;

type
  TDM = class(TDataModule)
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    conexao: TFDConnection;
    FDQuery: TFDQuery;
    Tb_venda: TFDTable;
    SQL_vendas: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);

  private
    { Private declarations }
    procedure CreateDB;
    function GetTables: TDataSet;
  public
    var TotalGeralFLT: double;
  end;

var
  Dm: TDM;
  caminho: string;

implementation

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  CreateDB;
end;

procedure TDM.CreateDB;
var
  LPath: string;
  Lpathsdb: string;
  LFile: TextFile;
  LDSTables: TDataSet;
  TableNames: TStringList;
  Result: boolean;

begin
{$IFDEF MSWINDOWS}
  LPath := System.SysUtils.GetCurrentDir;
{$ELSE}
  LPath := System.IOUtils.TPath.GetDocumentsPath;
{$ENDIF}
  LPath := System.IOUtils.TPath.Combine(LPath, 'Database');
  Lpathsdb := LPath;
  ForceDirectories(LPath);
  LPath := System.IOUtils.TPath.Combine(LPath, 'ProtoSystem.s3db');

  if not DirectoryExists(Lpathsdb) then
  begin
    CreateDir(Lpathsdb);
    if not(FileExists(LPath)) then
    begin
      try
        AssignFile(LFile, LPath);
        Rewrite(LFile);
      finally
        CloseFile(LFile);
      end;
    end;
  end;
  caminho := LPath;

  conexao.Params.Values['Database'] := LPath;
  conexao.Connected := true;

  LDSTables := nil;
  LDSTables := GetTables;
  TableNames := TStringList.Create;

  conexao.GetTableNames('', '', '', TableNames);

  Result := false;
  Result := TableNames.IndexOf('CLIENTE') >= 0;

  if Result = false then
  begin
    FDQuery.ExecSQL('CREATE TABLE IF NOT EXISTS CLIENTE (' +
      'ID INTEGER PRIMARY KEY AUTOINCREMENT,' +
      'NOME VARCHAR(60),' +
      'CPFCNPJ VARCHAR(14),' +
      'RGIE VARCHAR (20),' +
      'ENDERECO VARCHAR (60) ,' +
      'BAIRRO VARCHAR (60) ,' +
      'CIDADE VARCHAR (60) ,' +
      'CEP VARCHAR (20) ,' +
      'NUMERO VARCHAR(10) ,' +
      'CELULAR VARCHAR(20) ,' +
      'EMAIL VARCHAR(60));');

      FDQuery.SQL.Text :=
      'INSERT INTO CLIENTE (ID, NOME, CPFCNPJ, RGIE, ENDERECO, BAIRRO, CIDADE, CEP) VALUES (:ID, :NOME, :CPFCNPJ, :RGIE, :ENDERECO, :BAIRRO, :CIDADE, :CEP)';
    FDQuery.ParamByName('ID').AsString := '01';
    FDQuery.ParamByName('NOME').AsString := 'CONSUMIDOR';
    FDQuery.ParamByName('CPFCNPJ').AsString := '00000000000';
    FDQuery.ParamByName('RGIE').AsString := '00000000000';
    FDQuery.ParamByName('ENDERECO').AsString := 'ENDERECO';
    FDQuery.ParamByName('BAIRRO').AsString := 'BAIRRO';
    FDQuery.ParamByName('CIDADE').AsString := 'CIDADE';
    FDQuery.ParamByName('CEP').AsString := '68193000';
    FDQuery.ExecSQL;

  end;

  Result := false;
  Result := TableNames.IndexOf('DOC_PAGAR') >= 0;

  if Result = false then
  begin
    FDQuery.ExecSQL('CREATE TABLE IF NOT EXISTS DOC_PAGAR (' +
      'ID INTEGER PRIMARY KEY AUTOINCREMENT,' + 'A VARCHAR(100));');
  end;

  Result := false;
  Result := TableNames.IndexOf('DOC_RECEBER') >= 0;

  if Result = false then
  begin
    FDQuery.ExecSQL('CREATE TABLE IF NOT EXISTS DOC_RECEBER (' +
      'ID INTEGER PRIMARY KEY AUTOINCREMENT,' + 'A VARCHAR(100));');
  end;

  Result := false;
  Result := TableNames.IndexOf('FORNECEDOR') >= 0;

  if Result = false then
  begin
    FDQuery.ExecSQL('CREATE TABLE IF NOT EXISTS FORNECEDOR (' +
      'ID INTEGER PRIMARY KEY AUTOINCREMENT,' + 'NOME VARCHAR(60),' +
      'CPFCNPJ VARCHAR(14),' + 'RGIE VARCHAR (20),' + 'ENDERECO VARCHAR (60) ,'
      + 'BAIRRO VARCHAR (60) ,' + 'CIDADE VARCHAR (60) ,' + 'CEP VARCHAR (20) ,'
      + 'NUMERO VARCHAR(10) ,' + 'CELULAR VARCHAR(20) ,' +
      'EMAIL VARCHAR(60));');
  end;

  Result := false;
  Result := TableNames.IndexOf('PRODUTO') >= 0;

  if Result = false then
  begin
    FDQuery.ExecSQL('CREATE TABLE IF NOT EXISTS PRODUTO (' +
      'ID INTEGER PRIMARY KEY AUTOINCREMENT,' +
       'DESCRICAO VARCHAR(90),' +
      'ESTOQUE INTEGER,' +
       'CUSTO REAL,' +
        'PRECO REAL,' +
         'IMAGEM BLOB,' +
      'DATAHORACADASTRO DATETIME DEFAULT CURRENT_TIMESTAMP,' +
      'DATAHORAALTERACAO DATETIME);');

    FDQuery.ExecSQL('CREATE TRIGGER UpdateDataHoraCadastro ' +
      'AFTER INSERT ON PRODUTO ' + 'BEGIN ' + '  UPDATE PRODUTO ' +
      '  SET DATAHORACADASTRO = CURRENT_TIMESTAMP; ' + 'END;');
  end;

  //-------------------------------------------------------------------

  Result := false;
  Result := TableNames.IndexOf('VENDA_PEDIDOS') >= 0;

  if Result = false then
  begin
    FDQuery.ExecSQL('CREATE TABLE IF NOT EXISTS VENDA_PEDIDOS (' +
      'ID INTEGER PRIMARY KEY AUTOINCREMENT,' +
      'ID_CLIENTE INTEGER,' +
      'NOME_CLIENTE VARCHAR(50),' +
      'DATA DATE DEFAULT TODAY ,'+
      'HORA TIME DEFAULT NOW,'+
      'ENDERECO_CLIENTE VARCHAR(50),'+
      'CONDICAOPAGTO VARCHAR(50),'+
      'VALOR REAL,' +
      'VALORDESCONTO REAL,'+
      'STATUS VARCHAR(50),'+
      'USUARIO VARCHAR(20),'+
      'FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID));');
  end;

  Result := false;
  Result := TableNames.IndexOf('VENDA_GRID') >= 0;

  if Result = false then
  begin
    FDQuery.ExecSQL('CREATE TABLE IF NOT EXISTS VENDA_GRID (' +
      'ID INTEGER PRIMARY KEY AUTOINCREMENT,' +
      'VALOR REAL,' +
      'ID_CLIENTE INTEGER,' +
      'NOME_CLIENTE,' +
      'CPF_CNPJ_CLIENTE,' +
      'DATAHORAVENDA DATETIME DEFAULT CURRENT_TIMESTAMP,' +
      'FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID));');
  end;

  //-------------------------------------------------------------------

  Result := false;
  Result := TableNames.IndexOf('USUARIO') >= 0;

  if Result = false then
  begin
    FDQuery.ExecSQL('CREATE TABLE IF NOT EXISTS USUARIO (' +
      'ID INTEGER PRIMARY KEY AUTOINCREMENT,' +
      'USERNAME VARCHAR(100),' +
      'PASSWORD VARCHAR(100));');

    FDQuery.SQL.Text :=
      'INSERT INTO USUARIO (ID, USERNAME, PASSWORD) VALUES (:ID, :USERNAME, :PASSWORD)';
    FDQuery.ParamByName('ID').AsString := '01';
    FDQuery.ParamByName('USERNAME').AsString := 'SUPORTE';
    FDQuery.ParamByName('PASSWORD').AsString := '123';
    FDQuery.ExecSQL;

    conexao.Connected := true;
  end;
end;

function TDM.GetTables: TDataSet;
begin
  try
    Result := TFDQuery.Create(nil);
    TFDQuery(Result).Connection := conexao;
    TFDQuery(Result).SQL.Add
      ('select name from sqlite_master where type="table"');
    TFDQuery(Result).Open;
  except
    FreeAndNil(Result);
    raise;
  end;
end;

end.
