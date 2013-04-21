SpreedsheetTest::Application.routes.draw do
  scope :api do
    scope :v1 do
      match 'type_1'    => 'data_source#type_1'
    end
  end
  match '/api/v1/type_1'    => 'data_source#type_1'
  root        :to => 'pages#index'
end
