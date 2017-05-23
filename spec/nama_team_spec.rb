require_relative "../lib/nama_team.rb"

RSpec.describe NamaTeam do
  describe ".convert_all" do
    let(:expected) { File.read("#{File.dirname(__FILE__)}/expected.txt") }

    it do
      expect { puts NamaTeam.convert_all(1..100) }.to output(expected).to_stdout
    end
  end
end
