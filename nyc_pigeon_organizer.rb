def nyc_pigeon_organizer(data)
  pigeons_of_nyc = {}
  data.each do |key,value|

    value.each do |quality, list|
      list.each do |name|
        pigeons_of_nyc[name] = {} unless nil != pigeons_of_nyc[name]
        pigeons_of_nyc[name][key] = [] unless nil != pigeons_of_nyc[name][key]
        pigeons_of_nyc[name][key].push(quality)
      end
    end

  end
  p pigeons_of_nyc
end
