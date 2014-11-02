xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "BLog RSS Feed"
    xml.description "BLOG"
    xml.link "/rss"

for entry in @entries
  xml.item do
    xml.title entry.title
    xml.description entry.content
   end
end
end
end