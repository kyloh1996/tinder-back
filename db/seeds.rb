practice = [
  {
    id: 1,
    name: 'Garen',
    age: 31,
    gender: 'male',
    image: File.open(Rails.root.join('app', 'assets', 'images', 'Garen.jpeg')),
    description: 'This is Garen, a powerful warrior.',
  },
  {
    id: 2,
    name: 'Katarina',
    age: 28,
    gender: 'female',
    image: File.open(Rails.root.join('app', 'assets', 'images', 'Kat.jpeg')),
    description: 'Meet Katarina, a skilled assassin.',
  },
  {
    id: 3,
    name: 'Lux',
    age: 23,
    gender: 'female',
    image: File.open(Rails.root.join('app', 'assets', 'images', 'Lux.jpeg')),
    description: 'Introducing Lux, a mage with radiant powers.',
  },
];

practice.each do |each_practice|
  Practice.create(each_practice)
  puts "Creating practice #{each_practice[:name]}"
end
