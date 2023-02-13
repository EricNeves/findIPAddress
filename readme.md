![Logo](.github/logo.svg)

### Find IP address

<div>
    <img src="https://img.shields.io/github/license/ericneves/FINDIPADDRESS?color=blueviolet&style=flat-square&logo=appveyor">
</div>

<p>Script escrito em bash, que possui a finalidade de encontrar endereços IP's conectados na rede interna.</p>

![Logo](.github/result.png)

### Funcionamento

<p>Iremos seguir a ordem de execução do script e entender o seu simples e poderoso funcionamento.</p>

<p>Primeiro é preciso entender a classe de IP de sua rede interna, no exemplo é utilizado o IP de classe C: <b>192.168.100.{host}</b>, em que os dispositivos conectados correspodem apenas ao último campo: <b>{host}.</b></p>

![Logo](.github/ping.png)

<p>O comando acima é um simples <b>ping</b>, enviando apenas uma contagem <b>-c1</b>. Uma vez que o IP inserido está conectado, é retornado <b>64 bytes</b>, a partir deste ponto iremos filtrar as informações.</p>

![Logo](.github/grep.png)

<p>O comando <b>grep "64 bytes"</b> retorna apenas o IP conectado.</p>
<p>Lembrando que o caracter <b>|</b> separa um comando por vez.</p>

![Logo](.github/awk.png)

<p>O comando <b>awk '{print $4}'</b> retorna o trecho da 4ª coluna.</p>

![Logo](.github/sed.png)

<p>O comando <b>sed 's/://'</b> retira o caracter <b>':'</b>, ao invés de <b>192.168.100.1:</b>, o resultado é <b>192.168.100.1</b>, e pronto, a lógica está pronta.</p>

![Logo](.github/for.png)

<p>Antes de montar o script, o código acima retorna uma lista de valores que serão os possíveis hosts conectados na rede. A variavél <b>$i</b> será inserida de forma dinâmica, por exemplo: <b>192.168.100.$i</b>, resultando numa lista de IP's.</p>

![Logo](.github/chmod.png)

<p>Após entendermos a lógica, vamos criar o script e adicionar a permissão de execução.</p>
<p><b>nano</b> fora o editor escolhido.</p>

![Logo](.github/script.png)
![Logo](.github/result.png)

<p>E essa foi a execução e o resultado do script, podendo ser uma ferrament muito útil para diversos contextos.</p>

### License

<img src="https://img.shields.io/github/license/ericneves/FINDIPADDRESS?color=blueviolet&style=flat-square&logo=appveyor">