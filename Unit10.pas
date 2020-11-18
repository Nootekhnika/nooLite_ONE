unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, AdvGlassButton, ExtCtrls;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    Shape2: TShape;
    Shape1: TShape;
    Label3: TLabel;
    AdvGlassButton12: TAdvGlassButton;
    AdvGlassButton1: TAdvGlassButton;
    SpinEdit1: TSpinEdit;
    procedure AdvGlassButton12Click(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    send_cmd:bool;
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm10.AdvGlassButton12Click(Sender: TObject);
begin
settings_mask:=$FF;
if (settings_mode=18) then begin
settings_data :=round(Form10.SpinEdit1.Value/10);
send_cmd:=true;
Form10.Close;
send_new_settings(18);
end;

if (settings_mode=19) then begin
settings_data :=round(Form10.SpinEdit1.Value/10);
send_cmd:=true;
Form10.Close;
send_new_settings(19);
end;
end;

procedure TForm10.AdvGlassButton1Click(Sender: TObject);
begin
  send_cmd:=false;
  Form10.Close;

end;

procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if   send_cmd=false then
   Form1.AdvGlassButton12.Click;
end;

procedure TForm10.FormShow(Sender: TObject);
begin
send_cmd:=false;
end;

end.
