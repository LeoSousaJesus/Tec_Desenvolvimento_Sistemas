 //Exemplo	79:	Exemplo	de	variável	global
	
programa	{
							
inteiro	novaIdadeLocal
	funcao inicio(){
		inteiro	idade	= 18
	
		se	(	idade	== 18){
				novaIdadeLocal	= 20
    }
		
    imprimirNovaIdade()
	}
	
  funcao	imprimirNovaIdade(){
		escreva	("Nova	idade	é:",	novaIdadeLocal)
	}
}
