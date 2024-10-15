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
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  eps, sum, f, x, k, iterations: real;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  // Ввод данных
   eps := StrToFloat(Edit2.Text);
   x := StrToFloat(Edit1.Text);

   // Инициализация переменных
   f := x;
   sum := f;
   k := 2;
   iterations := 0; // Счетчик итераций

   // Цикл вычислений
   while abs(f) >= eps do
   begin
    f := k * (x ** k);
    sum := sum + f;
    k := k + 1;
    iterations := iterations + 1; // Увеличиваем счетчик
   end;

   // Вывод результатов
   ShowMessage('Количество итераций: ' + IntToStr(iterations) +
          '\nСумма ряда: ' + FloatToStr(sum));
end;

end.

