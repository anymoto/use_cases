class WelcomeController < ApplicationController
  def index
    json_object = JSON.parse(File.read('public/use_cases.json'), object_class: OpenStruct)
    @use_cases = json_object.empty? ? nil : json_object.use_cases
  end
end
