module VagrantPlugins
  module Cssh
    class Command < Vagrant.plugin(::VAGRANT_VERSION, :command)
      def execute
        puts "Hello World!"
        0
      end
    end
  end
end