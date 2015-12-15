class UseCasesRepository
  def self.retrieve
    json_object = JSON.parse(File.read('public/use_cases.json'), object_class: OpenStruct)
    json_object.empty? ? nil : json_object.use_cases
  end
end
