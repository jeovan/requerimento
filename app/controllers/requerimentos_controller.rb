class RequerimentosController < ApplicationController
  def index
    @requerimento = Requerimento.new
    
  end
  
  def create
    @requerimento = Requerimento.new(requerimento_params)
    # puts @requerimento.valid?
    # puts @requerimento.errors.to_json
    respond_to do |format|
      if @requerimento.valid?
        # format.html { redirect_to @dashboard_produto, notice: "Produto was successfully created." }
        # format.json { render :show, status: :created, location: @dashboard_produto }
      else
        format.html { render :index, status: :unprocessable_entity }
        format.json { render json: @requerimento.errors, status: :unprocessable_entity }
      end
    end

  end


  def requerimento_params
    params.require(:requerimento).permit(:tipo_servico)

  end
end
