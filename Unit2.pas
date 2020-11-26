unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, AdvGlassButton;

type
  TForm2 = class(TForm)
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    AdvGlassButton12: TAdvGlassButton;
    AdvGlassButton1: TAdvGlassButton;
    Label1: TLabel;
    Shape2: TShape;
    RadioGroup5: TRadioGroup;
    Shape1: TShape;
    RadioGroup6: TRadioGroup;
    RadioGroup7: TRadioGroup;
    RadioGroup8: TRadioGroup;
    RadioGroup9: TRadioGroup;
    RadioGroup10: TRadioGroup;
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure AdvGlassButton12Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup10Click(Sender: TObject);
  private
    send_cmd:bool;
  public

  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.AdvGlassButton12Click(Sender: TObject);
begin
if settings_type=7 then begin
RadioGroup6.ItemIndex:=1;
end;

  if (RadioGroup6.ItemIndex=0)then begin
    if MessageDlg  ('На данном блоке включена ретрансляция команд nooLite! Одновременная работа нескольких блоков с этой включённой функцией может привести к сбоям в передаче команд. Всегда используйте только один блок с включённой ретрансляцией. Хотите применить настройки?',
        mtCustom, [mbYes, mbNo], 0) = mrYes then
      begin
  settings_data := 0;
  if RadioGroup1.ItemIndex = 0 then
    settings_data := settings_data + (1 shl 0);
  if RadioGroup2.ItemIndex = 1 then
    settings_data := settings_data + (1 shl 1);
  if RadioGroup3.ItemIndex = 1 then
    settings_data := settings_data + (1 shl 2);
  settings_data := settings_data + ((RadioGroup4.ItemIndex and 3) shl 3);
  if RadioGroup5.ItemIndex = 0 then
    settings_data := settings_data + (1 shl 5);
  if RadioGroup6.ItemIndex = 0 then
    settings_data := settings_data + (1 shl 6);

  

   if (settings_type=9) then begin
   settings_mask := 1023; // 0...9 бит
   if RadioGroup8.ItemIndex = 0 then
   settings_data := settings_data + (1 shl 7);
   settings_data := settings_data + ((RadioGroup9.ItemIndex and 3) shl 8);
   end
   else if (settings_type=5) then begin
   settings_mask := 255; // 0...7 бит
   if RadioGroup8.ItemIndex = 0 then
   settings_data := settings_data + (1 shl 7);
   end
   else begin
   settings_mask := 127; // 0...6 бит
   end;

  send_cmd:=true;
  Form2.Close;
  send_new_settings(16);
  end;


  end
  else begin
   settings_data := 0;

  if RadioGroup2.ItemIndex = 1 then
    settings_data := settings_data + (1 shl 1);
  if RadioGroup3.ItemIndex = 1 then
    settings_data := settings_data + (1 shl 2);

  if (settings_type=6) then begin
  //sensor
  if RadioGroup7.ItemIndex = 1 then
  settings_data := settings_data + (1 shl 3)
  else  if RadioGroup7.ItemIndex = 2 then
  settings_data := settings_data + (1 shl 1);

    //mode
    if RadioGroup10.ItemIndex = 1 then
    settings_data := settings_data + (1 shl 0);
    end
    else begin  //for other - last state in memory
    if RadioGroup1.ItemIndex = 0 then
    settings_data := settings_data + (1 shl 0);

    settings_data := settings_data + ((RadioGroup4.ItemIndex and 3) shl 3);
    end;

  if RadioGroup5.ItemIndex = 0 then
    settings_data := settings_data + (1 shl 5);
  if RadioGroup6.ItemIndex = 0 then
    settings_data := settings_data + (1 shl 6);

   if (settings_type=9) then begin
   settings_mask := 1023; // 0...9 бит
   if RadioGroup8.ItemIndex = 0 then
   settings_data := settings_data + (1 shl 7);
   settings_data := settings_data + ((RadioGroup9.ItemIndex and 3) shl 8);
   end
   else if (settings_type=5) then begin
   settings_mask := 255; // 0...7 бит
   if RadioGroup8.ItemIndex = 0 then
   settings_data := settings_data + (1 shl 7);
   end
   else begin
   settings_mask := 127; // 0...6 бит
   end;


  send_cmd:=true;
  Form2.Close;
  send_new_settings(16);
  end;
end;

procedure TForm2.AdvGlassButton1Click(Sender: TObject);
begin
  send_cmd:=false;
  Form2.Close;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if   send_cmd=false then
   Form1.AdvGlassButton12.Click;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
send_cmd:=false;
end;

procedure TForm2.RadioGroup10Click(Sender: TObject);
begin
  if RadioGroup10.ItemIndex = 0 then begin
    RadioGroup5.Enabled := true;
  end

  else
    RadioGroup5.Enabled := false;
end;

procedure TForm2.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then begin
    RadioGroup5.Enabled := false;
     RadioGroup5.ItemIndex:=1;
  end

  else
    RadioGroup5.Enabled := true;
end;

end.
