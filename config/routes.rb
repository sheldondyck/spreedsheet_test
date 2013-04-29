SpreedsheetTest::Application.routes.draw do
#  namespace :api do
#    namespace :v1 do
#      match 'type_1/:id'       => 'data_source#type_1'
#    end
#  end
  match '/api/v1/gdp/:country_abbrev/:year'  => 'data_source#gdp'
  root        :to => 'pages#index'
end
