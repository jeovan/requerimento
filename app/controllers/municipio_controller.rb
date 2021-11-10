class MunicipioController < ApplicationController
  def index
    @input_id = params['data-input']

    @pagy, @municipios = pagy(
      Sitafe::SitafeMunicipio
      .select("IT_SG_UF_MUNICIPIO, IT_CO_MUNICIPIO, convert(IT_NO_MUNICIPIO,'utf8','WE8MSWIN1252') AS IT_NO_MUNICIPIO")
      .where("TRIM(IT_IN_STATUS) IS NULL AND TRIM(IT_NO_MUNICIPIO) IS NOT NULL")
      .where("IT_NO_MUNICIPIO LIKE ?","%#{params[:municipio].to_s.upcase}%"),
      :items => 5, 
      link_extra: 'data-remote=true'
    )
    
  end
end
