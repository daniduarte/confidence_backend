# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  {
    email: 'dduarte1267@gmail.com', 
    interactions: [
      { provider: 'facebook', uid: '1873618723' },
      { provider: 'twitter', uid: 'bdjshdas' },
      { provider: 'instagram', uid: '35345' },
      { provider: 'linkedin', uid: 'asdhsauyd' },
      { provider: 'facebook', uid: '2348234' },
      { provider: 'facebook', uid: '4378h483r' },
      { provider: 'facebook', uid: '342ds3223' },
      { provider: 'twitter', uid: '34r34sa' },
      { provider: 'instagram', uid: 'asdjas00as' },
      { provider: 'facebook', uid: 'asdkjnas09d' },
      { provider: 'facebook', uid: '234823499' }
    ]
  },
  {
    email: 'jcuevasmunoz@gmail.com', 
    interactions: [
      { provider: 'facebook', uid: '01873618723' },
      { provider: 'twitter', uid: '0bdjshdas' },
      { provider: 'instagram', uid: '035345' },
      { provider: 'linkedin', uid: '0asdhsauyd' },
      { provider: 'facebook', uid: '02348234' },
      { provider: 'facebook', uid: '04378h483r' },
      { provider: 'facebook', uid: '0342ds3223' },
      { provider: 'twitter', uid: '034r34sa' },
      { provider: 'instagram', uid: '0asdjas00as' },
      { provider: 'facebook', uid: '0asdkjnas09d' },
      { provider: 'facebook', uid: '0234823499' }
    ]
  },
  {
    email: 'claudio.reyes.miranda@gmail.com', 
    interactions: [
      { provider: 'facebook', uid: '11873618723' },
      { provider: 'twitter', uid: '1bdjshdas' },
      { provider: 'instagram', uid: '135345' },
      { provider: 'linkedin', uid: '1asdhsauyd' },
      { provider: 'facebook', uid: '12348234' },
      { provider: 'facebook', uid: '14378h483r' },
      { provider: 'facebook', uid: '1342ds3223' },
      { provider: 'twitter', uid: '134r34sa' },
      { provider: 'instagram', uid: '1asdjas00as' },
      { provider: 'facebook', uid: '1asdkjnas09d' },
      { provider: 'facebook', uid: '1234823499' }
    ]
  },
  {
    email: 'sebastianmar2587@gmail.com',
    interactions: [
      { provider: 'facebook', uid: '21873618723' },
      { provider: 'twitter', uid: '2bdjshdas' },
      { provider: 'instagram', uid: '235345' },
      { provider: 'linkedin', uid: '2asdhsauyd' },
      { provider: 'facebook', uid: '22348234' },
      { provider: 'facebook', uid: '24378h483r' },
      { provider: 'facebook', uid: '2342ds3223' },
      { provider: 'twitter', uid: '234r34sa' },
      { provider: 'instagram', uid: '2asdjas00as' },
      { provider: 'facebook', uid: '2asdkjnas09d' },
      { provider: 'facebook', uid: '2234823499' }
    ]
  }
]

users.each do |user|
  u = User.new
  u.email = user[:email]
  u.password = 'asdf1234'
  if u.save
    puts "Se crea usuario #{user[:email]}"

    user[:interactions].each do |interaction|
      c = u.interactions.new
      c.provider = interaction[:provider]
      c.uid = interaction[:uid]
      c.save
    end
  else
    puts "Error al crear usuario"
  end

  puts '--------------------------------'
end