require 'rails_helper'

describe OfflineUseCasesRepository do
  describe '#retrieve' do
    context 'when file exists and it\'s valid' do
      let(:data) { { "use_cases" => [{ "name" => "test" , "description" => "test" }] }.to_json }

      before { File.stub(read: data) }

      it 'retrieves an array with data' do
        result = subject.retrieve
        expect(result).not_to be_empty
      end
    end

    context 'when file exists but it\'s not valid' do
      let(:data) { { "use_cases" => [] }.to_json }

      before { File.stub(read: data) }

      it 'retrieves an empty array' do
        result = subject.retrieve
        expect(result).to be_empty
      end
    end
  end
end
