program U_Sistema;

uses
  Forms,
  U_frmMenu in 'U_frmMenu.pas' {frmMenu},
  U_frmProduto in 'U_frmProduto.pas' {frmProduto},
  U_frmFornecedor in 'U_frmFornecedor.pas' {frmFornecedor},
  U_frmCliente in 'U_frmCliente.pas' {frmCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
end.
