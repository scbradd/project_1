User.destroy_all
u1 = User.create :email => 'craigsy@ga.co'
u2 = User.create :email => 'sarah@ga.co'

Varietal.destroy_all
v1 = Varietal.create :title => "Whites"
v2 = Varietal.create :title => "Reds"

Red.destroy_all
r1 = Red.create :name => 'The Old Bastard'
r2 = Red.create :name => 'Anti-violets'
r4 = Red.create :name => 'Red is never dead'

White.destroy_all
a1 = White.create :name => 'White Magic'
a2 = White.create :name => 'Sav blanc'
a3 = White.create :name => 'crystal water'
a4 = White.create :name => 'white sheet ghost'

FavouriteWines.destroy_all
f1 = FavoriteWine.create :title => "Wine by the water"
f2 = FavoriteWine.create :title => "Wine by the fire"
f3 = FavoriteWine.create :title => "Wine for the guzzle"
f4 = FavoriteWine.create :title => "Wine for breakfast"
f5 = FavoriteWine.create :title => "Table wine"
f6 = FavouriteWine.create :title => "Gifts"


#associations
#whites and varietals
v1.white << a1 << a2 << a3 << a4

#reds and varietals
v2.red << r1 << r2 << r3

#favourites list _reds and whites
f1.red << a2 << a3
f2.white << r2 << r3
f3.red << r1
f4.white << r2

#users favourite wine
u1.favouritewine << f1 << f2
u2.favouritewine << f4 << f3
