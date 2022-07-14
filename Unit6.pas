unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvGlassButton, IniFiles, AdvEdit, AdvEdBtn,
  AdvDirectoryEdit, ExtCtrls;

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
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Label4: TLabel;
    but_set: TAdvGlassButton;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure but_saveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure but_setClick(Sender: TObject);
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

procedure TForm6.but_setClick(Sender: TObject);
var
tempdata:word;
begin
tempdata:=RadioGroup2.ItemIndex;
if tempdata>3 then
tempdata:=2;  //default
settings_data:= RadioGroup1.ItemIndex;
if settings_data>7 then
settings_data:=0; //default
settings_data:=settings_data+ (tempdata shl 8);//pack into one word
send_new_settings_to_adapter(0);  //rf sens
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

  if (current_adapter=8) then begin  //MTRF64A
  but_set.Visible:=true;
  Label4.Visible:=true;
  Label5.Visible:=true;
  RadioGroup2.Visible:=true;
  if (adapterFirmware>0) then begin    //baudrate and sensivity
  RadioGroup1.Visible:=true;
  RadioGroup2.Left:=163;
  Label5.Left:=165;
  end
  else begin    //sensivity
  RadioGroup1.Visible:=false;
  RadioGroup2.Left:=8;
  Label5.Left:=10;
  end;
  end
  else begin
  Label4.Visible:=false;
  Label5.Visible:=false;
  RadioGroup1.Visible:=false;
  RadioGroup2.Visible:=false;
  but_set.Visible:=false;
  end;


end;

end.
