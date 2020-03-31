RSpec.describe AvmGoaccess do
  it "has a version number" do
    expect(AvmGoaccess::VERSION).not_to be nil
  end

  # context "generate report" do 
  #   let(:input) { "/Users/anujp/Projects/peronal/misc/ruby/avm_goaccess/access_http.log" }
  #   let(:output) { "/Users/anujp/Projects/peronal/misc/ruby/avm_goaccess/http_report.html" }
  #   let(:g_nginx) { AvmGoaccess::Nginx.new(input, output) }
  #   let(:report) { g_nginx.generate_report }

  #   it "test" do 
  #     puts report
  #   end
  # end
end
