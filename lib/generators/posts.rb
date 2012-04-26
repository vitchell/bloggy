def create_blog source = 'config/jekyll', destination = 'public/blog'
    options = {
        'source' => source,
        'destination' => destination
    }
    source_dir = 'config/jekyll'
    options = Jekyll.configuration(options)
    site = Jekyll::Site.new(options)
    
    begin
      site.process
    rescue Jekyll::FatalException => e
      puts
      puts "ERROR: YOUR SITE COULD NOT BE BUILT:"
      puts "------------------------------------"
      puts e.message
      exit(1)
    end
    puts "Successfully generated site: #{source} -> #{destination}"
end