# ✅ MarkX Test Automation
Automação de testes para o aplicativo MarkX, uma lista de tarefas (TODO list) que permite adicionar, remover e marcar tarefas como concluídas. Este projeto foi desenvolvido como parte do curso de Robot Framework e Appium para Android e iOS ministrado por Fernando Papito.

## 📱 Sobre o App
MarkX é um aplicativo mobile simples e funcional para gerenciamento de tarefas. Os testes automatizados cobrem as principais funcionalidades:
- Adição de tarefas
- Remoção de tarefas
- Marcação de tarefas como concluídas

## 🧪 Tecnologias e Bibliotecas Utilizadas

| Biblioteca                      | Versão     | Descrição                                                                 |
|--------------------------------|------------|---------------------------------------------------------------------------|
| `robotframework`               | 7.3.2      | Framework principal para automação de testes                             |
| `robotframework-appiumlibrary` | 3.1        | Biblioteca para automação de apps mobile com Appium                      |
| `pymongo`                      | 4.15.3     | Conexão e manipulação de dados no MongoDB                                |
| `python-dotenv`                | 1.1.1      | Gerenciamento de variáveis de ambiente via arquivo `.env`                |



## 🛠️ Configuração do Projeto
1. Clone o repositório
```bash
git clone git@github.com:Koutsumi/markX.git
cd markX
```


2. Instale as dependências
```bash
pip install -r requirements.txt
```


3. Configure o arquivo .env
Crie um arquivo .env na raiz do projeto com as seguintes variáveis:
```js
APP_URL
MOBILE_APP_PATH
MOBILE_AUTOMATION_NAME
MOBILE_PLATFORM_NAME
MOBILE_DEVICE_NAME
DEVICE_UUID

MONGO_PASSWORD
MONGO_PROJECT
```

## 🚀 Executando os Testes
Para rodar os testes automatizados:
```bash
robot ./tests
```
Certifique-se de que o Appium está em execução e que o dispositivo (emulador ou físico) está conectado corretamente.

## 📂 Estrutura do Projeto

markX/
├── libs/
│   └── mongo.py                  # Biblioteca customizada para manipulação do MongoDB
├── resources/
│   ├── base.resource             # Keywords reutilizáveis
│   └── variables.resource        # Variáveis globais
├── locators.resource             # Mapeamento de elementos da interface
├── tests/
│   └── markx_tests.robot         # Testes automatizados do app
├── .env                          # Variáveis de ambiente (não versionar)
├── requirements.txt              # Dependências do projeto
└── README.md                     # Documentação do projeto

## 🙋‍♀️ Créditos
Este projeto foi desenvolvido durante o curso Robot Framework e Appium para Android e iOS com Fernando Papito.
