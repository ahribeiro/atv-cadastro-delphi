unit U_frmCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Vcl.Grids, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmCliente = class(TForm)
    Label1: TLabel;
    lblCodigo: TLabel;
    edtNome: TEdit;
    btnInserir: TButton;
    grd1: TStringGrid;
    btnPesquisar: TButton;
    btnAtualizar: TButton;
    lblTelefone: TLabel;
    btnNovo: TButton;
    lblNome: TLabel;
    edtCodigo: TEdit;
    edtTelefone: TMaskEdit;
    RadioGroup1: TRadioGroup;
    Label2: TLabel;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edtTelefoneChange(Sender: TObject);
    procedure edtTelefoneExit(Sender: TObject);
    procedure edtTelefoneKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    conta, codigo, caracter : Integer;
    procedure Limpar();
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

{$R *.dfm}

procedure TfrmCliente.btnAtualizarClick(Sender: TObject);
begin
  btnNovo.Enabled      := False;
  btnPesquisar.Enabled := False;
  btnAtualizar.Enabled    := False;
  btnInserir.Enabled   := True;
end;

procedure TfrmCliente.btnInserirClick(Sender: TObject);
begin
  edtCodigo.Enabled := False;

  if edtNome.Text = '' then
  begin
    MessageDlg('� necess�rio preencher o nome.',mtInformation,[mbOk],0);
    edtNome.SetFocus;
    exit;
  end
  else if edtTelefone.Text = '' then
  begin
    MessageDlg('� necess�rio preencher o telefone.',mtInformation,[mbOk],0);
    edtTelefone.SetFocus;
    exit;
  end;

  grd1.Cells[0,grd1.RowCount-1] := edtCodigo.Text;
  grd1.Cells[1,grd1.RowCount-1] := edtNome.Text;
  grd1.Cells[2,grd1.RowCount-1] := edtTelefone.Text;
//  edtCodigo.Text                := '';
//  edtNome.Text                  := '';
//  edtTelefone.Text              := '';
  grd1.RowCount                 := grd1.RowCount + 1;
  edtCodigo.Enabled             := True;
  Limpar();
  btnNovo.Enabled               := True;
  btnPesquisar.Enabled          := True;
  btnAtualizar.Enabled          := True;
  btnInserir.Enabled            := False;
  edtTelefone.EditMask          := '';
end;

procedure TfrmCliente.btnNovoClick(Sender: TObject);
begin
  Limpar();
  btnInserir.Enabled   := True;
  btnPesquisar.Enabled := False;
  btnAtualizar.Enabled    := False;
  edtNome.Enabled      := True;
  edtTelefone.Enabled  := True;
  edtNome.SetFocus;
  codigo               := codigo + 1;
  edtCodigo.Enabled    := False;
  edtCodigo.Text       := IntToStr(codigo);
  btnNovo.Enabled      := False;
end;

procedure TfrmCliente.btnPesquisarClick(Sender: TObject);
var
  x, codigo : Integer;
  nome : String;
begin
  btnInserir.Enabled := False;

  x := 1;

  while x < grd1.RowCount - 1 do
  begin
    codigo := StrToInt(grd1.Cells[0, x]);
    nome := grd1.Cells[1, x];
    if edtCodigo.Text <> '' then
    begin
      if (StrToInt(edtCodigo.Text) = codigo ) then
      begin
        edtCodigo.Text   := grd1.Cells[0, x];
        edtNome.Text     := grd1.Cells[1, x];
        edtTelefone.Text := grd1.Cells[2, x];

        if caracter < 11 then
          edtTelefone.EditMask := '(99) 9999-9999;0;_'
        else
          edtTelefone.EditMask := '!(99) 9 9999-9999;0;_';
        Exit;
      end
      else
      begin
        MessageDlg('Cliente n�o encontrado.',mtInformation,[mbOk],0);
        edtCodigo.SetFocus;
        Exit;
      end;
    end
    else if (Trim(UpperCase(edtNome.Text)) = Trim(UpperCase(nome))) then
    begin
      edtCodigo.Text   := grd1.Cells[0, x];
      edtNome.Text := grd1.Cells[1, x];
      edtTelefone.Text := grd1.Cells[2, x];

      if caracter < 11 then
        edtTelefone.EditMask := '(99) 9999-9999;0;_'
      else
        edtTelefone.EditMask := '!(99) 9 9999-9999;0;_';
      Exit;
    end
    else
    begin
      MessageDlg('Cliente n�o encontrado.',mtInformation,[mbOk],0);
      edtNome.SetFocus;
      Exit;
    end;
    x := x + 1;
  end;

end;

procedure TfrmCliente.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TfrmCliente.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['A' .. 'Z', 'a' .. 'z', #13, #8, #32]) then
    Key := #0;
end;

procedure TfrmCliente.edtTelefoneChange(Sender: TObject);
const
  caracteres = '0123456789abcdefghijklmnopqrstuvwxyz';
var
  i, cont : byte;
  digitos : string;
begin
  cont := 0;
  digitos := LowerCase(Trim(edtTelefone.Text));
  if digitos <> '' then
  begin
    for i := 0 to Length(digitos) do
    begin
      if Pos(digitos[i], caracteres) <> 0 then
        inc(cont);
    end;
    caracter := cont;
  end;

end;

procedure TfrmCliente.edtTelefoneExit(Sender: TObject);
begin
  if (caracter < 10) then
  begin
    MessageDlg('Digite um n�mero de telefone/celular v�lido.',mtInformation,[mbOk],0);
    Exit;
  end
  else
  begin
    if caracter < 11 then
      edtTelefone.EditMask := '(99) 9999-9999;0;_'
    else
      edtTelefone.EditMask := '!(99) 9 9999-9999;0;_';
  end;

end;

procedure TfrmCliente.edtTelefoneKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0' .. '9', #13, #8] ) then
    Key := #0;
end;

procedure TfrmCliente.FormActivate(Sender: TObject);
begin
  btnNovo.SetFocus;
end;

procedure TfrmCliente.FormCreate(Sender: TObject);
begin
  btnInserir.Enabled   := False;
  btnPesquisar.Enabled := False;
  btnAtualizar.Enabled    := False;
  edtNome.Enabled      := False;
  edtTelefone.Enabled  := False;
  codigo               := 0;
  //codigo               := codigo + 1;
  //edtCodigo.Text       := IntToStr(codigo);
  edtCodigo.Enabled    := False;
  grd1.Cells[0,0]      := 'C�digo';
  grd1.Cells[1,0]      := 'Nome';
  grd1.Cells[2,0]      := 'Telefone';
  //conta := 1;
end;

procedure TfrmCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_Return) then
    perform(wm_nextdlgctl,0,0);
end;

procedure TfrmCliente.Limpar;
var
i: Integer;
begin
  for i := 0 to frmCliente.ComponentCount -1 do
  begin
    if frmCliente.Components[i] is TEdit then
      TEdit(frmCliente.Components[i]).Clear;
  end;
  edtTelefone.Text := '';
end;

end.
