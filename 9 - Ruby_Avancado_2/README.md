# Ruby Avançado 2

## Assunto da aula

Nesta segunda parte da aula de conteúdos avançados na linguagem Ruby, será ensinado a utilizar expressões regulares, realizar funções matemáticas, trabalhar com data e hora, tratar chamadas de métodos que não existem, o que é a variável self e outros tipos de métodos ainda não vistos.

## Conteúdo

- Regex
- Math
- Time
- Method Missing
- Self
- Private e Protected

## Regex

Abreviação de Regular Expressions (Expressões Regulares), regex é uma sequência de caracteres especiais que nos ajudam a identificar (e selecionar) padrões de caracteres em strings.

- ## 3 Maneiras de criar um Regex

    1. Utilizando o formato /.../

            /expressao/

    2. Através do formato %{...}

            %r{expressao}

    3. Utilizando um Construtor através do Regexp.new(‘…’)

            Regexp.new('expressao')

- ## Casamento de padrões

    É um ato que verifica a presença de padrões em uma cadeia de caracteres.

    Pode ser realizado através do operador **=~** ou do método **match**.

    - Operador =~
        -
        - O operador =~ retorna o offset, ou seja, a distância entre o começo da string até o local onde ocorre o casamento de padrão especificado na expressão.

                /by/ =~ 'ruby'

        - A mesma comparação também pode ser realizada iniciando pela string.

                'ruby' =~ /by/

        - Quando não ocorre o casamento de padrão, o resultado é nulo.

                'ruby' =~ /rails/

    - Método match
        -
        - Retorna um objeto do tipo MatchData, contendo todos os resultados do casamento de padrão.
                
                phrase = "Hellow, how are you?"

                match_data = /how/.match(phrase)

        - Em um objeto do tipo MatchData você pode, por exemplo, acessar o que vem antes do casamento através do método **pre_match**.

                match_data.pre_match
        
        - Ou acessar o que vem depois do casamento com **post_match**

                match_data.post_match

    - Metacharacters and Escapes
        - 
        - Os símbolos **(, )**, **[, ]**, **{, }**, **.**, **?**, **+**, *,  são **metacharacters**. Eles possuem um significado quando utilizados em expressões regulares.

        - Caso o padrão que você procura seja um **metacharacter**, utilize o símbolo de **escape** **\\** para realizar a busca.

                /\?/.match('Tudo bem?')
                /bem\!\!\!/.match('Muito bem!!!')
        
    - Character Classes
        -
        - É uma lista que informa quais caracteres devem aparecer em um ponto do casamento.

            1. Uma **character class** é delimitada por colchetes [, ]
                    
                    /[t]exto/.match('texto começando com t')

            2. Você pode especificar um **range** com o símbolo **–**

                    /[1-5]/.match('123')
                
                - Assim, é procurado um padrão onde o primeiro número pode ser 1, 2, 3, 4 ou 5
            
            3. Note que o casamento também ocorre em uma string que começa com o número 2

                    /[1-5]/.match('223')

            4. O range pode ser utilizado para letras

                    /[a-z]/.match('Oi')

        - Existem alguns metacharacters que se comportam como character classes

            5. Por exemplo, o metacharacter \d verifica o padrão [0-9]

                    /A\d/.match('A4')
        
    - Repetition

        - É possível definir a repetição de um mesmo padrão, evitando escrever a mesma coisa diversas vezes.

            1. Por exemplo, verifique o casamento de padrão em uma etiqueta que começa com uma letra e 3 números.

                    "A343".match(/[A-Z]\d{3}/)

        - Ao em vez de digitar \d\d\d você pode escrever **\d{3}**

            2. Verifique se uma letra foi escrita mantendo o padrão de repetição entre três ou mais vezes

                    "BBB AAAA".match(/A{3,}/)
            
        - A vírgula em {3, } informa que a repetição pode ocorrer 3 ou mais vezes

        - Conclui-se que a Expressão Regular é uma ferramenta muito poderosa, capaz de identificar qualquer padrão em uma string. Caso se interesse pelo tema, recomendo fortemente que leia esta [documentação](https://ruby-doc.org/core-2.5.1/doc/regexp_rdoc.html).

## Math


Math é um módulo nativo para funções matemáticas.

1. Raíz quadrada de 64

        Math.sqrt(64)

2. Verificando o logaritmo de 10000 na base 10

        Math.log10(10000)

3. Logaritmo de 16 na base 2

        Math.log2(16)

4. Calculando o cosseno para o ângulo de 30º

    Primeiro transforme o ângulo em um valor radiano

        radian = 30 * (Math::PI / 180)

    Depois utilize o método cos

        Math.cos(radian)
    
O módulo Math também fornece o valor de duas constantes bastante utilizadas: **E** (número de Euler '*e*') e **PI**

5. Para consultar o valor da constante **E** execute

        Math::E

6. Consulte o valor da constante PI com a instrução

        Math::PI

Tenha acesso a mais métodos matemáticos do módulo Math através da [documentação](https://ruby-doc.org/core-2.2.0/Math.html).







