namespace :db do
  desc "Fill dev database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    import_mdp_data_set
  end
end

def import_mdp_data_set
  field_idx = 0
  line_num = 0
  country_abbrev_idx = Hash.new

  # Latin-1 transcoded to UTF-8
  File.open('db/data_sets/mpd_2013-01_normalized_r0.txt', "r:iso8859-1:utf-8").each_line do |line|
    fields = line.split "\t"
    field_idx = 0
    fields.each do |f|
      f = f.chomp.strip.squeeze(' ').gsub('/ ', '/').gsub('- ', '-')
      unless f.empty?
        if line_num == 0 then
          country_abbrev_idx[field_idx] = f
        elsif line_num == 1 then
          if country_abbrev_idx.has_key?(field_idx) then
            country_attribs = { :name => f, :abbreviation => country_abbrev_idx[field_idx] }
            Country.create(country_attribs)
          end
        else
          f = f.gsub('.', '')
          if field_idx > 0 and country_abbrev_idx.has_key?(field_idx) then
            country = Country.find_by_abbreviation(country_abbrev_idx[field_idx])
            unless country.nil?
              gdp_attribs = { :country_id => country.id, :value => f.to_f, :year => "#{fields[0]}-01-01" }
              GdpStatistic.create(gdp_attribs)
              #puts "Year: #{fields[0]} Country: #{country_abbrev_idx[field_idx]} country_id: #{gdp_attribs[:country_id]} GDP: #{f}" if country_abbrev_idx.has_key? field_idx
            else
              puts "Opps! Didn`t find '#{country_abbrev_idx[field_idx]}' for field_idx: #{field_idx}"
            end
          end
        end
      end
      field_idx += 1
    end
    line_num += 1
  end
end
