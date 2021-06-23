let jsonParser: JSONParser = JSONParser()

while true {
  var menu_cliente = true
  var menu_agente = true
  print("Ingrese su usuario: ", terminator: "")
  let nombre_usuario = readLine()!
  print("Ingrese su contraseña: ", terminator: "")
  let contraseña = readLine()!

  for usuario in jsonParser.get_lista_agentes() {   
    if(usuario.get_nombre() == nombre_usuario) {   
      if(usuario.validar_sesion(nombre: nombre_usuario, password: contraseña)) {
        while menu_agente {
          print("\nBienvenido, agente por favor digite ")
          print("a: Acceder a todos los histórico de cobros")
          print("b: Ver apelaciones")
          print("d: Atender apelaciones")
          print("e: Cambiar usuario\n")
          print("Opción: ", terminator: "")
          let opcion = readLine()!
          switch opcion {
            case "a":
            for clientes_ver in jsonParser.get_lista_clientes() {
              print("Usuario \(clientes_ver.get_nombre())\n")
              print("Pagado")
              clientes_ver.acceder_historial()
              print("Por pagar")
              clientes_ver.acceder_por_pagar()
            }  
            break
            case "b":
            for clientes_ver in jsonParser.get_lista_clientes() {
              print("Usuario \(clientes_ver.get_nombre())\n")
              clientes_ver.apelaciones()
            }  
            break
            case "d":
            print("El nombre del usuarion\n")
            let z = readLine()!
            for clientes_ver in jsonParser.get_lista_clientes() {
              if(clientes_ver.get_nombre() == z) {   
                print("Id de la apelacion\n")
                let x = Int(readLine()!)!
                print("El nuevo monto\n")
                let y = Int(readLine()!)!
                clientes_ver.atender_apelacion(indice_input: x, nuevo_monto1: y)
              }  
            }
            break
            case "e":
            menu_agente = false
            default:
              print("\nOpción inválida.\n")
          }
        }
      }
    }
  }
  for usuario in jsonParser.get_lista_clientes() {   
    if(usuario.get_nombre() == nombre_usuario) {   
      if(usuario.validar_sesion(nombre: nombre_usuario, password: contraseña)) {
        while menu_cliente {
          print("\nBienvenido, usuario por favor digite ")
          print("a: Acceder al histórico de cobros")
          print("b: Pagar cobros pendientes")
          print("c: Para realizar una apelación sobre un cobro específico")
          print("d: Cambiar usuario\n")
          print("Opción: ", terminator: "")
          let opcion = readLine()!
          switch opcion {
            case "a":
            usuario.acceder_historial()
            case "b":
            usuario.acceder_por_pagar()
            print("d: Id del medidor por pagar\n")
            let id_m_new = readLine()!
            print("d: Id de la factura por pagar\n")
            let id_f_new = readLine()!
            for m in usuario.lista_medidores {
              if(m.get_id() == id_m_new) {
                m.pagar_factura_pendiente(id_factura_input: id_f_new)
              }
            }
            case "c":
            usuario.apelar()
            case "d":
            menu_cliente = false
            default:
              print("\nOpción inválida.\n")
          }
        }
      }
    }
  }
}