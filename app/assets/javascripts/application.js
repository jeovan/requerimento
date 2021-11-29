//= require rails-ujs
//= require_tree .





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

        var linha = `
        <tr>
            <td>${socio['requerimento[id_socio]']}</td>
            <td class="text-center">
            <input type="hidden" name="lista_socios[]" value="${socio}"/>
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