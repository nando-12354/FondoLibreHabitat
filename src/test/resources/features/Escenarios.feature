#language: es
Característica: FUNCIONALIDAD DEL SISTEMA FONDO LIBRE HABITAT

  #@regresion
  Escenario: [CP01] Validar cliente no perteneciente al Sistema Privado de Pensiones
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "78954321"
    Entonces se mostrara un popup de advertencia "No perteneces al SPP"
    Y dar clic en el boton Cerrar del popup

  @regresion
  Escenario: [CP02] Validar cliente afiliado con DNI
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    #E ingrese el Numero de Documento "22109225"
    #Cuando se muestre un campo nuevo de ingreso "Clave web"
    #Entonces ingresar la Clave web "1234"
    #Y dar clic en el boton Empezar a invertir
    #Y se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"

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
    E ingrese el Numero de Documento "456623132"
    Y seleccionar la Fecha de nacimiento "11/11/1996"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"

  #@regresion
  Escenario: [CP07] Validar cliente no afiliado con Pasaporte perteneciente al SPP
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "Pasaporte"
    E ingrese el Numero de Documento "H582365"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"

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
    Entonces se mostrara una pantalla de "Datos personales"

  #@regresion
  Escenario: [CP11] Cliente afiliado con cuenta con saldo / Validar los Datos de inversión del cliente
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "22109225"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "1234"
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Y se mostrara la pantalla "Datos de inversión"
    Y validar el Monto disponible del cliente
    Y validar el Tipo de fondo del cliente

  #@regresion
  Escenario: [CP12] Cliente afiliado con cuenta y saldo / Declaración de origen de fondos por monto de inversión mayor a S/25,000.00
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "22109225"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "1234"
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Y se mostrara la pantalla "Datos de inversión"
    Y validar el Monto disponible del cliente
    Y validar el Tipo de fondo del cliente
    E ingresar el Monto a invertir mayor a "25001"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Continuar
    Cuando se muestre un popup de "Declaración de origen de fondos"
    Entonces seleccionar el Origen de los fondos "Pago de haberes"
    E ingresar el Centro de labores "GYS"
    Y seleccionar el Tipo de trabajador "Dependiente"
    E ingresar el Cargo "ABOGADO"
    E ingresar el Tiempo de servicio "3"
    Y seleccionar el Tiempo "Años"
    Y seleccionar el Rango de Ingreso promedio mensual "De S/ 3,001 hasta S/ 5,000"
    Y seleccionar el Departamento "LIMA"
    Y seleccionar la Provincia "CAÑETE"
    Y seleccionar el Distrito "IMPERIAL"
    Y seleccionar el Tipo de via "Avenida"
    E ingresar la Direccion "Av. 28 de Julio 1234"
    Y dar clic en el boton Aceptar del popup
    Entonces se mostrara un popup de "Confirma tu solicitud"

  #@regresion
  Escenario: [CP13] Cliente afiliado con cuenta con saldo / Aceptar y firmar inversión
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "22109225"
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

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP14] Cliente afiliado con cuenta con saldo / Confirmar solicitud
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "22109225"
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
    Y se mostrara un popup de "Esta operación se confirmará con tu token digital."
    Y seleccionar el medio por el cual desea recibir su token digital
    Y dar clic en el boton Enviar token
    E ingresar el Codigo de confirmacion
    Y dar clic en el boton Confirmar operacion
    Entonces se mostrara un popup de "Pago web"

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP15] Cliente afiliado con cuenta con saldo / Pago por transferencia bancaria
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
    Y se mostrara un popup de "Esta operación se confirmará con tu token digital."
    Y seleccionar el medio por el cual desea recibir su token digital
    Y dar clic en el boton Enviar token
    E ingresar el Codigo de confirmacion
    Y dar clic en el boton Confirmar operacion
    Entonces se mostrara un popup de "Elige tu Banco"
    Y seleccionar un Banco "BCP"
    Y dar clic en el boton Continuar
    Y se mostrara un popup de "Realiza tu transferencia desde tu PC o celular:" y sus Cinco pasos a seguir
      | 1. Ingresa a tu app o banca por internet.                                                                                                          |
      | 2. Selecciona Operaciones y luego Pago de servicios.                                                                                               |
      | 3. Busca o escribe: AFP Habitat Inversiones.                                                                                                       |
      | 4. Ingresa tu número de DNI.                                                                                                                       |
      | 5. Ingresa el monto de la inversión, que debe coincidir con el monto registrado en tu solicitud. Veritifca la información y confirma la operación. |
    Y seleccionar Confirmo haber seleccionado la transferencia
    Y dar clic en el boton Continuar
    Entonces se mostrara un popup de "Verifica tu operación"
    E ingresar el Numero de operacion "852147"
    Y dar clic en el boton Invertir


  # Caso de prueba Manual
  #@regresion
  Escenario: [CP16] Cliente afiliado con cuenta con saldo / Solicitud de inversión exitoso
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
    Y se mostrara un popup de "Esta operación se confirmará con tu token digital."
    Y seleccionar el medio por el cual desea recibir su token digital
    Y dar clic en el boton Enviar token
    E ingresar el Codigo de confirmacion
    Y dar clic en el boton Confirmar operacion
    Entonces se mostrara un popup de "Pago web"
    E ingresar el Numero de la tarjeta
    E ingresar la Fecha de vencimiento
    E ingresar el Codigo de seguridad o CVV
    E ingresar el Nombre del titular de la tarjeta
    E ingresar el Apellido del titular de la tarjeta
    E ingresar el Correo del cliente
    Y dar clic en el boton "Pagar"
    Y se mostrara una pantalla "Tu solicitud de inversión fue registrada correctamente"
    Y validar el Numero de solicitud generado junto a la Constancia de pago

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP17] Cliente afiliado con cuenta con saldo / Descarga de constancia de pago
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
    Y se mostrara un popup de "Esta operación se confirmará con tu token digital."
    Y seleccionar el medio por el cual desea recibir su token digital
    Y dar clic en el boton Enviar token
    E ingresar el Codigo de confirmacion
    Y dar clic en el boton Confirmar operacion
    Entonces se mostrara un popup de "Pago web"
    E ingresar el Numero de la tarjeta
    E ingresar la Fecha de vencimiento
    E ingresar el Codigo de seguridad o CVV
    E ingresar el Nombre del titular de la tarjeta
    E ingresar el Apellido del titular de la tarjeta
    E ingresar el Correo del cliente
    Y dar clic en el boton "Pagar"
    Y se mostrara una pantalla "Tu solicitud de inversión fue registrada correctamente"
    Y validar el Numero de solicitud generado junto a la Constancia de pago
    Y dar clic en el boton Descargar comprobante
    Entonces se mostrara el Comprobante de pago

  #@regresion
  Escenario: [CP18] Cliente afiliado sin cuenta sin saldo / Selección de fondo a invertir
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "31220355"
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

  #@regresion
  Escenario: [CP19] Cliente afiliado sin cuenta sin saldo / Declaración de origen de fondos por monto de inversión mayor a S/25,000.00
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "31220355"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "1234"
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Y se mostrara la pantalla "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    E ingresar el Monto a invertir mayor a "51000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Cuando se muestre un popup de "Declaración de origen de fondos"
    Entonces seleccionar el Origen de los fondos "Pago de haberes"
    E ingresar el Centro de labores "GYS"
    Y seleccionar el Tipo de trabajador "Dependiente"
    E ingresar el Cargo "ABOGADO"
    E ingresar el Tiempo de servicio "3"
    Y seleccionar el Tiempo "Años"
    Y seleccionar el Rango de Ingreso promedio mensual "De S/ 3,001 hasta S/ 5,000"
    Y seleccionar el Departamento "LIMA"
    Y seleccionar la Provincia "CAÑETE"
    Y seleccionar el Distrito "IMPERIAL"
    Y seleccionar el Tipo de via "Avenida"
    E ingresar la Direccion "Av. 28 de Julio 1234"
    Y dar clic en el boton Aceptar del popup
    Entonces se mostrara un popup de "Confirma tu solicitud"

  #@regresion
  Escenario: [CP20] Cliente afiliado sin cuenta sin saldo / Aceptar y firmar inversión
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "31220355"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "1234"
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Y se mostrara la pantalla "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    E ingresar el Monto a invertir "12000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP21] Cliente afiliado sin cuenta sin saldo / Confirmar solicitud
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "31220355"
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

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP22] Cliente afiliado sin cuenta sin saldo / Pago por transferencia bancaria
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "31220355"
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
    Entonces se mostrara un popup de "Elige tu Banco"
    Y seleccionar un Banco "BCP"
    Y dar clic en el boton Continuar
    Y se mostrara un popup de "Realiza tu transferencia desde tu PC o celular:" y sus Cinco pasos a seguir
      | 1. Ingresa a tu app o banca por internet.                                                                                                          |
      | 2. Selecciona Operaciones y luego Pago de servicios.                                                                                               |
      | 3. Busca o escribe: AFP Habitat Inversiones.                                                                                                       |
      | 4. Ingresa tu número de DNI.                                                                                                                       |
      | 5. Ingresa el monto de la inversión, que debe coincidir con el monto registrado en tu solicitud. Veritifca la información y confirma la operación. |
    Y seleccionar Confirmo haber seleccionado la transferencia
    Y dar clic en el boton Continuar
    Entonces se mostrara un popup de "Verifica tu operación"
    E ingresar el Numero de operacion "852147"
    Y dar clic en el boton Invertir

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP23] Cliente afiliado sin cuenta sin saldo / Solicitud de inversión exitoso
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "31220355"
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
    E ingresar el Numero de la tarjeta
    E ingresar la Fecha de vencimiento
    E ingresar el Codigo de seguridad o CVV
    E ingresar el Nombre del titular de la tarjeta
    E ingresar el Apellido del titular de la tarjeta
    E ingresar el Correo del cliente
    Y dar clic en el boton "Pagar"
    Y se mostrara una pantalla "Tu solicitud de inversión fue registrada correctamente"
    Y validar el Numero de solicitud generado junto a la Constancia de pago

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP24] Cliente afiliado sin cuenta sin saldo / Descarga de constancia de pago
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "31220355"
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
    E ingresar el Numero de la tarjeta
    E ingresar la Fecha de vencimiento
    E ingresar el Codigo de seguridad o CVV
    E ingresar el Nombre del titular de la tarjeta
    E ingresar el Apellido del titular de la tarjeta
    E ingresar el Correo del cliente
    Y dar clic en el boton "Pagar"
    Y se mostrara una pantalla "Tu solicitud de inversión fue registrada correctamente"
    Y validar el Numero de solicitud generado junto a la Constancia de pago
    Y dar clic en el boton Descargar comprobante
    Entonces se mostrara el Comprobante de pago

  #@regresion
  Escenario: [CP25] Cliente afiliado con cuenta sin saldo / Validar los Datos de inversión del cliente
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "40322895"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "1234"
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Y se mostrara la pantalla "Datos de inversión"
    Y validar el Tipo de fondo del cliente

  #@regresion
  Escenario: [CP26] Cliente afiliado con cuenta sin saldo / Cambio tipo de fondo
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "40322895"
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

  #@regresion
  Escenario: [CP27] Cliente afiliado con cuenta sin saldo / Declaración de origen de fondos por monto de inversión mayor a S/25,000.00
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "40322895"
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
    E ingresar el Monto a invertir mayor a "25000"
    Cuando se muestre un popup de "Declaración de origen de fondos"
    Entonces seleccionar el Origen de los fondos "Pago de haberes"
    E ingresar el Centro de labores "GYS"
    Y seleccionar el Tipo de trabajador "Dependiente"
    E ingresar el Cargo "ABOGADO"
    E ingresar el Tiempo de servicio "3"
    Y seleccionar el Tiempo "Años"
    Y seleccionar el Rango de Ingreso promedio mensual "De S/ 3,001 hasta S/ 5,000"
    Y seleccionar el Departamento "LIMA"
    Y seleccionar la Provincia "CAÑETE"
    Y seleccionar el Distrito "IMPERIAL"
    Y seleccionar el Tipo de via "Avenida"
    E ingresar la Direccion "Av. 28 de Julio 1234"
    Y dar clic en el boton Aceptar del popup
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"

  #@regresion
  Escenario: [CP28] Cliente afiliado con cuenta sin saldo / Aceptar y firmar inversión
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "40322895"
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

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP29] Cliente afiliado con cuenta sin saldo / Confirmar solicitud
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "40322895"
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

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP30] Cliente afiliado con cuenta sin saldo / Pago web con Niubiz
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "40322895"
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
    E ingresar el Numero de la tarjeta
    E ingresar la Fecha de vencimiento
    E ingresar el Codigo de seguridad o CVV
    E ingresar el Nombre del titular de la tarjeta
    E ingresar el Apellido del titular de la tarjeta
    E ingresar el Correo del cliente
    Y dar clic en el boton "Pagar"

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP31] Cliente afiliado con cuenta sin saldo / Solicitud de inversión exitoso
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "40322895"
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
    E ingresar el Numero de la tarjeta
    E ingresar la Fecha de vencimiento
    E ingresar el Codigo de seguridad o CVV
    E ingresar el Nombre del titular de la tarjeta
    E ingresar el Apellido del titular de la tarjeta
    E ingresar el Correo del cliente
    Y dar clic en el boton "Pagar"
    Y se mostrara una pantalla "Tu solicitud de inversión fue registrada correctamente"
    Y validar el Numero de solicitud generado junto a la Constancia de pago

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP32] Cliente afiliado con cuenta sin saldo / Descarga de constancia de pago
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "40322895"
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
    E ingresar el Numero de la tarjeta
    E ingresar la Fecha de vencimiento
    E ingresar el Codigo de seguridad o CVV
    E ingresar el Nombre del titular de la tarjeta
    E ingresar el Apellido del titular de la tarjeta
    E ingresar el Correo del cliente
    Y dar clic en el boton "Pagar"
    Y se mostrara una pantalla "Tu solicitud de inversión fue registrada correctamente"
    Y validar el Numero de solicitud generado junto a la Constancia de pago
    Y dar clic en el boton Descargar comprobante
    Entonces se mostrara el Comprobante de pago

  #@regresion
  Escenario: [CP33] Cliente no afiliado identificado con DNI / Selección y validación de datos correctos
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

  #@regresion
  Escenario: [CP34] Cliente no afiliado identificado con DNI / Usar la dirección de mi DNI
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
  Escenario: [CP38] Cliente no afiliado identificado con DNI / Validar ingreso promedio mensual obligatorio por tipo trabajador dependiente e independiente
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
    Y seleccionar el Tipo de trabajador "Jubilado"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20654741264"
    Y seleccionar el Cargo "Comerciante"
    E ingresar el Ingreso promedio mensual ""
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"

  #@regresion
  Escenario: [CP39] Cliente no afiliado identificado con DNI / Selección de fondo a invertir
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
    Y ingresar la Nacionalidad "Peruana"
    Y seleccionar la Fecha de nacimiento "06/06/1996"
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "987456321"
    Y ingresar el Correo electronico "ndflex12354@gmail.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20987654125"
    Y seleccionar el Cargo "Supervisor"
    E ingresar el Ingreso promedio mensual "100000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    Y ingresar el Monto a invertir "15000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud

  #@regresion
  Escenario: [CP40] Cliente no afiliado identificado con DNI / Declaración de origen de fondos por monto de inversión mayor a S/25,000,00
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
    Y ingresar la Nacionalidad "Peruana"
    Y seleccionar la Fecha de nacimiento "06/06/1996"
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "987456321"
    Y ingresar el Correo electronico "barryallen@gmail.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20987654125"
    Y seleccionar el Cargo "Supervisor"
    E ingresar el Ingreso promedio mensual "100000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    E ingresar el Monto a invertir mayor a "25000"
    Y seleccionar la Frecuencia de inversion Unica
    Cuando se muestre un popup de "Declaración de origen de fondos"
    Entonces seleccionar el Origen de los fondos "Pago de haberes"
    E ingresar el Centro de labores "GYS"
    Y seleccionar el Tipo de trabajador "Dependiente"
    E ingresar el Cargo "ABOGADO"
    E ingresar el Tiempo de servicio "3"
    Y seleccionar el Tiempo "Años"
    Y seleccionar el Rango de Ingreso promedio mensual "De S/ 3,001 hasta S/ 5,000"
    Y seleccionar el Departamento "LIMA"
    Y seleccionar la Provincia "CAÑETE"
    Y seleccionar el Distrito "IMPERIAL"
    Y seleccionar el Tipo de via "Avenida"
    E ingresar la Direccion "Av. 28 de Julio 1234"
    Y dar clic en el boton Aceptar del popup
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud

  #@regresion
  Escenario: [CP41] Cliente no afiliado identificado con DNI / Confirmar solicitud
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
    Y ingresar la Nacionalidad "Peruana"
    Y seleccionar la Fecha de nacimiento "06/06/1996"
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "987456321"
    Y ingresar el Correo electronico "barryallen@gmail.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20987654125"
    Y seleccionar el Cargo "Supervisor"
    E ingresar el Ingreso promedio mensual "100000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    Y ingresar el Monto a invertir "15000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara una pantalla "Confirma tu solicitud con un selfie"
    Y se mostrara Cinco popups de "Algunas consideraciones" a seguir
    Entonces validar el popup "Evita sombras pronunciadas en tu rostro."
    Y validar el popup "Utiliza un fondo uniforme para una mejor captura."
    Y validar el popup "Utiliza una buena iluminación."
    Y validar el popup "Asegúrate de que tu rostro esté dentro del recuadro y permanece inmóvil durante la captura."
    Y validar el popup "No uses objetos que cubran tu rostro; evita gafas oscuras y peinados que tapen los ojos."

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP42] Cliente no afiliado identificado con DNI / Tomar selfie
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
    Y ingresar la Nacionalidad "Peruana"
    Y seleccionar la Fecha de nacimiento "06/06/1996"
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "987456321"
    Y ingresar el Correo electronico "barryallen@gmail.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20987654125"
    Y seleccionar el Cargo "Supervisor"
    E ingresar el Ingreso promedio mensual "100000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    Y ingresar el Monto a invertir "15000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara una pantalla "Confirma tu solicitud con un selfie"
    Y dar clic en el boton Tomar selfie
    Y se mostrara Cinco popups de "Algunas consideraciones" a seguir
    Entonces validar el popup "Evita sombras pronunciadas en tu rostro."
    Y validar el popup "Utiliza un fondo uniforme para una mejor captura."
    Y validar el popup "Utiliza una buena iluminación."
    Y validar el popup "Asegúrate de que tu rostro esté dentro del recuadro y permanece inmóvil durante la captura."
    Y validar el popup "No uses objetos que cubran tu rostro; evita gafas oscuras y peinados que tapen los ojos."
    Y tomarse una foto del rostro
    Y se mostrara un popup de "Pago web"

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP43] Cliente no afiliado identificado con DNI / Pago web con Niubiz
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
    Y ingresar la Nacionalidad "Peruana"
    Y seleccionar la Fecha de nacimiento "06/06/1996"
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "987456321"
    Y ingresar el Correo electronico "barryallen@gmail.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20987654125"
    Y seleccionar el Cargo "Supervisor"
    E ingresar el Ingreso promedio mensual "100000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    Y ingresar el Monto a invertir "15000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara una pantalla "Confirma tu solicitud con un selfie"
    Y dar clic en el boton Tomar selfie
    Y se mostrara Cinco popups de "Algunas consideraciones" a seguir
    Entonces validar el popup "Evita sombras pronunciadas en tu rostro."
    Y validar el popup "Utiliza un fondo uniforme para una mejor captura."
    Y validar el popup "Utiliza una buena iluminación."
    Y validar el popup "Asegúrate de que tu rostro esté dentro del recuadro y permanece inmóvil durante la captura."
    Y validar el popup "No uses objetos que cubran tu rostro; evita gafas oscuras y peinados que tapen los ojos."
    Y tomarse una foto del rostro
    Y se mostrara un popup de "Pago web"
    E ingresar el Numero de la tarjeta ""
    E ingresar la Fecha de vencimiento ""
    E ingresar el Codigo de seguridad o CVV  ""
    E ingresar el Nombre del titular de la tarjeta ""
    E ingresar el Apellido del titular de la tarjeta ""
    E ingresar el Correo del cliente ""
    Y dar clic en el boton "Pagar"

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP44] Cliente no afiliado identificado con DNI / Solicitud de inversión exitoso
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
    Y ingresar la Nacionalidad "Peruana"
    Y seleccionar la Fecha de nacimiento "06/06/1996"
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "987456321"
    Y ingresar el Correo electronico "barryallen@gmail.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20987654125"
    Y seleccionar el Cargo "Supervisor"
    E ingresar el Ingreso promedio mensual "100000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    Y ingresar el Monto a invertir "15000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara una pantalla "Confirma tu solicitud con un selfie"
    Y dar clic en el boton Tomar selfie
    Y se mostrara Cinco popups de "Algunas consideraciones" a seguir
    Entonces validar el popup "Evita sombras pronunciadas en tu rostro."
    Y validar el popup "Utiliza un fondo uniforme para una mejor captura."
    Y validar el popup "Utiliza una buena iluminación."
    Y validar el popup "Asegúrate de que tu rostro esté dentro del recuadro y permanece inmóvil durante la captura."
    Y validar el popup "No uses objetos que cubran tu rostro; evita gafas oscuras y peinados que tapen los ojos."
    Y tomarse una foto del rostro
    Y se mostrara un popup de "Pago web"
    E ingresar el Numero de la tarjeta ""
    E ingresar la Fecha de vencimiento ""
    E ingresar el Codigo de seguridad o CVV  ""
    E ingresar el Nombre del titular de la tarjeta ""
    E ingresar el Apellido del titular de la tarjeta ""
    E ingresar el Correo del cliente ""
    Y dar clic en el boton "Pagar"
    Cuando se muestre una pantalla "Tu solicitud de inversión fue registrada correctamente"
    Entonces validar el Numero de solicitud generado junto a la Constancia de pago

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP45] Cliente no afiliado identificado con DNI / Descarga de constancia de pago
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
    Y ingresar la Nacionalidad "Peruana"
    Y seleccionar la Fecha de nacimiento "06/06/1996"
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "987456321"
    Y ingresar el Correo electronico "barryallen@gmail.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20987654125"
    Y seleccionar el Cargo "Supervisor"
    E ingresar el Ingreso promedio mensual "100000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    Y ingresar el Monto a invertir "15000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara una pantalla "Confirma tu solicitud con un selfie"
    Y dar clic en el boton Tomar selfie
    Y se mostrara Cinco popups de "Algunas consideraciones" a seguir
    Entonces validar el popup "Evita sombras pronunciadas en tu rostro."
    Y validar el popup "Utiliza un fondo uniforme para una mejor captura."
    Y validar el popup "Utiliza una buena iluminación."
    Y validar el popup "Asegúrate de que tu rostro esté dentro del recuadro y permanece inmóvil durante la captura."
    Y validar el popup "No uses objetos que cubran tu rostro; evita gafas oscuras y peinados que tapen los ojos."
    Y tomarse una foto del rostro
    Y se mostrara un popup de "Pago web"
    E ingresar el Numero de la tarjeta ""
    E ingresar la Fecha de vencimiento ""
    E ingresar el Codigo de seguridad o CVV  ""
    E ingresar el Nombre del titular de la tarjeta ""
    E ingresar el Apellido del titular de la tarjeta ""
    E ingresar el Correo del cliente ""
    Y dar clic en el boton "Pagar"
    Cuando se muestre una pantalla "Tu solicitud de inversión fue registrada correctamente"
    Entonces validar el Numero de solicitud generado junto a la Constancia de pago
    Y dar clic en el boton Descargar comprobante
    Y se mostrara el Comprobante de pago

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP46] Cliente no afiliado identificado con DNI / Banner publicitario para cambio de fondo a invertir
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
    Y seleccionar la Fecha de nacimiento "06/06/1996"
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion "ADMINISTRADOR"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "974563214"
    Y ingresar el Correo electronico "fernando.luyo@gestionysistemas.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20123456789"
    Y seleccionar el Cargo "Comerciante"
    Y seleccionar el Ingreso promedio mensual "190000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    Y ingresar el Monto a invertir "15000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara una pantalla "Confirma tu solicitud con un selfie"
    Y se mostrara 5 popups de recomendaciones a seguir
    Y dar clic en el boton Siguiente de los popups
    Y tomarse una foto del rostro
    Y se mostrara un popup de "Pago web"
    E ingresar el Numero de la tarjeta ""
    E ingresar la Fecha de vencimiento ""
    E ingresar el Codigo de seguridad o CVV  ""
    E ingresar el Nombre del titular de la tarjeta ""
    E ingresar el Apellido del titular de la tarjeta ""
    E ingresar el Correo del cliente ""
    Y dar clic en el boton "Pagar"
    Y se mostrara el Banner publicitario de cambio de fondo
    Y dar clic en el boton Cambiate a HABITAT
    Y se mostrara un popup de "Estás a un paso de completar tu cambio" con los tres fondos disponibles
      | Fondo 1 - Conservador |
      | Fondo 2 - Moderado    |
      | Fondo 3 - Arriesgado  |
    Y seleccionar un Fondo a cambiarse "Fondo 1 - Conservador"
    Y dar clic en el boton Continuar
    Y se mostrara una pantalla de "Firma digital"
    Y dar clic en el boton Aceptar y firmar
    Y se mostrara un popup de "Esta operación se confirmará con tu token digital"
    Y seleccionar el medio por el cual desea recibir su token digital
    Y ingresar el Código de confirmacion
    Y dar clic en el boton Confirmar operacion
    Y se mostrara un pantalla de "Tu solicitud se encuentra Validad"

  #@regresion
  Escenario: [CP47] Cliente no afiliado identificado con CE / Validar mensaje de Validación adicional de información
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "C.E."
    E ingrese el Numero de Documento ""
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup con un mensaje informativo "Validación adicional de información"
    Cuando se da clic en el boton Descargar documentos
    Entonces se decargaran los documentos a presentar de forma local

  #@regresion
  Escenario: [CP48] Cliente no afiliado identificado con Pasaporte / Validar mensaje de Validación adicional de información
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "Pasaporte"
    E ingrese el Numero de Documento "193817954"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup con un mensaje informativo "Validación adicional de información"
    Cuando se da clic en el boton Descargar documentos
    Entonces se decargaran los documentos a presentar de forma local

  #@regresion
  Escenario: [CP49] Cliente afiliado sin cuenta con saldo / Validar los Datos de inversión del cliente
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "22109225"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "1234"
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Y se mostrara la pantalla "Datos de inversión"
    Y validar el Monto disponible del cliente
    Y validar el Tipo de fondo del cliente
    Y Validar el mensaje de Cliente afiliado sin cuenta con saldo "Al aceptar, usted está de acuerdo con los términos, condiciones y comisiones aplicables a fondo libre hábitat. Conoce más sobre este servicio aquí."

  #@regresion
  Escenario: [CP50] Cliente afiliado sin cuenta con saldo / Declaración de origen de fondos por monto de inversión mayor a S/25,000.00
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "22109225"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "1234"
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Y se mostrara la pantalla "Datos de inversión"
    Y validar el Monto disponible del cliente
    Y validar el Tipo de fondo del cliente
    E ingresar el Monto a invertir mayor a "25001"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Continuar
    Cuando se muestre un popup de "Declaración de origen de fondos"
    Entonces seleccionar el Origen de los fondos "Pago de haberes"
    E ingresar el Centro de labores "GYS"
    Y seleccionar el Tipo de trabajador "Dependiente"
    E ingresar el Cargo "ABOGADO"
    E ingresar el Tiempo de servicio "3"
    Y seleccionar el Tiempo "Años"
    Y seleccionar el Rango de Ingreso promedio mensual "De S/ 3,001 hasta S/ 5,000"
    Y seleccionar el Departamento "LIMA"
    Y seleccionar la Provincia "CAÑETE"
    Y seleccionar el Distrito "IMPERIAL"
    Y seleccionar el Tipo de via "Avenida"
    E ingresar la Direccion "Av. 28 de Julio 1234"
    Y dar clic en el boton Aceptar del popup
    Entonces se mostrara un popup de "Confirma tu solicitud"

  #@regresion
  Escenario: [CP51] Cliente afiliado sin cuenta con saldo / Aceptar y firmar inversión
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "22109225"
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

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP52] Cliente afiliado sin cuenta con saldo / Confirmar solicitud
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "22109225"
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
    Y se mostrara un popup de "Esta operación se confirmará con tu token digital."
    Y seleccionar el medio por el cual desea recibir su token digital
    Y dar clic en el boton Enviar token
    E ingresar el Codigo de confirmacion
    Y dar clic en el boton Confirmar operacion
    Entonces se mostrara un popup de "Pago web"

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP53] Cliente afiliado sin cuenta con saldo / Pago web con Niubiz
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
    Y se mostrara un popup de "Esta operación se confirmará con tu token digital."
    Y seleccionar el medio por el cual desea recibir su token digital
    Y dar clic en el boton Enviar token
    E ingresar el Codigo de confirmacion
    Y dar clic en el boton Confirmar operacion
    Entonces se mostrara un popup de "Pago web"
    E ingresar el Numero de la tarjeta
    E ingresar la Fecha de vencimiento
    E ingresar el Codigo de seguridad o CVV
    E ingresar el Nombre del titular de la tarjeta
    E ingresar el Apellido del titular de la tarjeta
    E ingresar el Correo del cliente
    Y dar clic en el boton "Pagar"

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP54] Cliente afiliado sin cuenta con saldo / Solicitud de inversión exitoso
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
    Y se mostrara un popup de "Esta operación se confirmará con tu token digital."
    Y seleccionar el medio por el cual desea recibir su token digital
    Y dar clic en el boton Enviar token
    E ingresar el Codigo de confirmacion
    Y dar clic en el boton Confirmar operacion
    Entonces se mostrara un popup de "Pago web"
    E ingresar el Numero de la tarjeta
    E ingresar la Fecha de vencimiento
    E ingresar el Codigo de seguridad o CVV
    E ingresar el Nombre del titular de la tarjeta
    E ingresar el Apellido del titular de la tarjeta
    E ingresar el Correo del cliente
    Y dar clic en el boton "Pagar"
    Y se mostrara una pantalla "Tu solicitud de inversión fue registrada correctamente"
    Y validar el Numero de solicitud generado junto a la Constancia de pago

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP55] Cliente afiliado sin cuenta con saldo / Descarga de constancia de pago
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
    Y se mostrara un popup de "Esta operación se confirmará con tu token digital."
    Y seleccionar el medio por el cual desea recibir su token digital
    Y dar clic en el boton Enviar token
    E ingresar el Codigo de confirmacion
    Y dar clic en el boton Confirmar operacion
    Entonces se mostrara un popup de "Pago web"
    E ingresar el Numero de la tarjeta
    E ingresar la Fecha de vencimiento
    E ingresar el Codigo de seguridad o CVV
    E ingresar el Nombre del titular de la tarjeta
    E ingresar el Apellido del titular de la tarjeta
    E ingresar el Correo del cliente
    Y dar clic en el boton "Pagar"
    Y se mostrara una pantalla "Tu solicitud de inversión fue registrada correctamente"
    Y validar el Numero de solicitud generado junto a la Constancia de pago
    Y dar clic en el boton Descargar comprobante
    Entonces se mostrara el Comprobante de pago

  #@regresion
  Escenario: [CP56] Cliente no afiliado identificado con DNI / Validación incorrecta (Número de intentos y superación de límite)
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
    Y seleccionar el Primer nombre incorrecto "ROBERTO"
    Y seleccionar el Primer apellido incorrecto "GUTIERRES"
    Y seleccionar la Fecha de emision incorrecta del DNI "11/11/2025"
    Y dar clic en el boton Siguiente
    Entonces se mostrara un popup de advertencia "Validación incorrecta"
    Y con el mensaje "Te queda 2 intentos permitidos para validar tu identidad"
    Y dar clic en el boton Entendido y Siguiente secuencialmente
    Entonces se mostrara un popup de advertencia "Validación incorrecta"
    Y con el mensaje "Te queda 1 intentos permitidos para validar tu identidad"
    Y dar clic en el boton Entendido y Siguiente secuencialmente
    Entonces se mostrara un popup de advertencia "Has superado el límite diario de intentos"
    Y con el mensaje "Inténtalo nuevamente mañana. Gracias por tu compresión."

  #@regresion
  Escenario: [CP57] Cliente no afiliado identificado con DNI / Validar la superación del límite diario de intentos al intentar ingresar
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "72174876"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de advertencia "Has superado el límite diario de intentos"
    Y con el mensaje "Inténtalo nuevamente mañana. Gracias por tu compresión."

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP58] Sesión expirada por tiempo de espera en una pantalla
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
    Y esperar un Minimo de Cinco minutos sin realizar ninguna accion
    Entonces se mostrara un popup de advertencia "Tu sesión expirada"
    Y con el mensaje "El tiempo límite para validar tu identidad finalizó."
    Y dar clic en el boton Intentar otra vez

  #@regresion
  Escenario: [CP59] Validación de Documento erroneo
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "88888847"
    Y seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui
    Y seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad
    Y seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de advertencia "Ocurrió un error"
    Y con el mensaje "Por favor, inténtelo mas tarde."
    Y dar clic en el boton Continuar

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP60] Cliente no afiliado identificado con DNI / Banner publicitario Rechazo de cambio de fondo a invertir
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
    Y seleccionar la Fecha de nacimiento "06/06/1996"
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion "ADMINISTRADOR"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "974563214"
    Y ingresar el Correo electronico "fernando.luyo@gestionysistemas.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20123456789"
    Y seleccionar el Cargo "Comerciante"
    Y seleccionar el Ingreso promedio mensual "190000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    Y ingresar el Monto a invertir "15000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara una pantalla "Confirma tu solicitud con un selfie"
    Y se mostrara 5 popups de recomendaciones a seguir
    Y dar clic en el boton Siguiente de los popups
    Y tomarse una foto del rostro
    Y se mostrara un popup de "Pago web"
    E ingresar el Numero de la tarjeta ""
    E ingresar la Fecha de vencimiento ""
    E ingresar el Codigo de seguridad o CVV  ""
    E ingresar el Nombre del titular de la tarjeta ""
    E ingresar el Apellido del titular de la tarjeta ""
    E ingresar el Correo del cliente ""
    Y dar clic en el boton "Pagar"
    Y se mostrara el Banner publicitario de cambio de fondo
    Y dar clic en el boton Cambiate a HABITAT
    Y se mostrara un popup de "Estás a un paso de completar tu cambio" con los tres fondos disponibles
      | Fondo 1 - Conservador |
      | Fondo 2 - Moderado    |
      | Fondo 3 - Arriesgado  |
    Y seleccionar un Fondo a cambiarse "Fondo 1 - Conservador"
    Y dar clic en el boton Continuar
    Y se mostrara una pantalla de "Datos de Traspasos"
    Y dar clic en el boton Rechazar
    Y se mostrara un popup de "¿Está seguro que desea rechazar tu solicitud?"
    Y dar clic en el boton Si
    Y se debe actualizar la web y retornar a la Pantalla principal "Invierte de forma simple y segura con el respaldo de AFP Habitat."

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP61] Cliente no afiliado identificado con DNI / Selfie no coincide con la foto del documento de identidad
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
    Y seleccionar la Fecha de nacimiento "06/06/1996"
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion "ADMINISTRADOR"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "974563214"
    Y ingresar el Correo electronico "fernando.luyo@gestionysistemas.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20123456789"
    Y seleccionar el Cargo "Comerciante"
    Y seleccionar el Ingreso promedio mensual "190000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    Y ingresar el Monto a invertir "15000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara una pantalla "Confirma tu solicitud con un selfie"
    Y se mostrara 5 popups de recomendaciones a seguir
    Y dar clic en el boton Siguiente de los popups
    Y tomarse una selfie de un rostro diferente a la del DNI registrado
    Entonces se mostrara un popup de "Error de validación"
    Y con el mensaje "Tu selfie no coincide con la foto de tu DNI, puedes volver a intentarlo"
    Y dar clic en el boton Intentar otra vez

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP62] Cliente no afiliado identificado con DNI / Intentos fallidos en validación biométrica
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
    Y seleccionar la Fecha de nacimiento "06/06/1996"
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion "ADMINISTRADOR"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "974563214"
    Y ingresar el Correo electronico "fernando.luyo@gestionysistemas.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20123456789"
    Y seleccionar el Cargo "Comerciante"
    Y seleccionar el Ingreso promedio mensual "190000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    Y ingresar el Monto a invertir "15000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara una pantalla "Confirma tu solicitud con un selfie"
    Y se mostrara 5 popups de recomendaciones a seguir
    Y dar clic en el boton Siguiente de los popups
    Y tomarse una selfie de un rostro diferente a la del DNI registrado tres veces
    Entonces se mostrara un popup de "Has excedido el limite de intentos posibles."
    Y con el mensaje "Has alcanzado el límite máximo de intentos."
    Y dar clic en el boton Continuar

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP63] Cliente no afiliado identificado con DNI / Servicio TOC no disponible
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
    Y seleccionar la Fecha de nacimiento "06/06/1996"
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion "ADMINISTRADOR"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "974563214"
    Y ingresar el Correo electronico "fernando.luyo@gestionysistemas.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20123456789"
    Y seleccionar el Cargo "Comerciante"
    Y seleccionar el Ingreso promedio mensual "190000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    Y ingresar el Monto a invertir "15000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara una pantalla "Confirma tu solicitud con un selfie"
    Y se mostrara 5 popups de recomendaciones a seguir
    Y dar clic en el boton Siguiente de los popups
    Y tomarse una selfie de un rostro diferente a la del DNI registrado tres veces
    Entonces se mostrara un popup de "Ocurrió un error"
    Y con el mensaje "Nos comunicaremos contigo para completar la validación de identidad."
    Y dar clic en el boton Continuar

  # Caso de prueba Manual
  #@regresion
  Escenario: [CP64] Cliente no afiliado identificado con DNI / Sesión expirada por tiempo de espera en validación biométrica
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
    Y seleccionar la Fecha de nacimiento "06/06/1996"
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion "ADMINISTRADOR"
    Y seleccionar el Prefijo del celular "51"
    Y ingresar el Numero de celular "974563214"
    Y ingresar el Correo electronico "fernando.luyo@gestionysistemas.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20123456789"
    Y seleccionar el Cargo "Comerciante"
    Y seleccionar el Ingreso promedio mensual "190000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    Y ingresar el Monto a invertir "15000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara una pantalla "Confirma tu solicitud con un selfie"
    Y se mostrara 5 popups de recomendaciones a seguir
    Y dar clic en el boton Siguiente de los popups
    Y esperar un Minimo de Cinco minutos sin realizar ninguna accion
    Entonces se mostrara un popup de "Tu sesión expirada"
    Y con el mensaje "El tiempo límite para validar tu identidad finalizó."
    Y dar clic en el boton Intentar otra vez
    Y se debe actualizar la web y retornar a la Pantalla principal "Invierte de forma simple y segura con el respaldo de AFP Habitat."

  #@regresion
  Escenario: [CP65] Cliente afiliado / Cliente Bloqueado por intentos fallidos de ingreso a la cuenta
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "22109225"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web incorrecta "8521"
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un mensaje "Los datos enviados son erróneos"
    Y validar el mensaje de error "Te quedan 3 intentos permitidos"
    E ingresar la Clave web incorrecta "8521"
    Y dar clic en el boton Empezar a invertir
    Y validar el mensaje de error "Te quedan 2 intentos permitidos"
    E ingresar la Clave web incorrecta "8521"
    Y dar clic en el boton Empezar a invertir
    Y validar el mensaje de error "Te quedan 1 intentos permitidos"
    E ingresar la Clave web incorrecta "8521"
    Y dar clic en el boton Empezar a invertir
    Y se mostrara un popup de advertencia "Tu cuenta a sido bloqueada porque superaste el número de intentos permitidos, para desbloquearía haz click en:"
    Y dar clic en el boton Desbloquear cuenta