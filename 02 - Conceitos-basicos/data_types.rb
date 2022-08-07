# Integer: Como na matemática, Inteiro é o tipo de dado que   */
# representa o conjunto de números positivos, negativos e 0.  */

integer_number = -20

# Verifica a classe da variável                               */
puts integer_number.class

# Float: Tipo que representa os números reais inexatos.       */
# De forma abreviada, são números decimais, números que       */
# contêm ponto flutuante.                                     */

float_number = -20.05
puts float_number.class

# Boolean: Tipo de dado usado para informar a veracidade de   */
# algo. Possui apenas dois estados, sendo eles true que é     */
# uma instância da classe TrueClass e false que é uma         */
# instância da classe FalseClass.                             */

boolean =  true
puts boolean.class

# String: Tipo que representa um texto. Um conjunto de        */
# letras, símbolos ou números. Pode ser definido de várias    */
# formas, porém, as mais comuns são dentro de aspas simples   */
# ou duplas.                                                  */
	
string =  "Programming with ruby"
puts string.class

# Um tipo que nos permite armazenar uma lista ordenada de     */
# dados em um único objeto. Para definir um array você deve   */
# utilizar colchetes.                                         */

bitcode_array = [ 0, 1, 2 ]

# Acessa a terceira posição do array                          */
puts bitcode_array[2]

puts bitcode_array.class

# Símbolo é um tipo de dado semelhante a String, com a        */
# diferença de que ele é um objeto imutável. Duas strings     */
# idênticas podem ser objetos diferentes, mas um símbolo é    */
# apenas um objeto, ocupando sempre o mesmo espaço na memória.*/

# Um símbolo sempre é definido começando com dois pontos :    */
# seguido de seu nome.                                        */

onebit_symbol = :ruby_symbol
second_symbol = :ruby_symbol

# Saiba qual posição da memória esse símbolo está rodando     */
puts onebit_symbol.object_id
puts second_symbol.object_id

puts onebit_symbol.class

# Hash: Tipo que representa uma coleção de dados organizados  */
# por chaves únicas e seus respectivos valores. Enquanto      */
# arrays são definidos com colchetes, hashes são              */
# com definidos chaves '{ }'                                  */

onebit_hash = {course: 'ruby', language: 'pt-Br', locale: 'onebitcode.com'}

# Saiba onde encontrar o curso de ruby rodando                */
onebit_hash[:locale]

onebit_hash.class

# Tipagem Dinâmica: No ruby não é preciso definir o tipo de   */
# dado antes de atribuir um valor à uma variável. O tipo é    */
# dinâmico, ou seja, ele é definido de acordo com o dado      */
# atribuído.                                                  */

# Um exemplo é que podemos alterar o valor de uma variável    */
# diversas vezes e em cada uma delas notar que o tipo de dado */
# também mudou.                                               */


# Operadores Matemáticos: Para resolver operações matemáticas */
# no ruby contamos com a seguinte lista de operadores         */
# aritméticos:                                                */

# '+'  (Adição)                                               */
# '-'  (Subtração                                             */
# '*'  (Multiplicação)                                        */
# '/'  (Divisão)                                              */
# '%'  (Módulo)                                               */
# '**' (Expoente)                                             */


# Entrada/Saída: Essas duas operações manipulam dados, com a  */
# diferença que a entrada ocorre quando o programa lê dados   */
# que podem ter sido recebidos de um teclado, de um arquivo,  */
# ou então de outro programa e a saída é um dado produzido    */
# pelo programa que pode ser exibido em uma tela, enviado     */
# para um arquivo ou então para outro programa.               */

# Saída de dado
print 'Digite seu nome: '

# Recebendo uma entrada do teclado

name = gets.chomp

# gets é um método que recebe como entrada um dado inserido   */
# pelo teclado. Como ele captura qualquer coisa precisamos    */
# do .chomp para que quando o enter for pressionado ele não   */
# crie uma quebra de linha.                                   */

# Use códigos Ruby dentro de uma string com #{code}
puts "Olá #{name}!"

# O gets recebe os dados como String, mas podemos 
# transformá-los em números inteiros e realizar operações 
# matemáticas com eles como no exemplo a seguir.

print "Digite o primeiro número inteiro: "
# .to_i transforma a string em um número inteiro
number1 = gets.chomp.to_i
 
print "Digite o segundo número inteiro: "
number2 = gets.chomp.to_i
 
addition = number1 + number2
puts "O resultado da adição entre os dois números é #{addition}"
