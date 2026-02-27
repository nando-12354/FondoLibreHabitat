#language: es
Característica: FUNCIONALIDAD DEL SISTEMA FONDO LIBRE HABITAT

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
    E ingrese el Numero de Documento "22109225"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "1234"
    Y dar clic en el boton Empezar a invertir
    Y se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"

    # Se necesita un cliente afiliado con CE para validar
  #@regresion
  Escenario: [CP03] Validar cliente afiliado con CE
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "C.E."
    E ingrese el Numero de Documento "193817953"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "1234"
    Y dar clic en el boton Empezar a invertir
    Y se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"

    # Se necesita un cliente afiliado con Pasaporte para validar
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

  # Observado (No funciona aun el boton)
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

  #@regresion
  Escenario: [CP11] Cliente afiliado con cuenta y saldo / Validar los Datos de inversión del cliente
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

    # PENDIENTE DE VALIDAR HASTA MAÑANA
  #@regresion
  Escenario: [CP12] Cliente afiliado con cuenta y saldo / Declaración de origen de fondos por monto de inversión mayor a S/25,000.00
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
    E ingresar el Monto a invertir mayor a "25001"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Continuar
    Cuando se muestre un popup de "Declaración de origen de fondos"
    Entonces seleccionar el Origen de los fondos "Pago de haberes"
    E ingresar el Centro de labores "GYS"
    Y seleccionar el Tipo de trabajador "Dependiente"
    E ingresar el Cargo "ABOGADO"
    E ingresar el Tiempo de servicio "Años"
    Y seleccionar el Tiempo "3"
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

    # PENDIENTE DE VALIDAR HASTA MAÑANA
  #@regresion
  Escenario: [CP13] Cliente afiliado con cuenta y saldo / Aceptar y firmar inversión
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
    Y dar clic en el boton Continuar
    Entonces se mostrara un popup de "Confirma tu solicitud"

    # Observado (Flujo esta mal)
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

    # El sistema no llega a este escenario aun
  #@regresion
  Escenario: [CP15] Cliente afiliado con cuenta y saldo / Pago web con Niubiz
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
    E ingresar el Numero de la tarjeta
    E ingresar la Fecha de vencimiento
    E ingresar el Codigo de seguridad o CVV
    E ingresar el Nombre del titular de la tarjeta
    E ingresar el Apellido del titular de la tarjeta
    E ingresar el Correo del cliente
    Y dar clic en el boton "Pagar"

    # El sistema no llega a este escenario aun
  #@regresion
  Escenario: [CP16] Cliente afiliado con cuenta y saldo / Solicitud de inversión exitoso
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
    E ingresar el Numero de la tarjeta
    E ingresar la Fecha de vencimiento
    E ingresar el Codigo de seguridad o CVV
    E ingresar el Nombre del titular de la tarjeta
    E ingresar el Apellido del titular de la tarjeta
    E ingresar el Correo del cliente
    Y dar clic en el boton "Pagar"
    Y se mostrara una pantalla "Tu solicitud de inversión fue registrada correctamente"
    Y validar el Numero de solicitud generado junto a la Constancia de pago

    # El sistema no llega a este escenario aun
  #@regresion
  Escenario: [CP17] Cliente afiliado con cuenta y saldo / Descarga de constancia de pago
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
    E ingrese el Numero de Documento "16330665"
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

    # Validado OK
  #@regresion
  Escenario: [CP19] Cliente afiliado sin cuenta sin saldo / Declaración de origen de fondos por monto de inversión mayor a S/25,000.00
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "16330665"
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

    # Validado OK
  #@regresion
  Escenario: [CP20] Cliente afiliado sin cuenta sin saldo / Aceptar y firmar inversión
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "16330665"
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

    # No llega a este flujo
  #@regresion
  Escenario: [CP21] Cliente afiliado sin cuenta sin saldo / Confirmar solicitud
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "16330665"
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

    # No llega a este flujo
  #@regresion
  Escenario: [CP22] Cliente afiliado sin cuenta sin saldo / Pago web con Niubiz
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "16330665"
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

    # No llega a este flujo
  #@regresion
  Escenario: [CP23] Cliente afiliado sin cuenta sin saldo / Solicitud de inversión exitoso
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "16330665"
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

    # No llega a este flujo
  #@regresion
  Escenario: [CP24] Cliente afiliado sin cuenta sin saldo / Descarga de constancia de pago
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "16330665"
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

    # Validado OK
  #@regresion
  Escenario: [CP25] Cliente afiliado con cuenta sin saldo / Validar los Datos de inversión del cliente
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "32662805"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "4321"
    Y dar clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Y se mostrara la pantalla "Datos de inversión"
    Y validar el Tipo de fondo del cliente

    # Observado (Boton Aplicar cambios no funciona)
  #@regresion
  Escenario: [CP26] Cliente afiliado con cuenta sin saldo / Cambio tipo de fondo
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "32662805"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "4321"
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

    # Observado (Boton Aplicar cambios no funciona)
  #@regresion
  Escenario: [CP27] Cliente afiliado con cuenta sin saldo / Declaración de origen de fondos por monto de inversión mayor a S/25,000.00
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "32662805"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "4321"
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
    E ingresar el Tiempo de servicio "Años"
    Y seleccionar el Tiempo "3"
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

    # Observado (Boton Aplicar cambios no funciona)
  #@regresion
  Escenario: [CP28] Cliente afiliado con cuenta sin saldo / Aceptar y firmar inversión
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "32662805"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "4321"
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

    # Observado (Boton Aplicar cambios no funciona y no llega hasta el paso del Token Digital)
  #@regresion
  Escenario: [CP29] Cliente afiliado con cuenta sin saldo / Confirmar solicitud
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "32662805"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "4321"
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

    # Observado (Boton Aplicar cambios no funciona y no llega hasta el paso del Token Digital)
  #@regresion
  Escenario: [CP30] Cliente afiliado con cuenta sin saldo / Pago web con Niubiz
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "32662805"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "4321"
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

    # Observado (Boton Aplicar cambios no funciona y no llega hasta el paso del Token Digital)
  #@regresion
  Escenario: [CP31] Cliente afiliado con cuenta sin saldo / Solicitud de inversión exitoso
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "32662805"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "4321"
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

    # Observado (Boton Aplicar cambios no funciona y no llega hasta el paso del Token Digital)
  #@regresion
  Escenario: [CP32] Cliente afiliado con cuenta sin saldo / Descarga de constancia de pago
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "32662805"
    Cuando se muestre un campo nuevo de ingreso "Clave web"
    Entonces ingresar la Clave web "4321"
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

    # Validado OK
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

  @regresion
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
    Y seleccionar el Ingreso promedio mensual "21000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    Y ingresar el Monto a invertir "15000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara una pantalla de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud

  #@regresion
  Escenario: [CP40] Cliente no afiliado identificado con DNI / Declaración de origen de fondos por monto de inversión mayor a S/25,000,00
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
    Y seleccionar el Pais de residencia ""
    Y seleccionar la Nacionalidad ""
    Y seleccionar la Fecha de nacimiento ""
    Cuando seleccione Usar la direccion de mi DNI
    Y seleccionar la Profesion ""
    Y seleccionar el Prefijo del celular "51"
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
    E ingresar el Monto a invertir mayor a "25000"
    Cuando se muestre un popup de "Declaración de origen de fondos"
    Entonces seleccionar el Origen de los fondos "Pago de haberes"
    E ingresar el Centro de labores "GYS"
    Y seleccionar el Tipo de trabajador "Dependiente"
    E ingresar el Cargo "ABOGADO"
    E ingresar el Tiempo de servicio "Años"
    Y seleccionar el Tiempo "3"
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
    Y dar clic en el boton Confirmar solicitud

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
    Y ingresar el Numero de RUC "20852369811"
    Y seleccionar el Cargo "Comerciante"
    Y seleccionar el Ingreso promedio mensual "500000"
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

  #@regresion
  Escenario: [CP43] Cliente no afiliado identificado con DNI / Pago web con Niubiz
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
    Y ingresar el Numero de RUC "20852369811"
    Y seleccionar el Cargo "Comerciante"
    Y seleccionar el Ingreso promedio mensual "500000"
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

  #@regresion
  Escenario: [CP44] Cliente no afiliado identificado con DNI / Solicitud de inversión exitoso
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
    Y ingresar el Numero de RUC "20852369811"
    Y seleccionar el Cargo "Comerciante"
    Y seleccionar el Ingreso promedio mensual "500000"
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
    Cuando se muestre una pantalla "Tu solicitud de inversión fue registrada correctamente"
    Entonces validar el Numero de solicitud generado junto a la Constancia de pago

  #@regresion
  Escenario: [CP45] Cliente no afiliado identificado con DNI / Descarga de constancia de pago
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
    Y ingresar el Numero de RUC "20852369811"
    Y seleccionar el Cargo "Comerciante"
    Y seleccionar el Ingreso promedio mensual "500000"
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
    Cuando se muestre una pantalla "Tu solicitud de inversión fue registrada correctamente"
    Entonces validar el Numero de solicitud generado junto a la Constancia de pago
    Y dar clic en el boton Descargar comprobante
    Y se mostrara el Comprobante de pago

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

  #@regresion
  Escenario: [CP50] Cliente no afiliado identificado con Pasaporte / Selección de fondo a invertir
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
    E ingresar el Primer nombre "CARLOS"
    E ingresar el Segundo nombre "PEDRO"
    Y seleccionar la Nacionalidad "Peruana"
    Y seleccionar el Pais de residencia "Perú"
    Y seleccionar la Fecha de nacimiento "11/06/1990"
    Y seleccionar el Sexo "Masculino"
    Y seleccionar el Estado civil "Casado"
    Y seleccionar el Departamento "LIMA"
    Y seleccionar la Provincia "CAÑETE"
    Y seleccionar el Distrito "IMPERIAL"
    Y seleccionar el Tipo de via "Avenida"
    E ingresar la Direccion "Av. 28 de Julio 999"
    Y seleccionar la Profesion "ADMINISTRADOR"
    Y seleccionar el Prefijo del celular "51"
    E ingresar el Numero de celular "987789854"
    E ingresar el Correo electronico "fernando.luyo@gestionysistemas.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20852369811"
    Y seleccionar el Cargo "Comerciante"
    E ingresar el Ingreso promedio mensual "60000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    E ingresar el Monto a invertir "12000"
    Y seleccionar la Frecuencia de inversion Unica
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud

  #@regresion
  Escenario: [CP51] Cliente no afiliado identificado con Pasaporte / Declaración de origen de fondos por monto de inversión mayor a S/25,000,00
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
    E ingresar el Primer nombre "CARLOS"
    E ingresar el Segundo nombre "PEDRO"
    Y seleccionar la Nacionalidad "Peruana"
    Y seleccionar el Pais de residencia "Perú"
    Y seleccionar la Fecha de nacimiento "11/06/1990"
    Y seleccionar el Sexo "Masculino"
    Y seleccionar el Estado civil "Casado"
    Y seleccionar el Departamento "LIMA"
    Y seleccionar la Provincia "CAÑETE"
    Y seleccionar el Distrito "IMPERIAL"
    Y seleccionar el Tipo de via "Avenida"
    E ingresar la Direccion "Av. 28 de Julio 999"
    Y seleccionar la Profesion "ADMINISTRADOR"
    Y seleccionar el Prefijo del celular "51"
    E ingresar el Numero de celular "987789854"
    E ingresar el Correo electronico "fernando.luyo@gestionysistemas.com"
    Y seleccionar el Tipo de trabajador "Dependiente"
    Y ingresar el Centro de labores "GYS"
    Y ingresar el Numero de RUC "20852369811"
    Y seleccionar el Cargo "Comerciante"
    E ingresar el Ingreso promedio mensual "60000"
    Y dar clic en el boton Siguiente
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y seleccionar un Fondo a invertir "Fondo 1 - Conservador"
    E ingresar el Monto a invertir mayor a "25000"
    Cuando se muestre un popup de "Declaración de origen de fondos"
    Entonces seleccionar el Origen de los fondos "Pago de haberes"
    E ingresar el Centro de labores "GYS"
    Y seleccionar el Tipo de trabajador "Dependiente"
    E ingresar el Cargo "ABOGADO"
    E ingresar el Tiempo de servicio "Años"
    Y seleccionar el Tiempo "3"
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
    Y dar clic en el boton Confirmar solicitud

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
    E ingresar la Direccion "Av. Los Eucaliptos 123"
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    E ingresar el Numero de celular "974123658"
    E ingresar el Correo electronico "fernando.luyo@gestionysistemas.com"
    Y seleccionar el Tipo de trabajador "Independiente"
    E ingresar el Centro de labores "GYS"
    E ingresar el Numero de RUC "20741896578"
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
    E ingresar la Direccion "Av. Los Eucaliptos 123"
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    E ingresar el Numero de celular "974123658"
    E ingresar el Correo electronico "fernando.luyo@gestionysistemas.com"
    Y seleccionar el Tipo de trabajador "Independiente"
    E ingresar el Centro de labores "GYS"
    E ingresar el Numero de RUC "20741896578"
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
    Y se mostrara 5 popups de recomendaciones a seguir
    Y dar clic en el boton Siguiente de los popups
    Y tomarse una foto del rostro
    Y se mostrara un popup de "Pago web"

  #@regresion
  Escenario: [CP54] Cliente no afiliado identificado con Pasaporte / Pago web con Niubiz
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
    E ingresar la Direccion "Av. Los Eucaliptos 123"
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    E ingresar el Numero de celular "974123658"
    E ingresar el Correo electronico "fernando.luyo@gestionysistemas.com"
    Y seleccionar el Tipo de trabajador "Independiente"
    E ingresar el Centro de labores "GYS"
    E ingresar el Numero de RUC "20741896578"
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

  #@regresion
  Escenario: [CP55] Cliente no afiliado identificado con Pasaporte / Solicitud de inversión exitoso
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
    E ingresar la Direccion "Av. Los Eucaliptos 123"
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    E ingresar el Numero de celular "974123658"
    E ingresar el Correo electronico "fernando.luyo@gestionysistemas.com"
    Y seleccionar el Tipo de trabajador "Independiente"
    E ingresar el Centro de labores "GYS"
    E ingresar el Numero de RUC "20741896578"
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
    Cuando se muestre una pantalla "Tu solicitud de inversión fue registrada correctamente"
    Entonces validar el Numero de solicitud generado junto a la Constancia de pago

  #@regresion
  Escenario: [CP56] Cliente no afiliado identificado con Pasaporte / Descarga de constancia de pago
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
    E ingresar la Direccion "Av. Los Eucaliptos 123"
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    E ingresar el Numero de celular "974123658"
    E ingresar el Correo electronico "fernando.luyo@gestionysistemas.com"
    Y seleccionar el Tipo de trabajador "Independiente"
    E ingresar el Centro de labores "GYS"
    E ingresar el Numero de RUC "20741896578"
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
    Cuando se muestre una pantalla "Tu solicitud de inversión fue registrada correctamente"
    Entonces validar el Numero de solicitud generado junto a la Constancia de pago
    Y dar clic en el boton Descargar comprobante
    Y se mostrara el Comprobante de pago

  #@regresion
  Escenario: [CP57] Cliente no afiliado identificado con Pasaporte / Banner publicitario para cambio de fondo a invertir
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
    E ingresar la Direccion "Av. Los Eucaliptos 123"
    Y seleccionar la Profesion "ABOGADO"
    Y seleccionar el Prefijo del celular "51"
    E ingresar el Numero de celular "974123658"
    E ingresar el Correo electronico "fernando.luyo@gestionysistemas.com"
    Y seleccionar el Tipo de trabajador "Independiente"
    E ingresar el Centro de labores "GYS"
    E ingresar el Numero de RUC "20741896578"
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