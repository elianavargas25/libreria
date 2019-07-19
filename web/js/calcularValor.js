/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

    function multiplicar(){
      precio = document.getElementById("precio").value;
      cantidad = document.getElementById("cantidad").value;
      total = precio*cantidad;
      document.getElementById("valorTotal").value = total;
    }

