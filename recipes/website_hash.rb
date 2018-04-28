def check_time(t=Time.now)
    midnatt  = Time.new(t.year, t.month, t.day, 0, 0, 0, t.utc_offset)
    forsent = Time.new(t.year, t.month, t.day, 3, 0, 0, t.utc_offset)
    fortidlig  = Time.new(t.year, t.month, t.day, 6, 0, 0, t.utc_offset)
    morgen = Time.new(t.year, t.month, t.day, 9, 0, 0, t.utc_offset)
    lunsj  = Time.new(t.year, t.month, t.day, 12, 0, 0, t.utc_offset)
    middag = Time.new(t.year, t.month, t.day, 15, 0, 0, t.utc_offset)
    ettermiddag  = Time.new(t.year, t.month, t.day, 18, 0, 0, t.utc_offset)
    senkveld = Time.new(t.year, t.month, t.day, 21, 0, 0, t.utc_offset)

    if t.between?("midnatt", "forsent") do
            print "klokka er over midnatt"
        end
    elsif t.between?("forsent", "fortidlig") do
            print "klokka er over tre"
        end
    elsif t.between?("fortidlig", "morgen") do
            print "det er foraltfor tidlig"
        end
    elsif t.between?("morgen", "lunsj") do
            print "nå er det morgen"
        end
    elsif  t.between?("lunsj", "middag") do
            print "lunsjtid"
        end
    elsif t.between?("middag", "ettermiddag") do
            print "nå er det middagstid"
        end
    elsif  t.between?("ettermiddag", "senkveld") do
            print "på tide med en øl"
        end
    elsif  t.between?("senkveld", "midnatt") do
            print "sove eller ut på byen?"
        end
    end
end