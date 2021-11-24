class Tabelas < ActiveRecord::Migration[6.1]
  def change
    create_table :sitafe_logradouro do |t|
      t.string :it_in_status
      t.string :it_co_logradouro
      t.string :it_no_logradouro
      t.string :it_co_tipo_logradouro
      t.timestamps
    end

    create_table :sitafe_logradouro do |t|
      t.string :it_in_status
      t.string :it_co_logradouro
      t.string :it_no_logradouro
      t.string :it_co_tipo_logradouro
      t.timestamps
    end

    create_table :sitafe_bairro do |t|
      t.string :it_co_bairro
      t.string :it_no_bairro
      t.string :IT_IN_STATUS
      t.string :it_no_bairro
      t.timestamps
    end

    # create_table :sitafe_logradouro do |t|
    #   t.string :it_in_status
    #   t.string :it_co_logradouro
    #   t.string :it_no_logradouro
    #   t.string :it_co_tipo_logradouro
    #   t.timestamps
    # end
  end
end
