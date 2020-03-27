unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvGlassButton, IniFiles, AdvEdit, AdvEdBtn,
  AdvDirectoryEdit;

type
  TForm6 = class(TForm)
    Label2: TLabel;
    but_save: TAdvGlassButton;
    CheckBox4: TCheckBox;
    Edit1: TEdit;
    Label1: TLabel;
    CheckBox2: TCheckBox;
    AdvDirectoryEdit1: TAdvDirectoryEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure but_saveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm6.but_saveClick(Sender: TObject);
begin
  Form6.Close;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Ini := Tinifile.Create(savedir);
  Ini.WriteBool('RX_SETTINGS', 'LOG_EN', CheckBox2.Checked);
  Ini.Writestring('RX_SETTINGS', 'LOG_FILE', AdvDirectoryEdit1.Text);
  Ini.WriteBool('RX_SETTINGS', 'HTTP_EN', CheckBox4.Checked);
  Ini.Writestring('RX_SETTINGS', 'HTTP_ADDR', Edit1.Text);
  Ini.Free;
  send_http_enable := CheckBox4.Checked;
  send_http_address := Edit1.Text;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
  CheckBox2.Checked := log_en;
  CheckBox4.Checked := send_http_enable;
  AdvDirectoryEdit1.Text := log_patch;
  Edit1.Text := send_http_address;

  if CheckBox2.Checked then
    AdvDirectoryEdit1.Enabled := true
  else
    AdvDirectoryEdit1.Enabled := false;

end;

end.
