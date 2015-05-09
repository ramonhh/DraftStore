/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



var custo = document.getElementsByClassName("inputCusto")[0];
var percentLucro = document.getElementsByClassName("inputLucro")[0];
var previsto = document.getElementsByClassName("inputPrevisto")[0];

custo.addEventListener("input", atualizarPrevisto);
percentLucro.addEventListener("input", atualizarPrevisto);

function atualizarPrevisto(){
    var p = custo.value * percentLucro.value / 100.0;
    var valor = custo.value + 1;
    console.log(valor);
    previsto.value = "R$ "+valor;
}
