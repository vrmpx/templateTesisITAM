Introducción 
============
Este trabajo presenta una plantilla para las tesis y tesinas del
Instituto Tecnológico Autónomo de México para los usuarios de LaTeX.
Nace de la necesidad de los matemáticos, actuarios e ingenieros (entre
otras carreras) por utilizar un sistema de composición de textos
adecuado para su trabajo de titulación. El objetivo es ayudar a la
comunidad del ITAM a simplificar el proceso de escritura y edición de
sus tesis, tesinas o casos. A continuación describimos a mayor detalle
cada una de las partes de la plantilla.

Ejemplo de uso
==============
    \documentclass[a4paper, 11pt]{tesisITAM}
    \usepackage[utf8]{inputenc}
    
    \title{Una tesis del ITAM}
    \author{Alguien Alguien}
    \degree{Licenciatura en Matemáticas Aplicadas}
    \advisor{Dr. Alguien Famoso}
    \year{2015}
    
    \begin{document}
        \maketitle
        \publicationrights
    
        \begin{abstract}{english}
            This is an abstract
        \end{abstract}
    
        
    \end{document}


Descripción de los archivos
============================

1.  El archivo **tesisITAM.cls** define una nueva clase de documento con
    el mismo nombre. Esta clase se basa en el tipo reporte, el cual se
    emplea comúnmente para reportes de trabajo, pequeños libros y tesis.

2.  El archivo **macros.sty** define macros y operadores adicionales,
    como por ejemplo, el argumento mínimo $\argmin$. Además provee un
    espacio para que el estudiante agregue sus definiciones propias.

3.  Este archivo **introduction.tex** describe el funcionamiento de la
    plantilla y de los archivos.

4.  El archivo principal **main.tex** es un ejemplo básico de un archivo
    de tesis para generar este ejemplo.

5.  El archivo **portada.tex** contiene el código necesario para generar
    la portada. El archivo **derechos.tex** contiene el texto para cede
    de derechos de publicación hacia el ITAM.

### Características de la plantilla

La plantilla se basa en el documento tipo reporte. Todas las opciones de
la clase *report* pueden ser utilizadas sin ninguna modificación
(a4paper, 10pt, etc...). El espaciado del texto se establece a 1.33. Se
eliminó la identación del párrafo, y el espaciado entre párrafos fue
disminuido. Las sub-secciones se numeran utilizando números romanos. Se
define un encabezado para cada página (salvo las que inician un
capítulo) donde aparece el número del capítulo y el nombre de la
sección.

#### Paquetes importados

La plantilla utiliza los siguientes paquetes: *graphicx*, *amsopn*,
*fancyhdr*, y *babel*. El paquete de manejo de idiomas babel es
importado con los idiomas **english** y *spanish* por defacto. Además,
se seleccionan las opciones de uso de punto decimal y de nombrar las
tablas como tablas y no como cuadros.

#### Opciones de clase

Se declara una opción adicional de nombre **tesina** para cambiar la
portada a que se declare el trabajo como tesina.

#### Campos para el autor

Para el autor, se define los siguientes campos:
**title**,**author**,**degree**,**advisor**, y **year**. *Title* define
el título del trabajo de titulación, este título se presenta en la
portada y al ceder los derechos de publicación. *Author* define el
nombre completo del autor de la tesis. *Degree* se utiliza para
establecer la carrera de la cual se va a titular, y debe incluir el
texto completo (*i.e.*, Licenciatura en X o Ingeniero en C). *Advisor*
recibe el nombre completo (con grado académico) del asesor, tal como se
presentará en la portada. *Year* recibe el año de titulación para
presentarlo en la portada.

#### Generando la portada

El comando **\\maketitle** produce la portada con los campos previamente
definidos. Utiliza el logo del ITAM, el cual se debe encontrar en el
**PATH** de LaTeX(*e.g.*, en el fólder de Figures).

![Portada de la tesis](https://cloud.githubusercontent.com/assets/1670648/7182322/3488eefa-e416-11e4-84a5-7ec345fd866b.png)

#### Cediendo derechos de publicación

El comando **\\publicationrights** imprime una página con el texto
oficial de cede de derechos. Los nombres de la tesis (tesina) y del
autor se obtienen de los campos previamente definidos.

![Derechos de publicación](https://cloud.githubusercontent.com/assets/1670648/7182329/3a85c6c0-e416-11e4-835e-82a511e6d18a.png)

#### Añadiendo el resumen

Comúnmente, el resumen (o *abstract*) se debe escribir tanto en español
como en inglés. Para esto, se define el ambiente **abstract** que recibe
como parámetro un idioma. En el caso de que el idioma no sea ni inglés
ni español, se recomienda que el idioma haya sido previamente importado
como opción del paquete babel. En otro caso, el paquete imprimirá una
advertencia.

#### Citando a los grandes

La plantilla define un nuevo ambiente para las citas al principio del
capítulo **chapterquote** que recibe dos parámetros: el autor y el
texto. Para un ejemplo, referirse al principio de este capítulo.

Licencia
========

Esta plantilla se distribuye bajo la licencia *creative commons BY-SA
3.0*. Esta licencia permite la modificación de cualquier aspecto de la
plantilla siempre y cuando se respeten las siguientes condiciones:

1.  Que se mantenga la atribución del trabajo original, es decir, que se
    mencionen los autores originales y su afiliación, tal como se hace
    en el archivo original.

2.  Que todas las modificaciones se hagan públicas y libres de acceso,
    sin recibir ningún tipo de retribución por el uso o distribución de
    la plantilla.

Autor
=======
__Víctor R. Martínez__: Estudiante de Doctorado en Ciencias de la Computación en USC Viterbi. Maestro en Ciencias de la Computación por el ITAM.
