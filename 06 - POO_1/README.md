## Assunto da aula
- O que é Programação Orientada a Objetos
- Como utilizá-la na linguagem Ruby

## Conteúdo
- POO
- Objeto
- Classe
- Classes no Ruby

# Programação Orientada a Objetos
POO (Programação Orientada a Objetos) é um  Paradigma de programação criado para lidar com softwares grandes e complexos. É um conceito seguido não só pelo Ruby, mas também por várias outras linguagens de programação como Java, Python, C++, etc.

Sua estrutura é definida por 04 pilares: **Abstração**, **Encapsulamento**, **Herança** e **Poliformismo**.

## Abstração
Ação de abstrair uma entidade do mundo real e transformá-la em uma classe, apenas com as características necessárias para o desenvolvimento.

## Encapsulamento
Ato de dividir um programa em diversas partes tornando-o flexível, fácil de modificar e incluir novas funcionalidades.

## Herança
Habilidade de criar uma Classe com características de outra existente. A herança provê o reuso e reaproveitamento de código.

## Polimorfismo
Capacidade de utilizar um método de diferentes formas para diferentes Objetos.

# Objeto

## O que é?

Por definição, objeto é toda coisa material que pode ser percebida pelos sentidos, como por exemplo um carro, livro, cachorro, caneta, avião e etc.

Na programação um objeto é a *representação de um objeto do mundo real*.

Todos estes objetos apresentam duas característica em comum: informações e comportamentos.

    Ex:  Cachorro.

    Informações:
        Raça: Pastor Alemão;
        Peso: 35 Quilos;
        Idade: 3 Anos.

    Comportamento:
        Late;
        Come;
        Corre.

Em POO chamamos as informações de *attributes* (atributos) e os comportamentos de *methods* (métodos).

# Classe

## O que é?

Tendo como exemplo o objeto carro, pense em uma classe como a planta deste carro. Com ela é possível construir vários carros.

Uma classe é como a planta de um objeto.

## Classes no Ruby

Uma classe é definida pela palavra class seguida de seu Nome, e finalizada pela palavra end.

O nome de uma classe deve sempre começar com letra maiúscula. Para nomes compostos utilize o padrão CamelCase.

### Herança

Para herdar características de outra classe, adicione na frente do nome de uma classe filha o símbolo de menor e  depois o nome da classe pai.

    class ClasseFilha < ClassePai
    end

# Exercício

## Crie um programa seguindo este paradigma com:

### Classes

- **Esportista**
    - Métodos
        - competir -> *Imprime a mensagem “Participando de uma competição”*

- **JogadorDeFutebol**
    - Métodos
        - correr -> *Imprime a mensagem “Correndo atrás da bola”*

- **Maratonista**
    - Métodos
        - correr -> *Imprime a mensagem “Percorrendo o circuito”*

As classes JogadorDeFutebol e Maratonista devem herdar os comportamentos da classe Esportista.

No final do programa execute os métodos competir e correr em objetos do tipo JogadorDeFutebol e Maratonista.
