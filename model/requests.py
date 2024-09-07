from database import BancoDeDados
import pandas as pd


class Produto:
    def __init__(self, banco_de_dados: BancoDeDados):
        self.banco_de_dados = banco_de_dados

    def listNCM(self):
        try:
            # Modificado para aceitar uma string
            nome = input("Digite o nome do produto: ").strip()
            if not nome:
                print("Nome do produto não pode ser vazio.")
                return
            
            # Supõe-se que o método listNCM no banco_de_dados aceita uma string
            produtos = self.banco_de_dados.listProduct(nome)
            if produtos:
                df = pd.DataFrame(produtos, columns=["NCM", "Descrição", "Atenção"])
                print(df)
            else:
                print("Nenhum produto encontrado com esse nome.")
        except Exception as e:
            print(f"Erro: {e}")
        finally:
            self.banco_de_dados.closeConnection()

# Supondo que BancoDeDados tenha um método de conexão
# Instanciar o banco de dados e a classe Produto
banco = BancoDeDados()
produto = Produto(banco)

# Chamar a função
produto.listNCM()
