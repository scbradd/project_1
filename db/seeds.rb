User.destroy_all
u1 = User.create :email => 'craigsy@ga.co', :password => 'chicken'
u2 = User.create :email => 'sarah@ga.co', :password => 'chicken'

Wine.destroy_all
r1 = Wine.create :name => 'The Old Bastard', :color => 'red'
r2 = Wine.create :name => 'Anti-violets', :color => 'red'
r3 = Wine.create :name => 'Red is never dead', :color => 'red'

a1 = Wine.create :name => 'White Magic', :color => 'white'
a2 = Wine.create :name => 'Sav blanc', :color => 'white'
a3 = Wine.create :name => 'crystal water', :color => 'white'
a4 = Wine.create :name => 'white sheet ghost', :color => 'white'


#favorites list _reds and whites
u1.wines << a2 << a3
u2.wines << r2 << r3
u1.wines << r1
u2.wines << a2
