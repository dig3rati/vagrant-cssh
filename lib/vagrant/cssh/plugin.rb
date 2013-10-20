module VagrantPlugins
  module Cssh
    class Plugin < Vagrant.plugin(::VAGRANT_VERSION)
      name "Vagrant cSSH"
      description "Plugin will allow you to execute commands on multiple vagrant guests"

      config :cssh do
        require_relative 'config'
        Config
      end

      command :cssh do
        require_relative 'command'
        Command
      end
    end
  end
end