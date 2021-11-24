class ContadorController < ApplicationController
  def index
    @input_id = params['data-input']

    @pagy, @contadores = pagy(
      Sitafe::SitafePessoa
      .select("gr_numero_crc, gr_identificacao, convert(it_no_pessoa,'utf8','WE8MSWIN1252') AS it_no_pessoa")
      .where("it_in_ultima_situacao = 9 and trim(gr_numero_crc) is not null")
      .where("it_no_pessoa LIKE ? OR gr_identificacao LIKE ? ","%#{params[:contador].to_s.upcase}%","%#{params[:contador].to_s.upcase}%"),
      :items => 5, 
      link_extra: 'data-remote=true'
    )
  end
end
