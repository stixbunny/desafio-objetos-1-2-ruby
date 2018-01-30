class Carta
  attr_accessor :numero
  attr_accessor :pinta
  def initialize(numero, pinta)
    @numero = numero
    @pinta = pinta
  end
end
quit = false
cartas = []
while !quit
  print "Benvenido al menu!\n\t-'jugar' para elegir cinco cartas al azar\n\t- 'mostrar' para mostrar las cartas\n\t- 'salir' para salir\n"
  opcion = gets.chomp
  case opcion
  when "jugar"
    cartas.clear
    for i in 1..5
      cartas.push(Carta.new(%w{A 2 3 4 5 6 7 8 9 10 J Q K}.sample, %w{Pica Corazon Diamante Trebol}.sample ))
    end
  when "mostrar"
    cartas.each do |carta|
      puts "#{carta.pinta} #{carta.numero}"
    end
  when "salir"
    quit = true
  else
    puts "opcion invalida"
  end
end
