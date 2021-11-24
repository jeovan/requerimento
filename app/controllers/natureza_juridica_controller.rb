class NaturezaJuridicaController < ApplicationController
  def index
    @input_id = params['data-input']

    @pagy, @naturezas_juridicas = pagy(
      Sitafe::SitafeNaturezaJuridica
      .select("it_co_natureza_juridica, convert(it_no_natureza_juridica,'utf8','WE8MSWIN1252') AS it_no_natureza_juridica")
      .where("TRIM(IT_IN_STATUS) IS NULL AND TRIM(it_no_natureza_juridica) IS NOT NULL")
      .where("it_no_natureza_juridica LIKE ?","%#{params[:natureza_juridica].to_s.upcase}%"),
      :items => 5, 
      link_extra: 'data-remote=true'
    )
  end
end
