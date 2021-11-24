class AtividadeEconomicaController < ApplicationController
  def index
    @input_id = params['data-input']

    @pagy, @atividades_economicas = pagy(
      Sitafe::SitafeAtividadeEconomica
      .select("it_co_atividade_economica, convert(it_no_atividade_economica,'utf8','WE8MSWIN1252') AS it_no_atividade_economica")
      .where("TRIM(IT_IN_STATUS) IS NULL AND TRIM(it_no_atividade_economica) IS NOT NULL")
      .where("it_no_atividade_economica LIKE ? OR it_co_atividade_economica = ? ","%#{params[:atividade_economica].to_s.upcase}%",params[:atividade_economica]),
      :items => 5, 
      link_extra: 'data-remote=true'
    )
  end
end
