unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask,
 AdvDateTimePicker, Grids,  AdvGrid, AdvObj, BaseGrid, ExtCtrls;

type
  TForm9 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    Label1: TLabel;
    Shape1: TShape;
    Shape6: TShape;
    Label2: TLabel;
    Shape7: TShape;
    Label3: TLabel;
    Shape8: TShape;
    Shape9: TShape;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label7: TLabel;
    Shape4: TShape;
    Label8: TLabel;
    Shape5: TShape;
    Shape10: TShape;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Shape11: TShape;
    Shape12: TShape;
    Label12: TLabel;
    Shape13: TShape;
    Label13: TLabel;
    Shape14: TShape;
    Shape15: TShape;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Shape16: TShape;
    Shape17: TShape;
    Label17: TLabel;
    Shape18: TShape;
    Label18: TLabel;
    Shape19: TShape;
    Shape20: TShape;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Shape21: TShape;
    Shape22: TShape;
    Label22: TLabel;
    Shape23: TShape;
    Label23: TLabel;
    Shape24: TShape;
    Shape25: TShape;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Button5: TButton;
    Label27: TLabel;
    Label28: TLabel;
    Shape26: TShape;
    Shape27: TShape;
    Label29: TLabel;
    Shape28: TShape;
    Label30: TLabel;
    Shape29: TShape;
    Shape30: TShape;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure analyse_rx_data_termo();
  const
  start_cell=30;
var
  Form9: TForm9;
  read_index:integer;
  termo_ansver_mode:integer;
  error_count_send:integer;
  termo_settings:array [0..512] of byte;
implementation

uses Unit1, Crc32;

{$R *.dfm}

procedure set_termo_settings;
var
l,d,c:integer;
Crc_set: Cardinal;
BufPtr: Pointer;
begin
c:=0;
for d := 1  to 7 do begin
for l := 1  to 36 do begin
termo_settings[c]:=strtoint(Form9.AdvStringGrid1.Cells[l, d]);
inc(c);
end;
end;
Crc_set:=$FFFFFFFF;
BufPtr := @termo_settings;
Crc_set:=UpdateCRC32(Crc_set,BufPtr,252);
Crc_set := not Crc_set;
termo_settings[c] := LO(Crc_set shr 24);
inc(c);
termo_settings[c] := LO(Crc_set shr 16);
inc(c);
termo_settings[c] := LO(Crc_set shr 8);
inc(c);
termo_settings[c] := LO(Crc_set);
end;

procedure send_table_data;
begin
send_termo_data(129,round(read_index / 4)+start_cell,termo_settings[read_index],termo_settings[read_index+1],termo_settings[read_index+2],termo_settings[read_index+3]);
Form9.ProgressBar1.Position:=read_index;
Form9.Timer1.Enabled:=true;
end;

procedure analyse_rx_data_termo();
begin
Form9.Timer1.Enabled:=false;
if termo_rx_cmd=130 then begin
if termo_ansver_mode=0 then begin   //установка времени
Form9.Label28.Visible:=false;
end
else if termo_ansver_mode=1 then begin  //считывание данных

end
else if termo_ansver_mode=2 then  begin      //запись данных
error_count_send:=2;
Form9.Label27.Visible:=false;
read_index:=read_index+4;
if (read_index<256) then begin
send_table_data();
end
else begin
Form9.ProgressBar1.Position:=0;
read_index:=0;
Form9.Label28.Visible:=false;
end;

end;
end;


end;

procedure TForm9.Button1Click(Sender: TObject);
begin
if SaveDialog1.Execute then begin
if copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-3,4)='.tdf' then
AdvStringGrid1.SaveToFile(SaveDialog1.FileName)
else
AdvStringGrid1.SaveToFile(SaveDialog1.FileName+'.tdf');
end;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
if OpenDialog1.Execute then
AdvStringGrid1.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
Label27.Visible:=false;
Label28.Visible:=true;
read_index:=0;
ProgressBar1.Position:=0;
ProgressBar1.Max:=252;
termo_ansver_mode:=2;
error_count_send:=2;
set_termo_settings();
send_table_data();
end;


procedure TForm9.Button4Click(Sender: TObject);
begin
form9.Close;
end;

procedure TForm9.Button5Click(Sender: TObject);
var
ct:TDateTime;
st_day:string;
day_index,hh,mm,ss:integer;
begin
Label27.Visible:=false;
Label28.Visible:=true;
Timer1.Enabled:=true;
ct:=now();
hh :=strtoint(FormatDateTime('h',ct));
mm :=strtoint(FormatDateTime('n',ct));
ss :=strtoint(FormatDateTime('s',ct));
st_day:=FormatDateTime('ddd',ct);
if (st_day='Пн') then day_index:=1;
if (st_day='Вт') then day_index:=2;
if (st_day='Ср') then day_index:=3;
if (st_day='Чт') then day_index:=4;
if (st_day='Пт') then day_index:=5;
if (st_day='Сб') then day_index:=6;
if (st_day='Вс') then day_index:=7;
termo_ansver_mode:=0;
send_termo_data(134,0,ss,mm,hh,day_index);
Timer1.Enabled:=true;
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Label6.Caption := ''; // спрятать информацию
Form1.Label6.Font.Color := clblack;
send_enable := true;
settings_set := 0;
Form1.AdvGlassButton12.Click;
end;

procedure TForm9.FormCreate(Sender: TObject);
var
t,s:integer;
begin
Form9.AdvStringGrid1.Cells[0, 1] := 'Пн';
Form9.AdvStringGrid1.Cells[0, 2] := 'Вт';
Form9.AdvStringGrid1.Cells[0, 3] := 'Ср';
Form9.AdvStringGrid1.Cells[0, 4] := 'Чт';
Form9.AdvStringGrid1.Cells[0, 5] := 'Пт';
Form9.AdvStringGrid1.Cells[0, 6] := 'Сб';
Form9.AdvStringGrid1.Cells[0, 7] := 'Вс';
for t := 0 to 5 do
  begin
Form9.AdvStringGrid1.Cells[1+6*t, 0] := 'ЧАС';
Form9.AdvStringGrid1.Cells[2+6*t, 0] := 'МИН';
Form9.AdvStringGrid1.Cells[3+6*t, 0] := 'ЧАС';
Form9.AdvStringGrid1.Cells[4+6*t, 0] := 'МИН';
Form9.AdvStringGrid1.Cells[5+6*t, 0] := '--';
Form9.AdvStringGrid1.Cells[6+6*t, 0] := '°,С';
  end;
   for s:= 1 to 7 do
  begin
 for t := 0 to 5 do
  begin
Form9.AdvStringGrid1.Cells[1+6*t, s] := '0';
Form9.AdvStringGrid1.Cells[2+6*t, s] := '0';
Form9.AdvStringGrid1.Cells[3+6*t, s] := '0';
Form9.AdvStringGrid1.Cells[4+6*t, s] := '0';
Form9.AdvStringGrid1.Cells[5+6*t, s] := '0';
Form9.AdvStringGrid1.Cells[6+6*t, s] := '0';
  end;
  end;

end;

procedure TForm9.Timer1Timer(Sender: TObject);
begin
timer1.Enabled:=false;
if termo_ansver_mode=2 then begin
if error_count_send>0 then  begin
error_count_send:=error_count_send-1;
send_table_data();
timer1.Enabled:=true;
end
else begin
Form9.Label27.Visible:=true;
Form9.Label28.Visible:=false;
end;
end
else begin
Form9.Label27.Visible:=true;
Form9.Label28.Visible:=false;
end;
end;

end.
