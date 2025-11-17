class Personagem():
    # definir os atributos da minha classe
    def __init__(self, nome, vida):
        self.__nome = nome
        self.__vida = vida


    @property
    # métodos de acesso aos atributos GET e SET
    def nome(self):
        return self.__nome
     
    @nome.setter
    def nome(self, nome):
        self.__nome = nome
        
    
    @property
    # métodos de acesso aos atributos GET e SET
    def vida(self):
        return self.__vida
     
    @vida.setter
    def vida(self, vida):
        self.__vida = vida
        
    def atacar(self, personagem):
        personagem.vida -= 10
        print(f'{self.nome} atacou {personagem.nome} e tirou 10 pontos de vida e agora esta com {personagem.vida}')