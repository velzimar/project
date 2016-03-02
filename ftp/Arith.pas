program projet  ;
uses wincrt;
var  n,a,b,c,x,i : integer;
     ch : string;
     f : real ;
Function fact_premier (n:integer) : string ;
var
i : integer;
ch,ch1 : string ;
begin
i:= 2 ;
ch := '';
repeat
 if n mod i = 0 then
  begin
   str(i,ch1);
   ch := ch + ch1 + '*' ;
   n := n div i ;
  end
 else 
  begin
  i:= i + 1;
  end;
until (n=1) ;
fact_premier := ch ;
end;  

function factoriel ( n : integer ):real;
var i : integer ;
    f : real ;
begin
f := 1 ;
for i := 1 to n do 
begin
f := f * i ;
end;
factoriel := f ;
end;


procedure saisir(var a,b :integer ) ;
begin
repeat
gotoxy ( 25,10 ) ;
writeln ('donner a et b ');
gotoxy (25,12) ;
readln (a);
gotoxy (25,14) ;
readln (b);
until (a>=0)  and (b>=0) ;
end;

procedure saisir1 (var x : integer ) ;
begin
repeat
gotoxy ( 25,10) ;
writeln ('donner x');
gotoxy ( 25,12) ;
readln(x);
until (x>0) ; 
end;

procedure saisir2 (var x : integer ) ; 
begin
repeat 
gotoxy ( 25,10 ) ;
writeln ('donner x');
gotoxy ( 25,12 ) ;
readln (x) ;
until (x > 1) ;
end;
 
Function  PGCD_EUCLIDE (A,B:integer):integer;
var r: integer;
begin
while b<>0 do
begin
r := a mod b ;
a := b ;
b := r ;
end;
PGCD_EUCLIDE := a ;
end;


Function  PGCD_DIFFERENCE (A,B:integer):integer;
var r: integer;
begin
while b<>a do
if a>b then
a := a - b 
else
b := b - a ;
PGCD_DIFFERENCE := a ;
end;

function PPCM ( A,B : integer): integer ;
var max,min : integer ;
begin
if a > b then 
begin
max := A ;
min := b ;
end
else
begin 
max := b ; 
min := a ;
end;
while ( max mod min <> 0 ) do 
begin
max := max + ( a + b - min );
end ;
PPCM := max ;
end ;

function Premier ( n :integer ) : boolean ;
var i : integer ;
begin
i:=2 ; 
while (n mod i <> 0 ) and ( i <= n div 2 ) do
begin
i := i + 1 ;
end;
premier := (i > n div 2) ;
end; 
 
procedure animation;
var z,x,y,h : integer ;
begin
for x:= 15 to 70 do
for y:= 8  to 25 do
for h:= 15 to 16 do
{for z:= 8  to 25 do}
begin
gotoxy(14,y);
write('*');
gotoxy(14,y);
write('*');
gotoxy(70,y);
write('*');
gotoxy(x,8);
write('*');
gotoxy(x,26);
write('*');
end;
end;




Begin
clrscr;
repeat
clrscr;
animation;
repeat
gotoxy(15,15);
writeln('-------------------------------------------------------');
gotoxy(15,16);
writeln('--------------Les algorithmes arithmétiques------------');
gotoxy(15,17);                                              
writeln('-------------------------------------------------------');
gotoxy(16,24);
writeln('Cliquer sur une touche pour continuer.');
Until keypressed;
clrscr;
animation;
 gotoxy(25,10);
  writeln('1) PGCD_EUCLIDE');
 gotoxy(25,12);
  writeln('2) PGCD_DIFFERENCE');
 gotoxy(25,14);
  writeln('3) PPCM');
 gotoxy(25,16);
  writeln('4) Premier');
 gotoxy(25,18);
  writeln('5) facteur premier');
 gotoxy(25,20);
  writeln('6) factoriel');
 gotoxy(25,22);
  writeln('--------------------------');
 gotoxy(25,24);
 repeat
  writeln('*** Donnez votre choix ***');
 gotoxy(25,30);
  readln(c);
  until c in [1..6];
   clrscr;

 if c=1 then
    begin
     clrscr;
     animation;
     gotoxy(25,12);
     saisir(a,b);
     gotoxy(25,14);
     writeln('pgcd de ',a,'et',b,' est  ',PGCD_EUCLIDE (a,b) );
     animation;
     end
 else if c = 2 then
     begin
     clrscr;
     animation;
     gotoxy(25,12);
     saisir(a,b);
     gotoxy(25,14);
       writeln('pgcd de ',a,'et',b,' est  ',PGCD_difference (a,b) );
     animation;
     end 
 else if c = 3 then
     begin
     clrscr;
     animation;
     gotoxy(25,12);
     saisir(a,b);
     gotoxy(25,16);
       writeln('ppcm de ',a,'et',b,' est  ',PPCM (a,b) );
     animation;
     end 
 else IF C = 4 THEN
     begin
     clrscr;
     animation;
     gotoxy(25,12);
     saisir1(x);
     gotoxy(25,14);
     if premier(x) then 
       writeln(x,' est premier')
       else
       writeln(x,' n''est pas premier');
       animation;
     end 
 else IF C = 5 THEN
     begin
     clrscr;
     animation;
     gotoxy(25,12);
     saisir2(n);
     ch := fact_premier (n);
     delete(ch,length(ch),1);
     gotoxy(25,14);
     writeln (n , '=' , ch ) ;
     end
 else if c = 6 then
     begin
     clrscr;
     animation;
     gotoxy(25,12);
     saisir2(n);
     f := 1 ;
	 for i := 1 to n do
	 begin
	 f := f * i ;
	 end;
	 gotoxy(25,14);
	 writeln ('le factoriel de' ,n, '=',factoriel(n):2:0);
	 readkey;
         clrscr;
	 end;
   gotoxy(25,2);
  writeln('pour repeter se programme tapez entrer');
  until ord(readkey) <> 13 ;

 end.






