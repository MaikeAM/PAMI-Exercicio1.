
// T�pico 4
//Instanciando o formul�rio
FrmMedia fMedia = new FrmMedia ();

//Indica que o formul�rio que ser� aberto
//� o filho do FrmPrincipal
fMedia.MdiParent = this;

//Exibir� o formulario filho
fmedia.Show();


// T�pico 7
DialogResult resultado = MessagemBox.Show("Deseja realmente encerrar o sistema", "Pergunta",
MessageBoxButtons.YesNo, MessageBoxIcon.Question);

if (resultado == System.Windows.Forms.DialogResult.Yes)
{
  MessageBox.Show("Obrigado por utilizar nossos servi�os e at� mais !, "***Obrigado***",
  Apliccation.Exit ();
}

double n1 = parse.double
double n2 = parse.double
double R  = parse.double

text.txtN1 = n1
text.txtN2 = n2

R= (n1+n2)/2;
if(R>=7) 
{
	MessageBox.Show("Aluno Aprovado");
}
Else if (R>=4 && R<7)
{
	MessageBox.Show("Aluno em recupera��o");
}
Else
{
	MessageBox.Show("Aluno reprovado");
}