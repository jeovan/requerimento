class Requerimento
  include ActiveModel::Model
  attr_accessor :tipo_servico, :cnpj, :razao_social, 
  :nome_fantasia, :utilizacao_estab, :logradouro_comercial,
  :complemento, :numero, :bairro_comercial,:municipio_comercial,
  :cep, :alvara, :area_utilizada, :copia_endereco_comercial,
  :logradouro, :bairro, :municipio_corresp, :cep, :telefone, 
  :email, :natureza_juridica, :regime_pagamento,:atividade_economica,
  :contador, :crc, :nome_contador, :logradouro , :bairro, :distrito, :municipio_contabilista,
  :cep_socio, :telefone_1_socio,:telefone_1, :telefone_2, :telefone_2_socio, :email_socio, :socio_responsavel,
  :id_socio, :nome_socio,:cargo_socio,:municipio_socio


  validates :tipo_servico, presence:{ message: ' : precisa ser selecionado'}


end