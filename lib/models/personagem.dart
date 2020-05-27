const racas = [
  "teste1",
  "teste2"
];

class Personagem{
	String nome;
	String classe;
  String raca;
	num nivel;
  String tendencia;
  num xp;

	Personagem(this.nome, this.classe, this.raca){
		this.nivel = 1;
    this.xp = 0;
	}
}