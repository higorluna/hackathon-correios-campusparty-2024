from flask import Flask, jsonify, request, render_template
from model.database import BancoDeDados

app = Flask(__name__)

# Conexão com o banco de dados
def get_db_connection():
    db = BancoDeDados()
    db.connectToDatabase()
    return db

# Página de busca (GET)
@app.route('/')
def index():
    return render_template('index.html')

# Rota para listar produtos (GET) - Buscando por descrição
@app.route('/produtos', methods=['GET'])
def list_produtos():
    descricao = request.args.get('descricao', '')  # Recebe a descrição passada pela barra de URL
    db = get_db_connection()
    produtos = db.listProduct(descricao)
    
    # Verifique o que está sendo retornado
    print("Produtos encontrados:", produtos)
    
    db.closeConnection()
    
    # Verificar se os produtos foram encontrados
    if produtos:
        response = []
        for produto in produtos:
            # Exibir o conteúdo dos produtos na saída do servidor
            print(f"Produto: NCM={produto[0]}, Descricao={produto[1]}, Atencao={produto[2]}")
            response.append({
                "NCM": produto[0],
                "Descricao": produto[1],
                "Atencao": produto[2]
            })
        return jsonify(response), 200
    else:
        print("Nenhum produto encontrado.")
        return jsonify({"erro": "Nenhum produto encontrado."}), 404

# Executar a aplicação Flask
if __name__ == '__main__':
    app.run(debug=True)
