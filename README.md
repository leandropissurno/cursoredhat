# curso redhat

### Exercícios

----
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


##### Trabalhando com History

1 - Digite **history** para obter uma visão geral dos comandos que você usou anteriormente.

2 - Digite alguns comandos como os seguintes:
    
**ls** <br>
**pwd** <br>
**cat /etc/hosts** <br>
**ls -l** <br>
    
   Digite **history** novamente.

3 - Digite **history -c** para limpar o histórico.


##### Vim

1 - Digite **vim ~/testfile**. Isso inicia vim e abre um arquivo com o nome testfile em ~, que representa o seu diretório inicial atual.

2 - Pressione **i** para entrar no modo inserção e digite o seguinte texto:

vaca <br>
ovelha <br>
boi <br>
galinha <br>
cobra <br>
peixe <br>
oxigênio <br>

3 - Pressione ESC para voltar ao modo de comando e digite **:w** para escrever o arquivo usando o mesmo nome de arquivo.

4 - Digite **:3** para ir a linha número 3.

5 - Digite **dd** para excluir esta linha.

6 - Digite **dd** novamente para excluir outra linha.

7 - Digite **u** para desfazer a última exclusão.

8 - Digite **o** para abrir uma nova linha.

9 - Digite mais algumas palavras na posição atual do cursor:

árvore <br>
fazenda <br>

10 - Pressione **Esc** para voltar ao modo de comando.

11 - Digite **:%s/boi/BOI/g** e tecle enter.

12 - Digite **:wq** para escrever no arquivo e sair. Se, por algum motivo, isso não funcionar, use **:wq!**.


----
#### SISTEMAS EM EXECUÇÃO

##### Systemd

1 - Listar os tipos de unidades
**systemctl -t help**

2 - Digite **yum -y install vsftpd** para instalar o serviço Very Secure FTP.

3 - Digite **systemctl start vsftpd**. Isso ativa o servidor FTP em sua máquina.

4 - Digite **systemctl status vsftpd**. Você obterá o status do serviço Very Secure FTP e irá perceber que o serviço está atualmente operacional. Você pode ver tamém na linha **Loaded** está desabilitado. Isso significa que ele não será ativado quando o sistema reiniciar.

5 - Digite **systemctl enable vsftpd**. Isso cria um link simbólico no diretório **wants** para o alvo multiusuário para garantir que o serviço seja recuperado após um reinício.

6 - Digite **systemctl status vsftpd** novamente. Você verá agora que o arquivo da unidade mudou de desativado para ativado.