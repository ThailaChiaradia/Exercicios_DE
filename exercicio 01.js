var clientes = 
[
    { id: 1, nome: 'Luiz Santos Silveira', idade: 18},
    { id: 2, nome: 'Ricardo Lopes Alves', idade: 30},
    { id: 3, nome: 'Gustavo Silva Junior', idade: 26},
];


var nomes = [];

for (var i = 0; i<clientes.length; i++)
{
    nomes.push(clientes[i].nome);    
}

for (var i = 0; i<nomes.length; i++)
{ 
    const palavras = nomes[i].split(' ');
    const ultimaPalavra = palavras[palavras.length - 1];
    const primeiraPalavra = palavras[0];    
    const resultado = `${ultimaPalavra} ${primeiraPalavra}`;
    clientes[i].nome = resultado;
}

clientes.forEach(function(objeto) 
{
    for( var chave in objeto )
        document.body.innerHTML += chave + ": " + objeto[chave] + "<br>";
        
        document.body.innerHTML += "<br>";
        
});