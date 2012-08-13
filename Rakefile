desc "Create symlinks to home directory"
task :link do
  %w{vim vimrc}.each do |file|
    destination = "#{ENV['HOME']}/.#{file}"
    File.symlink(file, destination) unless File.exists? destination 
  end

end
