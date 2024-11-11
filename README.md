# Guía de Uso de `dfu-programmer` en Windows para Programar un Microcontrolador

Este documento proporciona una guía paso a paso para utilizar `dfu-programmer` en Windows y programar un microcontrolador AT32UC3C1512. Los pasos incluyen borrar, grabar firmware, escribir en el espacio de memoria de usuario y salir del modo de programación (bootloader). Se requiere tener descargado `dfu-programmer` en el sistema y acceso al archivo de firmware.

## Prerrequisitos

1. **Descargar dfu-programmer**: Descarga la herramienta `dfu-programmer`.
2. **Configurar los controladores USB**: Conecta el microcontrolador al puerto USB en modo DFU (Device Firmware Upgrade). Asegúrate de que el controlador USB esté correctamente instalado. Para instalar los drivers revise [este link](README_USB_DRIVER.md).
3. **Firmware y espacio de usuario**: Asegúrate de tener los archivos `.hex` que deseas grabar en el indicador. Estos archivos deben estar ubicados en la carpeta.

## Cargar hex 

Para agregar mas Hex y que esten disponibles al momento de grabar, debe pegar los hex en la misma carpeta en la que se encuentra el archivo `Programar-ST.bat`.

## Programar

* Ejecute el archivo `Programar-ST.bat`
![Inicio](imgs/ScriptInicio.png?raw=true)
* Seleccione el numero del hex que quiera programary pulse enter
* Conecte el indicador a la computador en modo DFU, puenteando el S1 antes de conectarlo.
* Pulse cualquier tecla para iniciar la programacion.
* Al finalizar el indicador iniciara automaticamente.
![Oka](imgs/ok_programado.png?raw=true)

### Posibles problemas

* Es posible que al querer grabar veamos esto:
![Error](imgs/error.png?raw=true)
* Esto puede significar que:
1) El indicador no esta en modo DFU, por lo que debera desconectar el indicador, puenter S1 y mientras esta puenteado debe conectarlo de nuevo a la computadora mediante el USB
2) Puede ser que no tenga instalado el driver del USB, revise la [guia](README_USB_DRIVER.md) para instalar el driver.