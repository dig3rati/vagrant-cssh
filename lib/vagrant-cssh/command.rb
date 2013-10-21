module VagrantPlugins
  module Cssh
    class Command < Vagrant.plugin(VAGRANT_VERSION, :command)
      def execute
        cmd, cmd_args = parse_args
        puts "Hello World!"
        0
      end

      private

      def parse_args
        opts = OptionParser.new do |o|
          o.banner = 'Usage: vagrant cssh [options] <command>'
          o.separator ''

          o.on('-h', '--help', 'Print this help') do
            safe_puts(opts.help)
          end
        end

        argv = split_main_and_subcommand(@argv.dup)
        exec_args, cmd, cmd_args = argv[0], argv[1], argv[2]

        # show help
        if !cmd || exec_args.any? { |a| a == '-h' || a == '--help' }
          safe_puts(opts.help)
          return nil
        end

        return cmd, cmd_args
      end
    end
  end
end