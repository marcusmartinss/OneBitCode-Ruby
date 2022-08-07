# Ruby Avançado 1

## Assunto da aula

A partir desta aula o conteúdo do curso segue para conceitos avançados da linguagem Ruby e para dar início a este ciclo serão passadas algumas das coisas mais interessantes da linguagem:  blocks, lambdas, namespaces e modules.

## Conteúdo

- Blocks
- Lambdas
- Namespaces
- Modules

## Blocks

Um **bloco pode ser entendido como uma função anônima**, ou seja, uma função sem nome. É definido entre do..end  ou colchetes e da mesma forma que os métodos que você viu até agora, pode receber parâmetros para sua execução.

- Use colchetes para escrever blocos que ocupam apenas uma linha.
- Utilize barras verticais para passar parâmetros para um bloco.
- Em blocos que ocupam várias linhas, faça uso do do..end

Blocos podem ser passados como argumento implícito de um método. E, para chamá-lo dentro do método, é utilizada a palavra *'yield'*.

O ruby oferece um método chamado *block_given?* para verificar se o bloco foi passado como argumento.

Outra forma de receber blocos como parâmetro é utilizar o símbolo '*&*'. chamando o bloco com o método '*.call*'. Uma das conveções é deixar o **&nomedobloco** como último parâmetro.

Um bloco com várias linhas de código também pode ser passado.

## Lambda

Bastante similar aos blocos com as seguintes diferenças:

### 1. Sintaxe

Uma lambda é iniciada com a palavra lambda.

Ela pode ser guardada em uma variável para ser chamada futuramente com o método **.call**.

Uma lambda também pode receber parâmetros para sua execução

Em lambdas que ocupam várias linhas, não declare a lambda de forma abreviada e utilize o do..end

### 2. Argumentos

Diferente de blocks, você pode passar mais de uma lambda como argumentos de um método.

## Modules

Servem para agrupar e reutilizar código.

Os 'modules' possuem duas funções:

### 1. Namespace

Serve como um container para agrupar objetos relacionados (classes, constantes, métodos ou outros modules).

### 2. Mixins

Servem para incluir funcionalidades extras as classes.

# Exercícios

## Missão 1

O ruby oferece um método chamado **capitalize** para tornar a primeira letra de uma string maiúscula.

Sabendo disso crie uma lambda que recebe um nome como parâmetro e o imprime com a primeira letra maiúscula. Esta lambda deverá ser salva dentro de uma variável que será passada como argumento de um método chamado **capitalize_name**.

Dentro deste método você chamará a lambda duas vezes, passando como parâmetro em cada uma delas um nome diferente.    

## Missão 2

Crie um módulo chamado **Person** com as classes **Juridic** e **Physical**.

Ao executar a instrução:

    Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add

Seu código deverá retornar:

    Pessoa Jurídica Adicionada
    nome: M. C. Investimentos
    cnpj: 4241.123/0001

E com a instrução:

    Person::Physical.new('José Almeida', '425.123.123-123').add

Deverá retornar:

    Pessoa Física Adicionada
    nome: José Almeida
    cnpj: 425.123.123-123

## Missão 3

Pesquisar o que é o Proc em Ruby e descobrir as diferenças entre ele e o Lambda.

### Resposta Missão 3

O Proc não dá erros quando existem argumentos a mais passados, e executa apenas com os que são declarados explicitamente. Já o Lambda precisa ter o número exato de argumentos declarados para que funcione. Exemplo:

    p = Proc.new {|a, b| puts a**2+b**2 } # => #<Proc:0x3c7d28@(irb):1>
    p.call 1, 2 # => 5
    p.call 1 # => NoMethodError: undefined method `**' for nil:NilClass
    p.call 1, 2, 3 # => 5
    l = lambda {|a, b| puts a**2+b**2 } # => #<Proc:0x15016c@(irb):5 (lambda)>
    l.call 1, 2 # => 5
    l.call 1 # => ArgumentError: wrong number of arguments (1 for 2)
    l.call 1, 2, 3 # => ArgumentError: wrong number of arguments (3 for 2)

Além disso, Lambdas retornam o valor do Lambda, enquanto o Proc retorna o seu bloco. Ex:

    lambda { return :foo }.call # => :foo
    return # => LocalJumpError: unexpected return
    Proc.new { return :foo }.call# => LocalJumpError: unexpected return

Fonte: [Stack Overflow](https://stackoverflow.com/questions/1740046/whats-the-difference-between-a-proc-and-a-lambda-in-ruby)