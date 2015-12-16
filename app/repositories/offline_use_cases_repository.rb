class OfflineUseCasesRepository
  # This repository reads the json from the file system
  def retrieve
    begin
      # Reads the file content and creates an object
      json_object = JSON.parse(File.read('public/use_cases.json'), object_class: OpenStruct)
      json_object.empty? ? [] : json_object.use_cases
    rescue Errno::ENOENT
      # File doesn't exist
      json_object = []
    rescue JSON::ParserError
      # Error while parsing file
      json_object = []
    end
  end
end
