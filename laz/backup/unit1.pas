unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  eps, sum, f, x, k, nul: real;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin

  //проверка введения цифр
  if (eps = nul) or (x = nul) then
  begin
        Image2.Height := 0; //384
        Image3.Height := 184; //384
        Label1.Caption := 'Блин бро впиши цифры';
  end;

  //проверка того что число в диапазоне
   eps := strtofloat(Edit2.text);
   x := strtofloat(Edit1.text);
   if (x <= -0.7) or (x >= 0.25) then
   begin
        Image2.Height := 0; //384
        Image3.Height := 184; //384
        Label1.Caption := 'Число не в диапазоне';
        exit;
        //close;
        //exit;
   end;


   //счет функции
   f := x;
   sum := f;
   k := 2;

   while abs(f) > eps do
   begin
     f := k * (x ** k);
     sum := sum + f;
     k := k + 1;
   end;

   //вывод ответа
   Label1.Caption := floattostr(sum);
   Label2.Caption := floattostr(k);
   Image1.Height := 247;
   Image2.Height := 0; //384
  end;
end.

