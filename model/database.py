import mysql.connector

class BancoDeDados:
    def __init__(self) -> None:
        self.config = {
            'user': 'root',
            'password': 'j1l2a3h4',
            'host': 'localhost', 
            'database': 'ncm',
            'raise_on_warnings': True
        }
        self.conn = self.connectToDatabase()

    def connectToDatabase(self):
        try:
            self.conn = mysql.connector.connect(**self.config)
            self.cursor = self.conn.cursor()
            # print("Conexão Estabelecida com Sucesso")
            return self.conn
        except:
            print("Não foi possivel estabelecer conexão com o banco de dados")
            return False

    def closeConnection(self):
        self.cursor.close()
        pass

    def execute_query(self, query, params=None):
        cursor = self.conn.cursor()
        try:
            if params:
                cursor.execute(query, params)
            else:
                cursor.execute(query)
            self.conn.commit()
            return cursor
        except mysql.connector.Error as err:
            print(f"Erro ao executar a query: {err}")
            return None
        finally:
            cursor.close()
    def listProduct(self, descriptProduct):
        try:
            query = "SELECT ncm, descriptionProduct, atention FROM descriptionNCM WHERE descriptionProduct LIKE %s"
            self.cursor.execute(query, ('%' + descriptProduct + '%',))
            result = self.cursor.fetchall()
            return result
        except mysql.connector.Error as err:
            print(f"Por favor tente outra palavra chave: {err}")
            return None
        
if __name__=="__main__":
    init = BancoDeDados()
  