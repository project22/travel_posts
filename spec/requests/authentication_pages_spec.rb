require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "signin page" do
    before { visit root_path }

    it { should have_content('Login') }
  end
end