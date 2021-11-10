class CreateSitafeSitafeRegimePagamentos < ActiveRecord::Migration[6.1]
  def change
    create_table :sitafe_sitafe_regime_pagamentos do |t|

      t.timestamps
    end
  end
end
