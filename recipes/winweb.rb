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
    template 'c:\\inetpub\\wwwroot\\Default.htm' do
        source 'wem.htm.erb'
    end
elsif t.between?(forsent, fortidlig)
    template 'c:\\inetpub\\wwwroot\\Default.htm' do
        source 'wfs.htm.erb'
    end
elsif t.between?(fortidlig, morgen)
    template 'c:\\inetpub\\wwwroot\\Default.htm' do
        source 'wft.htm.erb'
    end
elsif t.between?(morgen, lunsj)
    template 'c:\\inetpub\\wwwroot\\Default.htm' do
        source 'wmo.htm.erb'
    end
elsif t.between?(lunsj, middag)
    template 'c:\\inetpub\\wwwroot\\Default.htm' do
        source 'wlu.htm.erb'
    end
elsif t.between?(middag, ettermiddag)
    template 'c:\\inetpub\\wwwroot\\Default.htm' do
        source 'wmi.htm.erb'
    end
elsif t.between?(ettermiddag, senkveld)
    template 'c:\\inetpub\\wwwroot\\Default.htm' do
        source 'wet.htm.erb'
    end
else t.between?(senkveld, midnatt)
    template 'c:\\inetpub\\wwwroot\\Default.htm' do
        source 'wsk.htm.erb'
    end
end
