import Foundation

class JSONParser {
  private var lista_agentes: [_agenteServicio] = []
  private var lista_clientes: [_cliente] = []
  init() {

  }
  func get_lista_agentes() -> Array<_agenteServicio> {
    return self.lista_agentes
  }
  func get_lista_clientes() -> Array<_cliente> {
    return self.lista_clientes
  }
}