<p align="center">  <img src="https://minas.medellin.unal.edu.co/proyectos/estudiocarga-amva/images/imagenes/10.jpg"> </p>

## Taller procesamiento de imágenes por medio de software y shaders usando Processing

Realizado por : 
> * Christian Santiago Alfonso Lopez
> * Brayan Alexander Riascos Ruíz
> * Edinson Vega Barrera

### Motivación: 
  El siguiente trabajo se realiza con el objetivo de hacer un acercamiento al tema de procesamiento de imágenes y videos; Ver, entender, comprender, aprender y aplicar dichos conocimientos para una implementación propia, a través del dominio de una herramienta nueva para nosotros(Processing), realizando una investigación profunda en el procesamiento de las imágenes en Software y en Hardware. Se desea Aprender a manejar dicha herramienta, quizás no en su totalidad pero si en forma básica.

Se desea adquirir conocimientos y poder implementarlos de manera propia en un procesamiento(básico) de imágenes y videos en un ordenador.

Se quiere obtener experiencia en el análisis y tratamiento de imágenes a nivel computacional, para tener buenas bases y en futuros trabajos ser profesionales más competentes.

Por último, como valor añadido se desea aprobar el curso "Computación Visual" con el objetivo de estar un paso más cerca del título ingenieros de sistemas y computación de la Universidad Nacional de Colombia"

### Objetivos: 
 * Realizar procesamiento de imágen y video por medio de software usando la herramienta Processing
 * Realizar procesamiento de imagen y video usando hardware (_GPU_)  usando glsl
 * Analizar el desempeño de las implementacione en software y hardware. 

### Metodología: 
  Los algoritmos implementados fueron apoyados por las clases y tutoriales de las clases, junto que la documentación oficial en la página de internet así como de páginas de terceros. También se revisó el estado del arte como guía.
  
### Resultados:

### 1. Procesamiento de imágenes con software 

> Introducir el análisis de imágenes/video al implementar las siguientes operaciones de análisis para imágenes/video usando software.

* Conversión a escala de grises: promedio _rgb_ y [luma](https://en.wikipedia.org/wiki/HSL_and_HSV#Disadvantages).
### Escala de grises para imagen

<p align="center">  <img src="https://github.com/csalfonsol/C.Visual_2020-l/blob/master/images/1.png"> </p>

### Escala de grises para video

<p align="center">  <img src="https://github.com/csalfonsol/C.Visual_2020-l/blob/master/images/6.gif" loop=infinite> </p>

## Aplicación de algunas [máscaras de convolución](https://en.wikipedia.org/wiki/Kernel_(image_processing)).

### Convolución para Imagen
#### Convolución *bordes*
<p align="center">  <img src="https://github.com/csalfonsol/C.Visual_2020-l/blob/master/images/2.png"> </p>

#### Convolución *Repujado*
<p align="center">  <img src="https://github.com/csalfonsol/C.Visual_2020-l/blob/master/images/3.png"> </p>

### Convolución para video
#### Convolución *bordes*
<p align="center">  <img src="https://github.com/csalfonsol/C.Visual_2020-l/blob/master/images/5.gif"> </p>

#### Convolución *Repujado*
<p align="center">  <img src="https://github.com/csalfonsol/C.Visual_2020-l/blob/master/images/7.gif"> </p>

## Conversión a ascii.

### Ascii para imagen

<p align="center">  <img src="https://github.com/csalfonsol/C.Visual_2020-l/blob/master/images/4.png"> </p>

### Ascii para video

<p align="center">  <img src="https://github.com/csalfonsol/C.Visual_2020-l/blob/master/images/8.gif"> </p>

* (solo para imágenes) Despliegue del [histograma](https://en.wikipedia.org/wiki/Image_histogram).

### Histograma para Imágenes

<p align="center">  <img src="https://github.com/csalfonsol/C.Visual_2020-l/blob/master/images/10.png"> </p>
* (solo para video) Medición de la [eficiencia computacional](https://processing.org/reference/frameRate.html) para las operaciones realizadas.

 ### Cuadros por segundo

<p align="center">  <img src="https://github.com/csalfonsol/C.Visual_2020-l/blob/master/images/11.gif"> </p>

### 2. Procesamiento de imágenes y video con Hardware

> Introducir el análisis de imágenes/video al implementar las siguientes operaciones de análisis para imágenes/video por hardware (empleando shaders):

* Conversión a escala de grises: promedio _rgb_ y [luma](https://en.wikipedia.org/wiki/HSL_and_HSV#Disadvantages).


Promedio RGB
<p align="center">  <img src="https://github.com/csalfonsol/C.Visual_2020-l/blob/master/images/11.png"> </p>

Luma
<p align="center">  <img src="https://github.com/csalfonsol/C.Visual_2020-l/blob/master/images/12.png"> </p>

* Aplicación de algunas [máscaras de convolución](https://en.wikipedia.org/wiki/Kernel_(image_processing)).
De izquierda a derecha comenzando por arriba, las imágenes corresponden a las siguientes máscaras:

    * Imagen original (sin máscara)
    * Gaussian Blur
    * Sharpen
    * Edge
    * Saturación extra
    * Saturación
    
<p align="center">  <img src="https://github.com/csalfonsol/C.Visual_2020-l/blob/master/images/13.png"> </p>




### Conclusiones: 

- Frente a otras herramientas en el tratamiento y análisis de image y video, estas presentar una mayor facilidad de uso, puesto que viene de forma más clara el usu de sus métodos además de que trae un númeor amplio para la manipulación de éstas. 
- Respecto al rendimiento, como es de esperarse, cuando se usa glsl para realizar el análisis por medio de la _GPU_ el rendimiento del sistema mejora sustancialmente, pues no se recarga el procesador para ejecutar los algortimos.
