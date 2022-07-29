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