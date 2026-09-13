# Rotten Potatoes 🎬

Este é um catálogo de filmes desenvolvido em Ruby on Rails, criado como parte das atividades práticas de Engenharia de Software baseadas no livro *Engineering Software as a Service.

## Como executar o projeto localmente

Siga os passos abaixo para configurar e rodar a aplicação na sua máquina:

### 1. Instalar dependências
Certifique-se de ter o ambiente Ruby configurado corretamente. O projeto utiliza um `Gemfile` para gerenciar as bibliotecas necessárias. Para instalá-las, execute:
`bash
bundle install
`

### 2. Preparar o banco de dados
Crie a estrutura das tabelas no banco de dados e popule com os filmes iniciais de teste através do script `db/seeds.rb:
`bash
bin/rails db:migrate
bin/rails db:seed
`

### 3. Executar os testes
Para garantir que as validações e as regras de negócio estão funcionando sem falhas, rode a suíte de testes automatizados (incluindo testes de comportamento e unitários):
`bash
bin/rails test
`

### 4. Iniciar o servidor local
Inicie o servidor de desenvolvimento do Rails para interagir com a aplicação:
`bash
bin/rails server
`
Acesse `http://localhost:3000` no seu navegador para visualizar o catálogo!