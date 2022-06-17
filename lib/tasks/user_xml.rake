namespace :users_feed do
   desc "users  details "
    task report: :environment do
    begin
      p "-----------------Begin XML Update-----------------"
      def xml_create
        Nokogiri::XML::Builder.new(:encoding => 'UTF-8') do |xml|
          xml.CustomData do
            xml.name "chetu"
          end
        end
      end
        def xml_users
           a = xml_create.to_xml
           puts "----------------------#{a}-----------"
        end
    end
  end
end

