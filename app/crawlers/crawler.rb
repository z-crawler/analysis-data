class Crawler

  def self.run
    sample = Dir[File.expand_path(File.dirname(__FILE__)) + '/../../db/*.html'].first
    data_sample = Nokogiri::HTML(open(sample))
    data_sample.search('//script').remove
    data_sample.search('//noscript').remove
    data_sample.search('//link').remove
    data_sample.search('//style').remove
    data_sample.search('//object').remove
    data_sample.search('//img').remove
    data_sample.search('//comment()').remove
    File.open("text.html", 'w+') do |file|
      file.write(data_sample)
    end
    a = data_sample.text.strip.gsub("\r", "").gsub("\t", " ").squeeze(' ')
    a = a.split("\n")
    b = []
    a.each {|x| b << x.strip.squeeze(" ") if x != " " && !x.empty? }
    b = b.join("\n")

    File.open("text.txt", 'w+') do |file|
      file.write(b)
    end
  end
end
