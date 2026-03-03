#language: es
Característica: FUNCIONALIDAD DE ADVERTENCIAS O ERRORES

  #@regresion
  Escenario: [CP] Cliente no afiliado identificado con DNI / Validación incorrecta en Datos Personales
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
    Y seleccionar el Primer nombre incorrecto "ANA"
    Y seleccionar el Primer apellido incorrecto "BAUTISTA"
    Y seleccionar la Fecha de emision incorrecta del DNI "10/11/2023"
    Y dar clic en el boton Siguiente
    Entonces se mostrara un popup de advertencia "Validación incorrecta"
    Y con el mensaje "Te quedan 2 intentos permitidos para validar tu identidad"
    Y dar clic en el boton Entendido y Siguiente secuencialmente
    Entonces se mostrara un popup de advertencia "Validación incorrecta"
    Y con el mensaje "Te quedan 1 intentos permitidos para validar tu identidad"
    Y dar clic en el boton Entendido y Siguiente secuencialmente
    Entonces se mostrara un popup de advertencia "Has superado el límite diario de intentos"
    Y con el mensaje "Inténtalo nuevamente mañana. Gracias por tu comprensión."
    Y dar clic en el boton Ententido