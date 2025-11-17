from Personagem import Personagem


# Aplicar a herança
class Mago(Personagem):
    def __init__(self, nome, vida):
        # construtor da classe pai que está sendo herdado
        super().__init__(nome, vida)

    # Aplicar o polimorfismo: mago causa mais dano
    def atacar(self, personagem):
        personagem.vida -= 20
        print(f'{self.nome} atacou {personagem.nome} com magia e tirou 20 pontos de vida e agora está com {personagem.vida}')