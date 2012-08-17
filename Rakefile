require 'rake'

task :default => [:install]

desc 'Set up hooks needed outside of dotfiles directory'
task :install do
  links = Dir.glob('**/*{.symlink}')

  links.each do |link_source|
    file = link_source.split('/').last.split('.symlink').last
    target = "#{ENV["HOME"]}/.#{file}"

    # -T to treat target as normal file (ie never a directory)
    `ln -sT "$PWD/#{link_source}" "#{target}"`
  end
end


