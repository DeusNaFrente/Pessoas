# Cadastro de Pessoas com login e senha.

Ferramenta para cadastro de pessoas com endereço, possui senha e usuário para entrar.(Junior e senha 123)

## Dados importantes:

1. [Tela inicial](#após o login existe uma imagem que orienta utilização)
2. [Tela de cadastro](#a tela é bem simples com botões básicos de fácil interção)
3. [Tabela com dados](#clicando no item desejado ela faz a edição do mesmo)
4. [A arquitetura usada foi MVC](#cuidei em separar as classes e organizar o código)
5. [Tecnologias](#JSF(Prime faces), Hibernate(persistência no banco, Maven e banco PostgreSQL)
6. [Motivo de escolha: Simplicidade](#tem bastante suporte e informação sobre essas ferramentas isso facilita o suporte)
7. [IDE - Netbeans 17](#a compilação dos códigos foram todas feitas por dentro desta ide)
8. [Teste de aplicação](#é necessário ter o apache Tomcat(vers. 8.5.60), pois estou enviando o arquivo .war, deve instalar o TC e fazer o deploy do .war. Instale o TC, cliquena pasta com este nome apache-tomcat-8.5.60, em seguida clique em conf, edite o arquivo tomcat-users.xml e substitua tudo que tem nele por este trecho:


<?xml version="1.0" encoding="UTF-8"?>
<tomcat-users xmlns="http://tomcat.apache.org/xml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0" xsi:schemaLocation="http://tomcat.apache.org/xml tomcat-users.xsd">
    <role rolename="manager-script"/>
    <role rolename="admin"/>
    <role rolename="manager-gui"/>
    <role rolename="admin-gui"/>
    <role rolename="admin-script"/>
    <user password="SenMy@do" roles="manager-script,admin,manager-gui,admin-gui,admin-script" username="admin"/>
    <user password="junior" roles="manager-script,admin,manager-gui,admin-gui" username="junior"/>
</tomcat-users>

Salve e guarde seu usuario e senha que é junior e junior.

acesse o cmd como administrador ou o shel do linux, navegue até a pasta dele e entre no diretório bin"\apache-tomcat-8.5.60\bin", execute este comando: "catalina.bat start", feito isso abra o browser e digite no campo de endereço: http://localhost:8080/manager/html, ele abrira uma tela de
administração do TC, ao descer a rolagem vai ver algo como Select WAR file to upload, clique escolher arquivo e aponde para o .war, isto fará o deploy da aplicação, caso queira parar o TC "catalina.bat stop". 

O próximo passo seria restaurar o backup do banco de dados. Atravez do programa pgAdmin 4 será possível restaurar a base da seguinte forma:
Clicar em tools, restore e apontar para o arquivo chamado pstgPessoa.tar e seguir os indicativos da tela, após restaurado ja pode ir ao browser 
e colocar no endereço http://localhost:8080/cadastro/. O usuário é Junior e a senha 123.)

É isso :-)



## Projetinho 100% funcionando


