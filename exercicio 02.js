
var numero = "5(1)9-876-543-21";

document.body.innerHTML += "Número não formatado: " + numero + "<br>";

var formatado;
formatado = numero.replace(/[^0-9]/g, "")

const formatacao = formatado.replace(/(\d{2})?(\d{1})?(\d{4})?(\d{4})/, function(matchDaRegex, a, b, c, d)
{
    return `(${a})_${b}_${c}-${d}`;
});

  document.body.innerHTML += "Número Formatado: " + formatacao;
