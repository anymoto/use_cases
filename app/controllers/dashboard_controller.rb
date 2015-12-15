class DashboardController < ApplicationController
  def index
    @use_cases = UseCasesRepository.retrieve
  end
end
