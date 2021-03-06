unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask,
 AdvDateTimePicker, Grids,  AdvGrid, AdvObj, BaseGrid, ExtCtrls,Clipbrd;

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
    Shape31: TShape;
    Shape32: TShape;
    Shape33: TShape;
    Shape34: TShape;
    Shape35: TShape;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvStringGrid1EditingDone(Sender: TObject);
    procedure AdvStringGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvStringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure AdvStringGrid1ClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure AdvStringGrid1DblClick(Sender: TObject);
    procedure AdvStringGrid1Click(Sender: TObject);
    procedure AdvStringGrid1SelectionChanged(Sender: TObject; ALeft, ATop,
      ARight, ABottom: Integer);
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

procedure close_enable(state:boolean);
var
SysMenu: HMenu;
begin
SysMenu:=GetSystemMenu(Form9.Handle,False);
if state then begin
Windows.EnableMenuItem(SysMenu,SC_CLOSE,MF_ENABLED);
Form9.Button4.Enabled:=true;
end
else begin
Windows.EnableMenuItem(SysMenu,SC_CLOSE,MF_DISABLED Or MF_GRAYED);
Form9.Button4.Enabled:=false;
end;

end;

function set_termo_settings:boolean;
var
l,d,c:integer;
Crc_set: Cardinal;
BufPtr: Pointer;
  MyClass: TComponent;
begin
Result:=true;
c:=0;
for d := 1  to 7 do begin
for l := 1  to 36 do begin
Form9.AdvStringGrid1.Cells[l, d]:=StringReplace(Form9.AdvStringGrid1.Cells[l, d], ' ', '', [rfReplaceAll]);
try
termo_settings[c]:=strtoint(Form9.AdvStringGrid1.Cells[l, d]);
except  
 Application.MessageBox('� �������� ������ ������������ ������������ �������! ����������� ������ ����� �������� ��������.', '������', MB_ICONERROR+ MB_OK);
 Form9.AdvStringGrid1.SelectionColor:=clred;
 Form9.AdvStringGrid1.SelectCells(l, d,l, d);

 Result:=false;
 Exit;
 end;


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
if termo_ansver_mode=0 then begin   //��������� �������
Form9.Label28.Visible:=false;
end
else if termo_ansver_mode=1 then begin  //���������� ������

end
else if termo_ansver_mode=2 then  begin      //������ ������
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
close_enable(true);
end;

end;
end;


end;

procedure TForm9.AdvStringGrid1Click(Sender: TObject);
begin
 Form9.AdvStringGrid1.SelectionColor:=$00EACAB6;
end;

procedure TForm9.AdvStringGrid1ClickCell(Sender: TObject; ARow, ACol: Integer);
begin
 AdvStringGrid1.Options:= AdvStringGrid1.Options - [goEditing];
end;

procedure TForm9.AdvStringGrid1DblClick(Sender: TObject);
begin
 AdvStringGrid1.Options:= AdvStringGrid1.Options + [goEditing];
end;

procedure TForm9.AdvStringGrid1EditingDone(Sender: TObject);
begin
 AdvStringGrid1.Options:= AdvStringGrid1.Options - [goEditing];

 
end;

procedure TForm9.AdvStringGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 AdvStringGrid1.Options:= AdvStringGrid1.Options + [goEditing];
end;

procedure TForm9.AdvStringGrid1KeyPress(Sender: TObject; var Key: Char);


 var
   GRect: TGridRect;
   S, CS, F: string;
   L, R, C: Byte;
 begin
  if Key = ^C then
    begin
   GRect := AdvStringGrid1.Selection;
   S  := '';
   for R := GRect.Top to GRect.Bottom do
   begin
     for C := GRect.Left to GRect.Right do
     begin
       if C = GRect.Right then  S := S + (AdvStringGrid1.Cells[C, R])
       else
         S := S + AdvStringGrid1.Cells[C, R] + #9;
     end;
     S := S + #13#10;
 end;
   ClipBoard.AsText := S;

      // Copy code
    end;

  if Key = ^V then
    begin
   GRect := AdvStringGrid1.Selection;
   L := GRect.Left;
   R := GRect.Top;
   S := ClipBoard.AsText;
   R := R - 1;
   if Length(S)>0 then begin
    if Copy (S,Length(S),1) <> #10 then
     S := S + #13#10;
    end;

   while Pos(#13, S) > 0 do
   begin
     R  := R + 1;
     C  := L - 1;
     CS := Copy(S, 1,Pos(#13, S));
     while Pos(#9, CS) > 0 do
     begin
       C := C + 1;
       if (C <= AdvStringGrid1.ColCount - 1) and (R <= AdvStringGrid1.RowCount - 1) then
         AdvStringGrid1.Cells[C, R] := Copy(CS, 1,Pos(#9, CS) - 1);
       F := Copy(CS, 1,Pos(#9, CS) - 1);
       Delete(CS, 1,Pos(#9, CS));
     end;
     if (C <= AdvStringGrid1.ColCount - 1) and (R <= AdvStringGrid1.RowCount - 1) then
       AdvStringGrid1.Cells[C + 1,R] := Copy(CS, 1,Pos(#13, CS) - 1);
     Delete(S, 1,Pos(#13, S));
     if Copy(S, 1,1) = #10 then
       Delete(S, 1,1);
   end;

    end;
end;

procedure TForm9.AdvStringGrid1SelectionChanged(Sender: TObject; ALeft, ATop,
  ARight, ABottom: Integer);
begin
if (   ALeft<>ARight) or ( ATop<> ABottom )then
AdvStringGrid1.ActiveRowShow:=false
else
AdvStringGrid1.ActiveRowShow:=true;


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
if set_termo_settings()   then begin
Label27.Visible:=false;
Label28.Visible:=true;
close_enable(false);
read_index:=0;
ProgressBar1.Position:=0;
ProgressBar1.Max:=252;
termo_ansver_mode:=2;
error_count_send:=2;
send_table_data();
end;
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
if (st_day='��') then day_index:=1;
if (st_day='��') then day_index:=2;
if (st_day='��') then day_index:=3;
if (st_day='��') then day_index:=4;
if (st_day='��') then day_index:=5;
if (st_day='��') then day_index:=6;
if (st_day='��') then day_index:=7;
termo_ansver_mode:=0;
send_termo_data(134,0,ss,mm,hh,day_index);
Timer1.Enabled:=true;
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Label6.Caption := ''; // �������� ����������
Form1.Label6.Font.Color := clblack;
send_enable := true;
settings_set := 0;
Form1.AdvGlassButton12.Click;
end;

procedure TForm9.FormCreate(Sender: TObject);
var
t,s:integer;
begin
Form9.AdvStringGrid1.Cells[0, 1] := '��';
Form9.AdvStringGrid1.Cells[0, 2] := '��';
Form9.AdvStringGrid1.Cells[0, 3] := '��';
Form9.AdvStringGrid1.Cells[0, 4] := '��';
Form9.AdvStringGrid1.Cells[0, 5] := '��';
Form9.AdvStringGrid1.Cells[0, 6] := '��';
Form9.AdvStringGrid1.Cells[0, 7] := '��';
for t := 0 to 5 do
  begin
Form9.AdvStringGrid1.Cells[1+6*t, 0] := '���';
Form9.AdvStringGrid1.Cells[2+6*t, 0] := '���';
Form9.AdvStringGrid1.Cells[3+6*t, 0] := '���';
Form9.AdvStringGrid1.Cells[4+6*t, 0] := '���';
Form9.AdvStringGrid1.Cells[5+6*t, 0] := '--';
Form9.AdvStringGrid1.Cells[6+6*t, 0] := '�,�';
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
