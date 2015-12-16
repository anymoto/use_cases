class DashboardController < ApplicationController
  def index
    @use_cases = UseCasesService.new.retrieve
  end
end
