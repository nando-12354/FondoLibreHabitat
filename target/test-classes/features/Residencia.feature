#language: es
Característica: FUNCIONALIDAD DE MODAL RESIDENCIA FISCAL FUERA DEL PERÚ

  #@regresion
  Escenario: [CP08] Si tengo residencia fiscal fuera del Perú (Botón Cerrar)
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "72174876"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccionar el boton Si tengo
    Y se mostrara un popup de "Tu solicitud requiere validación adicional"
    Entonces dar clic en el boton Cerrar del popup
    Y se debe actualizar la web y retornar a la Pantalla principal "Invierte de forma simple y segura con el respaldo de AFP Habitat."

  #@regresion
  Escenario: [CP09] Si tengo residencia fiscal fuera del Perú (Botón Descargar)
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "72174876"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccionar el boton Si tengo
    Y se mostrara un popup de "Tu solicitud requiere validación adicional"
    Entonces dar clic en el boton Descargar del popup
    Y se mostrara las URL de descargas de los documentos a presentar

  #@regresion
  Escenario: [CP10] No tengo residencia fiscal fuera del Perú
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "72174876"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Entonces se mostrara la pantalla de "Datos personales"