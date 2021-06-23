let jsonParser:JSONParser = JSONParser()

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
        while menu_agente{
          print("Bienvenido, agente por favor digite ")
          print("a: Acceder a todos los histórico de cobros")
          print("b: Atender apelaciones")
          print("c: Modificar los datos")
          print("d: Cambiar usuario")
          print("e: Salir del programa")
          let opcion = readLine()!
          switch opcion {
            case "a":
            print("Ingrese su usuario: ", terminator: "")
            case "b":
            print("Ingrese su usuario: ", terminator: "")
            let nombre_usuario = readLine()!
            print("Ingrese su contraseña: ", terminator: "")
            let contraseña = readLine()!            
            case "c":
            print("que")
            case "d":
            menu_agente = false
            case "e":
            print("frwrwr")
            default:
              print("Opcion no valido")
          }
        }
      }
    }
  }
  for usuario in jsonParser.get_lista_clientes() {   
    if(usuario.get_nombre() == nombre_usuario) {   
      if(usuario.validar_sesion(nombre: nombre_usuario, password: contraseña)) {
        while menu_cliente{
          print("Bienvenido, usuario por favor digite ")
          print("a: Acceder al histórico de cobros")
          print("b: Pagar cobros pendientes")
          print("c: Para realizar una apelación sobre un cobro específico")
          print("d: Cambiar usuario")
          print("e: Salir del programa")
          let opcion = readLine()!
          switch opcion {
            case "a":
            print("Ingrese su usuario: ", terminator: "")
            case "b":
            print("Ingrese su usuario: ", terminator: "")
            let nombre_usuario = readLine()!
            print("Ingrese su contraseña: ", terminator: "")
            let contraseña = readLine()!            
            case "c":
            print("que")
            case "d":
            menu_cliente = false
            case "e":
            print("frwrwr")
            default:
              print("Opcion no valido")
          }
        }
      }
    }
  }
}