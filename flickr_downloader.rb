require 'rubygems'
require 'csv'
require 'open-uri'

class FlickrPhotoDownload

	### Add the path for the csv file with photo metadata, then add full path to where you want to save the downloaded files
	### The folder you want to save files in does not need to exist before this file is run. The file will make the folder
	### for you
	### example run command: ruby flickr_downloader.rb ~/Downloads/flickr_photos.csv ~/Downloads/flickr_photos

	def grab_file_urls
		file_directory = ARGV.last
		check_directory_exits(file_directory)
		files =  CSV.read(ARGV.first, headers:true)
		files.each do |file|
			name = "#{file_directory}/#{file['id']}.jpg"
			image = file['url']
			puts name
			puts image
			puts file['can_download']
			puts '***********'
			if file['can_download'].to_i == 1
				download_image(name, image)
			end	
		end	
	end
	
	def check_directory_exits(directory)
		if !Dir.exists?(directory)
			Dir.mkdir(directory, 0755)
			puts "Made dir: #{directory}"
		end
	end

	def download_image(name, image)
		File.open(name,'wb') do |fo|
			fo.write open(image).read
		end	
	end

end	

photos = FlickrPhotoDownload.new
photos.grab_file_urls