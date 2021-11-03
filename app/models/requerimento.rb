class Requerimento
  include ActiveModel::Model
  attr_accessor :tipo_servico

  validates :tipo_servico, presence:{ message: ': precisa ser selecionado' }


  def persisted?
    false
  end


end