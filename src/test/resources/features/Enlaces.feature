#language: es
Característica: FUNCIONALIDAD DE LA REDIRECCIÓN DE ENLACES

  #@regresion
  Escenario: [CP] Cliente / Validar enlace de Política de Privacidad
    Dado que la web este disponible
    Cuando se muestre la Pantalla principal "Invierte de forma simple y segura con el respaldo de AFP Habitat."
    Entonces validar "Los datos proporcionados se tratarán conforme a la Política de Privacidad"
    Y dar clic en el enlace Politica de Privacidad

  #@regresion
  Escenario: [CP] Cliente / Validar enlace de Términos y Comisiones
    Dado que la web este disponible
    Cuando se muestre la Pantalla principal "Invierte de forma simple y segura con el respaldo de AFP Habitat."
    Entonces validar "*Acepto los términos y comisiones asociados a la apertura y débitos para el fondo libre habitat mostrado aquí."
    Y dar clic en el enlace Aqui

  #@regresion
  Escenario: [CP] Cliente / Validar enlace de Autorización de uso de datos personales para fines publicitarios
    Dado que la web este disponible
    Cuando se muestre la Pantalla principal "Invierte de forma simple y segura con el respaldo de AFP Habitat."
    Entonces validar "Autorizo el uso de mis datos personales para fines publicitarios, conforme a la Política de Privacidad"
    Y dar clic en el enlace Politica de Privacidad de Autorizacion de uso de datos personales

  #@regresion
  Escenario: [CP] Cliente / Validar enlace de Autorización de compartir datos con Prudentialsaf S.A.C. para fines informativos y comerciales
    Dado que la web este disponible
    Cuando se muestre la Pantalla principal "Invierte de forma simple y segura con el respaldo de AFP Habitat."
    Entonces validar "Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf S.A.C. para fines informativos/comerciales, según la Política de Privacidad"
    Y dar clic en el enlace Politica de Privacidad de Autorizacion para Compartir Datos


