#!/usr/bin/env ruby

# from http://errtheblog.com/posts/89-huba-huba

home = File.expand_path('~')

# setup backup directory
backup = File.join(home, ".olddotfiles")
`mkdir -p #{backup}`

Dir['*'].each do |file|
  # skip if install.rb or README
  next if file =~ /install|README/

  symfile = ".#{file}"
  target = File.join(home, symfile)

  if File.exist?(target)
    # if the symlink already exists, just skip this
    next if File.symlink?(target) && File.readlink(target) == File.expand_path(file)

    # backup the file if it exists and it's not a symlink
    `mv #{target} #{File.join(backup, symfile)}` unless File.symlink?(target)
  end

  # create a symbolic link
  `ln -s #{File.expand_path(file)} #{target}`

end
