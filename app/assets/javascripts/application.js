//= require rails-ujs
//= require_tree .



$(document).on('click','.btn-logradouro',function(){
  var id = `#${$(this).attr('data-input')}`
  var valor = `${$(this).attr('data-valor')}`
  $(id).val(valor)
  $('#modal_logradouro').modal('hide');
})


$(document).on('click','.btn-municipio',function(){
  var id = `#${$(this).attr('data-input')}`
  var valor = `${$(this).attr('data-valor')}`
  $(id).val(valor)
  $('#modal_municipio').modal('hide');
})