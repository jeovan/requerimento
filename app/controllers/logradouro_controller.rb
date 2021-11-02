class LogradouroController < ApplicationController
  def index
    @logradouros = Sitafe::SitafeLogradouro
    .select("it_in_status, it_co_tipo_logradouro, it_co_logradouro,convert(it_no_logradouro,'utf8','WE8MSWIN1252') AS it_no_logradouro")
    .where("TRIM(IT_IN_STATUS) IS NULL AND TRIM(IT_NO_LOGRADOURO) IS NOT NULL")
    .where("IT_NO_LOGRADOURO LIKE ?","%#{params[:logradouro].to_s.upcase}%")
    .limit(10)
  end
end