class CuentaBancaria
    attr_accessor :nombre_usuario, :numero_de_cuenta, :vip
    def initialize(nombre_usuario, numero_de_cuenta, vip= 0)
        @nombre_usuario = nombre_usuario
        @numero_de_cuenta = numero_de_cuenta
        if numero_de_cuenta.digits.count != 8
            raise RangeError, 'Tu número de cuenta debe contar con 8 dígitos'
        end
        @vip = vip
    end

    def numero_de_cuenta
        "#{@vip}-#{@numero_de_cuenta}"
    end
end

cuenta1 = CuentaBancaria.new("Deyna",87654321, 0)
puts cuenta1.numero_de_cuenta