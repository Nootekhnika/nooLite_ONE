unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, shellapi, pngimage;

type
  TForm7 = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
form7.Close;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
//ShellExecute(0,'open',pchar(extractFilepath(paramstr(0))+'MTRF-64-USB.pdf'),nil,nil,SW_SHOWNORMAL);
end;

procedure TForm7.Label3Click(Sender: TObject);
begin
ShellExecute(0,'open',pchar('https://www.noo.by/'),nil,nil,SW_SHOWNORMAL);
end;

end.
