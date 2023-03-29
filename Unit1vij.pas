unit Unit1vij;
 { âèæåíåğ ğàñøèôğîâêà https://www.cyberforum.ru/cryptography/thread3093267.html }
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
    w='ABCDEFGHIJKLMNOPQRSTUVWXYZÄÜÖß';
		e='CXLJWWO` ÖNXÄHVVOHNQßCH AJB XTW ÖÜVÜXBÜßLÖXU UNWAPWJIHQW WB MJL KRV VSVSJEÜVKQSC ÖNXÄHVVOHNQßCHV';
var
	Form1: TForm1;
	key: string='USCHINSKI';


implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var i,j,k,g,i2: integer; 
	c: char; 
	s,u: string;
	a2:integer;
begin
	s:='';
	u:='';
	i2:=1;
	for i:=1 to length(e) do
	if pos(e[i],w)>0 then
		begin
			g:=1+((i2-1)mod length(key));
			c:=key[g];
			s:=s+c;  // êëş÷
			k:=pos(c,w)+1;
			j:=pos(e[i],w);
			a2:=length(w);
			u:=u+w[1+((j-1)-(k-1)+a2*2)mod a2];
			inc(i2);
		end
		else
		begin
			s:=s+e[i];
			u:=u+e[i]
		end;
	memo1.Lines.Add(e);
	memo1.Lines.Add(s);
	memo1.Lines.Add(u);
	memo2.Text:=u;
end;
{ÂÛ×ÈÑËÈÒÅËÜÍÀß ÌÀØÈÍÀ ËÅÉÁÍÈÖÀ ÑÒÀËÀ ÈÑÒÎĞÈ×ÅÑÊÎÉ ÂÅÕÎÉ Â ÑÎÇÄÀÍÈÈ ÌÅÕÀÍÈ×ÅÑÊÈÕ ÂÛ×ÈÑËÈÒÅËÜÍÛÕ ÌÀØÈÍ}
end.
