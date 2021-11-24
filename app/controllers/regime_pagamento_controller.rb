class RegimePagamentoController < ApplicationController
  def index
    @input_id = params['data-input']

    @pagy, @regimes_pagamentos = pagy(
      Sitafe::SitafeRegimePagamento
      .select("it_co_regime_pagamento, convert(it_no_regime_pagamento,'utf8','WE8MSWIN1252') AS it_no_regime_pagamento")
      .where("TRIM(IT_IN_STATUS) IS NULL AND TRIM(it_no_regime_pagamento) IS NOT NULL")
      .where("it_no_regime_pagamento LIKE ?","%#{params[:regime_pagamento].to_s.upcase}%"),
      :items => 5, 
      link_extra: 'data-remote=true'
    )
  end
end
