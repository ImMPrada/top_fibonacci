def fibs(target)
  return if target.zero?

  response = []

  build_array(response, target)

  response
end

def build_array(response, target)
  (1..target).each do |i|
    response << 0 if i == 1
    response << 1 if [2, 3].include?(i)

    next if [1, 2, 3].include?(i)

    response << response[i - 3] + response[i - 2]
  end

  response
end
