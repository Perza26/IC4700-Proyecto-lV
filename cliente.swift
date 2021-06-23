    class _cliente: _usuario {
      private var numero_tarjeta: Int = 0
      private var cvc_tarjeta: Int = 0
      private var lista_medidores: [_medidor] = []
      private var lista_apelaciones: [(descripcion: String, resuelta: Bool)] = []
      //private var lista_cobros: [_cobros] = []
      
      init(numero_tarjeta: Int, cvc_tarjeta: Int, nombre_input: String, apellido1_input: String, apellido2_input: String, password_input: String) {
        self.numero_tarjeta = numero_tarjeta
        self.cvc_tarjeta = cvc_tarjeta
        super.init(nombre_input: nombre_input, apellido1_input: apellido1_input, apellido2_input: apellido2_input, password_input: password_input)
      }

      func acceder_historial() {
        for m in lista_medidores {
          for f in m.get_lista_facturas_pagadas() {
            print("ID: \(f.get_id_factura())\nTarifa: \(f.get_tarifa())\nConsumo: \(f.get_consumo_kwh())\n")
          }
        }
      }

      func efectuar_pago() {

      }

      func apelar() {
        print("Digite su apelación: ", terminator: "")
        let apelacion = readLine()!
        lista_apelaciones.append((descripcion: apelacion, resuelta: false))
      }

      
    }