class BairroController < ApplicationController
  def index
    @input_id = params['data-input']

    @pagy, @bairros = pagy(
      Sitafe::SitafeBairro
      .select("it_co_bairro, convert(it_no_bairro,'utf8','WE8MSWIN1252') AS it_no_bairro")
      .where("TRIM(IT_IN_STATUS) IS NULL AND TRIM(it_no_bairro) IS NOT NULL")
      .where("it_no_bairro LIKE ?","%#{params[:bairro].to_s.upcase}%"),
      :items => 5, 
      link_extra: 'data-remote=true'
    )
  end
end
