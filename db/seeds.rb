product_list = [
  [ "Cafe", 12 ],
  [ "Cafe con leche", 15 ],
  [ "Gaseosa", 20 ],
  [ "Milanesa", 50 ],
  [ "Milanesa Napolitana", 56 ],
  [ "Sandwich de lomito", 67]
]

modifiers_list = [
	[ "Lechuga", 2],
	[ "Tomate", 2],
	[ "Jamon", 5],
	[ "Queso", 5],
	[ "Huevo", 5],
	[ "Pan Arabe", 0],
	[ "Pan Francés", 0],
	[ "Pan Pebete", 0]
]

product_modifiers_list = [ 
	["Sandwich de lomito", ["Lechuga", "Tomate", "Jamon", "Queso", "Huevo", "Pan Arabe", "Pan Francés", "Pan Pebete"]],
	["Milanesa", ["Jamon", "Queso", "Huevo"]]
]

product_list.each do |name, price|
  Product.create( name: name, price: price )
end

modifiers_list.each do |name, price|
	Modifier.create(name: name, price: price)
end

product_modifiers_list.each do | product_name, modifiers_name_list |
	modifiers_name_list.each do | modifier_name |
		ProductModifier.create( product: Product.find_by_name(product_name), modifier: Modifier.find_by_name(modifier_name))
	end
end

["1","2","3","4","5","6","7","9","10","11","12","1A","2A","3A","4A","5A","6A","7A",
	"9A","10A","11A","12A","21","23","24","25","31","31A","32","33","34","35","36",
	"32A","33A","34A","35A","36A"].each do | name |
	Table.create( name: name)
end