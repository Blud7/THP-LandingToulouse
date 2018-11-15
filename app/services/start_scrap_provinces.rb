require 'rubygems'
require 'nokogiri'         
require 'open-uri'

class StartScrapProvinces

def perform
    x = 10
        while x <= 95
            begin
                url1 = "http://www.annuaire-des-mairies.com/#{x}/"
                z = []

                doc = Nokogiri::HTML(open(url1))
                        doc.xpath("//a").each do |keys|
                        z << keys["href"]
                        end

                z.each do |y|
                    doc = Nokogiri::HTML(open(url1+"#{y}"))
                    doc.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").each do |keys|
                        puts keys.text
                        z << keys.text
                        Mail.create(email: keys.text)
                    end
                end
            rescue
            end     
            x = x + 1
        end
    end
end