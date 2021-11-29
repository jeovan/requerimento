//= require rails-ujs
//= require_tree .

function uuidv4() {
    return ([1e7]+-1e3+-4e3+-8e3+-1e11).replace(/[018]/g, c =>
      (c ^ crypto.getRandomValues(new Uint8Array(1))[0] & 15 >> c / 4).toString(16)
    );
  }



$(document).ready(function(){
    $('.btn-remove-socio').on('click',function(){
        $(this).closest('tr').remove()
    })

    $('.btn-add-socio').on('click',function(){
        var inputs = $('#bloco_socio').find('input');
        var keys = []
        var socio = {}
        Object.keys($('#bloco_socio').find('input')).forEach(function (key) {
            keys.push(inputs[key].id)
            socio[inputs[key].name] = inputs[key].value
        })
        
        var id = $('.linha-socio').length + 1

        var linha = `
        <tr>
            <td>${socio['requerimento[id_socio]']}</td>
            <td class="text-center linha-socio">
                
                <input type="hidden" name="requerimento[lista_socios[${uuidv4()}]]" value="${window.btoa(unescape(encodeURIComponent( JSON.stringify(socio) )))}"/>
                <button type="button" style="padding:10px 10px;" class="btn btn-danger btn-raised legitRipple btn-remove-socio">
                <i class=" icon-trash"></i>
                </button>
            </td>
        </tr>
        `

        $('#tb_socios').append(linha)

        Object.keys($('#bloco_socio').find('input')).forEach(function (key) {
            socio[inputs[key].name] = inputs[key].value
        })

        Object.keys(keys).forEach(function (key) {
            // console.log(`#${keys[key]}`)
            // var input_local = $(`#${keys[key]}`)
            // if (input_local.type = "checkbox"){

            // }else{
            //     $(`#${keys[key]}`).val('');
            // }
            $(`#${keys[key]}`).val('');
            
            // socio[socio[key].name] = inputs[key].value
        })

    })

})