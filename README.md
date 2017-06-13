# cursoredhat

### Exercícios

#### FERRAMENTAS ESSENCIAIS

##### Comandos Internos e Comandos Externos

1 - Digite **type ls**. Isso executa o comando **ls** onde o **time** interno do bash
mostra informações sobre o tempo necessário para completar este comando.

2 - Digite **which time**. Isso mostra o nome do arquivo **/bin/time** que foi enontrado na variável **$PATH**.

3 - Digite **echo $PATH** para mostrar o conteúdo da variável **$PATH**. Você pode reparar que o **/bin** está incluído na lista, porque também há um comando interno **time**.
O comando **time** do **$PATH** não será executado a menos que você diga ao shell especificamente para fazê-lo.

4 - Digite **/bin/time** para executar o comando **/bin/time/** ao executar **ls**. Você irá perceber que a saída é completamente diferente.



##### Utilizando Redirecionamento de Entrada e Saída e Pipes

1 - Abra um shell como usuário vagrant e digite **cd** sem argumentos. Isso garante que
O diretório inicial deste usuário é o diretório atual enquanto trabalha nesse
exercício. Digite **pwd** para verificar isso.

2 - Digite **ls**. Você verá os resultados na tela.

3 - Digite **ls > /dev/null**. Isso redireciona o STDOUT para o dispositivo nulo, com o resultado que você não irá visualizar.

4 - Digite **ls ilwehgi > /dev/null**. Este comando mostra uma mensagem "não é possível acessar ilwehgi: Arquivo ou diretório não encontrado". Você vê a mensagem porque não é STDOUT, mas uma
mensagem de erro escrita em STDERR.

5 - Digite **ls ilwehgi 2 > /dev/null**. Agora você não verá mais a mensagem de erro.