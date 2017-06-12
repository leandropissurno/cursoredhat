---?image=img/dtp.jpg

<div style="float:right; margin:-45px; padding:0; font-family:Helvetica Neue; font-size:120%; font-weight:bold; color:white">REPASSE DE CONHECIMENTO</div><br>
<span style="float:right; margin:-45px; padding:0; font-family:Helvetica Neue; font-weight:bold; color:white">REDHAT</span>

---?image=img/dtp_capitulo.jpg

<div style="float:center; font-family:Helvetica Neue; font-size:180%; font-weight:bold; color:#2E86AC">VIRTUALIZAÇÃO</div><br>

+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">Tradicional X Virtual </b></span>

![Image-Absolute](img/traditional_vs_virtual_0.jpg)



+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">Hypervisor </b></span>

![Image-Absolute](img/type1-vs-2.png)



+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">Benefícios </b></span>

![Image-Absolute](img/vmarchi.jpg)



---?image=img/dtp_capitulo.jpg

<div style="float:center; font-family:Helvetica Neue; font-size:180%; font-weight:bold; color:#2E86AC">VAGRANT</div><br>

+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">O que é?</b></span>

![Image-Absolute](img/vagrant.png)

+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">Como funciona?</b></span>

![Image-Absolute](img/burnm.gif)

+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">Vagrantfile</b></span>

```Ruby
# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.define "centos7" , primary: true do |centos7|
    centos7.vm.synced_folder ".", "/vagrant", disabled: true
    centos7.vm.box = "centos/7"
    centos7.vm.network "private_network", ip: "192.168.33.85"
    centos7.vm.hostname = "centos7.dtp" 
    centos7.vm.provider "virtualbox" do |vb|
      vb.name = "centos/7"
      vb.memory = 1024
      end
   end  
end
```

+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">vagrant up</b></span>

![Image-Absolute](img/vagrant_fluxo.png)


---?image=img/dtp_capitulo.jpg

<div style="float:center; font-family:Helvetica Neue; font-size:180%; font-weight:bold; color:#2E86AC">FAMÍLIA REDHAT</div><br>

+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">Fedora x Redhat x CentOS </b></span>

![Image-Absolute](img/linlogos.jpg)

---?image=img/dtp_capitulo.jpg

<div style="float:center; font-family:Helvetica Neue; font-size:180%; font-weight:bold; color:#2E86AC">FERRAMENTAS ESSENCIAIS</div><br>

+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">Entrada, Saída e Erro padrão</b></span>

|*Nome*|*Destino*|*Redireciona*|*Número Descritor*|
|---|---|---|---|
|STDIN|Teclado|< ou 0<|0|
|STDOUT|Monitor|> ou 1>|1|
|STDERR|Monitor|2>|2|

+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">Comandos Básicos</b></span>

![Image-Absolute](img/comandos_essenciais0.png)

---?image=img/dtp_capitulo.jpg

<div style="float:center; font-family:Helvetica Neue; font-size:180%; font-weight:bold; color:#2E86AC">SISTEMAS EM EXECUÇÃO</div><br>

+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">Systemd</b></span>

![Image-Absolute](img/systemd_archi.png)

+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">Runlevels / Target</b></span>

![Image-Absolute](img/targetsr.png)


---?image=img/dtp_capitulo.jpg

<div style="float:center; font-family:Helvetica Neue; font-size:180%; font-weight:bold; color:#2E86AC">SISTEMAS DE ARQUIVOS</div><br>

+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">Definição</b></span>

![Image-Absolute](img/filesystem.gif)

+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">Tipos</b></span>

![Image-Absolute](img/filesystem.png)


---?image=img/dtp_capitulo.jpg

<div style="float:center; font-family:Helvetica Neue; font-size:180%; font-weight:bold; color:#2E86AC">USUÁRIOS E GRUPOS</div><br>

+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">Usuários</b></span>

* Usuários
* Superusuários
* sudo **x** su
```Bash
cat /etc/passwd
root:x:0:0:root:/root:/bin/bash
vagrant:x:1000:1000:vagrant:/home/vagrant:/bin/bash
vboxadd:x:996:1::/var/run/vboxadd:/bin/false
```

+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">Grupos</b></span>

* Grupos primários
* Grupos secundários
* Permissões UGO
```Bash
-rw-rw-r--. 1 vagrant vagrant 6 Jun 12 20:20 teste
```

---?image=img/dtp_capitulo.jpg

<div style="float:center; font-family:Helvetica Neue; font-size:180%; font-weight:bold; color:#2E86AC">SEGURANÇA</div><br>

+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">Firewalld</b></span>

* Nova interface para o Firewall no Red Hat
* Substitui o iptables
* Serviços e Zonas x Regras e Cadeias


+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">Firewalld - Zonas</b></span>

###### drop
###### block
###### public
###### external
###### dmz
###### work
###### home
###### internal
###### trusted

+++?image=img/dtp_fundo.jpg

<span style="color:#035D93; font-size:1.5em">Firewalld - Serviços</b></span>

**dns docker-registry dropbox-lansync freeipa-ldap freeipa-ldaps http https imap imaps pulseaudio puppetmaster radius rpc-bind rsyncd samba samba-client sane smtp smtps snmp snmptrap squid ssh**