require "mechanize"
require "nokogiri"
require 'json'
require "awesome_print"
def get_latest
		url = "http://medium.com/@AlextheYounger"

		agent = Mechanize.new { |agent| agent.user_agent_alias = "Mac Safari" }

		html = agent.get(url).body

		html_doc = Nokogiri::HTML(html)

		scripts = html_doc.search("//script")
		tag = scripts[3]
		tag = tag.to_s.chomp("// ]]></script>")
		front_string = " = SLABOLG rav
[ATADC[!< //>tpircs<"
		tag = tag.reverse.chomp(front_string).reverse
		medium_blob = JSON.parse(tag)

		raw_posts = medium_blob["embedded"]["latestPosts"]
		clean_posts = []
		raw_posts.each do |raw_post|
			clean_post = {}
			clean_post[:title] = raw_post["title"]
			clean_post[:created_at_relative] = raw_post["virtuals"]["createdAtRelative"]
			clean_post[:created_at_english] = raw_post["virtuals"]["createdAtEnglish"]
			clean_post[:subtitle] = raw_post["virtuals"]["subtitle"]
			clean_post[:excerpt] = raw_post["virtuals"]["emailSnippet"]
			clean_post[:recommends] = raw_post["virtuals"]["recommends"]
			clean_post[:url] = "https://medium.com/@#{raw_post['creator']['username']}/#{raw_post['uniqueSlug']}"
			clean_posts.push(clean_post)
		end

		raw_user = medium_blob["embedded"]["user"]
		clean_user = {}
		clean_user[:name] = raw_user["name"]
		clean_user[:username] = raw_user["username"]
		clean_user[:bio] = raw_user["bio"]
		clean_user[:url] = "https://medium.com/@#{raw_user['username']}"

		final_object = {
			user: clean_user,
			posts: clean_posts
		}
		final_object
	
end
ap get_latest