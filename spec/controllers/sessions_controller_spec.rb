require 'rails_helper'

describe SessionsController, type: :controller do
  it { is_expected.to route(:get, '/sessions/new').to(action: 'new') } # FALSE POSITIVE
  # it { is_expected.to render_template('login') } # NEED TO IMPLEMENT
end
