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
  :id_socio, :nome_socio,:cargo_socio,:municipio_socio, :lista_socios, :logradouro_socio, :bairro_socio


  validates :tipo_servico, presence:{ message: ' : precisa ser selecionado'}
  validates :cnpj, length: {is: 14}, presence:{ message: ' : precisa ser selecionado'}
  validates :razao_social, presence:{ message: ' : precisa ser selecionado'}
  validates :nome_fantasia, presence:{ message: ' : precisa ser selecionado'}
  validates :utilizacao_estab, presence:{ message: ' : precisa ser selecionado'}

  validates :logradouro_comercial, presence:{ message: ' : precisa ser selecionado'}
  # validates :complemento, presence:{ message: ' : precisa ser selecionado'}
  validates :numero, presence:{ message: ' : precisa ser selecionado'}
  validates :bairro_comercial, presence:{ message: ' : precisa ser selecionado'}
  validates :municipio_comercial, presence:{ message: ' : precisa ser selecionado'}
  validates :cep, presence:{ message: ' : precisa ser selecionado'}
  validates :alvara, presence:{ message: ' : precisa ser selecionado'}
  validates :area_utilizada, presence:{ message: ' : precisa ser selecionado'}

  validates :logradouro, presence:{ message: ' : precisa ser selecionado'}, if: ->{ self.copia_endereco_comercial.blank?}
  validates :bairro, presence:{ message: ' : precisa ser selecionado'}
  validates :municipio_corresp, presence:{ message: ' : precisa ser selecionado'}
  validates :cep, presence:{ message: ' : precisa ser selecionado'}
  validates :telefone, presence:{ message: ' : precisa ser selecionado'}
  validates :email, presence:{ message: ' : precisa ser selecionado'}


  validates :natureza_juridica, presence:{ message: ' : precisa ser selecionado'}
  validates :regime_pagamento, presence:{ message: ' : precisa ser selecionado'}
  validates :atividade_economica, presence:{ message: ' : precisa ser selecionado'}


  validates :contador, presence:{ message: ' : precisa ser selecionado'}
  validates :crc, presence:{ message: ' : precisa ser selecionado'}
  validates :nome_contador, presence:{ message: ' : precisa ser selecionado'}
  validates :bairro, presence:{ message: ' : precisa ser selecionado'}
  # validates :distrito, presence:{ message: ' : precisa ser selecionado'}
  validates :municipio_contabilista, presence:{ message: ' : precisa ser selecionado'}

  validates :telefone_1_socio, presence:{ message: ' : precisa ser selecionado'}
  validates :telefone_2_socio, presence:{ message: ' : precisa ser selecionado'}
  validates :email_socio, presence:{ message: ' : precisa ser selecionado'}
  validates :cep_socio, presence:{ message: ' : precisa ser selecionado'}
  validates :nome_socio, presence:{ message: ' : precisa ser selecionado'}
  validates :id_socio, presence:{ message: ' : precisa ser selecionado'}
  validates :cargo_socio, presence:{ message: ' : precisa ser selecionado'}
  validates :municipio_socio, presence:{ message: ' : precisa ser selecionado'}







end