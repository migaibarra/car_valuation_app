require 'rails_helper'

describe UsersController, type: :controller do
  context "when user navigates to the user login page" do
    it { route(:get, '/sessions/new').to(action: new) }
  end
end
