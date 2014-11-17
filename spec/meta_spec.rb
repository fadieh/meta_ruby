require 'meta'

describe Student do
	let(:student){B.new}
	it "does not have an award" do
		expect(student).not_to have_unixoid
	end

	it "can have badges awarded" do
		student.award :have_unixoid
		expect(student).to have_unixoid
	end
end