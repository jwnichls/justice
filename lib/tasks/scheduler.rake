desc "This task automatically removes content that is old"
task :disable_old_posts => :environment do
  puts "Disabling old posts..."
  Post.clean
  puts "done."
end
