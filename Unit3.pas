unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvGlassButton, ComCtrls;

type
  TForm3 = class(TForm)
    AdvGlassButton1: TAdvGlassButton;
    ListBox1: TListBox;
    Label1: TLabel;
    AdvGlassButton2: TAdvGlassButton;
    procedure AdvGlassButton2Click(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit4;

{$R *.dfm}

procedure TForm3.AdvGlassButton1Click(Sender: TObject);
begin
  if (ListBox1.ItemIndex > -1) then
  begin

    Form1.ComPort1.Port := com_name.Strings[ListBox1.ItemIndex];

    Form1.ComPort1.BaudRate:=COMbaudrates[strtoint(baudrates.Strings[ListBox1.ItemIndex])];
    Form1.ComPort1.Open;


    Form1.AdvSmoothStatusIndicator1.Appearance.Fill.Color := color_good;
        if  boot_name.Strings[ListBox1.ItemIndex]='BOOT' then
    Form1.Label19.Caption :='Обновление ПО ' + adapter_name.Strings[ListBox1.ItemIndex]
      else
    Form1.Label19.Caption := adapter_name.Strings[ListBox1.ItemIndex] + ' (v' +
      main_ver.Strings[ListBox1.ItemIndex] + ')';
      adapterFirmware:=strtoint(main_ver.Strings[ListBox1.ItemIndex]);

    if adapter_name.Strings[ListBox1.ItemIndex]=DEV_TYPE_0 then
    current_adapter:=0
    else if adapter_name.Strings[ListBox1.ItemIndex]=DEV_TYPE_9 then
     current_adapter:=8;
    service_find := 0;

    if  boot_name.Strings[ListBox1.ItemIndex]='BOOT' then begin
    if (MessageDlg('Выбран адаптер в режиме обновления ПО! Обновить ПО?',
          mtCustom, [mbYes, mbNo], 0) = mrYes) then
        begin
          boot_mode := 1; // входим в режим бутлоадера
          Form4.Show;
          boot_mode_step := 3;
        end
        else begin
        Form1.AdvGlassButton17.Enabled:=true;
        end;
    end
    else begin
         Form1.AdvGlassButton12.Enabled := true;
    Form1.AdvGlassButton8.Enabled := true;
    Form1.AdvGlassButton9.Enabled := true;

    Form1.AdvGlassButton11.Enabled := true;
    Form1.AdvGlassButton10.Enabled := true;
    Form1.AdvGlassButton13.Enabled := true;
    Form1.AdvGlassButton7.Enabled := true;
    Form1.ListBox1.Enabled := true;
    Form1.AdvGlassButton2.Enabled:=true;
    Form1.AdvGlassButton1.Enabled:=true;
    Form1.AdvGlassButton17.Enabled:=true;

      Form1.Label6.Font.Color := clHotLight;
      Form1.Label6.Caption:='Нажмите "Считать состояние"';
    end;
    Form3.Close;
  end
  else
  begin
    Showmessage('Выберите адаптер из списка!');

  end;

end;

procedure TForm3.AdvGlassButton2Click(Sender: TObject);
begin
  Form1.Timer4.Enabled := true;
  Form3.Close;
  Form1.Close;
end;

procedure TForm3.ListBox1DblClick(Sender: TObject);
begin
  if (ListBox1.ItemIndex > -1) then
  begin
    Form1.ComPort1.Port := com_name.Strings[ListBox1.ItemIndex];
    Form1.ComPort1.BaudRate:=COMbaudrates[strtoint(baudrates.Strings[ListBox1.ItemIndex])];
    Form1.ComPort1.Open;
    Form1.AdvSmoothStatusIndicator1.Appearance.Fill.Color := color_good;
    if  boot_name.Strings[ListBox1.ItemIndex]='BOOT' then
    Form1.Label19.Caption :='Обновление ПО ' + adapter_name.Strings[ListBox1.ItemIndex]
      else
    Form1.Label19.Caption := adapter_name.Strings[ListBox1.ItemIndex] + ' (v' +
      main_ver.Strings[ListBox1.ItemIndex] + ')';
     adapterFirmware:=strtoint(main_ver.Strings[ListBox1.ItemIndex]);
    if adapter_name.Strings[ListBox1.ItemIndex]=DEV_TYPE_0 then
    current_adapter:=0
    else if adapter_name.Strings[ListBox1.ItemIndex]=DEV_TYPE_9 then
     current_adapter:=8;
    service_find := 0;
    if  boot_name.Strings[ListBox1.ItemIndex]='BOOT' then begin
    if (MessageDlg('Выбран адаптер в режиме обновления ПО! Обновить ПО?',
          mtCustom, [mbYes, mbNo], 0) = mrYes) then
        begin
          boot_mode := 1; // входим в режим бутлоадера
          Form4.Show;
          boot_mode_step := 3;
        end
        else begin
        Form1.AdvGlassButton17.Enabled:=true;
        end;
    end
    else begin
       Form1.AdvGlassButton12.Enabled := true;
    Form1.AdvGlassButton8.Enabled := true;
    Form1.AdvGlassButton9.Enabled := true;

    Form1.AdvGlassButton11.Enabled := true;
    Form1.AdvGlassButton10.Enabled := true;
    Form1.AdvGlassButton13.Enabled := true;
    Form1.AdvGlassButton7.Enabled := true;
    Form1.ListBox1.Enabled := true;
    Form1.AdvGlassButton2.Enabled:=true;
    Form1.AdvGlassButton1.Enabled:=true;
    Form1.AdvGlassButton17.Enabled:=true;

      Form1.Label6.Font.Color := clHotLight;
      Form1.Label6.Caption:='Нажмите "Считать состояние"';
    end;
    Form3.Close;
  end
  else
  begin
    Showmessage('Выберите адаптер из списка!');

  end;
end;

end.
