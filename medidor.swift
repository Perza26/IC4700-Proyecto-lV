import Foundation

class _medidor {
  public var id: Int = 0
  var lista_facturas_pagadas: [_factura] = []
  var lista_facturas_pendientes: [_factura] = []

  init(id:Int) {
  self.id = id
  }
  func get_id() -> String{
    return String(self.id)
  }
  func get_lista_facturas_pagadas() -> Array<_factura> {
    return self.lista_facturas_pagadas
  }
  func get_lista_facturas_pendientes() -> Array<_factura> {
    return self.lista_facturas_pendientes
  }
  func pagar_factura_pendiente(id_factura_input:String) -> Void {
    var j = 0
    for i in lista_facturas_pendientes {
      if(i.get_String_id_factura() == id_factura_input){
        self.lista_facturas_pagadas.append(i)
        self.lista_facturas_pendientes.remove(at: j)
      }
      j = j + 1
    }
  }
  func modificar_factura_pendiente(id_factura_input:Int, monto_nuevo:Int) -> Void {
    for i in self.lista_facturas_pendientes {
      if(i.id_factura == id_factura_input) {
        i.set_consumo(consumo_kwh_input: monto_nuevo)
      }
    }
  }
}