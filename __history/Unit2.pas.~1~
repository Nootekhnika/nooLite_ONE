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
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure AdvGlassButton12Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.AdvGlassButton12Click(Sender: TObject);
begin
  if (RadioGroup6.ItemIndex=0) then begin
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
  settings_mask := 127; // 0...6 бит
  Form2.Close;
  send_new_settings(16);
  end;
  end
  else begin
   settings_data := 0;
  if RadioGroup1.ItemIndex = 0 then
    settings_data := settings_data + (1 shl 0);
  if RadioGroup2.ItemIndex = 1 then
    settings_data := settings_data + (1 shl 1);
  if RadioGroup3.ItemIndex = 1 then
    settings_data := settings_data + (1 shl 2);

    if (settings_type=6) then begin
  if RadioGroup7.ItemIndex = 1 then
  settings_data := settings_data + (1 shl 3)
  else  if RadioGroup7.ItemIndex = 2 then
  settings_data := settings_data + (1 shl 1);

    end
    else begin
  settings_data := settings_data + ((RadioGroup4.ItemIndex and 3) shl 3);
    end;

  if RadioGroup5.ItemIndex = 0 then
    settings_data := settings_data + (1 shl 5);
  if RadioGroup6.ItemIndex = 0 then
    settings_data := settings_data + (1 shl 6);
  settings_mask := 127; // 0...6 бит
  Form2.Close;
  send_new_settings(16);
  end;
end;

procedure TForm2.AdvGlassButton1Click(Sender: TObject);
begin
  Form2.Close;
  Form1.AdvGlassButton12.Click;
end;

procedure TForm2.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then
    RadioGroup5.Enabled := false
  else
    RadioGroup5.Enabled := true;
end;

end.
