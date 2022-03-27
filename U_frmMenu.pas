unit U_frmMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, StdCtrls;

type
  TfrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro: TMenuItem;
    Cliente1: TMenuItem;
    Produto1: TMenuItem;
    Fornecedor1: TMenuItem;
    Relatrio1: TMenuItem;
    Cliente2: TMenuItem;
    Fornecedor2: TMenuItem;
    Fornecedor3: TMenuItem;
    Sobre1: TMenuItem;
    SobreoSistema1: TMenuItem;
    procedure Cliente1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;
     conta : integer;
implementation

uses U_frmCliente, U_frmProduto, U_frmFornecedor;

{$R *.dfm}

procedure TfrmMenu.Cliente1Click(Sender: TObject);
begin
  if (frmCliente = Nil) then
  begin
  frmCliente := TfrmCliente.Create(Self);
  frmCliente.ShowModal;
  FreeAndNil(frmCliente);
end;
end;

procedure TfrmMenu.Produto1Click(Sender: TObject);
begin
  if (frmProduto = Nil) then
  begin
  frmProduto := TfrmProduto.Create(Self);
  frmProduto.ShowModal;
  FreeAndNil(frmProduto);
end;
end;

procedure TfrmMenu.Fornecedor1Click(Sender: TObject);
begin
  if (frmFornecedor = Nil) then
  begin
  frmFornecedor := TfrmFornecedor.Create(Self);
  frmFornecedor.ShowModal;
  FreeAndNil(frmFornecedor);
end;
end;

procedure TfrmMenu.btnInserirClick(Sender: TObject);
begin

  // conta           := conta + 1;
end;

end.
