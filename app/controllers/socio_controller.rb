class SocioController < ApplicationController
  def index
    @input_id = params['data-input']

    @pagy, @socios = pagy(
      Sitafe::SitafePessoa
      .select("gr_identificacao, convert(it_no_pessoa,'utf8','WE8MSWIN1252') AS it_no_pessoa")
      .where("it_in_ultima_situacao = 9 ")
      .where("it_no_pessoa LIKE ? OR gr_identificacao LIKE ? ","%#{params[:socio].to_s.upcase}%","%#{params[:socio].to_s.upcase}%"),
      :items => 5, 
      link_extra: 'data-remote=true'
    )
  end
end
