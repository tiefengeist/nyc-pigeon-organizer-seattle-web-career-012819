def nyc_pigeon_organizer(data)
  result = Hash.new { |hash, key| hash[key] = {} }

   data.each do |allkeys, keys|
    keys.each do |key, values|
      values.each do |value|
        if result[value][allkeys]
          result[value][allkeys] << key.to_s
        else
          result[value][allkeys] = [key.to_s]
        end
      end
    end
  end

   result
end
