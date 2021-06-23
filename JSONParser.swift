import Foundation

class JSONParser {
  
  private var lista_agentes: [_agenteServicio] = []
  private var lista_clientes: [_cliente] = []
  init() {
    var usuario1: _agenteServicio = _agenteServicio(nombre_input: "Pablo", apellido1_input: "Peraza", apellido2_input: "Solórzano", password_input: "contra1")
    lista_agentes.append(usuario1)

    var usuario2: _cliente = _cliente(numero_tarjeta: 123, cvc_tarjeta: 456, nombre_input: "Alonso", apellido1_input: "Obando", apellido2_input: "Carmona", password_input: "otraContra")
    lista_clientes.append(usuario2)
}

  func get_lista_agentes() -> Array<_agenteServicio> {
    return self.lista_agentes
  }

  func get_lista_clientes() -> Array<_cliente> {
    return self.lista_clientes
  }
}