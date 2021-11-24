class CargoController < ApplicationController
  def index
    @input_id = params['data-input']

    @pagy, @cargos = pagy(
      Sitafe::SitafeCargoSocio
      .select("it_co_cargo_socio, convert(it_no_cargo_socio,'utf8','WE8MSWIN1252') AS it_no_cargo_socio")
      .where("TRIM(IT_IN_STATUS) IS NULL AND TRIM(it_co_cargo_socio) IS NOT NULL")
      .where("it_no_cargo_socio LIKE ? OR it_co_cargo_socio = ? ","%#{params[:cargo].to_s.upcase}%","#{params[:cargo]}"),
      :items => 5, 
      link_extra: 'data-remote=true'
    )
  end
end
