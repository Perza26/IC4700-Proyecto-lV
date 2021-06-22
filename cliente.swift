    class _cliente: _usuario {
      private var numero_tarjeta: Int = 0
      private var cvc_tarjeta: Int = 0
      private var lista_medidores_ids: [Int] = []
      private var lista_cobros: [_cobros] = []
      
      init(numero_tarjeta: Int, cvc_tarjeta: Int, id_input: Int, nombre_input: String, apellido1_input: String, apellido2_input: String, password_input: String) {
        self.numero_tarjeta = numero_tarjeta
        self.cvc_tarjeta = cvc_tarjeta
        super.init(id_input: id_input, nombre_input: nombre_input, apellido1_input: apellido1_input, apellido2_input: apellido2_input, password_input: password_input)
      }

      func acceder_historial(id_medidor: Int) {
      }

      func efectuar_pago() {

      }

      func apelar() {

      }
    }