require 'avm_goaccess'

input_file = "/Users/anujp/Projects/peronal/misc/ruby/avm_goaccess/access_http.log"
output_file = "/Users/anujp/Projects/peronal/misc/ruby/avm_goaccess/http_report.html"

g_nginx = AvmGoaccess::Nginx.new(input_file, output_file)
g_nginx.generate_report