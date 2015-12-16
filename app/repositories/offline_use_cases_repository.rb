class OfflineUseCasesRepository
  def retrieve
    begin
      json_object = JSON.parse(File.read('public/use_cases.json'), object_class: OpenStruct)
      json_object.empty? ? [] : json_object.use_cases
    rescue Errno::ENOENT
      json_object = []
    rescue JSON::ParserError
      json_object = []
    end
  end
end
