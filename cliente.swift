    class _cliente: _usuario {
      private var numero_tarjeta: Int = 0
      private var cvc_tarjeta: Int = 0
      var lista_medidores: [_medidor] = []
      var lista_apelaciones: [(descripcion: String, resuelta: Bool)] = []
      
      init(numero_tarjeta: Int, cvc_tarjeta: Int, nombre_input: String, apellido1_input: String, apellido2_input: String, password_input: String) {
        self.numero_tarjeta = numero_tarjeta
        self.cvc_tarjeta = cvc_tarjeta
        super.init(nombre_input: nombre_input, apellido1_input: apellido1_input, apellido2_input: apellido2_input, password_input: password_input)
      }

      func apelaciones() {
        var posicion = 0
        for m in lista_apelaciones {
            print("\nDescripcion: \(m.descripcion)\nResultado: \(m.resuelta)\nId\(posicion)\n")
            posicion = posicion + 1
        }
      }

      func acceder_historial() {
        for m in lista_medidores {
          for f in m.get_lista_facturas_pagadas() {
            print("\nID: \(f.get_id_factura())\nTarifa: \(f.get_tarifa())\nConsumo: \(f.get_consumo_kwh())\n")
          }
        }
      }

      func acceder_por_pagar() {
        for m in lista_medidores {
          for f in m.lista_facturas_pendientes {
            print("ID medidor: \(m.get_id())\n")
            print("ID: \(f.get_id_factura())\nTarifa: \(f.get_tarifa())\nConsumo: \(f.get_consumo_kwh())\n")
          }
        }
      }

      func apelar() {
        print("Digite su apelación: ", terminator: "")
        let apelacion = readLine()!
        lista_apelaciones.append((descripcion: apelacion, resuelta: false))
      }
      func atender_apelacion(indice_input: Int, nuevo_monto1: Int)->Void{
        self.lista_apelaciones.remove(at: indice_input)
        print("Id del medidor por cambiar\n")
        let id_m_new = Int(readLine()!)!
        print("Id de la factura por cambiar\n")
        let id_f_new = Int(readLine()!)!
        for m in lista_medidores {
              if(m.id == id_m_new) {
                m.modificar_factura_pendiente(id_factura_input:id_f_new, monto_nuevo: nuevo_monto1)
              }
            }
      }
    }