#SECTION1    
##texto en markdown para código
###formas de escribir un *"hello world"* en diferentes lenguajes
anotación* -> ~~~ "esto es para código que no sea ejecutado" OJO hay que cerrarla(fijese en el siguiente código)
>
####JAVA
~~~
public static void main(String args[]){
    system.out.println("hello world");
   }
~~~
####PYTHON
~~~
print("hello world")
~~~
#####JAVASCRIPT
~~~
alert("hello world");
document.write("hello world");
console.log("hello world");
~~~

##Equivalencias 
>
~~~
# -> <h1> de HTML
## -> <h2> de HTML
### -> <h3> de HTML
#### -> <h4> de HTML
##### -> <h5> de HTML 
###### -> <h6> de HTML
*Cursiva/italic* -> <em> en HTML
**Negrita/bold** -> <strong> en HTML
***Cursiva y Negrita*** -> <em> y <strong>
<URL> -> links
~~~

##Cancelación
Para cancelar cualquier anotación con MarkDown haremos uso de \ (barra invertida) antes de la notación que queremos cancelar. por ejemplo: \*cursiva*.

##Links
<https://www.mdcharm.es>

[Enlace a google](https://www.google.es
"Google")

##Listas
(Algunas aplicaciones no detectan las mismas opciones)

###Desordenadas
- Elemento
* Elemento
+ Elemento

###Ordenadas
1. Elemento1
2. Elemento2
3. Elemento3
4. Elemento4    
    - anidado

###Separaciones
___

Esto es una separación

---

###Imágenes
Es muy parecido a los links:
>![Enfoque de la imagen](URL o Ruta)
