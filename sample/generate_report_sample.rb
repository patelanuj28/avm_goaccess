require 'avm_goaccess'

input_file = "access_http.log"
output_file = "http_report.html"

g_nginx = AvmGoaccess::Nginx.new(input_file, output_file)
g_nginx.generate_report