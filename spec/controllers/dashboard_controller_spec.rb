require 'rails_helper'

describe DashboardController do

  describe 'GET #index' do
    before do
      get :index
    end

    context 'when the repository is not empty' do
      it 'loads the repository content into @use_cases' do
        expect(assigns(:use_cases)).to be_kind_of Array
      end
    end

    context 'when the repository is empty' do
      it 'assigns nil to @use_cases' do
        expect(assigns(:use_cases)).to be_nil
      end
    end
  end
end
