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
end
