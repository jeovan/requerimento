class HomologaRequerimentoStService < AdsProxyService

  def initialize
    super "HomologaRequerimentoSTService"
  end

  def self.gravar(dados)
    @resposta_requerimento = service.new(environment_ads).gravar(dados)
  end

end