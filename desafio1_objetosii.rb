# 1. Crear una clase carta, con pinta y número.
# 2. Pedir un input al usuario, si el usuario escribe “jugar” generar 5 cartas al azar.
# 3. Si el usuario escribe:
# 1. “mostrar”: Mostrar las 5 cartas en pantalla
# 2. “salir”: Terminar el programa.
# 3. "jugar": (otra vez) Se generan nuevas 5 cartas aleatorias.


class Carta
    attr_reader :numero, :pinta
    def initialize
      @numero = %w(1 2 3 4 5 6 7 8 9 10 J Q K).sample
      @pinta = %W(Corazon Trebol Pica Diamantes).sample
    end
  
    def resultado
      " #{@numero} de #{@pinta}"
    end
  end
  
  def menu
    puts 'Jugar'
    puts 'Mostrar'
    puts 'Salir'
  end
  
  mano = []
  menu
  opcion = gets.chomp
  while opcion != 'salir'
    if opcion == 'jugar'
      5.times do
        new_carta = Carta.new
        mano << new_carta.resultado
      end
    elsif opcion == 'mostrar'
      puts mano.last(5)
    end
    menu
    opcion = gets.chomp
  end
  