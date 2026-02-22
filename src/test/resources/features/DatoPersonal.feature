#language: es
Característica: FUNCIONALIDAD DE DATOS PERSONALES (PRIMER NOMBRE, PRIMER APELLIDO Y FECHA DE EMISIÓN)

  #@regresion
  Escenario: [CP33] Cliente no afiliado identificado con DNI / Selección y validación de datos correctos
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "72174876"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "1234"
    Y dar clic en el boton Empezar a invertir
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Y se mostrara la pantalla de "Datos personales" con los siguientes campos
      | Primer nombre    |
      | Primer apellido  |
      | Fecha de emisión |
    Y seleccionar el primer nombre correcto del cliente "SLEDGE"
    Y seleccionar el primer apellido correcto del cliente "LUYO"
    Y seleccionar la fecha de emision correcta del DNI del cliente "22/11/2022"
    Y dar clic en el boton Siguiente
    Entonces mostrara el formulario "Datos personales" de llenado de los demas datos del cliente