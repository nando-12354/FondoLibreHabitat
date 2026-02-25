#language: es
Característica: FUNCIONALIDAD DE MODAL CONFIRMA TU SOLICITUD

  #@regresion
  Escenario: [CP14] Cliente afiliado con cuenta y saldo / Confirmar solicitud
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "35181065"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "1234"
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Y se mostrara la pantalla "Datos de inversión"
    Y validar el Monto disponible del cliente
    Y validar el Tipo de fondo del cliente
    E ingresar el Monto a invertir "20000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara un popup de "Esta operación se confirmará con tu token digital"
    Y seleccionar el medio por el cual desea recibir su token digital
    Y ingresar el Codigo de confirmacion
    Y dar clic en el boton Confirmar operacion
    Entonces se mostrara un popup de "Pago web"

  #@regresion
  Escenario: [CP21] Cliente afiliado sin cuenta sin saldo / Confirmar solicitud
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "35181065"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "1234"
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Y se mostrara la pantalla "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    E ingresar el Monto a invertir "20000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara un popup de "Esta operación se confirmará con tu token digital"
    Y seleccionar el medio por el cual desea recibir su token digital
    Y ingresar el Codigo de confirmacion
    Y dar clic en el boton Confirmar operacion
    Entonces se mostrara un popup de "Pago web"

  #@regresion
  Escenario: [CP29] Cliente afiliado con cuenta sin saldo / Confirmar solicitud
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "35181065"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "1234"
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Y se mostrara la pantalla "Datos de inversión"
    Y validar el Tipo de fondo del cliente
    Y dar clic en el boton Cambiar tipo de fondo
    Y se mostrara los Fondos a seleccionar
      | Fondo 1 - Conservador |
      | Fondo 2 - Moderado    |
      | Fondo 3 - Arriesgado  |
    Y seleccionar un Fondo a cambiar "Fondo 1 - Conservador"
    Y dar clic en el boton Aplicar cambios
    Y validar el nuevo Fondo a invertir
    E ingresar el Monto a invertir "20000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara un popup de "Esta operación se confirmará con tu token digital"
    Y seleccionar el medio por el cual desea recibir su token digital
    Y ingresar el Codigo de confirmacion
    Y dar clic en el boton Confirmar operacion
    Entonces se mostrara un popup de "Pago web"

  #@regresion
  Escenario: [CP41] Cliente no afiliado identificado con DNI / Confirmar solicitud
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
    Y seleccionar la Fecha de emision correcta del DNI del cliente "22/11/2022"
    Y dar clic en el boton Siguiente
    Entonces mostrara el formulario "Datos personales" de llenado de los demas datos del cliente
    Y seleccionar el Pais de residencia "Perú"
    E ingresar la Nacionalidad "Peruana"
    Y seleccionar la Fecha de nacimiento "11/07/1998"
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "974123658"
    Y ingresar el Correo electronico "fernando.luyo@gestionysistemas.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20852369741"
    Y seleccionar el Cargo "Comerciante"
    Y seleccionar el Ingreso promedio mensual ""
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    Y ingresar el Monto a invertir "15000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara una pantalla "Confirma tu solicitud con un selfie"

  #@regresion
  Escenario: [CP52] Cliente no afiliado identificado con Pasaporte / Confirmar solicitud
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
    E ingresar el Primer nombre "FERNANFLOO"
    E ingresar el Segundo nombre "LUIS"
    E ingresar la Nacionalidad "Peruana"
    Y seleccionar el Pais de residencia "Perú"
    Y seleccionar la Fecha de nacimiento "11/07/1998"
    Y seleccionar el Sexo "Masculino"
    Y seleccionar el Estado civil "Casado"
    Y seleccionar el Departamento "LIMA"
    Y seleccionar la Provincia "CAÑETE"
    Y seleccionar el Distrito "IMPERIAL"
    Y seleccionar el Tipo de via "Avenida"
    Y ingresar la Direccion "Av. Los Eucaliptos 123"
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "974123658"
    Y ingresar el Correo electronico "fernando.luyo@gestionysistemas.com"
    Y seleccionar el Tipo de trabajador "Independiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20741896578"
    Y seleccionar el Cargo "Comerciante"
    Y seleccionar el Ingreso promedio mensual "600000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    E ingresar el Monto a invertir "9000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara una pantalla "Confirma tu solicitud con un selfie"