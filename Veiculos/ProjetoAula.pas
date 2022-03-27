unit ProjetoAula;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Vcl.Mask;

type
  TForm1 = class(TForm)
    btnInserir: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    ComboBox2: TComboBox;
    RadioGroup1: TRadioGroup;
    Label7: TLabel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    Label8: TLabel;
    Edit7: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    btnCancelar: TButton;
    btnSair: TButton;
    procedure btnInserirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCancelarClick(Sender: TObject);
var
  i: Integer;
begin
for i := 0 to Form1.ComponentCount - 1  do
    if Form1.Components[i] is TEdit then
      TEdit(Form1.Components[i]).Clear
    else if Form1.Components[i] is TMaskEdit then
      TMaskEdit(Form1.Components[i]).Clear;
end;

procedure TForm1.btnInserirClick(Sender: TObject);
begin

  if (Edit7.text = '') then
  begin
    MessageDlg('O campo Nome n�o pode estar em branco', mtError, [mbOK], 0);
    Edit7.SetFocus;
    exit;
  end
  else if (Edit1.text = '') then
  begin
    MessageDlg('O campo Placa n�o pode estar em branco', mtError, [mbOK], 0);
    Edit1.SetFocus;
    exit;
  end
  else
  begin
    MessageDlg('Ve�culo cadastrado com sucesso!', mtInformation, [mbOK],0);
  end;
end;

procedure TForm1.btnSairClick(Sender: TObject);
begin
  Form1.close;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then
   perform(WM_NEXTDLGCTL,0,0);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Edit1.setFocus;
end;

end.