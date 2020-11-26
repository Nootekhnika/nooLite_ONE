unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, registry, inifiles, StdCtrls, CPort, AdvSmoothStatusIndicator,
  ExtCtrls, mmsystem, AdvGlassButton, Spin, ComCtrls, AdvSmoothListBox, Grids,
  AdvObj, BaseGrid, AdvGrid, AdvCircularProgress, AdvProgr, Menus,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TForm1 = class(TForm)
    ComPort1: TComPort;
    AdvSmoothStatusIndicator1: TAdvSmoothStatusIndicator;
    Label19: TLabel;
    AdvGlassButton1: TAdvGlassButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox3: TComboBox;
    SpinEdit1: TSpinEdit;
    Label5: TLabel;
    memo1: TRichEdit;
    SpinEdit7: TSpinEdit;
    Label4: TLabel;
    AdvGlassButton3: TAdvGlassButton;
    AdvGlassButton4: TAdvGlassButton;
    AdvGlassButton5: TAdvGlassButton;
    AdvGlassButton6: TAdvGlassButton;
    AdvGlassButton8: TAdvGlassButton;
    AdvGlassButton9: TAdvGlassButton;
    ListBox1: TListBox;
    Label13: TLabel;
    AdvGlassButton10: TAdvGlassButton;
    AdvGlassButton11: TAdvGlassButton;
    AdvGlassButton12: TAdvGlassButton;
    Label15: TLabel;
    AdvStringGrid1: TAdvStringGrid;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    AdvGlassButton7: TAdvGlassButton;
    AdvGlassButton13: TAdvGlassButton;
    AdvCircularProgress1: TAdvCircularProgress;
    Timer1: TTimer;
    Shape1: TShape;
    Label6: TLabel;
    CheckBox8: TCheckBox;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SpinEdit6: TSpinEdit;
    Label11: TLabel;
    CheckBox4: TCheckBox;
    Edit1: TEdit;
    Label12: TLabel;
    Timer2: TTimer;
    AdvGlassButton14: TAdvGlassButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    Timer3: TTimer;
    N9: TMenuItem;
    N11: TMenuItem;
    N5: TMenuItem;
    N8: TMenuItem;
    Timer4: TTimer;
    Timer5: TTimer;
    RadioButton3: TRadioButton;
    N12: TMenuItem;
    N14: TMenuItem;
    SpinEdit8: TSpinEdit;
    Label14: TLabel;
    OpenDialog1: TOpenDialog;
    send_timer: TTimer;
    AdvGlassButton17: TAdvGlassButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    N10: TMenuItem;
    nooLite1: TMenuItem;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    N13: TMenuItem;
    N15: TMenuItem;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    send_timer_2: TTimer;
    Timer6: TTimer;
    CheckBox1: TCheckBox;
    AdvGlassButton2: TAdvGlassButton;
    IdHTTP1: TIdHTTP;
    AdvGlassButton15: TAdvGlassButton;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    nooLite2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComPort1RxChar(Sender: TObject; Count: Integer);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure AdvGlassButton3Click(Sender: TObject);
    procedure AdvGlassButton4Click(Sender: TObject);
    procedure AdvGlassButton5Click(Sender: TObject);
    procedure AdvGlassButton6Click(Sender: TObject);
    procedure AdvGlassButton12Click(Sender: TObject);
    procedure WMCopyData(var MessageData: TWMCopyData); message WM_COPYDATA;
    procedure AdvStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure AdvGlassButton8Click(Sender: TObject);
    procedure AdvGlassButton9Click(Sender: TObject);
    procedure AdvGlassButton11Click(Sender: TObject);
    procedure AdvGlassButton10Click(Sender: TObject);
    procedure AdvGlassButton7Click(Sender: TObject);
    procedure AdvGlassButton13Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure AdvGlassButton14Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure AdvStringGrid1Click(Sender: TObject);
    procedure ComPort1Exception(Sender: TObject; TComException: TComExceptions;
      ComportMessage: string; WinError: Int64; WinMessage: string);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure AdvGlassButton17Click(Sender: TObject);
    procedure send_timerTimer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AdvGlassButton16Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure nooLite1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure send_timer_2Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure AdvGlassButton2Click(Sender: TObject);
    procedure AdvGlassButton15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure nooLite2Click(Sender: TObject);

  private
    { Private declarations }
  public

  end;

procedure send_termo_data(cmd,pos,dt0,dt1,dt2,dt3:integer);
procedure send_new_settings(write_pos_settings:integer);
procedure send_new_settings_ext(write_pos_settings:integer);
procedure send_active();

const
  color_error = $008D8DE0;
  color_good = $0098C865;
  color_on = clYellow;
  color_off = $00000000;
  color_wait = clActiveCaption;
  timer_delay_send = 100;
  timer_scan = 1000;

  DEV_TYPE_0 = 'MTRF-64';
  DEV_TYPE_1 = 'SLF-1-300';
  DEV_TYPE_2 = 'SRF-10-1000';
  DEV_TYPE_3 = 'SRF-1-3000';
  DEV_TYPE_4 = 'SRF-1-3000-M';
  DEV_TYPE_5 = 'SUF-1-300';
  DEV_TYPE_6 = 'SRF-1-3000-T';
  DEV_TYPE_7 = 'SRF-1-1000-R';
  DEV_TYPE_8 = 'SUF-1-300-A';
  DEV_TYPE_9 = 'MTRF-64-A';
  DEV_TYPE_UNKNOWN = 'Неизвестно';

  CMD_RECIVE_API = 1;
var
  Form1: TForm1;
  readdata: array [0 .. 100] of byte;
  senddata: array [0 .. 100] of byte;
  poswrite: Integer;
  togl_byte: byte;
  last_togl: byte;

  crc: byte;
  show_str: string;
  step_recive: Integer;
  time_out: Integer;
  err_read: Integer;
  stat_send_count, stat_send_err: Integer;
  no_ch: Integer;
  state_color: array [0 .. 32] of Integer;
  dev_type: array [0 .. 1024] of Integer;
  bind_mode: Integer;
  send_enable: boolean;
  bind_count: Integer;
  disable_show: boolean;
  settings_set: Integer;
  boot_mode_set: Integer;
  settings_name: string;
  settings_data: word;
  settings_data_ext: cardinal;
  settings_mask: word;
  settings_address, boot_send_address: Cardinal;
  settings_channel: Integer;
  com_err_open: boolean;
  prdata, savedir: string;
  send_http_enable, log_en: boolean;

  log_patch, send_http_address: string;

  service_find: Integer;
  boot_mode, boot_mode_step: Integer;

  send_http_full_address:string;

  boot_mode_2, boot_mode_step_2: Integer;
  ini: TIniFile;
  com_index: Integer;
  ts, com_name, adapter_name, boot_name, main_ver, crc_name: TStrings;
  ok_com_name: string;
  ok_com_index: Integer;
  com_err: boolean;
  error_rx_flag: boolean;
  reg: TRegistry;
  i_count: Integer;

  myFile: File;
  byteArray: array [1 .. 8] of byte;
  oneByte: byte;
  i, Count: Integer;
  filename_bin: string;

  count_ansver: Integer;
  send_array: array [0 .. 1024] of byte;
  count_send, send_step, send_ok: Integer;
  write_step, f_size, f_send: Integer;

  boot_loop, last_write, repeat_count: Integer;

  crc32_read: Cardinal;
  size_read: Cardinal;
  type_read: word;
  boot_type_read: Integer;
  b24, b16, b8, b0: byte;
  boot_found: Integer;

  crc_reset: Cardinal;

  step_service_boot: Integer;

  auto_reset: boolean;

  first_create: boolean;

  termo_rx_data_0,termo_rx_data_1,termo_rx_data_2,termo_rx_data_3,termo_rx_cmd,termo_rx_fmt:byte;
  settings_mode:integer;

  settings_type: Integer;
implementation

uses Unit2, Unit3, Crc32, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10,
  Unit11;

{$R *.dfm}

function test_device: boolean;
var
  crc_send: byte;
  index_send: Integer;
  device_address: word;
  send_str: string;
begin
  result := true;
  senddata[1] := 4; // mtrf_service
  senddata[2] := 0;
  senddata[3] := 0;
  senddata[4] := 0;
  senddata[5] := 0;
  senddata[6] := 0;
  senddata[7] := 0;
  senddata[8] := 0;
  senddata[9] := 0;
  senddata[10] := 0;
  senddata[11] := 0;
  senddata[12] := 0;
  senddata[13] := 0;
  senddata[14] := 0;

  step_recive := 0;
  crc_send := 0;
  senddata[0] := 171;
  senddata[16] := 172;
  send_str := '';
  for index_send := 0 to 16 do
  begin
    // подсчет CRC
    if index_send < 15 then
      crc_send := crc_send + senddata[index_send]
    else
      senddata[15] := crc_send;
    // try
    // Form1.ComPort1.TransmitChar(char(senddata[index_send]));
    // except
    // result := false;
    // Exit;
    // end;
    if (index_send = 1) then
    begin
      send_str := send_str + 'MODE:';
      if senddata[index_send] = 0 then
        send_str := send_str + 'TX' + '; ';
      if senddata[index_send] = 1 then
        send_str := send_str + 'RX' + '; ';
      if senddata[index_send] = 2 then
        send_str := send_str + 'F-TX' + '; ';
      if senddata[index_send] = 3 then
        send_str := send_str + 'F-RX' + '; ';
      if senddata[index_send] = 4 then
        send_str := send_str + 'SERVICE' + '; ';
    end;

    if (index_send = 2) then
    begin
      send_str := send_str + 'COM:' + inttostr(senddata[index_send]) + '; ';
    end;

    if (index_send = 3) then
      send_str := send_str + 'RES:' + inttostr(senddata[index_send]) + '; ';

    if (index_send = 4) then
      send_str := send_str + 'CH:' + inttostr(senddata[index_send]) + '; ';

    if (index_send = 5) then
      send_str := send_str + 'CMD:' + inttostr(senddata[index_send]) + '; ';

    if (index_send = 6) then
      send_str := send_str + 'FTM:' + inttostr(senddata[index_send]) + '; ';

    if (index_send = 7) then
      send_str := send_str + 'D0:' + inttostr(senddata[index_send]) + '; ';

    if (index_send = 8) then
      send_str := send_str + 'D1:' + inttostr(senddata[index_send]) + '; ';

    if (index_send = 9) then
      send_str := send_str + 'D2:' + inttostr(senddata[index_send]) + '; ';

    if (index_send = 10) then
      send_str := send_str + 'D3:' + inttostr(senddata[index_send]) + '; ';

    if (index_send = 11) then
    begin
      send_str := send_str + 'ID:0x' + inttohex(senddata[11], 2) +
        inttohex(senddata[12], 2) + inttohex(senddata[13], 2) +
        inttohex(senddata[14], 2) + '; ';
    end;
  end;

  try
    Form1.ComPort1.Write(senddata, 17);
  except
    result := false;
  end;
  Form1.memo1.SelAttributes.Color := clred;
  Form1.memo1.Lines.Add('TO MTRF: ' + send_str);
end;

function test_port: boolean;
begin
  try
    com_err_open := false;
    result := true;
    Form1.ComPort1.Connected := true;
  finally
    if com_err_open then
      result := false;
    Form1.ComPort1.Close;
  end;
end;

function selectcom: boolean;
begin
  Form1.ComPort1.Close;
  result := false;
  reg := TRegistry.Create(KEY_READ);
  // reg := TRegistry.Create;
  reg.RootKey := HKEY_LOCAL_MACHINE;
  reg.OpenKey('hardware\devicemap\serialcomm', false);
  ts.Clear;
  reg.GetValueNames(ts);
  if ts.Count > 0 then
  begin
    result := true;
  end
  else
  begin
    result := false;
  end;

end;

procedure send_command;
var
  crc_send: byte;
  index_send: Integer;
  device_address: word;
  send_str: string;
begin
  Form1.AdvStringGrid1.ShowSelection := false;
  step_recive := 0;
  crc_send := 0;
  senddata[0] := 171;
  senddata[16] := 172;
  send_str := '';
  for index_send := 0 to 16 do
  begin
    // подсчет CRC
    if index_send < 15 then
      crc_send := crc_send + senddata[index_send]
    else
      senddata[15] := crc_send;
    // try
    // if com_err = false then
    // Form1.ComPort1.TransmitChar(char(senddata[index_send]));

    // except
    // Showmessage('Адаптер или модуль был отключён! Подключите адаптер и перезапустите программу.');
    // Application.Terminate;
    // end;
    if (index_send = 1) then
    begin
      send_str := send_str + 'MODE:';
      if senddata[index_send] = 0 then
        send_str := send_str + 'TX' + '; ';
      if senddata[index_send] = 1 then
        send_str := send_str + 'RX' + '; ';
      if senddata[index_send] = 2 then
        send_str := send_str + 'F-TX' + '; ';
      if senddata[index_send] = 3 then
        send_str := send_str + 'F-RX' + '; ';
      if senddata[index_send] = 4 then
        send_str := send_str + 'SERVICE' + '; ';
      if senddata[index_send] = 5 then
        send_str := send_str + 'BOOT' + '; ';
    end;

    if (index_send = 2) then
    begin
      send_str := send_str + 'COM:' + inttostr(senddata[index_send]) + '; ';
    end;

    if (index_send = 3) then
      send_str := send_str + 'RES:' + inttostr(senddata[index_send]) + '; ';

    if (index_send = 4) then
      send_str := send_str + 'CH:' + inttostr(senddata[index_send]) + '; ';

    if (index_send = 5) then
      send_str := send_str + 'CMD:' + inttostr(senddata[index_send]) + '; ';

    if (index_send = 6) then
      send_str := send_str + 'FTM:' + inttostr(senddata[index_send]) + '; ';

    if (index_send = 7) then
      send_str := send_str + 'D0:' + inttostr(senddata[index_send]) + '; ';

    if (index_send = 8) then
      send_str := send_str + 'D1:' + inttostr(senddata[index_send]) + '; ';

    if (index_send = 9) then
      send_str := send_str + 'D2:' + inttostr(senddata[index_send]) + '; ';

    if (index_send = 10) then
      send_str := send_str + 'D3:' + inttostr(senddata[index_send]) + '; ';

    if (index_send = 11) then
    begin
      send_str := send_str + 'ID:0x' + inttohex(senddata[11], 2) +
        inttohex(senddata[12], 2) + inttohex(senddata[13], 2) +
        inttohex(senddata[14], 2) + '; ';
    end;

  end;

  try
    if com_err = false then
      Form1.ComPort1.Write(senddata, 17);
  except

  end;
  Form1.memo1.SelAttributes.Color := clred;
  Form1.memo1.Lines.Add('TO MTRF: ' + send_str);

end;

procedure send_boot_command;
var
  crc_send: byte;
  index_send: Integer;
  device_address: word;
  send_str: string;
  store_hex: Integer;
begin
  step_recive := 0;
  crc_send := 0;
  senddata[0] := 175;
  senddata[25] := 172;
  send_str := '';
  for index_send := 0 to 25 do
  begin
    // подсчет CRC
    if index_send < 24 then
      crc_send := crc_send + senddata[index_send]
    else
      senddata[24] := crc_send;
    // try
    // if com_err = false then
    // Form1.ComPort1.TransmitChar(char(senddata[index_send]));
    // except
    // Showmessage('Адаптер не обнаружен! Подключите адаптер и перезапустите программу.');
    // Application.Terminate;
    // end;

    if (index_send = 1) then
    begin
      send_str := send_str + 'MODE:' + inttostr(senddata[index_send]) + '; ';
    end;

    if (index_send = 2) then
    begin
      send_str := send_str + 'COM:' + inttostr(senddata[index_send]) + '; ';
    end;

    if (index_send = 3) then
      send_str := send_str + 'STEP:' + inttostr(senddata[index_send]) + '; ';

    if (index_send = 4) then
    begin
      send_str := send_str + 'DATA16:0x';
      for store_hex := 4 to 19 do
      begin
        send_str := send_str + inttohex(senddata[store_hex], 2);
      end;
      send_str := send_str + '; ';
    end;
    if (index_send = 20) then
    begin
      send_str := send_str + 'ID:0x' + inttohex(senddata[20], 2) +
        inttohex(senddata[21], 2) + inttohex(senddata[22], 2) +
        inttohex(senddata[23], 2) + '; ';
    end;
  end;

  if (boot_loop <> 1) then
  // if ( Form1.CheckBox1.Checked) then
  begin
    if (error_rx_flag) then
      Form1.memo1.SelAttributes.Color := $005399EE
    else
      Form1.memo1.SelAttributes.Color := clblue;

    Form1.memo1.Lines.Add('TO MTRF: ' + send_str);
  end;

  try
    if com_err = false then
      Form1.ComPort1.Write(senddata, 26);
  except

  end;
end;

function send_data_step: Integer;
var
  count_send_data, k: Integer;
  str: string;
begin
  count_send := 0;
  while not Eof(myFile) do
  begin
    if (count_send < 16) then
    begin
      BlockRead(myFile, oneByte, 1); // Чтение одного байта за один раз
      senddata[count_send + 4] := oneByte; // заполнение буфера
      count_send := count_send + 1;
    end
    else
    begin
      Break;
    end;
  end;
  result := count_send; // сколько заполнили данных
  if count_send < 16 then
  begin // передали всё
    CloseFile(myFile);
    send_ok := 0;
  end;
  if count_send <> 0 then
    // Form1.memo1.Lines.Add('Send: ' + inttostr(count_send) + ' bytes');
    f_send := f_send + count_send;

  if boot_mode_2 <> 0 then
    Form5.ProgressBar1.Position := f_send
  else
    Form4.ProgressBar1.Position := f_send;

end;

function HexToInt(inHex: String): Int64;
begin
  result := 0;
  if Length(inHex) > 0 then
  begin
    try
      result := StrToInt64('$' + inHex);
    except
      result := 0;
    end;
  end;
end;

procedure send_active;
var
  id_f: Cardinal;
begin
  if Form1.SpinEdit1.Value > 31 then
    Form1.SpinEdit1.Value := 31;

  senddata[1] := 0;
  senddata[2] := Form1.ComboBox3.ItemIndex;
  senddata[3] := Form1.SpinEdit7.Value;
  senddata[5] := 254;
  senddata[4] := Form1.SpinEdit1.Value;
  senddata[6] := 0;
  senddata[7] := 0;
  senddata[8] := 0;
  senddata[9] := 0;
  senddata[10] := 0;

  senddata[6] := Form1.SpinEdit6.Value;
  senddata[7] := Form1.SpinEdit2.Value; // d0
  senddata[8] := Form1.SpinEdit3.Value; // d1
  senddata[9] := Form1.SpinEdit4.Value; // d2
  senddata[10] := Form1.SpinEdit5.Value; // d3

  id_f := HexToInt(Form1.Edit1.Text);
  senddata[11] := LO(id_f shr 24);
  senddata[12] := LO(id_f shr 16);
  senddata[13] := LO(id_f shr 8);
  senddata[14] := LO(id_f);
  crc := 0;
  poswrite := 0;

  // form1.memo1.Clear;
  send_command;
end;

procedure hide_update;
begin
  time_out := 0;
  err_read := 0;
  no_ch := 0;
  Form1.Timer1.Interval := 100;//100ms-change
  Form1.Timer1.Enabled := true;
  Form1.Label6.Font.Color := clblack;
  Form1.Label6.Caption := 'Выполнение запроса...';
  send_enable := false;
end;

procedure wait_update;
begin
  if not disable_show then
  begin
    Form1.AdvCircularProgress1.Position := 0;
    Form1.AdvCircularProgress1.Enabled := true;
    Form1.AdvCircularProgress1.Visible := true;
    time_out := 0;
    err_read := 0;
    no_ch := 0;
    Form1.Timer1.Interval := 100;
    Form1.Timer1.Enabled := true;
    Form1.Label6.Font.Color := clblack;
    Form1.Label6.Caption := 'Выполнение запроса...';
    send_enable := false;
  end;
end;

procedure wait_update_off;
begin
  if not disable_show then
  begin
    Form1.AdvCircularProgress1.Enabled := false;
    Form1.AdvCircularProgress1.Visible := false;
    Form1.AdvCircularProgress1.Position := 0;
    time_out := 0;
    Form1.Timer1.Enabled := false;

    if settings_set = 1 then
    begin // получение информации
      Form1.Label6.Caption := ''; // спрятать информацию
      Form1.Label6.Font.Color := clblack;
      send_enable := true;
      settings_set := 0;
      showmessage('Нет ответа от выбранного устройства!');
      Form1.AdvGlassButton12.Click;
    end
    else if settings_set = 2 then
    begin // подтверждение настройки
      Form1.Label6.Caption := ''; // спрятать информацию
      Form1.Label6.Font.Color := clblack;
      send_enable := true;
      settings_set := 0;
      showmessage
        ('Невозможно завершить настройку. Нет ответа от выбранного устройства!');
      Form1.AdvGlassButton12.Click;
    end
    else if (boot_mode_set = 1) then
    begin

      Form1.Label6.Caption := ''; // спрятать информацию
      Form1.Label6.Font.Color := clblack;
      send_enable := true;
      boot_mode_set := 0;
      //showmessage('Нет ответа от выбранного устройства 123!');
      //Form1.AdvGlassButton12.Click;
    end
    else
    begin
      if (no_ch = 0) then
      begin
        Form1.Label6.Font.Color := clred;
        Form1.Label6.Caption := 'К выбранному каналу ничего не привязано';
      end
      else
      begin
        Form1.Label6.Caption := ''; // спрятать информацию
        Form1.Label6.Font.Color := clblack;
      end;

      send_enable := true;


      end;

  end;

end;

procedure clear_result(clear_type: Integer);
begin
  Form1.AdvStringGrid1.ClearAll;
  if (clear_type = 0) then
  begin // общая информация
    Form1.AdvStringGrid1.ColCount := 5;
    Form1.AdvStringGrid1.Cells[0, 0] := 'Тип устройства';
    Form1.AdvStringGrid1.Cells[1, 0] := 'Состояние';
    Form1.AdvStringGrid1.Cells[2, 0] := 'Параметр';
    Form1.AdvStringGrid1.Cells[3, 0] := 'Версия ПО';
    Form1.AdvStringGrid1.Cells[4, 0] := 'Адрес';
    Form1.AdvStringGrid1.RowCount := 2;
    Form1.AdvStringGrid1.FixedRows := 1;
    // AdvStringGrid1.RowColor[1]:=clred;
  end
  else if (clear_type = 1) then
  begin // расширенная информация
    Form1.AdvStringGrid1.ColCount := 5;
    Form1.AdvStringGrid1.Cells[0, 0] := 'Тип устройства';
    Form1.AdvStringGrid1.Cells[1, 0] := 'Доп. информация';
    Form1.AdvStringGrid1.Cells[2, 0] := 'Приём nooLite';
    Form1.AdvStringGrid1.Cells[3, 0] := 'Версия ПО';
    Form1.AdvStringGrid1.Cells[4, 0] := 'Адрес';
    Form1.AdvStringGrid1.RowCount := 2;
    Form1.AdvStringGrid1.FixedRows := 1;
  end
  else if (clear_type = 2) then
  begin // ресурс привязки
    Form1.AdvStringGrid1.ColCount := 5;
    Form1.AdvStringGrid1.Cells[0, 0] := 'Тип устройства';
    Form1.AdvStringGrid1.Cells[1, 0] := 'Свободно nooLite';
    Form1.AdvStringGrid1.Cells[2, 0] := 'Свободно nooLite-F';
    Form1.AdvStringGrid1.Cells[3, 0] := 'Версия ПО';
    Form1.AdvStringGrid1.Cells[4, 0] := 'Адрес';
    Form1.AdvStringGrid1.RowCount := 2;
    Form1.AdvStringGrid1.FixedRows := 1;
  end;
  step_recive := 0;
end;

function testbit(inbyte, inbit: word): boolean;
begin
  if (inbyte and (1 shl inbit)) <> 0 then
    result := true
  else
    result := false;
end;



procedure draw_settings();
var
  state_temp: word;
begin
  if (readdata[2] = 0) then
  begin // ответ от блока

    if (readdata[6] = 16) then
    begin // настройка устройства

      if settings_set = 2 then
      begin
        settings_set := 0;
        wait_update_off;
        showmessage('Настройка устройства завершена!');
        Form1.AdvGlassButton12.Click;
      end
      else
      begin
        settings_set := 0;

        Form2.Label1.Caption := 'Настройка устройства: ' + settings_name;

        settings_data := (readdata[8] shl 8) + readdata[7];
        Form2.Show;

        if testbit(settings_data, 0) then
        begin
          Form2.RadioGroup1.ItemIndex := 0;
          Form2.RadioGroup5.Enabled := false;
        end
        else
        begin
          Form2.RadioGroup1.ItemIndex := 1;
          Form2.RadioGroup5.Enabled := true;
        end;

        if testbit(settings_data, 1) then
          Form2.RadioGroup2.ItemIndex := 1
        else
          Form2.RadioGroup2.ItemIndex := 0;

        if testbit(settings_data, 2) then
          Form2.RadioGroup3.ItemIndex := 1
        else
          Form2.RadioGroup3.ItemIndex := 0;


          if (settings_type=6) then begin
         //sensor
        if testbit(settings_data, 1) then
          Form2.RadioGroup7.ItemIndex := 2
        else if testbit(settings_data, 3) then
          Form2.RadioGroup7.ItemIndex := 1
          else
          Form2.RadioGroup7.ItemIndex := 0;

        //mode
         if testbit(settings_data, 0) then begin
          Form2.RadioGroup10.ItemIndex := 1;
          Form2.RadioGroup5.Enabled := false;
         end
        else begin
          Form2.RadioGroup10.ItemIndex := 0;
          Form2.RadioGroup5.Enabled := true;


        end;

          end
          else begin
        if testbit(settings_data, 3) then
          state_temp := 1
        else
          state_temp := 0;

        if testbit(settings_data, 4) then
          state_temp := state_temp + 2;
        Form2.RadioGroup4.ItemIndex := state_temp;

        end;

        if testbit(settings_data, 5) then
          Form2.RadioGroup5.ItemIndex := 0
        else
          Form2.RadioGroup5.ItemIndex := 1;

        if testbit(settings_data, 6) then
          Form2.RadioGroup6.ItemIndex := 0
        else
          Form2.RadioGroup6.ItemIndex := 1;

          if (settings_type=9) or (settings_type=5) then begin
        if testbit(settings_data, 7) then
          Form2.RadioGroup8.ItemIndex := 0
        else
          Form2.RadioGroup8.ItemIndex := 1;

        if testbit(settings_data, 8) then
          state_temp := 1
        else
          state_temp := 0;
        if testbit(settings_data, 9) then
          state_temp := state_temp + 2;
        Form2.RadioGroup9.ItemIndex := state_temp;

          end;



      end;

    end
    else  if (readdata[6] = 17) then //коррекция диммирования
    begin // настройка устройства

      if settings_set = 2 then
      begin
        settings_set := 0;
        wait_update_off;
        showmessage('Настройка устройства завершена!');
        Form1.AdvGlassButton12.Click;
      end
      else
      begin
        settings_set := 0;
       if (settings_type = 9) then begin

        Form11.Label1.Caption := 'Настройка устройства: ' + settings_name;

        settings_data_ext := (readdata[9] shl 16) +(readdata[8] shl 8) + readdata[7];


        settings_mode:=17;
        Form11.SpinEdit1.Value:= readdata[9];  //min
        Form11.SpinEdit3.Value:= readdata[8];  //start
        Form11.SpinEdit2.Value:= readdata[7];  //max

        Form11.SpinEdit1.MaxValue:=Form11.SpinEdit2.Value-1;
        Form11.SpinEdit3.MaxValue:=Form11.SpinEdit2.Value-1;
        Form11.SpinEdit3.MinValue:=Form11.SpinEdit1.Value;
        if Form11.SpinEdit1.Value>Form11.SpinEdit3.Value then
        Form11.SpinEdit3.Value:=Form11.SpinEdit1.Value;
        Form11.SpinEdit2.MinValue:=Form11.SpinEdit3.Value+1;

        Form11.Show;
       end
       else begin

        Form8.Label1.Caption := 'Настройка устройства: ' + settings_name;

        settings_data := (readdata[8] shl 8) + readdata[7];
        Form8.Show;

         settings_mode:=17;
      Form8.SpinEdit1.Value:= round(readdata[8]/2.55);
      Form8.SpinEdit2.Value:= round(readdata[7]/2.55);

       Form8.Label6.Visible:=false;
        Form8.Label5.Visible:=false;
        Form8.SpinEdit3.Visible:=false;

        Form8.SpinEdit1.Visible:=true;
        Form8.SpinEdit2.Visible:=true;
        Form8.Label4.Visible:=true;
        Form8.Label3.Visible:=true;
        Form8.Label2.Visible:=true;


       end;

      end;

    end else  if (readdata[6] = 18) then //коррекция уровня включения
    begin // настройка устройства

      if settings_set = 2 then
      begin
        settings_set := 0;
        wait_update_off;
        showmessage('Настройка устройства завершена!');
        Form1.AdvGlassButton12.Click;
      end
      else
      begin
        settings_set := 0;

        if (settings_type = 9) then begin
        Form10.Label1.Caption := 'Настройка устройства: ' + settings_name;

        settings_data := (readdata[8] shl 8) + readdata[7];
        Form10.Show;
        settings_mode:=18;
        Form10.SpinEdit1.Value:= round(readdata[7]*10);

        end
        else begin


        Form8.Label1.Caption := 'Настройка устройства: ' + settings_name;

        settings_data := (readdata[8] shl 8) + readdata[7];
        Form8.Show;
        settings_mode:=18;
        Form8.Label6.Visible:=true;
        Form8.Label5.Visible:=true;
        Form8.SpinEdit3.Visible:=true;
        Form8.SpinEdit1.Visible:=false;
        Form8.SpinEdit2.Visible:=false;
        Form8.Label4.Visible:=false;
        Form8.Label3.Visible:=false;
        Form8.Label2.Visible:=false;

        Form8.SpinEdit3.Value:= round(readdata[7]/2.55);

         end;
      end;

    end else  if (readdata[6] = 19) then //коррекция уровня включения
    begin // настройка устройства

      if settings_set = 2 then
      begin
        settings_set := 0;
        wait_update_off;
        showmessage('Настройка устройства завершена!');
        Form1.AdvGlassButton12.Click;
      end
      else
      begin
        settings_set := 0;
        if (settings_type = 5) then begin  //SUF-1-300
        Form10.Label1.Caption := 'Настройка устройства: ' + settings_name;
        settings_data := (readdata[8] shl 8) + readdata[7];
        Form10.Show;
        settings_mode:=19;
        Form10.SpinEdit1.Value:= round(readdata[7]*10);

        end;

      end;
    end

    else begin //остальные форматы
      if settings_set = 3 then begin
      termo_rx_data_0:=readdata[7];
      termo_rx_data_1:=readdata[8];
      termo_rx_data_2:=readdata[9];
      termo_rx_data_3:=readdata[10];
      termo_rx_cmd:=readdata[5];
      termo_rx_fmt:=readdata[6];
      analyse_rx_data_termo();
      end;

    end;

  end
  else

  if not (settings_set = 3) then begin
    showmessage('Нет ответа от выбранного устройства');
  end;

end;

procedure add_result(first_add: boolean);
var
  temperature: Integer;
  state_code: Integer;
begin
  step_recive := step_recive + 1; // инкремент
  if (first_add) then
  begin // первые данные с количеством каналов
    Form1.AdvStringGrid1.RowCount := readdata[3] + 2;
    Form1.AdvStringGrid1.FixedRows := 1;
  end;
  // адрес устройства
  Form1.AdvStringGrid1.Cells[4, step_recive] := inttohex(readdata[11], 2) +
    inttohex(readdata[12], 2) + inttohex(readdata[13], 2) +
    inttohex(readdata[14], 2);

  if (readdata[2] = 0) then
  begin // ответ от блока

    if (readdata[6] = 0) then
    begin // общая информация
    dev_type[step_recive]:= readdata[7];

      if (readdata[7] = 0) then // тип
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_0
      else if (readdata[7] = 1) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_1
      else if (readdata[7] = 2) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_2
      else if (readdata[7] = 3) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_3
      else if (readdata[7] = 4) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_4
      else if (readdata[7] = 5) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_5
      else if (readdata[7] = 6) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_6
      else if (readdata[7] = 7) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_7
      else if (readdata[7] = 8) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_9
      else if (readdata[7] = 9) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_8
      else
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_UNKNOWN;

      state_code := readdata[9] and 15;
      if testbit(readdata[9], 7) then
      begin
        Form1.AdvStringGrid1.Cells[1, step_recive] := 'Привязка...';
      end
      else if (state_code = 0) then
      begin // состояние
        Form1.AdvStringGrid1.Cells[1, step_recive] := 'Выключено';
        state_color[step_recive] := clsilver;
      end
      else if (state_code = 1) then
      begin
        Form1.AdvStringGrid1.Cells[1, step_recive] := 'Включено';
        state_color[step_recive] := clred;
      end
      else if (state_code = 2) then
      begin
        state_color[step_recive] := clYellow;
        Form1.AdvStringGrid1.Cells[1, step_recive] := 'Временно вкл.';
      end;


      if (readdata[7] = 6) then begin
        if   (readdata[10]>128)then begin

        Form1.AdvStringGrid1.Cells[2, step_recive] := 'Темп. -'+inttostr(256-readdata[10])+ ' °С';
        end
        else begin
        Form1.AdvStringGrid1.Cells[2, step_recive] := 'Темп. '+inttostr(readdata[10])+ ' °С';

        end;

        if testbit(readdata[9], 4)  then
        Form1.AdvStringGrid1.Cells[2, step_recive] :=Form1.AdvStringGrid1.Cells[2, step_recive]+', Нагрев включён'
        else
        Form1.AdvStringGrid1.Cells[2, step_recive] :=Form1.AdvStringGrid1.Cells[2, step_recive]+', Нагрев выключен';
      end

      else if (readdata[7] = 7) then
      begin
        Form1.AdvStringGrid1.Cells[2, step_recive] := inttostr(round(100 * readdata[10] / 255))+ ' %';
      end
      else if (readdata[7] = 9) then
      begin
        Form1.AdvStringGrid1.Cells[2, step_recive] := 'Яркость '+inttostr(readdata[10])+ ' %';
      end
      else begin
         // яркость на выходе
      Form1.AdvStringGrid1.Cells[2, step_recive] := 'Яркость '+inttostr(round(100 * readdata[10] / 255))+ ' %';
      end;

   

      // версия ПО
      Form1.AdvStringGrid1.Cells[3, step_recive] := inttostr(readdata[8]);
    end;

    if (readdata[6] = 1) then
    begin // дополнительная информация

    dev_type[step_recive]:= readdata[7];

      if (readdata[7] = 0) then // тип
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_0
      else if (readdata[7] = 1) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_1
      else if (readdata[7] = 2) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_2
      else if (readdata[7] = 3) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_3
      else if (readdata[7] = 4) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_4
      else if (readdata[7] = 5) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_5
      else if (readdata[7] = 6) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_6
      else if (readdata[7] = 7) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_7
      else if (readdata[7] = 8) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_9
      else if (readdata[7] = 9) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_8
      else
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_UNKNOWN;

        if (readdata[7] = 2)or (readdata[7] = 3)  then begin
        Form1.AdvStringGrid1.Cells[1, step_recive] := 'Номер канала: '+inttostr(readdata[9]);
        end
        else if (readdata[7] = 1) then begin //slf

      if (readdata[9] = 0) then // состояние
        Form1.AdvStringGrid1.Cells[1, step_recive] := 'Вход: Разомкнут'
      else if (readdata[9] = 1) then
        Form1.AdvStringGrid1.Cells[1, step_recive] := 'Вход: Замкнут'
      else
        Form1.AdvStringGrid1.Cells[1, step_recive] := 'Вход: Неизвестно';

        end
        else begin
         Form1.AdvStringGrid1.Cells[1, step_recive] := '---'
        end;

      // приём nooLite
      if (readdata[10] = 0) then
        Form1.AdvStringGrid1.Cells[2, step_recive] := 'Разрешён'
      else
        Form1.AdvStringGrid1.Cells[2, step_recive] := 'Запрещён';
      {
        // температура
        temperature := readdata[10];
        if testbit(readdata[10], 7) then
        temperature := temperature - 256;
        Form1.AdvStringGrid1.Cells[2, step_recive] := inttostr(temperature);
      }
      // версия ПО
      Form1.AdvStringGrid1.Cells[3, step_recive] := inttostr(readdata[8]);
    end;

    if (readdata[6] = 2) then
    begin // память

    dev_type[step_recive]:= readdata[7];

      if (readdata[7] = 0) then // тип
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_0
      else if (readdata[7] = 1) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_1
      else if (readdata[7] = 2) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_2
      else if (readdata[7] = 3) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_3
      else if (readdata[7] = 4) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_4
      else if (readdata[7] = 5) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_5
      else if (readdata[7] = 6) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_6
      else if (readdata[7] = 7) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_7
      else if (readdata[7] = 8) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_9
      else if (readdata[7] = 9) then
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_8
      else
        Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_UNKNOWN;

      Form1.AdvStringGrid1.Cells[1, step_recive] := inttostr(readdata[9]);
      Form1.AdvStringGrid1.Cells[2, step_recive] := inttostr(readdata[10]);

      // версия ПО
      Form1.AdvStringGrid1.Cells[3, step_recive] := inttostr(readdata[8]);
    end;

  end
  else
  begin // нет ответа от блока
    err_read := err_read + 1;
    dev_type[step_recive]:= readdata[7];
    if (readdata[7] = 0) then // тип
      Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_0 +
        ' - Нет ответа '
    else if (readdata[7] = 1) then
      Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_1 +
        ' - Нет ответа '
    else if (readdata[7] = 2) then
      Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_2 +
        ' - Нет ответа '
    else if (readdata[7] = 3) then
      Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_3 +
        ' - Нет ответа '
    else if (readdata[7] = 4) then
      Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_4 +
        ' - Нет ответа '
    else if (readdata[7] = 5) then
      Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_5 +
        ' - Нет ответа '
    else if (readdata[7] = 6) then
      Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_6 +
        ' - Нет ответа '
    else if (readdata[7] = 7) then
      Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_7 +
        ' - Нет ответа '
    else if (readdata[7] = 8) then
      Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_9 +
        ' - Нет ответа '
    else if (readdata[7] = 9) then
      Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_8 +
        ' - Нет ответа '
    else
      Form1.AdvStringGrid1.Cells[0, step_recive] := DEV_TYPE_UNKNOWN +
        ' - Нет ответа';

    Form1.AdvStringGrid1.Cells[1, step_recive] := '--';
    Form1.AdvStringGrid1.Cells[2, step_recive] := '--';
    Form1.AdvStringGrid1.Cells[3, step_recive] := '--';
  end;

end;

{
  if MessageDlg('Вы действительно хотите очистить ячейку?', mtCustom, [mbYes, mbNo], 0) = mrYes then begin
  update_data:=false;
  if (listbox1.ItemIndex>-1) then  begin
  listbox1.Items.Strings[listbox1.ItemIndex]:=inttostr(listbox1.ItemIndex+1)+'-без имени';

  Ini:=Tinifile.Create(savedir);
  ini.WriteBool('CELL_'+inttostr(listbox1.ItemIndex),'PREFIX',false);
  ini.WriteBool('CELL_'+inttostr(listbox1.ItemIndex),'DATA_SEND',false);
  ini.Writestring('CELL_'+inttostr(listbox1.ItemIndex),'NAME','без имени');

  CheckBox3.Checked:=false;
  AdvFileNameEdit1.Text:='';
  edit2.Text:='';
  ini.writebool('CELL_'+inttostr(listbox1.ItemIndex),'ANY_CMD_EN',false);
  ini.writestring('CELL_'+inttostr(listbox1.ItemIndex),'ANY_CMD','');
  ini.writestring('CELL_'+inttostr(listbox1.ItemIndex),'ANY_CMD_ARG','');

  edit1.Text:='без имени';
  for ut := 0 to 21 do begin
  ini.Writestring('CELL_'+inttostr(listbox1.ItemIndex),'CMD_'+inttostr(ut),'');

  ini.Writestring('CELL_'+inttostr(listbox1.ItemIndex),'CMD_ARG_'+inttostr(ut),'');
  end;
  ComboBox1.ItemIndex:=-1;
  ComboBox1.Text:='Выберите команду';
  AdvFileNameEdit1.Text:='';
  CheckBox2.Checked:=ini.readbool('CELL_'+inttostr(listbox1.ItemIndex),'PREFIX',false);
  CheckBox1.Checked:=ini.readbool('CELL_'+inttostr(listbox1.ItemIndex),'DATA_SEND',false);
  ini.Free;

  write_command(ADAPTER_CLEAR_CELL,listbox1.ItemIndex);
  end
  else begin
  Showmessage('Для данного действия нужно выбрать ячейку!');
  end;
}

procedure TForm1.AdvGlassButton10Click(Sender: TObject);
begin
  if (ListBox1.ItemIndex > -1) then
  begin

    if (send_enable) then
    begin
      RadioButton1.Checked := true;
      senddata[1] := 2; // nooLiteF_TX

      if (CheckBox8.Checked) then
      begin
        senddata[2] := 1; // send_command ШВ
      end
      else
      begin
        senddata[2] := 0; // send_command
      end;

      senddata[3] := 0; // reserved
      senddata[5] := 8; // сохранить сценарий

      if (RadioButton1.Checked) then
        senddata[6] := 0 // формат=0, чтение общего состояния
      else
        senddata[6] := 1;

      clear_result(senddata[6]); // подготовить верхнюю строчку страницы
      senddata[4] := ListBox1.ItemIndex; // номер канала
      crc := 0;
      poswrite := 0;
      memo1.Clear;
      wait_update;
      send_command;
    end;

  end
  else
  begin
    showmessage('Для данного действия нужно выбрать канал из списка!');
  end;
end;

procedure TForm1.AdvGlassButton11Click(Sender: TObject);
begin
  if (ListBox1.ItemIndex > -1) then
  begin

    if (send_enable) then
    begin
      RadioButton1.Checked := true;
      senddata[1] := 2; // nooLiteF_TX
      if (CheckBox8.Checked) then
      begin
        senddata[2] := 1; // send_command ШВ
      end
      else
      begin
        senddata[2] := 0; // send_command
      end;
      senddata[3] := 0; // reserved
      senddata[5] := 7; // вызвать сценарий
      if (RadioButton1.Checked) then
        senddata[6] := 0 // формат=0, чтение общего состояния
      else
        senddata[6] := 1;
      clear_result(senddata[6]); // подготовить верхнюю строчку страницы
      senddata[4] := ListBox1.ItemIndex; // номер канала
      crc := 0;
      poswrite := 0;
      memo1.Clear;
      wait_update;
      send_command;
    end;

  end
  else
  begin
    showmessage('Для данного действия нужно выбрать канал из списка!');
  end;
end;

procedure TForm1.AdvGlassButton12Click(Sender: TObject);
begin
  if (ListBox1.ItemIndex > -1) then
  begin

    if (send_enable) then
    begin

      senddata[1] := 2; // nooLiteF_TX
      senddata[2] := 0; // send_command
      senddata[3] := 0; // reserved
      senddata[5] := 128; // чтение состояния
      senddata[6] := 0;
      if (RadioButton1.Checked) then
        senddata[6] := 0 // формат=0, чтение общего состояния
      else if (RadioButton2.Checked) then
        senddata[6] := 1
      else if (RadioButton3.Checked) then
        senddata[6] := 2;
      clear_result(senddata[6]); // подготовить верхнюю строчку страницы
      senddata[4] := ListBox1.ItemIndex; // номер канала
      crc := 0;
      poswrite := 0;
      memo1.Clear;

      wait_update;

      send_command;
    end;

  end
  else
  begin
    showmessage('Для данного действия нужно выбрать канал из списка!');
  end;
end;

procedure TForm1.AdvGlassButton13Click(Sender: TObject);
begin
  if MessageDlg('Вы действительно хотите очистить данный канал?', mtCustom,
    [mbYes, mbNo], 0) = mrYes then
  begin

    if (ListBox1.ItemIndex > -1) then
    begin
      senddata[1] := 2; // nooLiteF_TX
      senddata[2] := 5; // очистить канал
      senddata[3] := 0; // reserved
      senddata[5] := 0; // сохранить сценарий
      if (RadioButton1.Checked) then
        senddata[6] := 0 // формат=0, чтение общего состояния
      else
        senddata[6] := 1;
      clear_result(senddata[6]); // подготовить верхнюю строчку страницы
      senddata[4] := ListBox1.ItemIndex; // номер канала
      crc := 0;
      poswrite := 0;
      memo1.Clear;
      send_command;
    end
    else
    begin
      showmessage('Для данного действия нужно выбрать канал из списка!');
    end;
  end;
end;

procedure TForm1.AdvGlassButton14Click(Sender: TObject);
begin
  memo1.Clear;
end;

procedure TForm1.AdvGlassButton15Click(Sender: TObject);
begin
form7.ShowModal;
end;

function send_update(command_update: Integer; id_send: Cardinal;
  repeat_send: boolean): Integer;
var
  id_f: Cardinal;
  i_scan: Integer;
  get_result: Integer;
begin
  result := 0;
  // Form1.memo1.Clear;
  if (command_update = 0) then
  begin // передача сброса на адаптер
    senddata[1] := 5; // bootloader
    senddata[2] := 14 + ((Form1.SpinEdit8.Value and 3) shl 6); // сброс
    senddata[3] := 0;
    senddata[5] := 0;
    senddata[4] := 0;
    senddata[6] := 0;
    senddata[7] := 0;
    senddata[8] := 0;
    senddata[9] := 0;
    senddata[10] := 0;
    id_f := HexToInt(Form1.Edit1.Text);
    senddata[11] := LO(id_f shr 24);
    senddata[12] := LO(id_f shr 16);
    senddata[13] := LO(id_f shr 8);
    senddata[14] := LO(id_f);
    crc := 0;
    poswrite := 0;
    Form1.memo1.Clear;
    send_command;
  end
  else
  begin // передача команд в bootloader

    senddata[1] := 5; // bootloader
    senddata[2] := command_update; // 11...14

    if not repeat_send then
    begin

      for i_scan := 3 to 25 do // clear_array
      begin
        senddata[i_scan] := 0;
      end;

    end;

    crc := 0;
    poswrite := 0;

    id_f := id_send; // запись ID
    senddata[20] := LO(id_f shr 24);
    senddata[21] := LO(id_f shr 16);
    senddata[22] := LO(id_f shr 8);
    senddata[23] := LO(id_f);

    if senddata[2] = 11 then // фиксация в bootloadere
    begin // GET ID
      senddata[4] := $55;
      senddata[5] := $AA;
      senddata[6] := $55;
      senddata[7] := $AA;
      senddata[3] := 0;
      send_boot_command;
    end;

    if (senddata[2] = 13) then // write
    begin // Write
      if (send_ok = 1) or (repeat_send) then
      begin // файл открыт, пишем

        if not repeat_send then
        begin

          if write_step < 255 then // TOGL_STEP
          begin
            inc(write_step);
          end
          else
          begin
            write_step := 1;
          end;

          last_write := write_step;
        end;
        senddata[3] := write_step;

        get_result := last_write;

        if not repeat_send then
          get_result := send_data_step; // заполнение данных

        if get_result > 0 then
        begin
          send_boot_command; // передача данных в адаптер на запись
          if get_result < 16 then // передали оставшиеся байты! - завершаем
            result := 1;
        end
        else
        begin // всё передали! - завершаем
          result := 1;
        end;
      end
      else if send_ok = 0 then
      begin
        showmessage('Файл не открыт! Сотрите память или откройте файл заново!');
        result := 1;
      end;
    end;

    if senddata[2] = 14 then
    begin // Reset_OK
      boot_mode_step := 5;
      senddata[3] := 0;
      senddata[7] := LO(crc32_read shr 24);
      senddata[6] := LO(crc32_read shr 16);
      senddata[5] := LO(crc32_read shr 8);
      senddata[4] := LO(crc32_read);
      send_boot_command;
    end;

    if senddata[2] = 12 then
    begin // Erase
      write_step := 0;
      send_step := 0;
      boot_mode_step := 3;
      senddata[3] := write_step;
      send_boot_command;
      if (send_ok = 1) then
      begin // файл уже открыт, закрываем
        CloseFile(myFile);
        send_ok := 0;
      end;
      if filename_bin <> '' then
      begin // открываем заново
        send_ok := 1;
        AssignFile(myFile, filename_bin);
        FileMode := fmOpenRead;
        Reset(myFile, 1); // Теперь мы определяем одну запись как 1 байт
        f_size := filesize(myFile);

        Form4.ProgressBar1.Max := f_size;
        f_send := 0;
        Form4.ProgressBar1.Position := f_send;
        // Form1.memo1.Lines.Add('File Open');

        BlockRead(myFile, b24, 1);
        BlockRead(myFile, b16, 1);

        BlockRead(myFile, b8, 1);
        BlockRead(myFile, b0, 1);
        type_read := (b8 shl 8) + b0;

        BlockRead(myFile, b24, 1);
        BlockRead(myFile, b16, 1);
        BlockRead(myFile, b8, 1);
        BlockRead(myFile, b0, 1);
        crc32_read := (b24 shl 24) + (b16 shl 16) + (b8 shl 8) + b0;
        BlockRead(myFile, b24, 1);
        BlockRead(myFile, b16, 1);
        BlockRead(myFile, b8, 1);
        BlockRead(myFile, b0, 1);
        size_read := (b24 shl 24) + (b16 shl 16) + (b8 shl 8) + b0;

        BlockRead(myFile, b24, 1);
        BlockRead(myFile, b16, 1);
        BlockRead(myFile, b8, 1);
        BlockRead(myFile, b0, 1);
        if size_read <> (f_size - 16) then
          showmessage('Ошибка файла. Скачайте его заново!');

      end;
    end;
  end;
end;

function send_update_air(command_update: Integer; id_send: Cardinal;
  repeat_send: boolean): Integer;
var
  id_f: Cardinal;
  i_scan: Integer;
  get_result: Integer;
begin
  result := 0;
  // Form1.memo1.Clear;
  senddata[1] := 5; // bootloader
  senddata[2] := command_update; // 11...14
  if not repeat_send then
  begin

    for i_scan := 3 to 25 do // clear_array
    begin
      senddata[i_scan] := 0;
    end;

  end;

  crc := 0;
  poswrite := 0;

  id_f := id_send; // запись ID
  senddata[20] := LO(id_f shr 24);
  senddata[21] := LO(id_f shr 16);
  senddata[22] := LO(id_f shr 8);
  senddata[23] := LO(id_f);

  if senddata[2] = 11 then // фиксация в bootloadere
  begin // GET ID
    senddata[4] := $55;
    senddata[5] := $AA;
    senddata[6] := $55;
    senddata[7] := $AA;
    senddata[3] := 0;
    send_boot_command;
  end;

  if (senddata[2] = 13) then // write
  begin // Write
    if (send_ok = 1) or (repeat_send) then
    begin // файл открыт, пишем

      if not repeat_send then
      begin

        if write_step < 255 then // TOGL_STEP
        begin
          inc(write_step);
        end
        else
        begin
          write_step := 1;
        end;

        last_write := write_step;
      end;
      senddata[3] := write_step;

      get_result := last_write;

      if not repeat_send then
        get_result := send_data_step; // заполнение данных

      if get_result > 0 then
      begin
        send_boot_command; // передача данных в адаптер на запись
        if get_result < 16 then // передали оставшиеся байты! - завершаем
          result := 1;
      end
      else
      begin // всё передали! - завершаем
        result := 1;
      end;
    end
    else if send_ok = 0 then
    begin
      showmessage('Файл не открыт! Сотрите память или откройте файл заново!');
      result := 1;
    end;
  end;

  if senddata[2] = 14 then
  begin // Reset_OK
    senddata[3] := 0;
    senddata[7] := LO(crc32_read shr 24);
    senddata[6] := LO(crc32_read shr 16);
    senddata[5] := LO(crc32_read shr 8);
    senddata[4] := LO(crc32_read);
    send_boot_command;
  end;

  if senddata[2] = 12 then
  begin // Erase
    write_step := 0;
    send_step := 0;
    senddata[3] := write_step;
    send_boot_command;
    if (send_ok = 1) then
    begin // файл уже открыт, закрываем
      CloseFile(myFile);
      send_ok := 0;
    end;
    if filename_bin <> '' then
    begin // открываем заново
      send_ok := 1;
      AssignFile(myFile, filename_bin);
      FileMode := fmOpenRead;
      Reset(myFile, 1); // Теперь мы определяем одну запись как 1 байт
      f_size := filesize(myFile);

      Form5.ProgressBar1.Max := f_size;
      f_send := 0;
      Form5.ProgressBar1.Position := f_send;
      // Form1.memo1.Lines.Add('File Open');

      BlockRead(myFile, b24, 1);
      BlockRead(myFile, b16, 1);

      BlockRead(myFile, b8, 1);
      BlockRead(myFile, b0, 1);
      type_read := (b8 shl 8) + b0;

      BlockRead(myFile, b24, 1);
      BlockRead(myFile, b16, 1);
      BlockRead(myFile, b8, 1);
      BlockRead(myFile, b0, 1);
      crc32_read := (b24 shl 24) + (b16 shl 16) + (b8 shl 8) + b0;
      BlockRead(myFile, b24, 1);
      BlockRead(myFile, b16, 1);
      BlockRead(myFile, b8, 1);
      BlockRead(myFile, b0, 1);
      size_read := (b24 shl 24) + (b16 shl 16) + (b8 shl 8) + b0;

      BlockRead(myFile, b24, 1);
      BlockRead(myFile, b16, 1);
      BlockRead(myFile, b8, 1);
      BlockRead(myFile, b0, 1);
      if size_read <> (f_size - 16) then
        showmessage('Ошибка файла. Скачайте его заново!');
    end;
  end;
end;

procedure TForm1.AdvGlassButton16Click(Sender: TObject);
begin
  // send_update(Form4.ComboBox4.ItemIndex + 11, 0, false);
end;

procedure TForm1.AdvGlassButton17Click(Sender: TObject);
begin

  Form1.AdvGlassButton12.Enabled := false;
  Form1.AdvGlassButton8.Enabled := false;
  Form1.AdvGlassButton9.Enabled := false;

  Form1.AdvGlassButton11.Enabled := false;
  Form1.AdvGlassButton10.Enabled := false;
  Form1.AdvGlassButton13.Enabled := false;
  Form1.AdvGlassButton7.Enabled := false;
  Form1.ListBox1.Enabled := false;

  auto_reset := false;
  boot_mode_step := 0;
  boot_mode := 1;
  send_update(0, 0, false); // принудительная перезагрузка
  send_timer.Interval := 500;
  send_timer.Enabled := true;

end;

procedure TForm1.AdvGlassButton1Click(Sender: TObject);
var
  id_f: Cardinal;
begin

  boot_mode := 0;
  senddata[1] := ComboBox2.ItemIndex;
  senddata[2] := ComboBox3.ItemIndex + ((SpinEdit8.Value and 3) shl 6);
  senddata[3] := SpinEdit7.Value;

  if ComboBox1.ItemIndex > 26 then
  begin
    senddata[5] := ComboBox1.ItemIndex + 100;
  end
  else
  begin
    senddata[5] := ComboBox1.ItemIndex;
  end;

  senddata[4] := SpinEdit1.Value;

  senddata[6] := 0;
  senddata[7] := 0;
  senddata[8] := 0;
  senddata[9] := 0;
  senddata[10] := 0;

  senddata[6] := SpinEdit6.Value;
  senddata[7] := SpinEdit2.Value; // d0
  senddata[8] := SpinEdit3.Value; // d1
  senddata[9] := SpinEdit4.Value; // d2
  senddata[10] := SpinEdit5.Value; // d3

  id_f := HexToInt(Edit1.Text);
  senddata[11] := LO(id_f shr 24);
  senddata[12] := LO(id_f shr 16);
  senddata[13] := LO(id_f shr 8);
  senddata[14] := LO(id_f);
  crc := 0;
  poswrite := 0;

  memo1.Clear;
  send_command;
end;

procedure TForm1.AdvGlassButton2Click(Sender: TObject);
begin
  form6.ShowModal;
end;

procedure TForm1.AdvGlassButton3Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 0;
end;

procedure TForm1.AdvGlassButton4Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 1;
end;

procedure TForm1.AdvGlassButton5Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 2;
end;

procedure TForm1.AdvGlassButton6Click(Sender: TObject);
begin
  ComboBox2.ItemIndex := 3;
end;

procedure TForm1.AdvGlassButton7Click(Sender: TObject);
begin
  if (ListBox1.ItemIndex > -1) then
  begin
    senddata[1] := 2; // nooLiteF_TX
    senddata[2] := 0; // send_command
    senddata[3] := 0; // reserved
    senddata[5] := 15; // привязка
    if (RadioButton1.Checked) then
      senddata[6] := 0 // формат=0, чтение общего состояния
    else
      senddata[6] := 1;
    clear_result(senddata[6]); // подготовить верхнюю строчку страницы
    senddata[4] := ListBox1.ItemIndex; // номер канала
    crc := 0;
    poswrite := 0;
    memo1.Clear;
    send_command;
    Timer2.Enabled := true;
    bind_mode := 1;
    bind_count := 5; // 5-1sec
    Form1.Label6.Font.Color := clblack;
    Form1.Label6.Caption := 'Привязка...';
  end
  else
  begin
    showmessage('Для данного действия нужно выбрать канал из списка!');
  end;
end;

procedure TForm1.AdvGlassButton8Click(Sender: TObject);
begin
  if (ListBox1.ItemIndex > -1) then
  begin

    if (send_enable) then
    begin
      RadioButton1.Checked := true;
      senddata[1] := 2; // nooLiteF_TX

      if (CheckBox8.Checked) then
      begin
        senddata[2] := 1; // send_command ШВ
      end
      else
      begin
        senddata[2] := 0; // send_command
      end;

      senddata[3] := 0; // reserved
      senddata[5] := 2; // включение
      if (RadioButton1.Checked) then
        senddata[6] := 0 // формат=0, чтение общего состояния
      else
        senddata[6] := 1;
      clear_result(senddata[6]); // подготовить верхнюю строчку страницы
      senddata[4] := ListBox1.ItemIndex; // номер канала
      crc := 0;
      poswrite := 0;
      memo1.Clear;
      wait_update;
      send_command;
    end;

  end
  else
  begin
    showmessage('Для данного действия нужно выбрать канал из списка!');
  end;
end;

procedure TForm1.AdvGlassButton9Click(Sender: TObject);
begin
  if (ListBox1.ItemIndex > -1) then
  begin

    if (send_enable) then
    begin
      RadioButton1.Checked := true;
      senddata[1] := 2; // nooLiteF_TX

      if (CheckBox8.Checked) then
      begin
        senddata[2] := 1; // send_command ШВ
      end
      else
      begin
        senddata[2] := 0; // send_command
      end;

      senddata[3] := 0; // reserved
      senddata[5] := 0; // выключение
      if (RadioButton1.Checked) then
        senddata[6] := 0 // формат=0, чтение общего состояния
      else
        senddata[6] := 1;
      clear_result(senddata[6]); // подготовить верхнюю строчку страницы
      senddata[4] := ListBox1.ItemIndex; // номер канала
      crc := 0;
      poswrite := 0;
      memo1.Clear;
      wait_update;
      send_command;
    end;

  end
  else
  begin
    showmessage('Для данного действия нужно выбрать канал из списка!');
  end;
end;

procedure TForm1.AdvStringGrid1Click(Sender: TObject);
begin
  AdvStringGrid1.ShowSelection := true;
end;

procedure TForm1.AdvStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  {
    AdvStringGrid1.Canvas.Brush.Color:=clRed;
    if ((ACol=1)and(ARow=1)) then
    AdvStringGrid1.Canvas.FillRect(Rect);
  }
  {
    if (readdata[6]=0) and (ACol=1)then begin
    if state_color[ARow]=clred then begin
    AdvStringGrid1.Canvas.Brush.Color:=clRed;
    AdvStringGrid1.Canvas.FillRect(Rect);
    end
    else if state_color[ARow]=clsilver then begin
    AdvStringGrid1.Canvas.Brush.Color:=clsilver;
    AdvStringGrid1.Canvas.FillRect(Rect);
    end;

    end;
  }
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  if (OpenDialog1.Execute) then
    filename_bin := OpenDialog1.FileName;
  Form5.Label16.Caption := filename_bin;
  if filename_bin = '' then
  begin
    showmessage('Файл c прошивкой не выбран!');
  end
  else
  begin // процесс обновления
    if (send_ok = 1) then
      CloseFile(myFile);
    send_ok := 1;
    AssignFile(myFile, filename_bin);
    // Повторное открытие файла для чтения
    FileMode := fmOpenRead;
    Reset(myFile, 1); // Теперь мы определяем одну запись как 1 байт
    f_size := filesize(myFile);
    Form5.ProgressBar1.Max := f_size;
    f_send := 0;
    Form5.ProgressBar1.Position := f_send;
    // send_timer.Enabled := true;

    BlockRead(myFile, b24, 1);
    BlockRead(myFile, b16, 1);
    BlockRead(myFile, b8, 1);
    BlockRead(myFile, b0, 1);
    type_read := (b8 shl 8) + b0;

    BlockRead(myFile, b24, 1);
    BlockRead(myFile, b16, 1);
    BlockRead(myFile, b8, 1);
    BlockRead(myFile, b0, 1);
    crc32_read := (b24 shl 24) + (b16 shl 16) + (b8 shl 8) + b0;

    BlockRead(myFile, b24, 1);
    BlockRead(myFile, b16, 1);
    BlockRead(myFile, b8, 1);
    BlockRead(myFile, b0, 1);

    size_read := (b24 shl 24) + (b16 shl 16) + (b8 shl 8) + b0;

    BlockRead(myFile, b24, 1);
    BlockRead(myFile, b16, 1);
    BlockRead(myFile, b8, 1);
    BlockRead(myFile, b0, 1);
    if size_read <> (f_size - 16) then
      showmessage('Ошибка файла. Скачайте его заново!')
    else if (type_read <> boot_type_read) then
      showmessage
        ('Этот файл не подходит для обновления выбранного устройства! Выберите другой!')
    else
    begin
      Form5.AdvGlassButton15.Enabled := true;
    end;
  end;
  // memo1.Lines.Add('Open file');
end;

procedure TForm1.Button11Click(Sender: TObject);
var
  count_send_data, k: Integer;
  str: string;
begin
  if (filename_bin = '') or (boot_mode_step_2 <> 4) then
  begin
    showmessage('Файл c прошивкой не выбран или не вошли в bootloader!');
  end
  else
  begin // процесс обновления
    // memo1.Lines.Add('Start Firmware Update...');
    if (send_ok = 1) then
    begin // файл уже открыт, закрываем
      CloseFile(myFile);
      send_ok := 0;
    end;
    send_ok := 1;
    AssignFile(myFile, filename_bin);
    FileMode := fmOpenRead;
    Reset(myFile, 1); // Теперь мы определяем одну запись как 1 байт
    f_size := filesize(myFile);
    Form5.ProgressBar1.Max := f_size;
    f_send := 0;
    Form5.ProgressBar1.Position := f_send;
    // Form1.memo1.Lines.Add('File Open');
    BlockRead(myFile, b24, 1);
    BlockRead(myFile, b16, 1);
    BlockRead(myFile, b8, 1);
    BlockRead(myFile, b0, 1);
    type_read := (b8 shl 8) + b0;

    BlockRead(myFile, b24, 1);
    BlockRead(myFile, b16, 1);
    BlockRead(myFile, b8, 1);
    BlockRead(myFile, b0, 1);

    crc32_read := (b24 shl 24) + (b16 shl 16) + (b8 shl 8) + b0;

    BlockRead(myFile, b24, 1);
    BlockRead(myFile, b16, 1);
    BlockRead(myFile, b8, 1);
    BlockRead(myFile, b0, 1);
    size_read := (b24 shl 24) + (b16 shl 16) + (b8 shl 8) + b0;

    BlockRead(myFile, b24, 1);
    BlockRead(myFile, b16, 1);
    BlockRead(myFile, b8, 1);
    BlockRead(myFile, b0, 1);

    if size_read <> (f_size - 16) then
      showmessage('Ошибка файла. Скачайте его заново!')
    else
    begin
      Form5.ProgressBar1.Visible := true;
      Form5.Label6.Caption := 'Идёт обновление...';
      Form5.AdvCircularProgress1.Position := 0;
      Form5.AdvCircularProgress1.Enabled := true;
      Form5.AdvCircularProgress1.Visible := true;
      Form5.AdvGlassButton2.Enabled := false;
      Form5.AdvGlassButton15.Enabled := false;
      repeat_count := 5;

      stat_send_count := 0;
      stat_send_err := 0;
      error_rx_flag := false;
      Form5.Label8.Caption := 'STAT: Передано всего:' +
        inttostr(stat_send_count) + '  Количество ошибок:' +
        inttostr(stat_send_err) + '  Ошибки, %:' +
        inttostr(round(stat_send_err / (stat_send_count + 1) * 100));
      boot_loop := 1; // зацикливание передачи до конца
      send_update_air(13, boot_send_address, false); // write
      send_timer_2.Interval := 500;
      send_timer_2.Enabled := true;
    end;
  end;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  send_update_air(12, boot_send_address, false); // очистить память
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
send_update_air(14, boot_send_address, false);
sleep(1000);
Form1.AdvGlassButton12.Click;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  send_update_air(13, boot_send_address, false); // write
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  send_update_air(11, boot_send_address, false);
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  boot_mode_step_2 := 1;
  boot_mode_2 := 1;
  boot_send_address := HexToInt(Edit1.Text);
  Form5.Label2.Caption := settings_name;
  Form5.Label4.Caption := inttostr(readdata[8]);
  boot_type_read := readdata[7];
  // boot_send_address := (readdata[11] shl 24) + (readdata[12] shl 16) +
  // (readdata[13] shl 8) + readdata[14];
  Form5.AdvGlassButton2.Enabled := true;
  Form5.AdvCircularProgress1.Enabled := false;
  Form5.AdvCircularProgress1.Visible := false;
  Form5.AdvGlassButton15.Enabled := false;
  Form5.Label6.Caption := '';
  Form5.Label16.Caption := '';
  Form5.ProgressBar1.Position := 0;
  Form5.ProgressBar1.Visible := false;
  // Form5.Show;
  boot_type_read := 2;
  Form1.Button8.Click; // перевод адаптера в режим обновления ПО
  boot_mode_step_2 := 1;
  boot_mode_2 := 1;
  // следующая обработка в режиме бутлоадера
  Timer6.Enabled := false;
  Timer6.Interval := 500;
  Timer6.Enabled := true;
end;



procedure TForm1.Button1Click(Sender: TObject);
begin
  if (OpenDialog1.Execute) then
    filename_bin := OpenDialog1.FileName;
  Form4.Label16.Caption := filename_bin;
  if filename_bin = '' then
  begin
    showmessage('Файл c прошивкой не выбран!');
  end
  else
  begin // процесс обновления
    if (send_ok = 1) then
      CloseFile(myFile);
    send_ok := 1;
    AssignFile(myFile, filename_bin);
    // Повторное открытие файла для чтения
    FileMode := fmOpenRead;
    Reset(myFile, 1); // Теперь мы определяем одну запись как 1 байт
    f_size := filesize(myFile);
    Form4.ProgressBar1.Max := f_size;
    f_send := 0;
    Form4.ProgressBar1.Position := f_send;
    // send_timer.Enabled := true;

    BlockRead(myFile, b24, 1);
    BlockRead(myFile, b16, 1);
    BlockRead(myFile, b8, 1);
    BlockRead(myFile, b0, 1);
    type_read := (b8 shl 8) + b0;

    BlockRead(myFile, b24, 1);
    BlockRead(myFile, b16, 1);
    BlockRead(myFile, b8, 1);
    BlockRead(myFile, b0, 1);
    crc32_read := (b24 shl 24) + (b16 shl 16) + (b8 shl 8) + b0;

    BlockRead(myFile, b24, 1);
    BlockRead(myFile, b16, 1);
    BlockRead(myFile, b8, 1);
    BlockRead(myFile, b0, 1);

    size_read := (b24 shl 24) + (b16 shl 16) + (b8 shl 8) + b0;

    BlockRead(myFile, b24, 1);
    BlockRead(myFile, b16, 1);
    BlockRead(myFile, b8, 1);
    BlockRead(myFile, b0, 1);

    if size_read <> (f_size - 16) then
      showmessage('Ошибка файла. Скачайте его заново!')
    else if (type_read <> 0) then
      showmessage
        ('Этот файл не подходит для обновления выбранного устройства! Выберите другой!')
    else
      Form4.AdvGlassButton15.Enabled := true;

  end;
  // memo1.Lines.Add('Open file');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  count_send_data, k: Integer;
  str: string;
begin
  if (filename_bin = '') or (boot_mode_step <> 4) then
  begin
    showmessage('Файл c прошивкой не выбран или не вошли в bootloader!');
  end
  else
  begin // процесс обновления
    // memo1.Lines.Add('Start Firmware Update...');
    if (send_ok = 1) then
    begin // файл уже открыт, закрываем
      CloseFile(myFile);
      send_ok := 0;
    end;
    send_ok := 1;
    AssignFile(myFile, filename_bin);
    FileMode := fmOpenRead;
    Reset(myFile, 1); // Теперь мы определяем одну запись как 1 байт
    f_size := filesize(myFile);
    Form4.ProgressBar1.Max := f_size;
    f_send := 0;
    Form4.ProgressBar1.Position := f_send;
    // Form1.memo1.Lines.Add('File Open');

    BlockRead(myFile, b24, 1);
    BlockRead(myFile, b16, 1);
    BlockRead(myFile, b8, 1);
    BlockRead(myFile, b0, 1);
    type_read := (b8 shl 8) + b0;

    BlockRead(myFile, b24, 1);
    BlockRead(myFile, b16, 1);
    BlockRead(myFile, b8, 1);
    BlockRead(myFile, b0, 1);

    crc32_read := (b24 shl 24) + (b16 shl 16) + (b8 shl 8) + b0;

    BlockRead(myFile, b24, 1);
    BlockRead(myFile, b16, 1);
    BlockRead(myFile, b8, 1);
    BlockRead(myFile, b0, 1);
    size_read := (b24 shl 24) + (b16 shl 16) + (b8 shl 8) + b0;

    BlockRead(myFile, b24, 1);
    BlockRead(myFile, b16, 1);
    BlockRead(myFile, b8, 1);
    BlockRead(myFile, b0, 1);

    if size_read <> (f_size - 16) then
      showmessage('Ошибка файла. Скачайте его заново!')
    else
    begin
      Form4.ProgressBar1.Visible := true;
      Form4.Label6.Caption := 'Идёт обновление...';

      Form4.AdvCircularProgress1.Position := 0;
      Form4.AdvCircularProgress1.Enabled := true;
      Form4.AdvCircularProgress1.Visible := true;
      Form4.AdvGlassButton2.Enabled := false;
      Form4.AdvGlassButton15.Enabled := false;
      repeat_count := 2;
      boot_loop := 1; // зацикливание передачи до конца
      send_update(13, 0, false); // write
      send_timer.Interval := 500;
      send_timer.Enabled := true;
    end;
  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  send_update(12, 0, false); // очистить память
  send_timer.Interval := 2500;
  send_timer.Enabled := true;
  // memo1.Lines.Add('Erase...')
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  send_update(14, 0, false);
  send_timer.Interval := 500;
  send_timer.Enabled := true;
  auto_reset := true;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  auto_reset := false;
  step_service_boot := 0;
  time_out := 0;
  err_read := 0;
  bind_mode := 0;
  boot_mode := 0;
  boot_loop := 0;
  no_ch := 0;
  Form3.ListBox1.Clear;
  com_err := false;
  service_find := 1; // поиск адаптеров при старте программы
  send_enable := true;
  Form1.Label6.Caption := ''; // спрятать статусную строку
  ListBox1.ItemIndex := 0;
  clear_result(0);
  crc := 0;
  poswrite := 0;
  disable_show := false;
  settings_set := 0;
  boot_mode_set := 0;
  filename_bin := '';
  if send_ok = 1 then
  begin
    CloseFile(myFile);
    send_ok := 0;
  end;
  send_ok := 0;
  write_step := 0;
  Form1.AdvCircularProgress1.Position := 0;
  Form1.AdvCircularProgress1.Enabled := true;
  Form1.AdvCircularProgress1.Visible := true;
  Label6.Caption := 'Поиск адаптера...';
  Label19.Caption := '--------';
  AdvSmoothStatusIndicator1.Appearance.Fill.Color := color_error;
  boot_found := 0;
  ComPort1.Close;
  boot_mode := 0;
  ts.Clear;
  if selectcom then
  begin // обнаружены COM порты - поиск адаптера
    i_count := 0;
    com_name.Clear;
    adapter_name.Clear;
    boot_name.Clear;
    main_ver.Clear;
    Timer5.Enabled := false;
    Timer5.Interval := timer_scan;
    Timer5.Enabled := true;
    // ComPort1.Open;
    // AdvSmoothStatusIndicator1.Appearance.Fill.Color:= color_good;
  end
  else
  begin
    showmessage
      ('Адаптер не обнаружен! Подключите адаптер и перезапустите программу!');
    // Application.Terminate;
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if auto_reset = false then
  begin // передача RESET при выходе
    Button7.Click;
    Timer4.Interval := 500;
    Timer4.Enabled := true;
  end
  else
  begin // просто поиск адаптера
    Button5.Click;
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  send_update(14, 0, false);
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  id_f: Cardinal;
begin
  boot_mode := 0;
  senddata[1] := 5;
  senddata[2] := 10;
  senddata[3] := 0;
  senddata[5] := 0;

  senddata[4] := 0;

  senddata[6] := 0;
  senddata[7] := 0;
  senddata[8] := 0;
  senddata[9] := 0;
  senddata[10] := 0;

  senddata[6] := SpinEdit6.Value;
  senddata[7] := SpinEdit2.Value; // d0
  senddata[8] := SpinEdit3.Value; // d1
  senddata[9] := SpinEdit4.Value; // d2
  senddata[10] := SpinEdit5.Value; // d3

  id_f := HexToInt(Edit1.Text);
  senddata[11] := LO(id_f shr 24);
  senddata[12] := LO(id_f shr 16);
  senddata[13] := LO(id_f shr 8);
  senddata[14] := LO(id_f);
  crc := 0;
  poswrite := 0;

  memo1.Clear;
  send_command;
end;

procedure TForm1.Button9Click(Sender: TObject);
var
  id_f: Cardinal;
begin
  boot_mode := 0;
  senddata[1] := 5;
  senddata[2] := 15;
  senddata[3] := 0;
  senddata[5] := 0;

  senddata[4] := 0;

  senddata[6] := 0;
  senddata[7] := 0;
  senddata[8] := 0;
  senddata[9] := 0;
  senddata[10] := 0;
  senddata[6] := SpinEdit6.Value;
  senddata[7] := SpinEdit2.Value; // d0
  senddata[8] := SpinEdit3.Value; // d1
  senddata[9] := SpinEdit4.Value; // d2
  senddata[10] := SpinEdit5.Value; // d3

  id_f := HexToInt(Edit1.Text);
  senddata[11] := LO(id_f shr 24);
  senddata[12] := LO(id_f shr 16);
  senddata[13] := LO(id_f shr 8);
  senddata[14] := LO(id_f);
  crc := 0;
  poswrite := 0;
  boot_mode_set := 0; // обычный режим работы
  memo1.Clear;
  send_command;
  Form1.AdvGlassButton12.Click;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  if CheckBox4.Checked then
    Form1.Height := 680
  else
    Form1.Height := 468;
end;

procedure TForm1.ComPort1Exception(Sender: TObject;
  TComException: TComExceptions; ComportMessage: string; WinError: Int64;
  WinMessage: string);
begin
  com_err_open := true;
  if service_find = 0 then
  begin
    if (com_err = false) then
    begin
      com_err := true;
      showmessage
        ('Адаптер был отключён! Подключите адаптер и перезапустите программу!');
      // Application.Terminate;
    end;
  end;
  //
end;

procedure TForm1.ComPort1RxChar(Sender: TObject; Count: Integer);
var
  t: array [0 .. 1024] of byte;
  it: Integer;
  st_show, ansi_show: string;
  temperature: Integer;
  name_device: string;
begin
  ComPort1.Read(t, Count);
  if poswrite > 1022 then // переполнение буфера - обнуление
    poswrite := 0;
  st_show := 'FROM MTRF (data): ';
  ansi_show := 'FROM MTRF (CHAR): ';
  for it := 0 to Count - 1 do
  begin // перебор полученного фрагмета и упаковка в буфер
    readdata[poswrite] := t[it];
    // st_show:=st_show+inttostr(t[it])+'_';
    // ansi_show:=ansi_show+char( t[it]);
    if poswrite < 15 then // подсчёт CRC
      crc := crc + readdata[poswrite];
    poswrite := poswrite + 1;
    if readdata[0] = 173 then
    begin // стартовый байт совпадает
      if poswrite >= 17 then
      begin
        if ((readdata[16] = 174) and (crc = readdata[15])) then
        begin // данные приняты верно, обработка принятого пакета
          // memo1.Lines.Add('Resive...');
          if service_find = 1 then
          begin // сервисный блок

            if (readdata[1] = 4) then
            begin // сервисный режим
              ok_com_index := i_count;
              com_name.Add(ComPort1.Port);
              boot_name.Add('NORM');
              if (readdata[7] = 0) then // тип
                name_device := DEV_TYPE_0
              else if (readdata[7] = 1) then
                name_device := DEV_TYPE_1
              else if (readdata[7] = 2) then
                name_device := DEV_TYPE_2
              else if (readdata[7] = 3) then
                name_device := DEV_TYPE_3
              else if (readdata[7] = 4) then
                name_device := DEV_TYPE_4
              else if (readdata[7] = 5) then
                name_device := DEV_TYPE_5
              else if (readdata[7] = 6) then
                name_device := DEV_TYPE_6
              else if (readdata[7] = 7) then
                name_device := DEV_TYPE_7
              else if (readdata[7] = 8) then
                name_device := DEV_TYPE_9
              else if (readdata[7] = 9) then
                name_device := DEV_TYPE_8
              else
                name_device := DEV_TYPE_UNKNOWN;

              adapter_name.Add(name_device);
              main_ver.Add(inttostr(readdata[8]));
              Form3.ListBox1.Items.Add(name_device + ' |ADDR:' +
                inttohex(readdata[11], 2) + inttohex(readdata[12], 2) +
                inttohex(readdata[13], 2) + inttohex(readdata[14], 2));
            end
            else if (readdata[1] = 5) then
            begin // режим бутлоадера

              ok_com_index := i_count;
              com_name.Add(ComPort1.Port);
              boot_name.Add('BOOT');
              boot_found := 1 + i_count;
              if (readdata[7] = 0) then // тип
                name_device := DEV_TYPE_0
              else if (readdata[7] = 1) then
                name_device := DEV_TYPE_1
              else if (readdata[7] = 2) then
                name_device := DEV_TYPE_2
              else if (readdata[7] = 3) then
                name_device := DEV_TYPE_3
              else if (readdata[7] = 4) then
                name_device := DEV_TYPE_4
              else if (readdata[7] = 5) then
                name_device := DEV_TYPE_5
              else if (readdata[7] = 6) then
                name_device := DEV_TYPE_6
              else if (readdata[7] = 7) then
                name_device := DEV_TYPE_7
              else if (readdata[7] = 8) then
                name_device := DEV_TYPE_9
              else if (readdata[7] = 9) then
                name_device := DEV_TYPE_8
              else
                name_device := DEV_TYPE_UNKNOWN;
              adapter_name.Add(name_device);
              Form3.ListBox1.Items.Add(name_device + ' |ADDR:' +
                inttohex(readdata[11], 2) + inttohex(readdata[12], 2) +
                inttohex(readdata[13], 2) + inttohex(readdata[14], 2));
            end;

          end
          else
          begin // блок обработки - обычный режим

            if ((boot_mode = 0) and (boot_mode_2 = 0)) then
            begin // приём обычных команд

              if not disable_show then
              begin
                if (readdata[1] = 2) then
                begin // устройство передаёт назад своё состояние nooLite-F
                  if (readdata[2] = 2) then
                  begin // к каналу ничего не привязано
                    Timer1.Enabled := false;
                    wait_update_off;
                  end
                  else
                  begin
                    if (bind_mode = 0) then
                    begin
                      time_out := 0;
                      no_ch := 1;
                      if (settings_set > 0) then
                      begin // возврат значения настройки
                        draw_settings();
                      end
                      else if (boot_mode_set > 0) then
                      begin // возврат значения при входе в bootloader
                        if ((readdata[2] = 0) and (readdata[6] = 0)) then
                        begin // ответ от блока
                          // тип устройства и версия ПО
                          Form5.Label2.Caption := settings_name;
                          Form5.Label4.Caption := inttostr(readdata[8]);
                          boot_type_read := readdata[7];
                          boot_send_address := (readdata[11] shl 24) +
                            (readdata[12] shl 16) + (readdata[13] shl 8) +
                            readdata[14];
                          Form5.AdvGlassButton2.Enabled := true;
                          Form5.AdvCircularProgress1.Enabled := false;
                          Form5.AdvCircularProgress1.Visible := false;
                          Form5.AdvGlassButton15.Enabled := false;
                          Form5.Label6.Caption := '';
                          Form5.Label16.Caption := '';
                          Form5.ProgressBar1.Position := 0;
                          Form5.ProgressBar1.Visible := false;
                          Form5.Label7.Caption := inttohex(readdata[11], 2) +
                            inttohex(readdata[12], 2) + inttohex(readdata[13],
                            2) + inttohex(readdata[14], 2);
                          // Form5.Show;
                          Form1.Button8.Click;
                          // перевод адаптера в режим обновления ПО

                          boot_mode_step_2 := 1;
                          boot_mode_2 := 1;
                          // следующая обработка в режиме бутлоадера
                          Timer6.Enabled := false;
                          Timer6.Interval := 500;
                          Timer6.Enabled := true;
                        end
                        else
                        begin
                          showmessage('Нет ответа от выбранного устройства');
                        end;

                      end
                      else
                      begin
                        if (step_recive = 0) then
                        begin // это первая принятая команда
                          add_result(true);
                        end
                        else
                        begin
                          add_result(false);
                        end;

                        if (readdata[3] = 0) then // это последняя команда
                          wait_update_off;
                      end;
                    end
                    else
                    begin

                      if (readdata[2] = 3) then
                      begin // привязка завершена
                        Form1.Label6.Font.Color := clgreen;
                        Form1.Label6.Caption :=
                          'Привязка завершена. Привязано устройство: ';
                        bind_mode := 0;
                        Timer2.Enabled := false;
                        AdvGlassButton7.BackgroundColor := $0092F5F8;
                        if (readdata[7] = 0) then // тип
                          Form1.Label6.Caption := Form1.Label6.Caption +
                            DEV_TYPE_0
                        else if (readdata[7] = 1) then
                          Form1.Label6.Caption := Form1.Label6.Caption +
                            DEV_TYPE_1
                        else if (readdata[7] = 2) then
                          Form1.Label6.Caption := Form1.Label6.Caption +
                            DEV_TYPE_2
                         else if (readdata[7] = 3) then
                          Form1.Label6.Caption := Form1.Label6.Caption +
                            DEV_TYPE_3
                        else if (readdata[7] = 4) then
                          Form1.Label6.Caption := Form1.Label6.Caption +
                            DEV_TYPE_4
                        else if (readdata[7] = 5) then
                          Form1.Label6.Caption := Form1.Label6.Caption +
                            DEV_TYPE_5
                        else if (readdata[7] = 6) then
                          Form1.Label6.Caption := Form1.Label6.Caption +
                            DEV_TYPE_6
                        else if (readdata[7] = 7) then
                          Form1.Label6.Caption := Form1.Label6.Caption +
                            DEV_TYPE_7
                        else if (readdata[7] = 8) then
                          Form1.Label6.Caption := Form1.Label6.Caption +
                            DEV_TYPE_9
                        else if (readdata[7] = 9) then
                          Form1.Label6.Caption := Form1.Label6.Caption +
                            DEV_TYPE_8
                        else
                          Form1.Label6.Caption := Form1.Label6.Caption +
                            DEV_TYPE_UNKNOWN;
                      end;

                    end;
                  end;
                end;
              end;
            end
            else
            begin // блок обработки бутлоадера

              show_str := 'FROM MTRF: ';
              if readdata[1] = 0 then
                show_str := show_str + 'MODE=TX'
              else if readdata[1] = 1 then
                show_str := show_str + 'MODE=RX'
              else if readdata[1] = 2 then
                show_str := show_str + 'MODE=F-TX'
              else if readdata[1] = 3 then
                show_str := show_str + 'MODE=F-RX'
              else if readdata[1] = 4 then
                show_str := show_str + 'MODE=SERVICE'
              else if readdata[1] = 5 then
                show_str := show_str + 'MODE=BOOT';
              show_str := show_str + '; ';

              show_str := show_str + 'ANSVER=' + inttostr(readdata[2]) + '; ';
              show_str := show_str + 'TOGL=' + inttostr(readdata[3]) + '; ';
              show_str := show_str + 'CH=' + inttostr(readdata[4]) + '; ';
              show_str := show_str + 'CMD=' + inttostr(readdata[5]) + '; ';
              show_str := show_str + 'FMT=' + inttostr(readdata[6]) + '; ';
              show_str := show_str + 'D0=' + inttostr(readdata[7]) + '; ';
              show_str := show_str + 'D1=' + inttostr(readdata[8]) + '; ';
              show_str := show_str + 'D2=' + inttostr(readdata[9]) + '; ';
              show_str := show_str + 'D3=' + inttostr(readdata[10]) + '; ';
              show_str := show_str + 'ID=0x' + inttohex(readdata[11], 2) +
                inttohex(readdata[12], 2) + inttohex(readdata[13], 2) +
                inttohex(readdata[14], 2) + '; ';

              if boot_loop <> 1 then
              begin
                Form1.memo1.SelAttributes.Color := clgreen;
                memo1.Lines.Add(show_str);
                memo1.SelStart := Length(memo1.Lines.Text);
                memo1.SelLength := 0;
              end;

              if (boot_mode = 1) then
              begin
                if (boot_mode_step = 0) then
                begin // приняли ответ, передаём подтверждения входа
                  boot_mode_step := 1;
                  send_timer.Enabled := false;
                  send_timer.Interval := 1000;
                  send_timer.Enabled := true;
                end
                else if (boot_mode_step = 2) then
                begin // приняли ответ, вошли в bootloader
                  send_timer.Enabled := false;
                  com_name.Clear;
                  adapter_name.Clear;
                  boot_name.Clear;
                  main_ver.Clear;
                  service_find := 0; // выход из режима поиска адаптеров
                  // form4.ShowModal;
                  Form4.Show;
                  // Form1.Visible:=false;
                  // ShowMessage('1');
                  // memo1.Lines.Add('Вошли в bootloader');
                end
                else if (boot_mode_step = 3) then
                begin // приняли ответ, стёрли память
                  // memo1.Lines.Add('Erase OK');
                  send_timer.Enabled := false;
                  boot_mode_step := 4; // готовы прошивать
                  Button2.Click;
                end
                else if (boot_mode_step = 5) then
                begin
                  send_timer.Enabled := false;
                  // memo1.Lines.Add('Reset-ok');
                  boot_mode_step := 0;
                  Form4.Label6.Caption := 'Обновление завершено!';
                  Form4.AdvCircularProgress1.Position := 0;
                  Form4.AdvCircularProgress1.Enabled := false;
                  Form4.AdvCircularProgress1.Visible := false;
                  Form4.AdvGlassButton2.Enabled := false;
                  Form4.AdvGlassButton15.Enabled := false;
                end
                else if (boot_mode_step = 4) then
                begin // ответ от записи
                  if boot_loop = 1 then
                  begin
                    if send_update(13, 0, false) = 0 then
                    begin
                      send_timer.Enabled := false;
                      send_timer.Interval := 500;
                      send_timer.Enabled := true;
                    end
                    else
                    begin // передача завершена
                      boot_loop := 0;
                      Button4.Click;
                      boot_mode_step := 5;
                      send_timer.Enabled := false;
                    end;
                  end;
                end;
              end;

              if (boot_mode_2 = 1) then
              begin

                if (boot_mode_step_2 = 1) then
                begin // приняли ответ, вошли в bootloader
                  send_timer_2.Enabled := false;
                  memo1.Lines.Add('Вошли в bootloader');
                  boot_send_address := (readdata[11] shl 24) +
                    (readdata[12] shl 16) + (readdata[13] shl 8) + readdata[14];
                  Form5.Label7.Caption := inttohex(boot_send_address, 8);
                  Form5.Show;
                  boot_mode_step_2 := 2;
                end
                else if (boot_mode_step_2 = 3) then
                begin // приняли ответ, стёрли память
                  memo1.Lines.Add('Erase OK');
                  send_timer_2.Enabled := false;
                  boot_mode_step_2 := 4; // готовы прошивать
                  Button11.Click;
                end
                else if (boot_mode_step_2 = 5) then
                begin
                  send_timer_2.Enabled := false;
                  memo1.Lines.Add('Reset-ok');
                  boot_mode_step_2 := 0;
                  Form5.Label6.Caption := 'Обновление завершено!';
                  Form5.AdvCircularProgress1.Position := 0;
                  Form5.AdvCircularProgress1.Enabled := false;
                  Form5.AdvCircularProgress1.Visible := false;
                  Form5.AdvGlassButton2.Enabled := false;
                  Form5.AdvGlassButton15.Enabled := false;
                end
                else if (boot_mode_step_2 = 4) then
                begin // ответ от записи
                  if boot_loop = 1 then
                  begin
                    if send_update_air(13, boot_send_address, false) = 0 then
                    begin

                      inc(stat_send_count);
                      Form5.Label8.Caption := 'STAT: Передано всего:' +
                        inttostr(stat_send_count) + '  Количество ошибок:' +
                        inttostr(stat_send_err) + '  Ошибки, %:' +
                        inttostr(round(stat_send_err / (stat_send_count +
                        1) * 100));
                      repeat_count := 5;
                      send_timer_2.Enabled := false;
                      send_timer_2.Interval := 100;
                      send_timer_2.Enabled := true;
                    end
                    else
                    begin // передача завершена
                      send_timer_2.Enabled := false;
                      boot_loop := 0;
                      send_timer_2.Interval := 1000;
                      send_timer_2.Enabled := true;
                      Button13.Click;
                      boot_mode_step_2 := 5;
                    end;
                  end;

                end;
                error_rx_flag := false;
              end;

            end; // блок bootloader-a
          end; // блок обработки

          if ((boot_mode = 0) and (boot_mode_2 = 0)) then
          begin // выдача ответа в обычном режиме
            show_str := 'FROM MTRF: ';
            if readdata[1] = 0 then
              show_str := show_str + 'MODE=TX'
            else if readdata[1] = 1 then
              show_str := show_str + 'MODE=RX'
            else if readdata[1] = 2 then
              show_str := show_str + 'MODE=F-TX'
            else if readdata[1] = 3 then
              show_str := show_str + 'MODE=F-RX'
            else if readdata[1] = 4 then
              show_str := show_str + 'MODE=SERVICE'
            else if readdata[1] = 5 then
              show_str := show_str + 'MODE=BOOT';

            show_str := show_str + '; ';
            show_str := show_str + 'ANSVER=' + inttostr(readdata[2]) + '; ';
            show_str := show_str + 'TOGL=' + inttostr(readdata[3]) + '; ';
            show_str := show_str + 'CH=' + inttostr(readdata[4]) + '; ';
            show_str := show_str + 'CMD=' + inttostr(readdata[5]) + '; ';
            show_str := show_str + 'FMT=' + inttostr(readdata[6]) + '; ';
            show_str := show_str + 'D0=' + inttostr(readdata[7]) + '; ';
            show_str := show_str + 'D1=' + inttostr(readdata[8]) + '; ';
            show_str := show_str + 'D2=' + inttostr(readdata[9]) + '; ';
            show_str := show_str + 'D3=' + inttostr(readdata[10]) + '; ';
            show_str := show_str + 'ID=0x' + inttohex(readdata[11], 2) +
              inttohex(readdata[12], 2) + inttohex(readdata[13], 2) +
              inttohex(readdata[14], 2) + '; ';

            // if boot_loop <> 1 then
            // begin
            Form1.memo1.SelAttributes.Color := clgreen;
            memo1.Lines.Add(show_str);
            memo1.SelStart := Length(memo1.Lines.Text);
            memo1.SelLength := 0;
            // end;

            if ((send_http_enable)and (readdata[1]<4)) then  //убрать из передачи сервисный и режим бутлоадера
            begin // отправка http запроса
              Form1.IdHTTP1.ConnectTimeout := 50;
              Form1.IdHTTP1.ReadTimeout := 50;
              if send_http_address <> '' then
              // проверка корректности адреса в настройках
              begin

                {
                  if ((buffer[2] and 63) > 8) then
                  st_send :=
                  copy(Form1.ListBox1.Items.Strings[(buffer[2] and 63)], 4,
                  Length(Form1.ListBox1.Items.Strings[(buffer[2] and
                  63)]) - 3)
                  else
                  st_send :=
                  copy(Form1.ListBox1.Items.Strings[(buffer[2] and 63)], 3,
                  Length(Form1.ListBox1.Items.Strings[(buffer[2] and
                  63)]) - 2);
                }

                send_http_full_address := 'http://' + send_http_address +
                  'mode=' + inttostr(readdata[1]) + '&ansv=' +inttostr(readdata[2])
                  + '&togl=' +inttostr(readdata[3])
                  + '&cell=' + inttostr(readdata[4]) +
                  '&cmd=' + inttostr(readdata[5]) + '&fmt=' +
                  inttostr(readdata[6]) + '&d0=' + inttostr(readdata[7]) +
                  '&d1=' + inttostr(readdata[8]) + '&d2=' + inttostr(readdata[9]
                  ) + '&d3=' + inttostr(readdata[10]) + '&id=0x' +
                  inttohex(readdata[11], 2) + inttohex(readdata[12], 2) +
                  inttohex(readdata[13], 2) + inttohex(readdata[14], 2);
                try
                  Form1.IdHTTP1.Get(send_http_full_address);
                except
                  Form1.IdHTTP1.Disconnect;
                end;
              end;
            end;

          end;

        end;
        poswrite := 0; // сброс счётчика приёма
        crc := 0;
      end;
    end
    else
    begin // несовпадение стартового байта
      poswrite := 0; // сброс счётчика приёма
      crc := 0;
    end;
  end;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if send_ok = 1 then
    CloseFile(myFile);

  com_name.free;
  adapter_name.free;
  boot_name.free;
  main_ver.free;
  ts.free;
  ComPort1.Close;
  Application.Terminate;
end;

function AltDown: boolean;
var
  State: TKeyboardState;
begin
  GetKeyboardState(State);
  result := ((State[vk_Menu] and 128) <> 0);
end;

procedure send_api_command(cell_api:integer;command:string);
var
  CDS: TCopyDataStruct;
begin
  //Устанавливаем тип команды
  CDS.dwData := cell_api;
  //Устанавливаем длину передаваемых данных
  CDS.cbData := Length(command) + 1;
  //Выделяем память буфера для передачи данных
  GetMem(CDS.lpData, CDS.cbData);
  try
    //Копируем данные в буфер
    StrPCopy(CDS.lpData, AnsiString(command));
    //Отсылаем сообщение в окно с заголовком StringReceiver
    SendMessage(FindWindow(nil, 'nooLite ONE'), WM_COPYDATA, Form1.Handle, Integer(@CDS));
  finally
    //Высвобождаем буфер
    FreeMem(CDS.lpData, CDS.cbData);
  end;


end;





procedure TForm1.FormCreate(Sender: TObject);
var
  HM: THandle;
begin

  HM := OpenMutex(MUTEX_ALL_ACCESS, false, 'nooLite_F_one');  //запуск копии приложения
  if (HM <> 0) then
  begin   //пепедача параметров в другое приложение через API и выход
  Form1.Caption:='SEND API';
  Application.ShowMainForm:=False;
  if ((ParamStr(1)='api') and (ParamCount=13)) then begin  //отправка API запроса на уже работающую программу
  send_api_command(0,ParamStr(2));
  send_api_command(1,ParamStr(3));
  send_api_command(2,ParamStr(4));
  send_api_command(3,ParamStr(5));
  send_api_command(4,ParamStr(6));
  send_api_command(5,ParamStr(7));
  send_api_command(6,ParamStr(8));
  send_api_command(7,ParamStr(9));
  send_api_command(8,ParamStr(10));
  send_api_command(9,ParamStr(11));
  send_api_command(10,ParamStr(12));
  send_api_command(11,ParamStr(13));
  end;
  application.Terminate;
  end;

  if HM = 0 then  //создание флага
  HM:=CreateMutex(nil, false, 'nooLite_F_one');

  //обработка ini файла
  prdata := GetEnvironmentVariable('ALLUSERSPROFILE');
  if DirectoryExists(prdata + '\nooLite') then
  begin // проверка наличия директории программы
    if FileExists(prdata + '\nooLite\nooLiteONE.ini') then
    begin // проверка наличия файла
      savedir := prdata + '\nooLite\nooLiteONE.ini';
    end
    else
    begin // создание файла параметров
      savedir := prdata + '\nooLite\nooLiteONE.ini';
      ini := TIniFile.Create(savedir);
      ini.WriteBool('RX_SETTINGS', 'LOG_EN', false);
      ini.WriteBool('RX_SETTINGS', 'HTTP_EN', false);
      ini.Writestring('RX_SETTINGS', 'LOG_FILE', '');
      ini.Writestring('RX_SETTINGS', 'HTTP_ADDR', '');
      ini.free;
    end;
  end
  else
  begin // папки нет, создаем
    createdirectory(PChar(prdata + '\nooLite'), nil);
    savedir := prdata + '\nooLite\nooLiteONE.ini';
    ini := TIniFile.Create(savedir);
    ini.WriteBool('RX_SETTINGS', 'LOG_EN', false);
    ini.WriteBool('RX_SETTINGS', 'HTTP_EN', false);
    ini.Writestring('RX_SETTINGS', 'LOG_FILE', '');
    ini.Writestring('RX_SETTINGS', 'HTTP_ADDR', '');
  end;

  ini := TIniFile.Create(savedir);

  log_en := ini.readBool('RX_SETTINGS', 'LOG_EN', false);
  log_patch := ini.readstring('RX_SETTINGS', 'LOG_FILE', '');

  send_http_address := ini.readstring('RX_SETTINGS', 'HTTP_ADDR', '');
  send_http_enable := ini.readBool('RX_SETTINGS', 'HTTP_EN', false);
  ini.free;

  error_rx_flag := false;
  stat_send_count := 0;
  stat_send_err := 0;

  auto_reset := false;
  step_service_boot := 0;
  time_out := 0;
  err_read := 0;
  bind_mode := 0;
  boot_mode := 0;
  boot_loop := 0;
  no_ch := 0;
  com_err := false;
  service_find := 1; // поиск адаптеров при старте программы
  send_enable := true;
  Form1.Label6.Caption := ''; // спрятать статусную строку
  ListBox1.ItemIndex := 0;
  clear_result(0);
  crc := 0;
  poswrite := 0;
  disable_show := false;
  settings_set := 0;
  boot_mode_set := 0;
  filename_bin := '';
  if send_ok = 1 then
  begin
    CloseFile(myFile);
    send_ok := 0;
  end;
  send_ok := 0;
  write_step := 0;
  Form1.AdvCircularProgress1.Position := 0;
  Form1.AdvCircularProgress1.Enabled := true;
  Form1.AdvCircularProgress1.Visible := true;
  Label6.Caption := 'Поиск адаптера...';
  boot_found := 0;
  ComPort1.Close;
  boot_mode := 0;

  ts := TStringList.Create;
  com_name := TStringList.Create;
  adapter_name := TStringList.Create;
  boot_name := TStringList.Create;
  main_ver := TStringList.Create;
  ts.Clear;
  if selectcom then
  begin // обнаружены COM порты - поиск адаптера
    i_count := 0;
    com_name.Clear;
    adapter_name.Clear;
    boot_name.Clear;
    main_ver.Clear;
    Timer5.Enabled := false;
    Timer5.Interval := timer_scan;
    Timer5.Enabled := true;
    // ComPort1.Open;
    // AdvSmoothStatusIndicator1.Appearance.Fill.Color:= color_good;
  end
  else
  begin
    showmessage
      ('Адаптер не обнаружен! Подключите адаптер и перезапустите программу!');

    // Application.Terminate;
  end;

end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  AdvGlassButton12.Click;
  SpinEdit1.Value:=ListBox1.ItemIndex;
end;


procedure send_new_settings(write_pos_settings:integer);
var
  id_f: Integer;
begin

  if (send_enable) then
  begin
    Form1.RadioButton1.Checked := true;
    senddata[1] := 2; // nooLiteF_TX

    senddata[2] := 8; // send_to_address
    senddata[3] := 0; // reserved
    senddata[5] := 129; // запись в память
    id_f := settings_address;
    senddata[11] := LO(id_f shr 24);
    senddata[12] := LO(id_f shr 16);
    senddata[13] := LO(id_f shr 8);
    senddata[14] := LO(id_f);

    senddata[7] := (settings_data and 255); // data0
    senddata[8] := ((settings_data shr 8) and 255); // data1
    senddata[9] := (settings_mask and 255); // data0
    senddata[10] := ((settings_mask shr 8) and 255); // data1

    senddata[6] := write_pos_settings; // формат=16, чтение настройки

    clear_result(senddata[6]); // подготовить верхнюю строчку страницы
    senddata[4] := settings_channel; // номер канала
    crc := 0;
    poswrite := 0;
    Form1.memo1.Clear;
    settings_set := 2;
    hide_update;
    send_command;
  end;

end;


procedure send_new_settings_ext(write_pos_settings:integer);
var
  id_f: Integer;
begin

  if (send_enable) then
  begin
    Form1.RadioButton1.Checked := true;
    senddata[1] := 2; // nooLiteF_TX

    senddata[2] := 8; // send_to_address
    senddata[3] := 0; // reserved
    senddata[5] := 129; // запись в память
    id_f := settings_address;
    senddata[11] := LO(id_f shr 24);
    senddata[12] := LO(id_f shr 16);
    senddata[13] := LO(id_f shr 8);
    senddata[14] := LO(id_f);

    senddata[7] := (settings_data_ext and 255); // data0
    senddata[8] := ((settings_data_ext shr 8) and 255); // data1
    senddata[9] := ((settings_data_ext shr 16) and 255); // data2
    senddata[10] := 0; // data3

    senddata[6] := write_pos_settings; // формат=16, чтение настройки

    clear_result(senddata[6]); // подготовить верхнюю строчку страницы
    senddata[4] := settings_channel; // номер канала
    crc := 0;
    poswrite := 0;
    Form1.memo1.Clear;
    settings_set := 2;
    hide_update;
    send_command;
  end;

end;

procedure send_termo_data(cmd,pos,dt0,dt1,dt2,dt3:integer);
var
  id_f: Integer;
begin

    termo_rx_cmd:=0;
    senddata[1] := 2; // nooLiteF_TX
    senddata[2] := 8; // send_to_address
    senddata[3] := 0; // reserved
    senddata[5] := cmd; // запись в память
    id_f := settings_address;
    senddata[11] := LO(id_f shr 24);
    senddata[12] := LO(id_f shr 16);
    senddata[13] := LO(id_f shr 8);
    senddata[14] := LO(id_f);

    senddata[7] := dt0; // data0
    senddata[8] := dt1; // data1
    senddata[9] := dt2; // data2
    senddata[10]:= dt3; // data3

    senddata[6] := pos; // формат=16, чтение настройки
    senddata[4] := settings_channel; // номер канала
    crc := 0;
    poswrite := 0;
    Form1.memo1.Clear;
    settings_set := 3;
    hide_update;
    send_command;

end;

procedure TForm1.N10Click(Sender: TObject);
var
  id_f: Integer;
begin

  if AdvStringGrid1.SelectedRow[0] > 0 then
  begin
    if (ListBox1.ItemIndex > -1) then
    begin

      if (send_enable) then
      begin
        RadioButton1.Checked := true;
        senddata[1] := 2; // nooLiteF_TX

        senddata[2] := 8; // send_to_address

        senddata[3] := 0; // reserved
        senddata[5] := 131; // включение сервисного режима

        id_f := HexToInt(Form1.AdvStringGrid1.Cells[4,
          AdvStringGrid1.SelectedRow[0]]);
        senddata[11] := LO(id_f shr 24);
        senddata[12] := LO(id_f shr 16);
        senddata[13] := LO(id_f shr 8);
        senddata[14] := LO(id_f);

        senddata[7] := 1; // data0

        if (RadioButton1.Checked) then
          senddata[6] := 0 // формат=0, чтение общего состояния
        else
          senddata[6] := 1;
        clear_result(senddata[6]); // подготовить верхнюю строчку страницы
        senddata[4] := ListBox1.ItemIndex; // номер канала
        crc := 0;
        poswrite := 0;
        memo1.Clear;
        wait_update;
        send_command;
      end;

    end
    else
    begin
      showmessage('Для данного действия нужно выбрать канал из списка!');
    end;

  end;

end;

procedure TForm1.N12Click(Sender: TObject);
var
  id_f: Integer;
begin
  if AdvStringGrid1.SelectedRow[0] > 0 then
  begin
    if (ListBox1.ItemIndex > -1) then
    begin

      if (send_enable) then
      begin
        RadioButton1.Checked := true;
        senddata[1] := 2; // nooLiteF_TX

        senddata[2] := 8; // send_to_address
        senddata[3] := 0; // reserved
        senddata[5] := 9; // отвязка

        id_f := HexToInt(Form1.AdvStringGrid1.Cells[4,
          AdvStringGrid1.SelectedRow[0]]);
        senddata[11] := LO(id_f shr 24);
        senddata[12] := LO(id_f shr 16);
        senddata[13] := LO(id_f shr 8);
        senddata[14] := LO(id_f);

        if (RadioButton1.Checked) then
          senddata[6] := 0 // формат=0, чтение общего состояния
        else
          senddata[6] := 1;

        clear_result(senddata[6]); // подготовить верхнюю строчку страницы
        senddata[4] := ListBox1.ItemIndex; // номер канала
        crc := 0;
        poswrite := 0;
        memo1.Clear;
        disable_show := true;
        wait_update;
        Form1.Timer3.Enabled := true;

        send_command;
      end;

    end
    else
    begin
      showmessage('Для данного действия нужно выбрать канал из списка!');
    end;
  end;

end;

procedure TForm1.N13Click(Sender: TObject);
var
  id_f: Integer;
begin

  if AdvStringGrid1.SelectedRow[0] > 0 then
  begin
    if (ListBox1.ItemIndex > -1) then
    begin

      if MessageDlg
        ('Вы действительно хотите очистить память привязки nooLite в этом блоке?',
        mtCustom, [mbYes, mbNo], 0) = mrYes then
      begin

        if (send_enable) then
        begin
          RadioButton1.Checked := true;
          senddata[1] := 2; // nooLiteF_TX

          senddata[2] := 8; // send_to_address

          senddata[3] := 0; // reserved
          senddata[5] := 132; // очистка памяти

          id_f := HexToInt(Form1.AdvStringGrid1.Cells[4,
            AdvStringGrid1.SelectedRow[0]]);
          senddata[11] := LO(id_f shr 24);
          senddata[12] := LO(id_f shr 16);
          senddata[13] := LO(id_f shr 8);
          senddata[14] := LO(id_f);

          senddata[7] := 170; // d0
          senddata[8] := 85; // d1
          senddata[9] := 170; // d2
          senddata[10] := 85; // d3
          if (RadioButton1.Checked) then
            senddata[6] := 0 // формат=0, чтение общего состояния
          else
            senddata[6] := 1;
          clear_result(senddata[6]); // подготовить верхнюю строчку страницы
          senddata[4] := ListBox1.ItemIndex; // номер канала
          crc := 0;
          poswrite := 0;
          memo1.Clear;
          wait_update;
          send_command;
        end;

      end
      else
      begin
        showmessage('Для данного действия нужно выбрать канал из списка!');
      end;

    end;

  end;
end;

procedure TForm1.N15Click(Sender: TObject);
var
  id_f: Integer;
begin
  if AdvStringGrid1.SelectedRow[0] > 0 then
  begin
    if (ListBox1.ItemIndex > -1) then
    begin

      if (send_enable) then
      begin
        RadioButton1.Checked := true;
        senddata[1] := 2; // nooLiteF_TX

        senddata[2] := 8; // send_to_address
        senddata[3] := 0; // reserved
        senddata[5] := 133; // войти в режим обноления ПО
        settings_name := Form1.AdvStringGrid1.Cells
          [0, AdvStringGrid1.SelectedRow[0]];
        id_f := HexToInt(Form1.AdvStringGrid1.Cells[4,
          AdvStringGrid1.SelectedRow[0]]);
        senddata[11] := LO(id_f shr 24);
        senddata[12] := LO(id_f shr 16);
        senddata[13] := LO(id_f shr 8);
        senddata[14] := LO(id_f);
        senddata[0] := 0; // fmt
        senddata[7] := 170; // d0
        senddata[8] := 85; // d1
        senddata[9] := 170; // d2
        senddata[10] := 85; // d3
        clear_result(senddata[6]); // подготовить верхнюю строчку страницы
        senddata[4] := ListBox1.ItemIndex; // номер канала
        crc := 0;
        poswrite := 0;
        memo1.Clear;
        boot_mode_set := 1;
        hide_update;
        settings_address := id_f;
        settings_channel := senddata[4];
        send_command;
      end;
    end
    else
    begin
      showmessage('Для данного действия нужно выбрать канал из списка!');
    end;
  end;

end;

procedure TForm1.N16Click(Sender: TObject);
var
  id_f: Integer;
  dev_type_temp:integer;
begin
  if AdvStringGrid1.SelectedRow[0] > 0 then
  begin
    if (ListBox1.ItemIndex > -1) then
    begin
     dev_type_temp:=dev_type[AdvStringGrid1.SelectedRow[0]];
    if ((dev_type_temp=1)or (dev_type_temp=2)or (dev_type_temp=3)or (dev_type_temp=4)or (dev_type_temp=5)or (dev_type_temp=6)or (dev_type_temp=7)or (dev_type_temp=9)) then begin

        settings_type:=dev_type_temp;

        Form2.RadioGroup1.Visible:=true;
        Form2.RadioGroup2.Visible:=true;
        Form2.RadioGroup4.Visible:=true;
        Form2.RadioGroup5.Visible:=true;
        Form2.RadioGroup10.Visible:=false;

        if (dev_type_temp=2) then begin
        Form2.RadioGroup4.Visible:=false;
        Form2.RadioGroup5.Visible:=false;
        Form2.RadioGroup6.Visible:=false;
        end
        else begin
        Form2.RadioGroup4.Visible:=true;
        Form2.RadioGroup5.Visible:=true;
        Form2.RadioGroup6.Visible:=true;
        end;

        if ((dev_type_temp=5)or(dev_type_temp=9))  then begin   //SUF-1-300   or SUF-1-300-A
        Form2.RadioGroup2.Enabled:=true;
        end
        else begin
        Form2.RadioGroup2.Enabled:=false;
        Form2.RadioGroup2.ItemIndex:=0;
        end;

        if (dev_type_temp=4) then begin
        Form2.RadioGroup4.Visible:=false;
        Form2.RadioGroup6.Visible:=false;
        end
        else begin
        Form2.RadioGroup4.Visible:=true;
        Form2.RadioGroup6.Visible:=true;
        end;

        if (dev_type_temp=6) then begin
        Form2.RadioGroup4.Visible:=false;
        Form2.RadioGroup6.Visible:=false;
        Form2.RadioGroup2.ItemIndex:=1;
        Form2.RadioGroup7.Visible:=true;
        end
        else begin
        Form2.RadioGroup4.Visible:=true;
        Form2.RadioGroup6.Visible:=true;
        Form2.RadioGroup7.Visible:=false;
        end;

        if (dev_type_temp=7) then
          begin
          Form2.RadioGroup4.Visible:=false;
          Form2.RadioGroup6.Visible:=false;
          Form2.RadioGroup2.ItemIndex:=1;
          end
        else
          begin
          Form2.RadioGroup4.Visible:=true;
          Form2.RadioGroup6.Visible:=false;
          end;

       if (dev_type_temp=9) then
          begin
          Form2.RadioGroup8.Visible:=true;
          Form2.RadioGroup9.Visible:=true;
          Form2.RadioGroup6.Visible:=true;
          end
        else if (dev_type_temp=5) then begin
          Form2.RadioGroup8.Visible:=true;
          Form2.RadioGroup9.Visible:=false;
          Form2.RadioGroup6.Visible:=true;
        end
        else begin
          Form2.RadioGroup8.Visible:=false;
          Form2.RadioGroup9.Visible:=false;
          end;

        if (dev_type_temp=3)or (dev_type_temp=4) then  begin
        Form2.RadioGroup2.Visible:=false;
        Form2.RadioGroup4.Visible:=false;
        end;

        if (dev_type_temp=7) then  begin
        Form2.RadioGroup1.Visible:=false;
        Form2.RadioGroup2.Visible:=false;
        Form2.RadioGroup5.Visible:=false;
        end;

        if (dev_type_temp=6) then begin
        Form2.RadioGroup2.Visible:=false;
        Form2.RadioGroup4.Visible:=false;
        Form2.RadioGroup10.Visible:=true;
        Form2.RadioGroup1.Visible:=false;
        end;

      if (send_enable) then
      begin
        RadioButton1.Checked := true;
        senddata[1] := 2; // nooLiteF_TX
        senddata[2] := 8; // send_to_address
        senddata[3] := 0; // reserved
        senddata[5] := 128; // считать состояние
        settings_name := Form1.AdvStringGrid1.Cells
          [0, AdvStringGrid1.SelectedRow[0]];
        id_f := HexToInt(Form1.AdvStringGrid1.Cells[4,
          AdvStringGrid1.SelectedRow[0]]);
        senddata[11] := LO(id_f shr 24);
        senddata[12] := LO(id_f shr 16);
        senddata[13] := LO(id_f shr 8);
        senddata[14] := LO(id_f);

        senddata[7] := 0; // data0

        senddata[6] := 16; // формат=16, чтение настройки

        clear_result(senddata[6]); // подготовить верхнюю строчку страницы
        senddata[4] := ListBox1.ItemIndex; // номер канала
        crc := 0;
        poswrite := 0;
        memo1.Clear;
        settings_set := 1;
        hide_update;
        settings_address := id_f;
        settings_channel := senddata[4];
        send_command;
      end;

    end
    else begin
    ShowMessage('Выбранное устройство не имеет функции удалённой настройки!');
    end;
    end
    else
    begin
      showmessage('Для данного действия нужно выбрать канал из списка!');
    end;
  end;

end;

procedure TForm1.N17Click(Sender: TObject);
var
  id_f: Integer;
  dev_type_temp:integer;
begin
  if AdvStringGrid1.SelectedRow[0] > 0 then
  begin
    if (ListBox1.ItemIndex > -1) then
    begin
     dev_type_temp:=dev_type[AdvStringGrid1.SelectedRow[0]];
     settings_type:=dev_type_temp;
    if ((dev_type_temp=1)or (dev_type_temp=2)or (dev_type_temp=3)or (dev_type_temp=5)or (dev_type_temp=9)) then begin

      if (send_enable) then
      begin
        RadioButton1.Checked := true;
        senddata[1] := 2; // nooLiteF_TX
        senddata[2] := 8; // send_to_address
        senddata[3] := 0; // reserved
        senddata[5] := 128; // считать состояние
        settings_name := Form1.AdvStringGrid1.Cells
          [0, AdvStringGrid1.SelectedRow[0]];
        id_f := HexToInt(Form1.AdvStringGrid1.Cells[4,
          AdvStringGrid1.SelectedRow[0]]);
        senddata[11] := LO(id_f shr 24);
        senddata[12] := LO(id_f shr 16);
        senddata[13] := LO(id_f shr 8);
        senddata[14] := LO(id_f);

        senddata[7] := 0; // data0

        senddata[6] := 17; // формат=16, чтение настройки

        clear_result(senddata[6]); // подготовить верхнюю строчку страницы
        senddata[4] := ListBox1.ItemIndex; // номер канала
        crc := 0;
        poswrite := 0;
        memo1.Clear;
        settings_set := 1;
        hide_update;
        settings_address := id_f;
        settings_channel := senddata[4];
        send_command;
      end;

    end
    else begin
    ShowMessage('Выбранное устройство не имеет функции удалённой настройки!');
    end;
    end
    else
    begin
      showmessage('Для данного действия нужно выбрать канал из списка!');
    end;
  end;

end;

procedure TForm1.N18Click(Sender: TObject);
var
  id_f: Integer;
  dev_type_temp:integer;
begin
  if AdvStringGrid1.SelectedRow[0] > 0 then
  begin
    if (ListBox1.ItemIndex > -1) then
    begin
     dev_type_temp:=dev_type[AdvStringGrid1.SelectedRow[0]];
     settings_type:=dev_type_temp;
    if ((dev_type_temp=1)or (dev_type_temp=2)or (dev_type_temp=3)or (dev_type_temp=5)) then begin

      if (send_enable) then
      begin
        RadioButton1.Checked := true;
        senddata[1] := 2; // nooLiteF_TX
        senddata[2] := 8; // send_to_address
        senddata[3] := 0; // reserved
        senddata[5] := 128; // считать состояние
        settings_name := Form1.AdvStringGrid1.Cells
          [0, AdvStringGrid1.SelectedRow[0]];
        id_f := HexToInt(Form1.AdvStringGrid1.Cells[4,
          AdvStringGrid1.SelectedRow[0]]);
        senddata[11] := LO(id_f shr 24);
        senddata[12] := LO(id_f shr 16);
        senddata[13] := LO(id_f shr 8);
        senddata[14] := LO(id_f);

        senddata[7] := 0; // data0

        senddata[6] := 18; // формат=16, чтение настройки

        clear_result(senddata[6]); // подготовить верхнюю строчку страницы
        senddata[4] := ListBox1.ItemIndex; // номер канала
        crc := 0;
        poswrite := 0;
        memo1.Clear;
        settings_set := 1;
        hide_update;
        settings_address := id_f;
        settings_channel := senddata[4];
        send_command;
      end;

    end
    else begin
    ShowMessage('Выбранное устройство не имеет функции удалённой настройки!');
    end;
    end
    else
    begin
      showmessage('Для данного действия нужно выбрать канал из списка!');
    end;
  end;

end;

procedure TForm1.N19Click(Sender: TObject);
var
  id_f: Integer;
  dev_type_temp:integer;
begin
        settings_name := Form1.AdvStringGrid1.Cells
          [0, AdvStringGrid1.SelectedRow[0]];
        settings_address := HexToInt(Form1.AdvStringGrid1.Cells[4,
          AdvStringGrid1.SelectedRow[0]]);
        settings_set := 3;
        //hide_update;
        senddata[4] := ListBox1.ItemIndex; // номер канала
        settings_channel := senddata[4];
        form9.Show;
end;


procedure TForm1.N1Click(Sender: TObject);
var
  id_f: Integer;
begin

  if AdvStringGrid1.SelectedRow[0] > 0 then
  begin
    if (ListBox1.ItemIndex > -1) then
    begin

      if (send_enable) then
      begin
        RadioButton1.Checked := true;
        senddata[1] := 2; // nooLiteF_TX

        senddata[2] := 8; // send_to_address

        senddata[3] := 0; // reserved
        senddata[5] := 131; // включение сервисного режима

        id_f := HexToInt(Form1.AdvStringGrid1.Cells[4,
          AdvStringGrid1.SelectedRow[0]]);
        senddata[11] := LO(id_f shr 24);
        senddata[12] := LO(id_f shr 16);
        senddata[13] := LO(id_f shr 8);
        senddata[14] := LO(id_f);

        senddata[7] := 1; // data0

        if (RadioButton1.Checked) then
          senddata[6] := 0 // формат=0, чтение общего состояния
        else
          senddata[6] := 1;
        clear_result(senddata[6]); // подготовить верхнюю строчку страницы
        senddata[4] := ListBox1.ItemIndex; // номер канала
        crc := 0;
        poswrite := 0;
        memo1.Clear;
        wait_update;
        send_command;
      end;

    end
    else
    begin
      showmessage('Для данного действия нужно выбрать канал из списка!');
    end;

  end;

end;

procedure TForm1.N2Click(Sender: TObject);
var
  id_f: Integer;
begin

  if AdvStringGrid1.SelectedRow[0] > 0 then
  begin
    if (ListBox1.ItemIndex > -1) then
    begin

      if (send_enable) then
      begin
        RadioButton1.Checked := true;
        senddata[1] := 2; // nooLiteF_TX

        senddata[2] := 8; // send_to_address

        senddata[3] := 0; // reserved
        senddata[5] := 131; // включение сервисного режима

        id_f := HexToInt(Form1.AdvStringGrid1.Cells[4,
          AdvStringGrid1.SelectedRow[0]]);
        senddata[11] := LO(id_f shr 24);
        senddata[12] := LO(id_f shr 16);
        senddata[13] := LO(id_f shr 8);
        senddata[14] := LO(id_f);

        senddata[7] := 0; // data0

        if (RadioButton1.Checked) then
          senddata[6] := 0 // формат=0, чтение общего состояния
        else
          senddata[6] := 1;
        clear_result(senddata[6]); // подготовить верхнюю строчку страницы
        senddata[4] := ListBox1.ItemIndex; // номер канала
        crc := 0;
        poswrite := 0;
        memo1.Clear;
        wait_update;
        send_command;
      end;

    end
    else
    begin
      showmessage('Для данного действия нужно выбрать канал из списка!');
    end;

  end;

end;

procedure TForm1.N3Click(Sender: TObject);
var
  id_f: Integer;
begin
  if MessageDlg('Вы действительно хотите отвязать данный блок от канала?',
    mtCustom, [mbYes, mbNo], 0) = mrYes then
  begin
    if AdvStringGrid1.SelectedRow[0] > 0 then
    begin
      if (ListBox1.ItemIndex > -1) then
      begin

        if (send_enable) then
        begin
          RadioButton1.Checked := true;
          senddata[1] := 2; // nooLiteF_TX

          senddata[2] := 7; // clear address

          senddata[3] := 0; // reserved
          senddata[5] := 0; // включение сервисного режима

          id_f := HexToInt(Form1.AdvStringGrid1.Cells[4,
            AdvStringGrid1.SelectedRow[0]]);
          senddata[11] := LO(id_f shr 24);
          senddata[12] := LO(id_f shr 16);
          senddata[13] := LO(id_f shr 8);
          senddata[14] := LO(id_f);

          senddata[7] := 0; // data0

          if (RadioButton1.Checked) then
            senddata[6] := 0 // формат=0, чтение общего состояния
          else
            senddata[6] := 1;
          clear_result(senddata[6]); // подготовить верхнюю строчку страницы
          senddata[4] := ListBox1.ItemIndex; // номер канала
          crc := 0;
          poswrite := 0;
          memo1.Clear;
          wait_update;
          send_command;
        end;

      end
      else
      begin
        showmessage('Для данного действия нужно выбрать канал из списка!');
      end;
    end;
  end;

end;

procedure TForm1.N6Click(Sender: TObject);
var
  id_f: Integer;
begin
  if AdvStringGrid1.SelectedRow[0] > 0 then
  begin
    if (ListBox1.ItemIndex > -1) then
    begin

      if (send_enable) then
      begin
        RadioButton1.Checked := true;
        senddata[1] := 2; // nooLiteF_TX

        senddata[2] := 8; // send_to_address
        senddata[3] := 0; // reserved
        senddata[5] := 2; // включение

        id_f := HexToInt(Form1.AdvStringGrid1.Cells[4,
          AdvStringGrid1.SelectedRow[0]]);
        senddata[11] := LO(id_f shr 24);
        senddata[12] := LO(id_f shr 16);
        senddata[13] := LO(id_f shr 8);
        senddata[14] := LO(id_f);

        senddata[7] := 0; // data0

        if (RadioButton1.Checked) then
          senddata[6] := 0 // формат=0, чтение общего состояния
        else
          senddata[6] := 1;
        clear_result(senddata[6]); // подготовить верхнюю строчку страницы
        senddata[4] := ListBox1.ItemIndex; // номер канала
        crc := 0;
        poswrite := 0;
        memo1.Clear;
        disable_show := true;
        wait_update;
        Form1.Timer3.Enabled := true;

        send_command;
      end;

    end
    else
    begin
      showmessage('Для данного действия нужно выбрать канал из списка!');
    end;
  end;

end;

procedure TForm1.N7Click(Sender: TObject);
var
  id_f: Integer;
begin
  if AdvStringGrid1.SelectedRow[0] > 0 then
  begin
    if (ListBox1.ItemIndex > -1) then
    begin

      if (send_enable) then
      begin
        RadioButton1.Checked := true;
        senddata[1] := 2; // nooLiteF_TX

        senddata[2] := 8; // send_to_address
        senddata[3] := 0; // reserved
        senddata[5] := 0; // выключение

        id_f := HexToInt(Form1.AdvStringGrid1.Cells[4,
          AdvStringGrid1.SelectedRow[0]]);
        senddata[11] := LO(id_f shr 24);
        senddata[12] := LO(id_f shr 16);
        senddata[13] := LO(id_f shr 8);
        senddata[14] := LO(id_f);

        senddata[7] := 0; // data0

        if (RadioButton1.Checked) then
          senddata[6] := 0 // формат=0, чтение общего состояния
        else
          senddata[6] := 1;
        clear_result(senddata[6]); // подготовить верхнюю строчку страницы
        senddata[4] := ListBox1.ItemIndex; // номер канала
        crc := 0;
        poswrite := 0;
        memo1.Clear;
        disable_show := true;
        wait_update;
        Form1.Timer3.Enabled := true;
        send_command;
      end;

    end
    else
    begin
      showmessage('Для данного действия нужно выбрать канал из списка!');
    end;
  end;

end;

procedure TForm1.N9Click(Sender: TObject);
var
  id_f: Integer;
begin
  if AdvStringGrid1.SelectedRow[0] > 0 then
  begin
    if (ListBox1.ItemIndex > -1) then
    begin

      if (send_enable) then
      begin
        RadioButton1.Checked := true;
        senddata[1] := 2; // nooLiteF_TX

        senddata[2] := 8; // send_to_address
        senddata[3] := 0; // reserved
        senddata[5] := 4; // переключение

        id_f := HexToInt(Form1.AdvStringGrid1.Cells[4,
          AdvStringGrid1.SelectedRow[0]]);
        senddata[11] := LO(id_f shr 24);
        senddata[12] := LO(id_f shr 16);
        senddata[13] := LO(id_f shr 8);
        senddata[14] := LO(id_f);

        senddata[7] := 0; // data0

        if (RadioButton1.Checked) then
          senddata[6] := 0 // формат=0, чтение общего состояния
        else
          senddata[6] := 1;
        clear_result(senddata[6]); // подготовить верхнюю строчку страницы
        senddata[4] := ListBox1.ItemIndex; // номер канала
        crc := 0;
        poswrite := 0;
        memo1.Clear;
        disable_show := true;
        wait_update;
        Form1.Timer3.Enabled := true;

        send_command;
      end;

    end
    else
    begin
      showmessage('Для данного действия нужно выбрать канал из списка!');
    end;
  end;

end;

procedure TForm1.nooLite1Click(Sender: TObject);
var
  id_f: Integer;
begin

  if AdvStringGrid1.SelectedRow[0] > 0 then
  begin
    if (ListBox1.ItemIndex > -1) then
    begin

      if (send_enable) then
      begin
        RadioButton1.Checked := true;
        senddata[1] := 2; // nooLiteF_TX

        senddata[2] := 8; // send_to_address

        senddata[3] := 0; // reserved
        senddata[5] := 132; // очистка памяти

        id_f := HexToInt(Form1.AdvStringGrid1.Cells[4,
          AdvStringGrid1.SelectedRow[0]]);
        senddata[11] := LO(id_f shr 24);
        senddata[12] := LO(id_f shr 16);
        senddata[13] := LO(id_f shr 8);
        senddata[14] := LO(id_f);

        senddata[7] := 170; // d0
        senddata[8] := 85; // d1
        senddata[9] := 170; // d2
        senddata[10] := 85; // d3
        if (RadioButton1.Checked) then
          senddata[6] := 0 // формат=0, чтение общего состояния
        else
          senddata[6] := 1;
        clear_result(senddata[6]); // подготовить верхнюю строчку страницы
        senddata[4] := ListBox1.ItemIndex; // номер канала
        crc := 0;
        poswrite := 0;
        memo1.Clear;
        wait_update;
        send_command;
      end;

    end
    else
    begin
      showmessage('Для данного действия нужно выбрать канал из списка!');
    end;

  end;
end;

procedure TForm1.nooLite2Click(Sender: TObject);
var
  id_f: Integer;
  dev_type_temp:integer;
begin
  if AdvStringGrid1.SelectedRow[0] > 0 then
  begin
    if (ListBox1.ItemIndex > -1) then
    begin
     dev_type_temp:=dev_type[AdvStringGrid1.SelectedRow[0]];
     settings_type:=dev_type_temp;
    if (dev_type_temp=9) or (dev_type_temp=5) then begin   //только 300/300-A блок

      if (send_enable) then
      begin
        RadioButton1.Checked := true;
        senddata[1] := 2; // nooLiteF_TX
        senddata[2] := 8; // send_to_address
        senddata[3] := 0; // reserved
        senddata[5] := 128; // считать состояние
        settings_name := Form1.AdvStringGrid1.Cells
          [0, AdvStringGrid1.SelectedRow[0]];
        id_f := HexToInt(Form1.AdvStringGrid1.Cells[4,
          AdvStringGrid1.SelectedRow[0]]);
        senddata[11] := LO(id_f shr 24);
        senddata[12] := LO(id_f shr 16);
        senddata[13] := LO(id_f shr 8);
        senddata[14] := LO(id_f);

        senddata[7] := 0; // data0
        if (dev_type_temp=5)  then
        senddata[6] := 19 // формат=19 для SUF-1-300, чтение настройки
        else
        senddata[6] := 18; // формат=18, SUF-1-300-A, чтение настройки

        clear_result(senddata[6]); // подготовить верхнюю строчку страницы
        senddata[4] := ListBox1.ItemIndex; // номер канала
        crc := 0;
        poswrite := 0;
        memo1.Clear;
        settings_set := 1;
        hide_update;
        settings_address := id_f;
        settings_channel := senddata[4];
        send_command;
      end;

    end
    else begin
    ShowMessage('Выбранное устройство не имеет функции удалённой настройки!');
    end;
    end
    else
    begin
      showmessage('Для данного действия нужно выбрать канал из списка!');
    end;
  end;

end;

procedure TForm1.PopupMenu1Popup(Sender: TObject);
begin
  AdvStringGrid1.ShowSelection := true;
  if (Form1.AdvStringGrid1.Cells[3, AdvStringGrid1.SelectedRow[0]] <> '--') and
    (Form1.AdvStringGrid1.Cells[3, AdvStringGrid1.SelectedRow[0]] <> '') then
  begin
    N1.Enabled := true;
    N2.Enabled := true;
    N4.Enabled := true;
    N11.Enabled := true;
    N12.Enabled := true;

    if (Form1.AdvStringGrid1.Cells[0, AdvStringGrid1.SelectedRow[0]])=DEV_TYPE_5 then begin
      N17.Visible:=true;
      N18.Visible:=true;
     end
     else begin
      N17.Visible:=false;
      N18.Visible:=false;
     end;

     //изменение названия для SUF-1-300-A
     if (Form1.AdvStringGrid1.Cells[0, AdvStringGrid1.SelectedRow[0]])=DEV_TYPE_8 then begin
     N17.Visible:=true;
     N17.Caption:='Коррекция диммирования и уровня включения';
     end
     else begin
     N17.Caption:='Коррекция диммирования';
     end;

     //задержка ретрансляции
     if ((Form1.AdvStringGrid1.Cells[0, AdvStringGrid1.SelectedRow[0]])=DEV_TYPE_8) or((Form1.AdvStringGrid1.Cells[0, AdvStringGrid1.SelectedRow[0]])=DEV_TYPE_5)   then begin
     nooLite2.Visible:=true;
     end
     else begin
     nooLite2.Visible:=false;
     end;


    if (Form1.AdvStringGrid1.Cells[0, AdvStringGrid1.SelectedRow[0]])=DEV_TYPE_6 then begin
      N19.Visible:=true;
     end
     else begin
      N19.Visible:=false;
     end;
    end
    else
    begin
      N1.Enabled := false;
      N2.Enabled := false;
      N4.Enabled := false;
      N11.Enabled := false;
      N12.Enabled := false;
    end;



end;



procedure TForm1.send_timerTimer(Sender: TObject);
begin
  send_timer.Enabled := false;
  // if  then
  if boot_mode_step = 0 then // нет ответа
  begin
    showmessage('Адаптер не отвечает!');
    boot_mode := 0;
    boot_mode_step := 0;
  end
  else if boot_mode_step = 1 then // фиксация в бутлоадаре
  begin
    boot_mode_step := 2;
    send_update(11, 0, false); // get ID
    send_timer.Interval := 500;
    send_timer.Enabled := true;
  end
  else if boot_mode_step = 2 then
  begin
    showmessage('Адаптер не входит в bootloader!');
  end
  else if boot_mode_step = 3 then
  begin
    showmessage('Ошибка при обновлении ПО!');
  end
  else if boot_mode_step = 4 then
  begin // прошиваем
    if repeat_count <> 0 then
    begin
      dec(repeat_count);
      send_update(13, 0, true); // write
      send_timer.Interval := 100;
      send_timer.Enabled := true;
    end
    else
    begin
      boot_loop := 0;
      if send_ok = 1 then
      begin
        CloseFile(myFile);
        send_ok := 0;
      end;
      // memo1.Lines.Add('Нет ответа!');
      showmessage
        ('Нет ответа! Ошибка обновления! Сотрите память в адаптере и повторите запись');
    end;
  end;
end;

procedure TForm1.send_timer_2Timer(Sender: TObject);
begin
  send_timer_2.Enabled := false;
  if boot_mode_step_2 = 1 then // нет ответа
  begin
    showmessage('Блок не отвечает/не вошёл в bootloader! Нет ответа от GET ID');
    // boot_mode_2 := 0;
    // boot_mode_step_2 := 0;
  end
  else if boot_mode_step_2 = 3 then
  begin
    showmessage('Ошибка при обновлении ПО!');
  end
  else if boot_mode_step_2 = 5 then
  begin
    showmessage('Ошибка при обновлении ПО!-Reset-OK');
  end
  else if boot_mode_step_2 = 4 then
  begin // прошиваем
    if repeat_count <> 0 then
    begin
      inc(stat_send_err);
      error_rx_flag := true;
      Form5.Label8.Caption := 'STAT: Передано всего:' +
        inttostr(stat_send_count) + '  Количество ошибок:' +
        inttostr(stat_send_err) + '  Ошибки, %:' +
        inttostr(round(stat_send_err / (stat_send_count + 1) * 100));
      dec(repeat_count);
      send_update_air(13, boot_send_address, true); // write
      send_timer_2.Interval := 1000;
      send_timer_2.Enabled := true;
    end
    else
    begin
      boot_loop := 0;
      if send_ok = 1 then
      begin
        CloseFile(myFile);
        send_ok := 0;
      end;
      // memo1.Lines.Add('Нет ответа!');
      showmessage
        ('Нет ответа! Ошибка обновления! Повторите процесс обновления!');
    end;
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if time_out < 3 then
  begin
    time_out := time_out + 1;
  end
  else
  begin
    Timer1.Enabled := false;
    wait_update_off;
  end;

end;

procedure TForm1.Timer5Timer(Sender: TObject);
begin
  if step_service_boot = 0 then
  begin
    if (i_count) <= (ts.Count - 1) then
    begin
      ComPort1.Close;
      if i_count > 0 then
      begin // мы уже заходили, считываем

      end;

      Form1.ComPort1.Port := 'COM' +
        inttostr(strtoint(copy(reg.readstring(ts.Strings[i_count]), 4,
        Length(reg.readstring(ts.Strings[i_count])) - 3)));

      Form1.memo1.Lines.Add
        ('COM' + inttostr(strtoint(copy(reg.readstring(ts.Strings[i_count]), 4,
        Length(reg.readstring(ts.Strings[i_count])) - 3))));

      i_count := i_count + 1;
      if test_port() then
      begin
        Form1.memo1.Lines.Add('OK');
        ComPort1.Open;
        step_service_boot := 1; // подготовка к передаче второй команды
        test_device(); // SERVICE
        Timer5.Enabled := false;
        Timer5.Interval := timer_delay_send;
        Timer5.Enabled := true;
      end
      else
        Form1.memo1.Lines.Add('Open error');
    end
    else
    begin // считывание последнего состояния
      Form1.AdvCircularProgress1.Position := 0;
      Form1.AdvCircularProgress1.Enabled := false;
      Form1.AdvCircularProgress1.Visible := false;
      Label6.Caption := '';
      Timer5.Enabled := false;
      ComPort1.Close;
      if (com_name.Count < 1) then
      begin // не нашли
        showmessage
          ('Адаптер или модуль MTRF не обнаружен! Подключите адаптер/модуль и перезапустите программу!');
        Application.Terminate;
      end
      else if (com_name.Count = 1) then
      begin // один нашли

        if (boot_found > 0) and
          (MessageDlg('Обнаружен адаптер в режиме обновления ПО! Обновить ПО?',
          mtCustom, [mbYes, mbNo], 0) = mrYes) then
        begin
          Form1.ComPort1.Port := com_name.Strings[0];
          Form1.ComPort1.Open;
          Form1.AdvSmoothStatusIndicator1.Appearance.Fill.Color := color_good;
          Form1.Label19.Caption := 'B-' + adapter_name.Strings[0];
          com_name.Clear;
          adapter_name.Clear;
          boot_name.Clear;
          main_ver.Clear;
          service_find := 0; // выход из режима поиска адаптеров
          boot_mode := 1; // входим в режим бутлоадера
          // form4.ShowModal;
          Form4.Show;
          boot_mode_step := 3;
        end
        else if (boot_found = 0) then
        begin
          Form1.ComPort1.Port := com_name.Strings[0];
          Form1.ComPort1.Open;
          Form1.AdvSmoothStatusIndicator1.Appearance.Fill.Color := color_good;
          Form1.Label19.Caption := adapter_name.Strings[0] + ' (v' +
            main_ver.Strings[0] + ')';

          Form1.AdvGlassButton12.Enabled := true;
          Form1.AdvGlassButton8.Enabled := true;
          Form1.AdvGlassButton9.Enabled := true;

          Form1.AdvGlassButton11.Enabled := true;
          Form1.AdvGlassButton10.Enabled := true;
          Form1.AdvGlassButton13.Enabled := true;
          Form1.AdvGlassButton7.Enabled := true;
          Form1.ListBox1.Enabled := true;
          com_name.Clear;
          main_ver.Clear;
          com_name.Clear;
          adapter_name.Clear;
          reg.CloseKey;
          reg.free;
          service_find := 0; // выход из режима поиска адаптеров
        end;

      end
      else
      begin // да тут их несколько
        Form3.ShowModal;
      end;

    end;

  end
  else
  begin // передача второй команды бутлоадера
    Timer5.Enabled := false;
    Timer5.Interval := timer_scan;
    Timer5.Enabled := true;
    send_update(11, 0, false); // GET ID BOOT
    step_service_boot := 0;
  end;

end;

procedure TForm1.Timer6Timer(Sender: TObject);
begin
  Timer6.Enabled := false;
  Button15.Click; // GET ID
  boot_mode_step_2 := 1;
  send_timer_2.Enabled := false;
  send_timer_2.Interval := 500;
  send_timer_2.Enabled := true;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin

  if bind_mode = 1 then
  begin

    if (AdvGlassButton7.BackgroundColor = $0092F5F8) then
    begin
      AdvGlassButton7.BackgroundColor := clred;
    end
    else
    begin
      AdvGlassButton7.BackgroundColor := $0092F5F8;
    end;

    if (bind_count > 0) then
    begin
      dec(bind_count);
    end
    else
    begin
      senddata[1] := 2; // nooLiteF_TX
      senddata[2] := 4; // bind off
      senddata[3] := 0; // reserved
      senddata[4] := ListBox1.ItemIndex; // номер канала
      crc := 0;
      poswrite := 0;
      memo1.Clear;
      send_command;
      bind_mode := 0;
      Timer2.Enabled := false;
      AdvGlassButton7.BackgroundColor := $0092F5F8;
      Form1.Label6.Font.Color := clblack;
      Form1.Label6.Caption := '';
    end;

  end;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
  Timer3.Enabled := false;
  disable_show := false;
  AdvGlassButton12.Click;
end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
  Timer4.Enabled := false;
  Button5.Click;
end;


procedure TForm1.WMCopyData(var MessageData: TWMCopyData);
var
id_f:Cardinal;
begin
try
case MessageData.CopyDataStruct.dwData of
0:begin
senddata[1] := strtoint(PAnsiChar((MessageData.CopyDataStruct.lpData)));
MessageData.Result := 1;
end;

1:begin
senddata[2] := strtoint(PAnsiChar((MessageData.CopyDataStruct.lpData)));
MessageData.Result := 1;
end;

2:begin
senddata[3] := strtoint(PAnsiChar((MessageData.CopyDataStruct.lpData)));
MessageData.Result := 1;
end;

3:begin
senddata[4] := strtoint(PAnsiChar((MessageData.CopyDataStruct.lpData)));
MessageData.Result := 1;
end;

4:begin
senddata[5] := strtoint(PAnsiChar((MessageData.CopyDataStruct.lpData)));
MessageData.Result := 1;
end;

5:begin
senddata[6] := strtoint(PAnsiChar((MessageData.CopyDataStruct.lpData)));
MessageData.Result := 1;
end;

6:begin
senddata[7] := strtoint(PAnsiChar((MessageData.CopyDataStruct.lpData)));
MessageData.Result := 1;
end;

7:begin
senddata[8] := strtoint(PAnsiChar((MessageData.CopyDataStruct.lpData)));
MessageData.Result := 1;
end;

8:begin
senddata[9] := strtoint(PAnsiChar((MessageData.CopyDataStruct.lpData)));
MessageData.Result := 1;
end;

9:begin
senddata[10] := strtoint(PAnsiChar((MessageData.CopyDataStruct.lpData)));
MessageData.Result := 1;
end;

10:begin
id_f:= HexToInt(PAnsiChar((MessageData.CopyDataStruct.lpData)));
senddata[11] := LO(id_f shr 24);
senddata[12] := LO(id_f shr 16);
senddata[13] := LO(id_f shr 8);
senddata[14] := LO(id_f);
MessageData.Result := 1;
end;

11:begin
senddata[2] :=senddata[2]+ ((strtoint(PAnsiChar((MessageData.CopyDataStruct.lpData))) and 3) shl 6);
MessageData.Result := 1;
crc := 0;
poswrite := 0;
memo1.Clear;
send_command;
end;

end;


except

end;

end;



end.
