#language: es
Característica: FUNCIONALIDAD DE LA PANTALLA IDENTIFICACIÓN Y CONSENTIMIENTO

  #@regresion
  Escenario: [CP01] Validar cliente no perteneciente al Sistema Privado de Pensiones
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "78954321"
    Entonces se mostrara un popup de advertencia "No perteneces al SPP"
    Y dar clic en el boton Cerrar del popup

  #@regresion
  Escenario: [CP02] Validar cliente afiliado con DNI
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "35181065"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "1234"
    Y dar clic en el boton Empezar a invertir
    Y se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"

  #@regresion
  Escenario: [CP03] Validar cliente afiliado con CE
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "C.E."
    E ingrese el Numero de Documento "193817953"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "1234"
    Y dar clic en el boton Empezar a invertir
    Y se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"

  #@regresion
  Escenario: [CP04] Validar cliente afiliado con Pasaporte
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "Pasaporte"
    E ingrese el Numero de Documento "H305188"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "1234"
    Y dar clic en el boton Empezar a invertir
    Y se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"

  #@regresion
  Escenario: [CP05] Validar cliente no afiliado con DNI perteneciente al SPP
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "72174876"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"

  #@regresion
  Escenario: [CP06] Validar cliente no afiliado con CE perteneciente al SPP
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "C.E."
    E ingrese el Numero de Documento "193817953"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"

  #@regresion
  Escenario: [CP07] Validar cliente no afiliado con Pasaporte perteneciente al SPP
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "Pasaporte"
    E ingrese el Numero de Documento "H305188"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"