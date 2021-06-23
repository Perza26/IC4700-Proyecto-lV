import Foundation

class JSONParser {
  private var lista_agentes: [_agenteServicio] = []
  private var lista_clientes: [_cliente] = []
  init() {
    let usuario1: _agenteServicio = _agenteServicio(nombre_input: "Pablo", apellido1_input: "Peraza", apellido2_input: "Solórzano", password_input: "contra1")
    lista_agentes.append(usuario1)

    let usuario2: _cliente = _cliente(numero_tarjeta: 123, cvc_tarjeta: 456, nombre_input: "Alonso", apellido1_input: "Obando", apellido2_input: "Carmona", password_input: "contra2")

    let factura1: _factura = _factura(id_factura_input: 0, tarifa_input: 1, consumo_kwh_input: 2)
    let factura2: _factura = _factura(id_factura_input: 1, tarifa_input: 3, consumo_kwh_input: 4)

    let medidor: _medidor = _medidor(id: 0)
    medidor.lista_facturas_pagadas.append(factura1)
    medidor.lista_facturas_pendientes.append(factura2)
    
    usuario2.lista_medidores.append(medidor)

    lista_clientes.append(usuario2)
  }

  func get_lista_agentes() -> Array<_agenteServicio> {
    return self.lista_agentes
  }

  func get_lista_clientes() -> Array<_cliente> {
    return self.lista_clientes
  }
}