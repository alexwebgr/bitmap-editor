require_relative 'awb'
require_relative 'commands/create'
require_relative 'commands/color_dot'
require_relative 'commands/clear'
require_relative 'commands/show'

module AWB
  class BitmapEditor
    def commands
      {
        I: Commands::Create,
        L: Commands::ColorDot,
        C: Commands::Clear,
        S: Commands::Show
      }
    end

    def run(file)
      return print "please provide correct file" if file.nil? || !File.exists?(file)

      File.open(file).each do |line|
        params = line.chomp.split(' ')
        command = params[0]&.to_sym

        unless commands.key?(command)
          raise StandardError('command not found')
        end
        commands[command].draw(params)
      end
    end
  end
end