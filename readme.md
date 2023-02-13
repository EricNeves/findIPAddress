![Logo](.github/logo.svg)

### Find IP address

<div>
    <img src="https://img.shields.io/github/license/ericneves/FINDIPADDRESS?color=green&style=flat-square&logo=appveyor">
</div>

<p>Script escrito em bash, que possui a finalidade de encontrar endereços IP's conectados na rede interna.</p>

![Logo](.github/result.png)

### Funcionamento

<p>Iremos seguir a ordem de execução do script e entender o seu simples e poderoso funcionamento.</p>

<p>Primeiro é preciso entender a classe de IP de sua rede interna, no exemplo é utilizado o IP de classe C: <b>192.168.100.{host}</b>, em que os dispositivos conectados correspodem apenas ao último campo: <b>{host}.</b></p>
<br>
<p>O comando abaixo é um simples <b>ping</b>, enviando apenas uma contagem <b>-c1</b>. Uma vez que o IP inserido está conectado, é retornado <b>64 bytes</b>, a partir deste ponto iremos filtrar as informações.</p>

![Logo](.github/ping.png)

<p>O comando <b>grep "64 bytes"</b> retorna apenas o IP conectado.</p>
<p>Lembrando que o caracter <b>|</b> separa um comando por vez.</p>

![Logo](.github/grep.png)

<p>O comando <b>awk '{print $4}'</b> retorna o trecho da 4ª coluna.</p>

![Logo](.github/awk.png)

<p>O comando <b>sed 's/://'</b> retira o caracter <b>':'</b>, ao invés de <b>192.168.100.1:</b>, o resultado é <b>192.168.100.1</b>, e é isso, a lógica está pronta.</p>

![Logo](.github/sed.png)

<p>Antes de montar o script, o código abaixo retorna uma lista de valores que serão os possíveis hosts conectados na rede. A variavél <b>$i</b> será inserida de forma dinâmica, por exemplo: <b>192.168.100.$i</b>, resultando numa lista de IP's.</p>

![Logo](.github/for.png)

<p>Após entendermos a lógica, vamos criar o script e adicionar a permissão de execução. Sendo que <b>nano</b> foi o editor que escolhi.</p>

![Logo](.github/chmod.png)

<p>E essa foi a execução e o resultado do script, podendo ser uma ferrament muito útil para diversos contextos.</p>

![Logo](.github/script.png)
![Logo](.github/result.png)

### License

<img src="https://img.shields.io/github/license/ericneves/FINDIPADDRESS?color=green&style=flat-square&logo=appveyor">