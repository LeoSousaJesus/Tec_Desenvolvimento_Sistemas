
"""App orientado a objetos para demonstrar Personagem e Mago.

Cria uma classe `Jogo` que gerencia um combate simples entre
um `Mago` e um `Personagem`.
"""

from Personagem import Personagem
from Mago import Mago


class Jogo:
	def __init__(self):
		# Criar personagens do jogo
		self.mago = Mago('Gandalf', 100)
		self.personagem = Personagem('Legolas', 100)

	def mostrar_status(self):
		print(f'Mago: {self.mago.nome} | Vida: {self.mago.vida}')
		print(f'Personagem: {self.personagem.nome} | Vida: {self.personagem.vida}')

	def rodada(self):
		# Mago ataca primeiro
		if self.mago.vida > 0 and self.personagem.vida > 0:
			self.mago.atacar(self.personagem)

		# Se o personagem ainda estiver vivo, contra-ataca
		if self.personagem.vida > 0 and self.mago.vida > 0:
			self.personagem.atacar(self.mago)

	def acabou(self):
		return self.mago.vida <= 0 or self.personagem.vida <= 0

	def vencedor(self):
		if self.mago.vida <= 0 and self.personagem.vida <= 0:
			return None
		if self.mago.vida <= 0:
			return self.personagem
		if self.personagem.vida <= 0:
			return self.mago
		return None

	def run(self):
		print('Iniciando o combate...')
		self.mostrar_status()

		rodada_num = 1
		while not self.acabou():
			print('\n' + '-' * 40)
			print(f'Rodada {rodada_num}')
			self.rodada()
			self.mostrar_status()
			rodada_num += 1

		print('\n' + '=' * 40)
		vencedor = self.vencedor()
		if vencedor is None:
			print('Empate! Ambos caíram.')
		else:
			print(f'Vencedor: {vencedor.nome} | Vida final: {vencedor.vida}')


if __name__ == '__main__':
	jogo = Jogo()
	jogo.run()



