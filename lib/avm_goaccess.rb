require "avm_goaccess/version"
require "open3"

module AvmGoaccess
  # Your code goes here...
  class Nginx
    GOACCESS_CONF= File.join(".", "conf", "goaccess.conf").freeze

    def initialize(input, output)
      @input = input
      @output= output
    end

    def generate_report
      stdout, stderr, status = Open3.capture3("#{goaccess} -p #{GOACCESS_CONF} #{@input} -o #{@output}")

      if status.success?
        puts stdout
      else
        abort 'error: could not execute command'
      end
    end


    private 

    def goaccess
      is_linux = (RUBY_PLATFORM =~ /linux/i)
      is_mac = (RUBY_PLATFORM =~ /darwin/i)
      cmd = File.join(".", "bin", "cowaxess_x64", "bin", "goaccess.exe")
      cmd = File.join(".", "bin", "goaccess","goaccess") if is_linux || is_mac 
    end
  end
end
