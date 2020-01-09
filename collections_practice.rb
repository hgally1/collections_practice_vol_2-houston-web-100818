def begins_with_r(array)
    tool = array.any? do |word|
        word[0] != "r"
      end
      if tool == true
        false
      else
        true
    end
end     

def contain_a(array)
    array.select! { |str| str.include?('a') }
end

def first_wa(array)
    array.find do |string|
        if string.class == String
          string.start_with?("wa")
        end
    end
end

def remove_non_strings(array)
    array.select do |string|
        string.class == String
    end
end

def count_elements(array)
  new_array = array.uniq
  new_array.map do |element|
    element[:count] = array.count(element)
  end
  new_array
end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
  array.select do |hash|
    hash[:temperature] == "cool"
  end
end

def organize_schools(schools_hash)
  organized_schools = {}
  schools_hash.each do |name, location_hash|
    city = location_hash[:location]
      if organized_schools[city]
        organized_schools[city] << name
      else
        organized_schools[city] = [name]
    end
  end
  organized_schools
end