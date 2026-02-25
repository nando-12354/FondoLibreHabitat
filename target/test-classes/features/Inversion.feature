#language: es
Característica: FUNCIONALIDAD DE LA PANTALLA DATOS DE INVERSIÓN

  #@regresion
  Escenario: [CP04] Validar los Datos de inversión como Cliente afiliado con DNI
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "35181065"
    E ingrese la clave web del cliente "1234"
    Y da clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y validar el Monto disponible del cliente
    Y validar el Tipo de fondo del cliente

  #@regresion
  Escenario: [CP04] Aceptar y firmar como Cliente afiliado con DNI
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "35181065"
    E ingrese la clave web del cliente "1234"
    Y da clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y validar el Monto disponible del cliente
    Y validar el Tipo de fondo del cliente
    E ingresar el Monto a invertir "2000"
    Y seleccionar la Frecuencia de inversion "Única"
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"

  #@regresion
  Escenario: [CP04] Confirmar solicitud como Cliente afiliado con DNI
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "35181065"
    E ingrese la clave web del cliente "1234"
    Y da clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y validar el Monto disponible del cliente
    Y validar el Tipo de fondo del cliente
    E ingresar el Monto a invertir "2000"
    Y seleccionar la Frecuencia de inversion "Única"
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara un popup de "Esta operación se confirmará con tu token digital"
    Y seleccionar el medio por el cual desea recibir su token digital "SMS"
    E ingresar el Codigo de confirmacion "998654"
    Y dar clic en el boton Confirmar operacion
    Entonces se mostrara un popup de "Pago web"

  #@regresion
  Escenario: [CP04] Pago web como Cliente afiliado con DNI
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "35181065"
    E ingrese la clave web del cliente "1234"
    Y da clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y validar el Monto disponible del cliente
    Y validar el Tipo de fondo del cliente
    E ingresar el Monto a invertir "2000"
    Y seleccionar la Frecuencia de inversion "Única"
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara un popup de "Esta operación se confirmará con tu token digital"
    Y seleccionar el medio por el cual desea recibir su token digital "SMS"
    E ingresar el Codigo de confirmacion "998654"
    Y dar clic en el boton Confirmar operacion
    Entonces se mostrara un popup de "Pago web"
    E ingresar el Numero de la tarjeta "4111111111111111"
    E ingresar la Fecha de vencimiento "12/25"
    E ingresar el Codigo de seguridad o CVV"123"
    E ingresar el Nombre del titular de la tarjeta "JUAN PEREZ"
    E ingresar el Apellido del titular de la tarjeta "JUAN PEREZ"
    E ingresar el Correo del cliente "ejemplo@gmail.com"
    Y dar clic en el boton "Pagar"

  #@regresion
  Escenario: [CP04] Solicitud de inversión exitoso como Cliente afiliado con DNI
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "35181065"
    E ingrese la clave web del cliente "1234"
    Y da clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y validar el Monto disponible del cliente
    Y validar el Tipo de fondo del cliente
    E ingresar el Monto a invertir "2000"
    Y seleccionar la Frecuencia de inversion "Única"
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara un popup de "Esta operación se confirmará con tu token digital"
    Y seleccionar el medio por el cual desea recibir su token digital "SMS"
    E ingresar el Codigo de confirmacion "998654"
    Y dar clic en el boton Confirmar operacion
    Entonces se mostrara un popup de "Pago web"
    E ingresar el Numero de la tarjeta "4111111111111111"
    E ingresar la Fecha de vencimiento "12/25"
    E ingresar el Codigo de seguridad o CVV"123"
    E ingresar el Nombre del titular de la tarjeta "JUAN PEREZ"
    E ingresar el Apellido del titular de la tarjeta "JUAN PEREZ"
    E ingresar el Correo del cliente "ejemplo@gmail.com"
    Y dar clic en el boton "Pagar"
    Entonces se mostrara una pantalla "Tu solicitud de inversión fue registrada correctamente"
    Y validar el Numero de solicitud generado junto a la Constancia de pago

  #@regresion
  Escenario: [CP04] Descarga de Constancia de pago como Cliente afiliado con DNI
    Dado que la web este disponible
    Cuando seleccione el Tipo de Documento "DNI"
    E ingrese el Numero de Documento "35181065"
    E ingrese la clave web del cliente "1234"
    Y da clic en el boton Empezar a invertir
    Entonces se mostrara un popup de "¿Tienes residencia fiscal fuera de Perú?"
    Y seleccione el boton No tengo
    Entonces se mostrara la pantalla de "Datos de inversión"
    Y validar el Monto disponible del cliente
    Y validar el Tipo de fondo del cliente
    E ingresar el Monto a invertir "2000"
    Y seleccionar la Frecuencia de inversion "Única"
    Y dar clic en el boton Aceptar y firmar
    Entonces se mostrara un popup de "Confirma tu solicitud"
    Y dar clic en el boton Confirmar solicitud
    Y se mostrara un popup de "Esta operación se confirmará con tu token digital"
    Y seleccionar el medio por el cual desea recibir su token digital "SMS"
    E ingresar el Codigo de confirmacion "998654"
    Y dar clic en el boton Confirmar operacion
    Entonces se mostrara un popup de "Pago web"
    E ingresar el Numero de la tarjeta "4111111111111111"
    E ingresar la Fecha de vencimiento "12/25"
    E ingresar el Codigo de seguridad o CVV"123"
    E ingresar el Nombre del titular de la tarjeta "JUAN PEREZ"
    E ingresar el Apellido del titular de la tarjeta "JUAN PEREZ"
    E ingresar el Correo del cliente "ejemplo@gmail.com"
    Y dar clic en el boton "Pagar"
    Entonces se mostrara una pantalla "Tu solicitud de inversión fue registrada correctamente"
    Y validar el Numero de solicitud generado junto a la Constancia de pago
    Y dar clic en el boton Descargar comprobante
    Y se debe mostrar el Comprobante de pago