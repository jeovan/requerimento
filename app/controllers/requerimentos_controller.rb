 require 'base64'

class RequerimentosController < ApplicationController
  def index
    @requerimento = Requerimento.new
  end

  def create
    @requerimento = Requerimento.new(params_formulario)
    # puts '==============================='
    # puts params[:requerimento_lista_socios].inspect
    # puts '-------------------------------'
    # puts @requerimento.lista_socios
    # puts Base64.decode64(@requerimento.lista_socios["0"])
    # puts '----------------------'
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
