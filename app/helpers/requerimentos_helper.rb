module RequerimentosHelper

  def subtitulo nome 
  %Q{
    <div class="row">
        <div class="col-md-12" style="padding:20px">
          <h4 class="decorated"><span>#{nome}</span></h4>
        </div>
    </div>
  }
  end


  def lista_estabelecimentos
    [
      ['LOJA COM ATENDIMENTO AO PUBLIC',1],
      ['LOJA SEM ATENDIMENTO AO PUBLIC',2],
      ['DEPOSITO FECHADO',3],
      ['CANTEIRO DE OBRAS',4],
      ['COMERCIO AMBULANTE',5],
      ['OUTRAS',6]
    ]
  end


  def input_pesquisa input:, size:, label:
    %Q{
      <div class="col-md-#{size}">
        <div class="form-group">
            <label class="control-label">#{label}</label>
            <span class="text-danger">*</span></label>
            <div>
                <div class="input-group">
                #{input}
                <span class="input-group-btn text-primary" style="cursor:pointer">
                    <span class="input-group-btn">
                    <button style="background-color:#286fa5" class="btn btn-primary" type="button" data-toggle="modal" data-target="#modal_contribuinte">buscar</button>
                    </span>
                </span>
                </div>
            </div>
        </div>
      </div>
    }
  end

end
