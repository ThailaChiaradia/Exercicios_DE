<?php

$arrayDeNascimento = [
'Francisco Souza' => '10-12-1996',
'Arthur Golveia' => '14-01-2000',
'Guilherme Rosa' => '26-05-1985',
'Marcelo Planalto' => '26-05-1985'
];

$nomes = ['Francisco Souza', 'Arthur Golveia', 'Guilherme Rosa', 'Marcelo Planalto'];

$cliente1 = new stdClass();
$cliente1->nome = $nomes[0];
$cliente1->nascimento = $arrayDeNascimento['Francisco Souza'];

$cliente2 = new stdClass();
$cliente2->nome = $nomes[1];    
$cliente2->nascimento = $arrayDeNascimento['Arthur Golveia'];

$cliente3 = new stdClass();
$cliente3->nome = $nomes[2];        
$cliente3->nascimento = $arrayDeNascimento['Guilherme Rosa'];

$cliente4 = new stdClass();
$cliente4->nome = $nomes[3];
$cliente4->nascimento = $arrayDeNascimento['Marcelo Planalto'];

$arrayDeClientes = [$cliente1, $cliente2, $cliente3, $cliente4];

foreach ($arrayDeClientes as $cliente) 
{
    echo "Nome: " . $cliente->nome . "<br> Nascimento: " . $cliente->nascimento . "<br><br>";
}
?>
