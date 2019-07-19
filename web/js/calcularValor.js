/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function multiplicar(idLibro) {
     $('#valorTotal_' + idLibro).val(Number($('#precio_' + idLibro).val())*Number($('#cantidad_' + idLibro).val())) ;
     var sum = 0; 
     $("input[name$='txtValorTotal']").each(function() {
        sum += Number($(this).val()); 
    });
    $('#valorTotal').html(sum);
}

