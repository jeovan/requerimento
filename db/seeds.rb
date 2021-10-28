# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Sitafe::SitafeLogradouro.create(
  [
    { :it_in_status          => '',
      :it_co_logradouro      => '31094',
      :it_no_logradouro      => 'VASPASIANO REMOS',
      :it_co_tipo_logradouro => 'AV',
    },{ 
      :it_in_status          => '',
      :it_co_logradouro      => '33642',
      :it_no_logradouro      => 'NESTOR REMOS',
      :it_co_tipo_logradouro => 'AV',
    },{ 
      :it_in_status          => '',
      :it_co_logradouro      => '35030',
      :it_no_logradouro      => 'TERSINA VALDIVINO',
      :it_co_tipo_logradouro => 'AV',
    },
  ]
)