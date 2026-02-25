#language: es
Característica: FUNCIONALIDAD DE LA VALIDACIÓN BIOMÉTRICA

  #@regresion
  Escenario: [CP42] Cliente no afiliado identificado con DNI / Tomar selfie
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
    Y seleccionar el pais de residencia ""
    Y seleccionar la Nacionalidad ""
    Y seleccionar la Fecha de nacimiento ""
    Cuando seleccione Usar la direccion de mi DNI ""
    Y seleccionar la Profesion ""
    Y seleccionar el prefijo del celular ""
    Y ingresar el Numero de celular ""
    Y ingresar el Correo electronico ""
    Y seleccionar el Tipo de trabajador "Independiente"
    Y ingresar el Centro de labores ""
    Y ingresar el Numero de RUC ""
    Y seleccionar el Cargo ""
    Y seleccionar el Ingreso promedio mensual "NO INGRESAR NADA"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    Y ingresar el Monto a invertir "15000"
    Y seleccionar la Frecuencia de inversion
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara una pantalla "Confirma tu solicitud con un selfie"
    Y se mostrara 5 popups de recomendaciones a seguir
    Y dar clic en el boton Siguiente de los popups
    Y tomarse una foto del rostro
    Y se mostrara un popup de "Pago web"

  #@regresion
  Escenario: [CP53] Cliente no afiliado identificado con Pasaporte / Tomar selfie
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
    E ingresar el Primer nombre ""
    E ingresar el Segundo nombre ""
    Y seleccionar la Nacionalidad ""
    Y seleccionar el pais de residencia ""
    Y seleccionar la Fecha de nacimiento ""
    Y seleccionar el Sexo ""
    Y seleccionar el Estado civil ""
    Y seleccionar el Departamento ""
    Y seleccionar la Provincia ""
    Y seleccionar el Distrito ""
    Y seleccionar el Tipo de vía ""
    Y ingresar la Direccion ""
    Y seleccionar la Profesion ""
    Y seleccionar el prefijo del celular ""
    Y ingresar el Numero de celular ""
    Y ingresar el Correo electronico ""
    Y seleccionar el Tipo de trabajador "Independiente"
    Y ingresar el Centro de labores ""
    Y ingresar el Numero de RUC ""
    Y seleccionar el Cargo ""
    Y seleccionar el Ingreso promedio mensual ""
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    E ingresar el Monto a invertir "9000"
    Y seleccionar la Frecuencia de inversión
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara una pantalla "Confirma tu solicitud con un selfie"
    Y se mostrara 5 popups de recomendaciones a seguir
    Y dar clic en el boton Siguiente de los popups
    Y tomarse una foto del rostro
    Y se mostrara un popup de "Pago web"