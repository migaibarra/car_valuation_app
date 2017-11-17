require 'rails_helper'

describe SessionsController, type: :controller do
  it { is_expected.to route(:get, '/sessions/new').to(action: 'new') }
end
