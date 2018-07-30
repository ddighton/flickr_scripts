require 'rubygems'
require 'flickraw'
require 'csv'
require 'geocoder'

class FlickrSearch

	def instantiate_flickr_client
		FlickRaw.api_key="96b125316576679e97cfbe3724d5c697"
		FlickRaw.shared_secret="3ab86014cbed8070"
	end

	def instantiate_new_file
		@new_file = "flickr_gentrification_no_geo.csv"
		CSV.open(@new_file, 'ab') do |csv|
			file = CSV.read(@new_file,:encoding => "iso-8859-1",:col_sep => ",")
		  	if file.none?
		    	csv << ["id", "secret", "dateuploaded", "date_taken", "time_taken", "last_updated", "is_favorite", "owner_id", "owner_screenname", "owner_name", "owner_location","image_title", "image_description", "is_public", "is_friend", "is_family", "views", "can_download", "comments", "notes", "tags", "url", "media", "latitude", "longitude", "placename", "bounds"]
		  	end
		end
	end

	def instantiate_new_file_geo
		@geo_file = "flickr_gentrification_text_geo.csv"
		CSV.open(@geo_file, 'ab') do |csv|
			file = CSV.read(@geo_file,:encoding => "iso-8859-1",:col_sep => ",")
		  	if file.none?
		    	csv << ["id", "secret", "dateuploaded", "date_taken", "time_taken", "last_updated", "is_favorite", "owner_id", "owner_screenname", "owner_name", "owner_location","image_title", "image_description", "is_public", "is_friend", "is_family", "views", "can_download", "comments", "notes", "tags", "url", "media", "latitude", "longitude", "placename", "bounds"]
		  	end
		end
	end

	def year1
		page = 1
		images_count = 1
		images_nongeo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 0, :content_type => 7, :min_upload_date => '2006-01-01', :max_upload_date => '2007-12-31', :per_page => 500, :page => page)
			images_nongeo << images
			images_count = images.count
			page += 1
		end
		@images = images_nongeo
		photo_call
	end

	def year2
		page = 1
		images_count = 1
		images_nongeo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 0, :content_type => 7, :min_upload_date => '2007-09-01', :max_upload_date => '2008-08-31', :per_page => 500, :page => page)
			images_nongeo << images
			images_count = images.count
			page += 1
		end
		@images = images_nongeo
		photo_call
	end

	def year3
		page = 1
		images_count = 1
		images_nongeo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 0, :content_type => 7, :min_upload_date => '2008-09-01', :max_upload_date => '2009-08-31', :per_page => 500, :page => page)
			images_nongeo << images
			images_count = images.count
			page += 1
		end
		@images = images_nongeo
		photo_call
	end

	def year4
		page = 1
		images_count = 1
		images_nongeo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 0, :content_type => 7, :min_upload_date => '2009-09-01', :max_upload_date => '2010-08-31', :per_page => 500, :page => page)
			images_nongeo << images
			images_count = images.count
			page += 1
		end
		@images = images_nongeo
		photo_call
	end

	def year5
		page = 1
		images_count = 1
		images_nongeo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 0, :content_type => 7, :min_upload_date => '2010-09-01', :max_upload_date => '2011-08-31', :per_page => 500, :page => page)
			images_nongeo << images
			images_count = images.count
			page += 1
		end
		@images = images_nongeo
		photo_call
	end

	def year6
		page = 1
		images_count = 1
		images_nongeo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 0, :content_type => 7, :min_upload_date => '2011-09-01', :max_upload_date => '2012-08-31', :per_page => 500, :page => page)
			images_nongeo << images
			images_count = images.count
			page += 1
		end
		@images = images_nongeo
		photo_call
	end

	def year7
		page = 1
		images_count = 1
		images_nongeo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 0, :content_type => 7, :min_upload_date => '2012-09-01', :max_upload_date => '2013-08-31', :per_page => 500, :page => page)
			images_nongeo << images
			images_count = images.count
			page += 1
		end
		@images = images_nongeo
		photo_call
	end

	def year8
		page = 1
		images_count = 1
		images_nongeo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 0, :content_type => 7, :min_upload_date => '2013-09-01', :max_upload_date => '2014-08-31', :per_page => 500, :page => page)
			images_nongeo << images
			images_count = images.count
			page += 1
		end
		@images = images_nongeo
		photo_call
	end

	def year9
		page = 1
		images_count = 1
		images_nongeo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 0, :content_type => 7, :min_upload_date => '2014-09-01', :max_upload_date => '2015-08-31', :per_page => 500, :page => page)
			images_nongeo << images
			images_count = images.count
			page += 1
		end
		@images = images_nongeo
		photo_call
	end

	def year10
		page = 1
		images_count = 1
		images_nongeo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 0, :content_type => 7, :min_upload_date => '2015-09-01', :max_upload_date => '2016-08-01', :per_page => 500, :page => page)
			images_nongeo << images
			images_count = images.count
			page += 1
		end
		@images = images_nongeo
		photo_call
	end

	def year11_geo
		page = 1
		images_count = 1
		images_nogeo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 1, :content_type => 7, :min_upload_date => '2016-09-01', :max_upload_date => '2017-07-11', :per_page => 500, :page => page)
			images_nogeo << images
			images_count = images.count
			page += 1
		end
		@images = images_nogeo
		photo_call
	end

	def year1_geo
		page = 1
		images_count = 1
		images_geo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 1, :content_type => 7, :min_upload_date => '2006-01-01', :max_upload_date => '2007-12-31', :per_page => 500, :page => page)
			images_geo << images
			images_count = images.count
			page += 1
		end
		@images = images_geo
		photo_call_geo
	end

	def year2_geo
		page = 1
		images_count = 1
		images_geo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 1, :content_type => 7, :min_upload_date => '2007-09-01', :max_upload_date => '2008-08-31', :per_page => 500, :page => page)
			images_geo << images
			images_count = images.count
			page += 1
		end
		@images = images_geo
		photo_call_geo
	end

	def year3_geo
		page = 1
		images_count = 1
		images_geo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 1, :content_type => 7, :min_upload_date => '2008-09-01', :max_upload_date => '2009-08-31', :per_page => 500, :page => page)
			images_geo << images
			images_count = images.count
			page += 1
		end
		@images = images_geo
		photo_call_geo
	end

	def year4_geo
		page = 1
		images_count = 1
		images_geo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 1, :content_type => 7, :min_upload_date => '2009-09-01', :max_upload_date => '2010-08-31', :per_page => 500, :page => page)
			images_geo << images
			images_count = images.count
			page += 1
		end
		@images = images_geo
		photo_call_geo
	end

	def year5_geo
		page = 1
		images_count = 1
		images_geo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 1, :content_type => 7, :min_upload_date => '2010-09-01', :max_upload_date => '2011-08-31', :per_page => 500, :page => page)
			images_geo << images
			images_count = images.count
			page += 1
		end
		@images = images_geo
		photo_call_geo
	end

	def year6_geo
		page = 1
		images_count = 1
		images_geo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 1, :content_type => 7, :min_upload_date => '2011-09-01', :max_upload_date => '2012-08-31', :per_page => 500, :page => page)
			images_geo << images
			images_count = images.count
			page += 1
		end
		@images = images_geo
		photo_call_geo
	end

	def year7_geo
		page = 1
		images_count = 1
		images_geo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 1, :content_type => 7, :min_upload_date => '2012-09-01', :max_upload_date => '2013-08-31', :per_page => 500, :page => page)
			images_geo << images
			images_count = images.count
			page += 1
		end
		@images = images_geo
		photo_call_geo
	end

	def year8_geo
		page = 1
		images_count = 1
		images_geo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 1, :content_type => 7, :min_upload_date => '2013-09-01', :max_upload_date => '2014-08-31', :per_page => 500, :page => page)
			images_geo << images
			images_count = images.count
			page += 1
		end
		@images = images_geo
		photo_call_geo
	end

	def year9_geo
		page = 1
		images_count = 1
		images_geo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 1, :content_type => 7, :min_upload_date => '2014-09-01', :max_upload_date => '2015-08-31', :per_page => 500, :page => page)
			images_geo << images
			images_count = images.count
			page += 1
		end
		@images = images_geo
		photo_call_geo
	end

	def year10_geo
		page = 1
		images_count = 1
		images_geo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 1, :content_type => 7, :min_upload_date => '2015-09-01', :max_upload_date => '2016-08-31', :per_page => 500, :page => page)
			images_geo << images
			images_count = images.count
			page += 1
		end
		@images = images_geo
		photo_call_geo
	end

	def year11_geo
		page = 1
		images_count = 1
		images_geo = []
		while images_count != 0
			images = flickr.photos.search(:tags => "gentrification", :has_geo => 1, :content_type => 7, :min_upload_date => '2016-09-01', :max_upload_date => '2017-07-11', :per_page => 500, :page => page)
			images_geo << images
			images_count = images.count
			page += 1
		end
		@images = images_geo
		photo_call_geo
	end

	def photo_call
		puts @images.inspect
		CSV.open(@new_file, 'ab') do |csv|
		  	@images.each do |sketch_array|
		  		sketch_array.each do |sketch|
		  			puts sketch.inspect
		  			puts '************'
					info = flickr.photos.getInfo :photo_id => sketch.id, :secret => sketch.secret
					puts info.inspect
					puts '------------'
					if info.media == "photo"
						url = FlickRaw.url(info)
					else
						url = info.urls.first['_content']
					end
					lat = nil
					long = nil
					csv << [info.id, info.secret, Time.at(info.dateuploaded.to_i).to_s.split(" ")[0], info.dates.taken.split(" ")[0], info.dates.taken.split(" ")[1], Time.at(info.dates.lastupdate.to_i).to_s.split(" ")[0], info.isfavorite, info.owner.nsid, info.owner.username, info.owner.realname, info.owner.location, info.title, info.description, info.visibility.ispublic, info.visibility.isfriend, info.visibility.isfamily, info.views, info.usage.candownload, info.comments, info.notes.first, info.tags.map {|t| t.raw}, url, info.media, lat, long, place, bounds]
		 		end
			end
		end
	end

	def photo_call_geo
		puts @images.inspect
		CSV.open(@geo_file, 'ab') do |csv|
		  	@images.each do |image_array|
		  		image_array.each do |sketch|
					info = flickr.photos.getInfo :photo_id => sketch.id, :secret => sketch.secret
					puts info.inspect
					puts '------------'
					if info.media == "photo"
						url = FlickRaw.url(info)
					else
						url = info.urls.first['_content']
					end
					lat = info.location.latitude
					long = info.location.longitude
					get_place_name_bounds(lat, long)
					csv << [info.id, info.secret, Time.at(info.dateuploaded.to_i).to_s.split(" ")[0], info.dates.taken.split(" ")[0], info.dates.taken.split(" ")[1], Time.at(info.dates.lastupdate.to_i).to_s.split(" ")[0], info.isfavorite, info.owner.nsid, info.owner.username, info.owner.realname, info.owner.location, info.title, info.description, info.visibility.ispublic, info.visibility.isfriend, info.visibility.isfamily, info.views, info.usage.candownload, info.comments, info.notes.first, info.tags.map {|t| t.raw}, url, info.media, lat, long, @place, @bounds]
		 		end
			end
		end
	end

	def get_place_name_bounds(lat, long)
		location = Geocoder.search("#{lat},#{long}")
		#if location.first.address_components.count == 2
		#	@place = "#{location.first.address_components.first['long_name']}, #{location.first.address_components.last['long_name']}"
	#	else
		#  @place = "#{location.first.address_components.first['long_name']}, #{location.first.address_components[2]['long_name']}"
		#end
		@place = location.first.formatted_address
		@bounds = location.first.geometry
		sleep(1.5)
	end


	def make_api_calls
		year1
		year2
		year3
		year4
		year5
		year6
		year7
		year8
		year9
		year10
	end

	def make_geo_api_calls
		year1_geo
		year2_geo
		year3_geo
		year4_geo
		year5_geo
		year6_geo
		year7_geo
		year8_geo
		year9_geo
		year10_geo
	end

end

flickr_call = FlickrSearch.new
flickr_call.instantiate_flickr_client
#flickr_call.instantiate_new_file
flickr_call.instantiate_new_file_geo
#flickr_call.make_api_calls
flickr_call.make_geo_api_calls
