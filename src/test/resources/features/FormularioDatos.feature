#language: es
Característica: FUNCIONALIDAD DEL FORMULARIO DE REGISTRO

  @regresion
  Escenario: [CP34] Cliente no afiliado identificado con DNI / Usar la dirección de mi DNI
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "72174876"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Y se mostrara la pantalla de "Datos personales" con los siguientes campos
      | Selecciona tu primer nombre   |
      | Selecciona tu primer apellido |
      | Fecha de emisión de tu DNI    |
    Y seleccionar el primer nombre correcto del cliente "SLEDGE"
    Y seleccionar el primer apellido correcto del cliente "LUYO"
    Y seleccionar la Fecha de emision correcta del DNI del cliente "22/11/2022"
    Y dar clic en el boton Siguiente
    Entonces mostrara el formulario "Datos personales" de llenado de los demas datos del cliente
    Y seleccionar el Pais de residencia "Perú"
    E ingresar la Nacionalidad "Peruana"
    Y seleccionar la Fecha de nacimiento "15/08/1995"
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "987852444"
    Y ingresar el Correo electronico "dev@gmail.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20741458745"
    Y seleccionar el Cargo "Subgerente"
    E ingresar el Ingreso promedio mensual "100000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"

  #@regresion
  Escenario: [CP35] Cliente no afiliado identificado con DNI / Ingreso de nueva dirección
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "72174876"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Y se mostrara la pantalla de "Datos personales" con los siguientes campos
      | Selecciona tu primer nombre   |
      | Selecciona tu primer apellido |
      | Fecha de emisión de tu DNI    |
    Y seleccionar el primer nombre correcto del cliente "SLEDGE"
    Y seleccionar el primer apellido correcto del cliente "LUYO"
    Y seleccionar la Fecha de emision correcta del DNI del cliente "22/11/2022"
    Y dar clic en el boton Siguiente
    Entonces mostrara el formulario "Datos personales" de llenado de los demas datos del cliente
    Y seleccionar el Pais de residencia "Perú"
    E ingresar la Nacionalidad "Peruana"
    Y seleccionar la Fecha de nacimiento "15/08/1995"
    Cuando seleccione Ingresar una nueva direccion
    Entonces seleccionar el Departamento "LIMA"
    Y seleccionar la Provincia "YAUYOS"
    Y seleccionar el Distrito "ALIS"
    Y seleccionar el Tipo de via "Avenida"
    Y ingresar la Nueva direccion "Av. Los Incas 1234"
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "987852444"
    Y ingresar el Correo electronico "dev@gmail.com"
    Y seleccionar el Tipo de trabajador " Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20741458745"
    Y seleccionar el Cargo "Subgerente"
    E ingresar el Ingreso promedio mensual "100000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"

  #@regresion
  Escenario: [CP36] Cliente no afiliado identificado con DNI / Validación de tipo de trabajador dependiente
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "72174876"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Y se mostrara la pantalla de "Datos personales" con los siguientes campos
      | Selecciona tu primer nombre   |
      | Selecciona tu primer apellido |
      | Fecha de emisión de tu DNI    |
    Y seleccionar el primer nombre correcto del cliente "SLEDGE"
    Y seleccionar el primer apellido correcto del cliente "LUYO"
    Y seleccionar la Fecha de emision correcta del DNI del cliente "22/11/2022"
    Y dar clic en el boton Siguiente
    Entonces mostrara el formulario "Datos personales" de llenado de los demas datos del cliente
    Y seleccionar el Pais de residencia "Perú"
    E ingresar la Nacionalidad "Peruana"
    Y seleccionar la Fecha de nacimiento "15/08/1995"
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "987852444"
    Y ingresar el Correo electronico "dev@gmail.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20741458745"
    Y seleccionar el Cargo "Subgerente"
    E ingresar el Ingreso promedio mensual "100000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"

  #@regresion
  Escenario: [CP37] Cliente no afiliado identificado con DNI / Validación de tipo de trabajador no dependiente
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "41561789"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Y se mostrara la pantalla de "Datos personales" con los siguientes campos
      | Selecciona tu primer nombre   |
      | Selecciona tu primer apellido |
      | Fecha de emisión de tu DNI    |
    Y seleccionar el primer nombre correcto del cliente "JORGE"
    Y seleccionar el primer apellido correcto del cliente "BAUTISTA"
    Y seleccionar la Fecha de emision correcta del DNI del cliente "10/11/2023"
    Y dar clic en el boton Siguiente
    Entonces mostrara el formulario "Datos personales" de llenado de los demas datos del cliente
    Y seleccionar el Pais de residencia "Perú"
    E ingresar la Nacionalidad "Peruana"
    Y seleccionar la Fecha de nacimiento "15/08/1995"
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "987852444"
    Y ingresar el Correo electronico "dev@gmail.com"
    Y seleccionar el Tipo de trabajador "Jubilado"
    Y ingresar el Numero de RUC "20741458745"
    Y seleccionar el Cargo "Subgerente"
    E ingresar el Ingreso promedio mensual "100000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"

  #@regresion
  Escenario: [CP38] Cliente no afiliado identificado con DNI / Validar ingreso promedio mensual opcional por tipo trabajador dependiente e independiente
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "41561789"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Y se mostrara la pantalla de "Datos personales" con los siguientes campos
      | Selecciona tu primer nombre   |
      | Selecciona tu primer apellido |
      | Fecha de emisión de tu DNI    |
    Y seleccionar el primer nombre correcto del cliente "JORGE"
    Y seleccionar el primer apellido correcto del cliente "BAUTISTA"
    Y seleccionar la Fecha de emision correcta del DNI del cliente "10/11/2023"
    Y dar clic en el boton Siguiente
    Entonces mostrara el formulario "Datos personales" de llenado de los demas datos del cliente
    Y seleccionar el Pais de residencia "Perú"
    Y seleccionar la Nacionalidad "Perú"
    Y seleccionar la Fecha de nacimiento "15/08/1995"
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion "ADMINISTRADOR"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "978456258"
    Y ingresar el Correo electronico "random@gmail.com"
    Y seleccionar el Tipo de trabajador "Independiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20654741264"
    Y seleccionar el Cargo "Comerciante"
    E ingresar el Ingreso promedio mensual ""
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"

  #@regresion
  Escenario: [CP47] Cliente no afiliado identificado con Pasaporte / Validación de tipo de trabajador dependiente
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "Pasaporte"
    E ingrese el Numero de Documento "H305188"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Entonces mostrara el formulario "Datos personales" de llenado de los demas datos del cliente
    E ingresar el Primer nombre "OLIVER"
    E ingresar el Segundo nombre "ATOM"
    Y seleccionar la Nacionalidad "Perú"
    Y seleccionar el Pais de residencia "Perú"
    Y seleccionar la Fecha de nacimiento "06/06/1996"
    Y seleccionar el Sexo "Masculino"
    Y seleccionar el Estado civil "Casado"
    Y seleccionar el Departamento "LIMA"
    Y seleccionar la Provincia "CAÑETE"
    Y seleccionar el Distrito "IMPERIAL"
    Y seleccionar el Tipo de via "Jirón"
    Y ingresar la Direccion "Sucre 704"
    Y seleccionar la Profesion "ADMINISTRADOR"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "987456258"
    Y ingresar el Correo electronico "correorandom@gmail.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "2012548963"
    Y seleccionar el Cargo "Comerciante"
    E ingresar el Ingreso promedio mensual "15000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"

  #@regresion
  Escenario: [CP48] Cliente no afiliado identificado con Pasaporte / Validación de tipo de trabajador no dependiente
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "Pasaporte"
    E ingrese el Numero de Documento "H305188"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Entonces mostrara el formulario "Datos personales" de llenado de los demas datos del cliente
    E ingresar el Primer nombre "OLIVER"
    E ingresar el Segundo nombre "ATOM"
    Y seleccionar la Nacionalidad "Perú"
    Y seleccionar el Pais de residencia "Perú"
    Y seleccionar la Fecha de nacimiento "06/06/1996"
    Y seleccionar el Sexo "Masculino"
    Y seleccionar el Estado civil "Casado"
    Y seleccionar el Departamento "LIMA"
    Y seleccionar la Provincia "CAÑETE"
    Y seleccionar el Distrito "IMPERIAL"
    Y seleccionar el Tipo de via "Jirón"
    Y ingresar la Direccion "Sucre 704"
    Y seleccionar la Profesion "ADMINISTRADOR"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "987456258"
    Y ingresar el Correo electronico "correorandom@gmail.com"
    Y seleccionar el Tipo de trabajador "Jubilado"
    Y ingresar el Numero de RUC "20654896325"
    Y seleccionar el Cargo "Comerciante"
    E ingresar el Ingreso promedio mensual "35000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"

  #@regresion
  Escenario: [CP49] Cliente no afiliado identificado con Pasaporte / Validar ingreso promedio mensual opcional por tipo trabajador dependiente e independiente
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "Pasaporte"
    E ingrese el Numero de Documento "H305188"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Entonces mostrara el formulario "Datos personales" de llenado de los demas datos del cliente
    E ingresar el Primer nombre "OLIVER"
    E ingresar el Segundo nombre "ATOM"
    Y seleccionar la Nacionalidad "Perú"
    Y seleccionar el Pais de residencia "Perú"
    Y seleccionar la Fecha de nacimiento "06/06/1996"
    Y seleccionar el Sexo "Masculino"
    Y seleccionar el Estado civil "Casado"
    Y seleccionar el Departamento "LIMA"
    Y seleccionar la Provincia "CAÑETE"
    Y seleccionar el Distrito "IMPERIAL"
    Y seleccionar el Tipo de via "Jirón"
    Y ingresar la Direccion "Sucre 704"
    Y seleccionar la Profesion "ADMINISTRADOR"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "987456258"
    Y ingresar el Correo electronico "correorandom@gmail.com"
    Y seleccionar el Tipo de trabajador "Independiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20654896447"
    Y seleccionar el Cargo "Comerciante"
    E ingresar el Ingreso promedio mensual ""
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"