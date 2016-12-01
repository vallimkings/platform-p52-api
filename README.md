== README

#### Rodando aplicação local:

Verifique se o ruby esta instalado `ruby -v`, caso não instale e ou atualize para a versão 2.3.1.

Agora rode os seguintes comandos:

 * `bundle install`
 * `rake db:drop && rake db:create && rake db:migrate && rake app:seed`
 * `rails s`


Servidor escuta na porta 3000.

#### Rotas

* `rake routes`
