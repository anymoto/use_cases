class UseCasesService
  attr_reader :repository

  def initialize
    @repository ||= OfflineUseCasesRepository.new
  end

  def retrieve
    repository.retrieve
  end
end
