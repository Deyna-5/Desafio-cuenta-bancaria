class Carta
    attr_accessor :numero, :pinta

    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end

end

pinta = ['C', 'D', 'E', 'T']
carta = []

5.times do
    num = rand(1..13)
    carta.push Carta.new(num.to_s, pinta.sample)
end

print carta