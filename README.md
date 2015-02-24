# VEGANÓFONO v0.1
Simple-sampler pensado para usar con [Raspberry Pi](http://www.raspberrypi.org/), [Makey Makey](http://makeymakey.com/) y [verdudas](https://es.wikipedia.org/wiki/Verdura).

Por [Ey Pacha!](http://eypacha.com.ar)

- [DESCRIPCIÓN](#descripcion)
- [DEPENDENCIAS](#dependencias)
- [EJECUCIÓN](#ejecucion)
- [USO](#uso)
- [TERMINAR](#terminar)
- [FAQ](#faq)
- [BUGS](#bugs)
- [COPYRIGHT](#copyright)

# DESCRIPCION
**veganofono.sh** es un pequeño script para bash que reproduce sonidos al presionar diferentes teclas del teclado. El script debe su nombre a que fue diseñado para usarse en una instalación sonora homónima, en la cual el script se ejecuta automáticamente dentro de un ordenador [Raspberry Pi](http://www.raspberrypi.org/), utilizando un [Makey Makey](http://makeymakey.com/) en lugar de teclado y conectando el mismo a 8 verduras locales del lugar donde se lo interprete. 

# DEPENDENCIAS
Para poder ejecutar el script deben estar instalados el siguiente paquetes:
- `aplay` reproductor de sonidos por línea de comandos para [ALSA](https://es.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture).

# EJECUCION
Para ejecutar sobre Linux sólo debes ejecutar el comando **bash** seguido por la ruta del script como argumento. De encontrarse en el directorio actual bastará con ejecutar el siguiente comando:

	bash veganofono.sh

O también puedes directamente escribir **./** seguido del script:

	./veganofono.sh

# USO
Al presionar las diferentes teclas se reproducen los sonidos de la escala de **Do Mayor**. Siguiendo con la preconfiguración del [Makey Makey](http://makeymakey.com/):

- **Do** `⇦ Fecha izquieda`
- **Re** `⇧ Flecha arriba`
- **Mi** `⇨ Flecha derecha`
- **Fa** `⇩ Flecha abajo`
- **Sol** `Barra espaciadora`
- **La** `a minúscula`
- **Si** `w minúscula`
- **Do** `d minúscula`

# TERMINAR
Para terminar salir del Veganófono hay que presionar la conbinación de escape **Ctrl-C** y con eso se saldrá del programa permitiendo ejecutar los procesos necesarios del script. Se recomienda no terminar el programa presionando **Ctrl-Z** ya que se abortaría la correcta ejecución del programa y podrián quedar procesos inconclusos.

# FAQ
### ¿A qué suena el Veganófono?
El **Vegáfono** no suena a clorofila, los sonidos fueron sintetizados usando [Audacity](http://audacity.sourceforge.net/?lang=es). Utilizando la opción **Generar** / **Tono...** y eligiendo las siguientes opciones:
- **Forma de onda:** `Cuadrada`
- **Frecuencia (Hz):** `261.63`, `293.66`, `329.63`, `349.23`, `392`, `440`, `493.88`, `523.26`
- **Amplitud (0-1):** `0,8`
- **Duración:** `00h 00m 00.300s`

### ¿Cuántas notas se pueden tocar al mismo tiempo?
Como es sabido el **Blocking** o la incapacidad de pulsar varias teclas al mismo tiempo depende del modelo del teclado y su arquitectura. Pronto investigaremos sobre cómo responde el [Makey Makey](http://makeymakey.com/) a las pulsaciones múltiples.

### ¿Cómo las teclas que disparan los sonidos?
Si quieres cambiar las teclas que disparan los difentes sonidos (o agregar más) solo debes modificar el caractér entre `''` dentro de la estructura `case $mi_tecla in`  y modificarla por el caracter en cuestión.

```bash
	case $mi_tecla in
	  'D') aplay -N -q 01.wav &;;
	  'A') aplay -N -q 02.wav &;;
	  'C') aplay -N -q 03.wav &;;
	  'B') aplay -N -q 04.wav &;;
	  '') aplay -N -q 05.wav &;;
	  'a') aplay -N -q 06.wav &;;
	  'w') aplay -N -q 07.wav &;;
	  'd') aplay -N -q 08.wav &;;
	esac
```
# BUGS
El **Vegáfono** fue hecho a las apuradas (de hecho se tardó mas tiempo en escribir este **README.md** que en desarrollar el script. Por lo tanto está tan verde como un [pepino](https://es.wikipedia.org/wiki/Cucumis_sativus). Si encuentras un bug o tienes una sugerencia no dudes en escribir a [contacto@eypacha.com.ar](mailto://contacto@eypacha.com.ar).

# COPYRIGHT
El **Vegáfono** utiliza una licencia [CC BY-SA](http://creativecommons.org/licenses/by-sa/4.0/deed.es_ES) (Creative Commons Compartir-Adaptar). Por lo tanto usted es libre de:

- **Compartir**: copiar y redistribuir el material en cualquier medio o formato
- **Adaptar**: remezclar, transformar y crear a partir del material para cualquier finalidad, incluso comercial.

Bajo las condiciones siguientes:

- **Reconocimiento**: Debe reconocer adecuadamente la autoría, proporcionar un enlace a la licencia e indicar si se han realizado cambios. Puede hacerlo de cualquier manera razonable, pero no de una manera que sugiera que tiene el apoyo del licenciador o lo recibe por el uso que hace.
- **CompartirIgual**: Si remezcla, transforma o crea a partir del material, deberá difundir sus contribuciones bajo la misma licencia que el original.

Este `README.md` fue escrito por [EyPacha!](http://eypacha.com.ar) en Febrero de 2015.
