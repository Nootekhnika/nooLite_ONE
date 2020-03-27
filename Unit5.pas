unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlassButton, ComCtrls, AdvCircularProgress, StdCtrls;

type
  TForm5 = class(TForm)
    Label16: TLabel;
    Label17: TLabel;
    Label6: TLabel;
    AdvCircularProgress1: TAdvCircularProgress;
    ProgressBar1: TProgressBar;
    AdvGlassButton2: TAdvGlassButton;
    AdvGlassButton15: TAdvGlassButton;
    AdvGlassButton1: TAdvGlassButton;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Label2: TLabel;
    AdvGlassButton4: TAdvGlassButton;
    AdvGlassButton5: TAdvGlassButton;
    AdvGlassButton6: TAdvGlassButton;
    AdvGlassButton7: TAdvGlassButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure AdvGlassButton15Click(Sender: TObject);
    procedure AdvGlassButton2Click(Sender: TObject);
    procedure AdvGlassButton7Click(Sender: TObject);
    procedure AdvGlassButton5Click(Sender: TObject);
    procedure AdvGlassButton6Click(Sender: TObject);
    procedure AdvGlassButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm5.AdvGlassButton15Click(Sender: TObject);
begin
  boot_mode_step_2 := 3;
  Form1.Button12.Click; // �������� ������
  Form1.send_timer_2.Interval := 3000;
  Form1.send_timer_2.Enabled := true;
  Form1.memo1.Lines.Add('Erase...')
end;

procedure TForm5.AdvGlassButton1Click(Sender: TObject);
begin
Form5.Close;
end;

procedure TForm5.AdvGlassButton2Click(Sender: TObject);
begin
  AdvCircularProgress1.Enabled := false;
  AdvCircularProgress1.Visible := false;
  Label6.Caption := '';
  ProgressBar1.Position := 0;
  Form1.Button10.Click;
end;

procedure TForm5.AdvGlassButton4Click(Sender: TObject);
begin
  Form1.Button15.Click;
end;

procedure TForm5.AdvGlassButton5Click(Sender: TObject);
begin
  Form1.Button12.Click;
end;

procedure TForm5.AdvGlassButton6Click(Sender: TObject);
begin
  Form1.Button14.Click;
end;

procedure TForm5.AdvGlassButton7Click(Sender: TObject);
begin
  Form1.Button13.Click;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AdvGlassButton2.Enabled := true;
  AdvCircularProgress1.Enabled := false;
  AdvCircularProgress1.Visible := false;
  AdvGlassButton15.Enabled := false;
  Label6.Caption := '';
  Label16.Caption := '';
  ProgressBar1.Position := 0;
  ProgressBar1.Visible := false;

  Form1.Button13.Click;
  Sleep(150);
  Form1.Button9.Click;
  //Sleep(100);
  //Form1.Button9.Click;
  //Sleep(100);
  //Form1.Button9.Click;

  boot_mode_2 := 0;
  boot_mode_set := 0;
  boot_mode_step_2 := 0;
end;

end.
