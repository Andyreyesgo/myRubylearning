class CuentaBancarias
    attr_accessor :nombre_de_usuario
    attr_writer :numero_de_cuenta
    def initialize (nombre_de_usuario , numero_de_cuenta)
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
    end
end
