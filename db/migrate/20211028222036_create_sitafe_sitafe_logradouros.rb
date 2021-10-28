class CreateSitafeSitafeLogradouros < ActiveRecord::Migration[6.1]
  def change
    create_table :sitafe_logradouro do |t|
      t.string :it_in_status
      t.string :it_co_logradouro
      t.string :it_no_logradouro
      t.string :it_co_tipo_logradouro
      t.timestamps
    end
  end
end
