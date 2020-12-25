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
    Label3: TLabel;
    CheckBox1: TCheckBox;
    AdvDirectoryEdit2: TAdvDirectoryEdit;
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

  Ini.WriteBool('RX_SETTINGS', 'SENSLOG_EN', CheckBox1.Checked);
  Ini.Writestring('RX_SETTINGS', 'SENSLOG_FILE', AdvDirectoryEdit2.Text);

  Ini.Free;
  send_http_enable := CheckBox4.Checked;
  send_http_address := Edit1.Text;
  senslog_en:=CheckBox1.Checked;
  senslog_patch:= AdvDirectoryEdit2.Text;
  if senslog_en then
  save_sensors_data();
end;

procedure TForm6.FormShow(Sender: TObject);
begin
  CheckBox2.Checked := log_en;
  CheckBox4.Checked := send_http_enable;
  CheckBox1.Checked:= senslog_en;
 AdvDirectoryEdit2.Text := senslog_patch;
  AdvDirectoryEdit1.Text := log_patch;
  Edit1.Text := send_http_address;

end;

end.
