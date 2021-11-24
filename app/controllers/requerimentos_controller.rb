class RequerimentosController < ApplicationController
  def index
    @requerimento = Requerimento.new
  end

  def create
    @requerimento = Requerimento.new(params_formulario)
    if @requerimento.valid?
      #----
    else
      respond_to do |f|
        f.html{render :index, status: :unprocessable_entity}
      end
    end

  end

  def params_formulario
    params.require(:requerimento).permit!
  end

end
