unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, alhack;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Panel1: TPanel;
    ALHack1: TALHack;
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
  const
    byte64: array [0 .. 1] of string = ('$FE', '$85');
  const
    indirizzo64: array [0 .. 1] of string = ('$0003B9AA', '$00078871');
  const
    byte32: array [0 .. 1] of string = ('$FE', '$85');
  const
    indirizzo32: array [0 .. 1] of string = ('$00031F28', '$00069F1D');
  public
    { Public declarations }
    procedure patch(byt, ind: Array of string; perc: string);
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = -1 then
    ShowMessage('Devi selezionare un prodotto!')
  else
    case RadioGroup1.ItemIndex of
      0:
        patch(byte32, indirizzo32,
          'C:\Program Files (x86)\iTubeGo\iTubeGo.exe');
      1:
        patch(byte64, indirizzo64, 'C:\Program Files\iTubeGo\iTubeGo.exe');
    end;
end;

procedure TForm2.patch(byt, ind: array of string; perc: string);
var
  completato: boolean;
begin
  ALHack1.backfile(perc, '.bak');
  for var i: integer := 0 to 1 do
  begin
    try
      ALHack1.applicapatch(perc, byt[i], ind[i]);
      completato := true;
    except
      completato := False;
    end;
  end;
  if completato then
    Panel1.Caption := 'Patch creata correttamente! Enjoy'
  else
    Panel1.Caption := 'Errore nella patch!!!';
end;

procedure TForm2.RadioGroup1Click(Sender: TObject);
begin
  Button1.Enabled := true;
end;

end.
