class ApplicationController < ActionController::Base
  include Pagy::Backend

  before_action :input_id

  def input_id
    @input_id = params['data-input']

    
  end
end
