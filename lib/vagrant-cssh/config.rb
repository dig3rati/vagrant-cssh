module VagrantPlugins
  module Cssh
    class Config < Vagrant.plugin(VAGRANT_VERSION, :config)
      attr_reader :env
      attr_accessor :login

      def initialize
        @env   = {}
        @login = UNSET_VALUE
      end

      def validate(_)
        return { 'cssh' => [ "" ] } unless @login.is_a?(String)
        {}
      end

      def finalize!
        @login = 'vagrant' if @login == UNSET_VALUE
      end
    end
  end
end