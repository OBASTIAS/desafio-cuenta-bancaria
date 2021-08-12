class CuentaBancaria
    
    attr_accessor :nombre_de_usuario,:numero_de_cuenta,:cuenta_vip
    
    
    def initialize(nombre_usuario, numero_de_cuenta, cuenta_vip = 0)

        @nombre_de_usuario = nombre_usuario

        if numero_de_cuenta.digits.count != 8
            raise RangeError.new("cuenta tiene un número de dígitos distinto a 8.")
        end

        @numero_de_cuenta = numero_de_cuenta
        @cuenta_vip = cuenta_vip

    end

    def numero_de_cuenta

        "#@cuenta_vip-#@numero_de_cuenta"

    end
end

cuenta1 = CuentaBancaria.new('Oscar', 18637642)
cuenta2 = CuentaBancaria.new('Paula',16750260,1)

puts cuenta1.numero_de_cuenta
puts cuenta2.numero_de_cuenta