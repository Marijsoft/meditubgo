unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
const byte64:array[0..3] of string=('$85','$85','$75','$84');
const indirizzo64:array[0..3] of string=('$00066F72','$00083DE4','$00083DEB','$00083DF5');
const byte32:array[0..3] of string=('$85','$75','$75','$74');
const indirizzo32:array[0..3] of string=('$00059ED2','$000743FD','$00074403','$0007440C');
  public
    { Public declarations }
    procedure patch(byt,ind:Array of string;perc:string);
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex=-1 then
ShowMessage('Devi selezionare un prodotto!') else
case RadioGroup1.ItemIndex of
0:patch(byte32,indirizzo32,'C:\Program Files (x86)\iTubeGo\iTubeGo.exe');
1:patch(byte64,indirizzo64,'C:\Program Files\iTubeGo\iTubeGo.exe');
end;
end;

procedure TForm2.patch(byt, ind: array of string;perc:string);
var completato:boolean;
begin
alhack1.backfile(perc,'.bak');
for var i:integer := 0 to 3 do
  begin
  try
  alhack1.applicapatch(perc,byt[i],ind[i]);
  completato:=true;
  except
  completato:=False;
  end;
  end;
  if completato then Panel1.Caption:='Patch creata correttamente! Enjoy' else
  Panel1.Caption:='Errore nella patch!!!';
end;

procedure TForm2.RadioGroup1Click(Sender: TObject);
begin
Button1.Enabled:=true;
end;

end.
