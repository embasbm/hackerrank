require 'pry'

def convert_temp(temperature = 0, **options)
  return if temperature.nil? || temperature.class == String
  return temperature if options[:input_scale] == options[:output_scale]
  temp = 0
  if options[:input_scale] == 'celsius'
    if options[:output_scale] == 'fahrenheit'
      temp = temperature * 1.8 + 32
    else
      temp = temperature + 273.15
    end
  elsif options[:input_scale] == 'fahrenheit'
    if options[:output_scale] == 'celsius'
      temp = (temperature - 32) / 1.8
    else
      temp = (temperature + 459.67) * 5/9
    end
  else # => 'kelvin'
    if options[:output_scale] == 'celsius'
      temp = temperature - 273.15
    else
      temp = (temperature * 1.8) - 459.67
    end
  end
end
