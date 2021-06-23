import Foundation

class _medidor {
  private var id: Int = 0
  private var lista_facturas_pagadas: [_factura] = []
  private var lista_facturas_pendientes: [_factura] = []

  init(id:Int) {
  self.id = id
  }
  
  func get_lista_facturas_pagadas() -> Array<_factura> {
    return self.lista_facturas_pagadas
  }
  func pagar_factura_pendiente(id_factura_input:Int)->Void{
    var j = 0
    for i in lista_facturas_pendientes {
      if(i.id_factura == id_factura_input){
        self.lista_facturas_pagadas.append(i)
        self.lista_facturas_pendientes.remove(at: j)
      }
      j = j+1
    }
  }





}