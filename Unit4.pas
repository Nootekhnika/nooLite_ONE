unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvGlassButton, ComCtrls, AdvCircularProgress;

type
  TForm4 = class(TForm)
    ProgressBar1: TProgressBar;
    Label16: TLabel;
    Label17: TLabel;
    AdvGlassButton2: TAdvGlassButton;
    AdvGlassButton15: TAdvGlassButton;
    AdvGlassButton1: TAdvGlassButton;
    OpenDialog1: TOpenDialog;
    Label6: TLabel;
    AdvCircularProgress1: TAdvCircularProgress;
    procedure AdvGlassButton2Click(Sender: TObject);
    procedure AdvGlassButton15Click(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm4.AdvGlassButton15Click(Sender: TObject);
begin
  Form1.memo1.Clear;
  Form1.Button3.Click;
end;

procedure TForm4.AdvGlassButton1Click(Sender: TObject);
begin
if MessageDlg('Вы действительно хотите остановить обновление ПО?',  mtCustom, [mbYes, mbNo], 0) = mrYes then begin
Form4.Close;
end;
end;

procedure TForm4.AdvGlassButton2Click(Sender: TObject);
begin
  AdvCircularProgress1.Enabled := false;
  AdvCircularProgress1.Visible := false;
  Label6.Caption := '';
  ProgressBar1.Position := 0;
  Form1.Button1.Click;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AdvGlassButton2.Enabled := true;
  AdvCircularProgress1.Enabled := false;
  AdvCircularProgress1.Visible := false;
  Form4.AdvGlassButton15.Enabled := false;
  Label6.Caption := '';
  Label16.Caption := '';
  boot_mode_step := 0;
  boot_mode := 0;
  ProgressBar1.Position := 0;
  ProgressBar1.Visible := false;
  Form1.Button6.Click;
  Form1.Visible := true;
end;

end.
