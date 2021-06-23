    class _usuario { 
      private var nombre: String = ""
      private var apellido1: String = ""
      private var apellido2: String = ""
      private var password: String = ""
      
      init(nombre_input: String, apellido1_input: String, apellido2_input: String,password_input: String) {
        self.nombre = nombre_input
        self.apellido1 = apellido1_input
        self.apellido2 = apellido2_input
        self.password = password_input
      }

      func validar_sesion(nombre: String, password: String) -> Bool {
        
        if(self.nombre == nombre && self.password == password) {
          return true
        }

        print("\nCredenciales ingresados incorrectamente.\n")
        return false
      }

      func set_nombre(nombre_input: String)->Void{
        self.nombre = nombre_input
      }
      func set_apellido1(apellido_input: String)->Void{
        self.apellido1 = apellido_input
      }
      func set_apellido2(apellido_input: String)->Void{
        self.apellido2 = apellido_input
        }
      func set_password(password_input: String)->Void{
        self.password = password_input
      }
      func get_nombre()->String{
        return self.nombre
      }
      func get_apellido1()->String{
        return self.apellido1
      }
      func get_apellido2()->String{
        return self.apellido2
      }
      func get_password()->String{
        return self.password
      }
    }


