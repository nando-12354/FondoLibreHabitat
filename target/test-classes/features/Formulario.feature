#language: es
Característica: FUNCIONALIDAD DEL FORMULARIO DE REGISTRO

  #@regresion
  Escenario: [CP04] Ingreso a Identificación y Consentimiento como Cliente Afiliado con DNI
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "35181065"
    E ingrese la clave web del cliente "1234"
    Y da clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"

  Escenario: [CP04] Ingreso a Identificación y Consentimiento como Cliente Afiliado con DNI
    Dado que la web este disponible
    Y Se mostrará la pantalla principal de inversión
    Y Seleccionar un Tipo de documento (DNI,CE,Pasaporte)
    Y Ingresar un Número de documento
    Y Seleccionar las opciones de aceptación y autorización de uso de datos personales:
  #- Acepto los término y comisiones (Obligatorio)
  #- Autorizo el uso de mis datos personales
  #- Autorizo a AFP Hábitat a compartir datos
  #6. Dar clic en el botón Empezar a invertir
  #7. Se mostrará un popup de advertencia "No perteneces al SPP"
  #8. Dar clic en el botón Cerrar del popup