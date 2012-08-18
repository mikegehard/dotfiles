desc "Create symlinks to home directory"
task :link do
  %w{vim vimrc tmux.conf}.each do |file|
    destination = "#{ENV['HOME']}/.#{file}"
    source = "#{File.dirname(__FILE__)}/#{file}"
    File.symlink(source, destination) unless File.exists? destination 
  end

end
