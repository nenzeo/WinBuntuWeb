t=Time.now

midnatt = Time.new(t.year, t.month, t.day, 0, 0, 0, t.utc_offset)
forsent  = Time.new(t.year, t.month, t.day, 3, 0, 0, t.utc_offset)
fortidlig = Time.new(t.year, t.month, t.day, 6, 0, 0, t.utc_offset)
morgen  = Time.new(t.year, t.month, t.day, 9, 0, 0, t.utc_offset)
lunsj = Time.new(t.year, t.month, t.day, 12, 0, 0, t.utc_offset)
middag  = Time.new(t.year, t.month, t.day, 15, 0, 0, t.utc_offset)
ettermiddag = Time.new(t.year, t.month, t.day, 18, 0, 0, t.utc_offset)
senkveld  = Time.new(t.year, t.month, t.day, 21, 0, 0, t.utc_offset)

if t.between?(midnatt, forsent)
    template '/var/www/html/index.html' do
        source 'dem.htm.erb'
    end
elsif t.between?(forsent, fortidlig)
    template '/var/www/html/index.html' do
        source 'dfs.htm.erb'
    end
elsif t.between?(fortidlig, morgen)
    template '/var/www/html/index.html' do
        source 'dft.htm.erb'
    end
elsif t.between?(morgen, lunsj)
    template '/var/www/html/index.html' do
        source 'dmo.htm.erb'
    end
elsif t.between?(lunsj, middag)
    template '/var/www/html/index.html' do
        source 'dlu.htm.erb'
    end
elsif t.between?(middag, ettermiddag)
    template '/var/www/html/index.html' do
        source 'dmi.htm.erb'
    end
elsif t.between?(ettermiddag, senkveld)
    template '/var/www/html/index.html' do
        source 'det.htm.erb'
    end
else t.between?(senkveld, midnatt)
    template '/var/www/html/index.html' do
        source 'dsk.htm.erb'
    end
end
