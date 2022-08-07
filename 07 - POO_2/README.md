## Assunto da aula
- Como instanciar classes localizadas em outro arquivo de um projeto
- Os diferentes tipos de variáveis da linguagem Ruby
- Como inserir e recuperar atributos e como utilizar um método construtor.

## Conteúdo
- Require
- Escopo de variáveis
- Atributos
- Construtores

# Require

Na Aula 5, foi ensinada a utilização do *require ‘gem_name’* para carregar arquivos de uma gem e assim poder escrever códigos com funcionalidades desta biblioteca.

Com ele também é possível carregar arquivos Ruby que foram escritos por você. Para exemplificar como isso acontece, **será criado um projeto onde alguns arquivos conterão apenas uma classe**.

Perceba que no *require*, você especificou o arquivo que será procurado partindo do caminho relativo a *app.rb*.

Quando você não está trabalhando com gems e quer carregar um arquivo a partir do caminho onde o código será executado, utilize o *require_relative*, ele executa implicitamente um arquivo de extensão '*.rb*'.

# Escopo das variáveis

Agora que você sabe dividir um programa em vários arquivos é interessante aprender sobre os diferentes tipos de escopos de variáveis presentes no Ruby. Com este conhecimento você terá a capacidade de *escolher qual utilizar dependendo da situação*.

As variáveis se dividem em 04 tipos:

- **Variável Local**
- **Variável Global**
- **Variável de Classe**
- **Variável de Instância**

## Variável Local

É declarada com a **primeira letra** de seu nome sendo uma letra **minúscula ou sublinhado**.

**Pode ser acessada apenas onde foi criada**. Por exemplo, se você definir uma variável local dentro de de uma classe ela estará disponível apenas dentro desta classe, se a definiu dentro de um método conseguirá acessá-la apenas dentro deste método e assim por diante.

Por exemplo:

    class Bar
        def foo
            # Pode ser definida como local ou _local 
            local = 'local é acessada apenas dentro deste metodo'
            print local
        end
    end
    
    bar = Bar.new
    bar.foo

## Variável Global

Declarada com o **prefixo $**.

Pode ser **acessada em qualquer lugar do programa**.

Seu uso é *FORTEMENTE DESENCORAJADO* pois além de ser visível em qualquer lugar do código, também pode ser alterada em inúmeros locais ocasionando dificuldades no rastreamento de bugs.

Exemplo:

    class Bar
        def foo
            $global = 0
            puts $global
        end
    end
    
    class Baz
        def qux
            $global += 1
            puts $global
        end
    end

    bar = Bar.new
    baz = Baz.new
    bar.foo
    baz.qux
    baz.qux
    puts $global

## Variável de Classe

É declarada com o **prefixo @@**.

**Pode ser acessada em qualquer lugar da classe** onde foi declarada e seu valor é *compartilhado entre todas as instâncias* de sua classe.

Exemplo:

    class User
        @@user_count = 0

        def add(name)
            puts "User #{name} adicionado"
            @@user_count += 1
            puts @@user_count
        end
    end
    
    first_user = User.new
    first_user.add('João')
    
    second_user = User.new
    second_user.add('Mario')

## Variável de Instância

Seu nome **começa com o símbolo @**.

Semelhante a variável de classe, tendo como única diferença o valor que *não é compartilhado entre todas as instâncias de sua classe*.

Exemplo:

    class User
        def add(name)
            @name = name
            puts "User adicionado"
            hello
        end
    
        def hello
            puts "Seja bem vindo, #{@name}!"
        end
    end
    
    user = User.new
    user.add('João')

## Atributos

Como você já sabe objetos possuem informações e comportamentos.

Na aula passada você viu a primeira parte deste conteúdo utilizando métodos para representar comportamentos. Agora é hora de  aprender o restante adicionando e recuperando informações de um objeto.

## Contrutores

Outra questão importante é que toda vez que a instância de uma classe é criada, o Ruby procura por um método chamado initialize. Você pode criar este **método para especificar valores padrões durante a construção da classe**.

# Exercício

Para exercitar o conhecimento adquirido nesta aula,  crie um projeto chamado Compras com a seguinte estrutura:

- compras
    - app.rb
    - mercado.rb
    - produto.rb

Instruções do projeto:   

1. No arquivo *produto.rb*, crie uma classe chamada **Produto** com os atributos: **nome e preço**.

2. No arquivo *mercado.rb* crie uma classe chamada **Mercado** que ao ser inicializada **recebe como atributo um objeto da classe Produto**.

3. Dentro da classe, **crie um método chamado comprar** que imprime a seguinte frase “*Você comprou o produto #{@produto.nome} no valor de #{@produto.preco}*”  

4. No arquivo *app.rb* **crie uma instância da classe Produto** e adicione valores aos atributos nome e preco. Depois, **inicie uma instância da classe Mercado** passando um objeto produto como atributo e para finalizar execute o método comprar.