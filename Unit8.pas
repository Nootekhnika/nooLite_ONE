unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ComCtrls, AdvGlassButton, ExtCtrls;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Shape2: TShape;
    Shape1: TShape;
    AdvGlassButton12: TAdvGlassButton;
    AdvGlassButton1: TAdvGlassButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpinEdit3: TSpinEdit;
    Label6: TLabel;
    procedure AdvGlassButton12Click(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm8.AdvGlassButton12Click(Sender: TObject);
begin
settings_mask:=$FFFF;
if (settings_mode=17) then begin
settings_data := (round(Form8.SpinEdit1.Value*2.55) shl 8) + round(Form8.SpinEdit2.Value*2.55);
Form8.Close;
send_new_settings(17);
end
else if (settings_mode=18) then begin
settings_data :=round(Form8.SpinEdit3.Value*2.55);
Form8.Close;
send_new_settings(18);
end;
end;

procedure TForm8.AdvGlassButton1Click(Sender: TObject);
begin
  Form8.Close;
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.AdvGlassButton12.Click;
end;

end.
