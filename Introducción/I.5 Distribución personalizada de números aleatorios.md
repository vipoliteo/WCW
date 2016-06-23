## I.5 Distribución personalizada de números aleatorios

Llegará algún momento en tu vida cuando no quieras una distribución de valores aleatorios, o una Guassiana. Imaginemos por un momento que tu eres un caminante aleatorio en busca de comida. Moverse aleatoriamente alrededor del espacio parece una estrategia razonable para encontrar algo para comer. Despúes de todo, tu no sabes donde está la comida, entonces podrías buscar aleatoriamente hasta encontrarlo. El problema, como ya habrás notado, es que el caminante aleatorio regresa a lugares visitados anteriormente muchas veces (esto es conocido como "sobremuestreo"). Una estrategia para evitar un problema como este, es que de vez en cuando, tome un paso más largo. Esto permite al caminante buscar aleatoriamente alrededor de una posición especifica mientas salta periodicamente muy lejos para reducir la cantidad de sobremuestre. Esta variación en la caminata aleatoria (conocida como vuelo de Lévy) requiere un conjunto personalizado de probabilidades. Aunque no es una implementación exacta del vuelo de Lévy, podemos declarar el estado de la distribución personalizada como el siguiente: mientras más largo el paso, menos posibilidades de ser elegido y mientras más corto el paso, mas posibilidades  de ser elegido.

Anteriormente en el prólogo, vimos que podíamos generar una probabilidad de distribución personalizada llenando una lista con valores(algunos duplicados paraque puedan ser elegidos más frecuentemente) o probando el resultado `random()` . Podemos implementar el vuelo de Lévy diciendo que hay 1% de probabilidad de que el caminante de un paso largo.

```java
float r = random(1);             //1% de probabilidad de tomar un paso largo
if (r < 0.01) {
  xpaso = random(-100, 100);
  ypaso = random(-100, 100);
} else {
  xpaso = random(-1, 1);
  ypaso = random(-1, 1);
}
```

 

Sin embargo, esto reduce las probabilidades a un número fijo de opciones. ¿Y si queremos hacer una regla más general — mientras más grande el número, mayor opción de ser elegido? 3.145 tendría mas opciones de ser elegido que 3.144, incluso si esa probabilidad es solo un poquito más grande. en otras palabras, si x es el número aleatorio, podríamos mapear la probabilidad en el eje y con y = x.



*Figura I.4*



Si pudiéramos averiguar como generar una distrubución  de números aleatorios de acuerdo al gráfico de arriba, podríamos aplicar la misma metodología a cualquier curva en la cual tengamos una fórmula.

Una solución es elegir dos números aleatorios en vez de uno. El primer número aleatorio es solo eso, un número aleatorio. El segundo, sin embargo, es lo que llamaríamos un "valor aleatorio que califica". Nos dirá si debemos utilizar el primero o desecharlo y elegir otro. Los números que tienen facilidad en calificar serán elegidos más a menudo, y los números que raramente califican serán elegidos con menor frecuencia. Acá están los pasos (por ahora, considera solo valores aleatorios entre 0 y 1):

1. Elige un número aleatorio: R1
2. Calcula una probabilidad P donde R1 debería calificar. Intentemos: P = R1.
3. Elige otro número aleatorio: R2
4. Si R2 es menor que P, encontramos nuestro numero—R1!
5. Si R2 no es menor que P, vulve al paso 1 y comienza de nuevo.



Acá estamos diciendo que la probabilidad que un valor aleatorio califique es igual al número aleatorio en si mismo. Digamos que elegimos 0.1 para R1. Esto significa que R1 tendrá 10% de probabilidad de calificar. Si elegimos 0.83 para R1 entonces este tendrá 83% de probabilidad para calificar. Mientras mayor sea el número, mayor es la probabilidad de que realmente se use.

Acá hay una función (llamada por el método de Monte Carlo, la cual fue llamada por el casino de Monte Carlo) que implementa el algoritmo de arriba, resultando un valor aleatorio entre 0 y 1.

```java
float montecarlo() {
  while (true){            //Hacemos esto "por siempre" hasta que encontremos                                                                                                               						  un valor calificable
  	float r1 = random(1);    //Elige un valor aleatorio
    float probabilidad = r1; //Asigna una probabilidad
    float r2 = random(1);    //Elige otro valor
    
    if (r2 < probabilidad) { //¿Califica? Si lo hace, estamos listos!
  		return r1;
	}
  }
}
```

 

##### Ejercicio I.6

Usa una probabilidad de distribución personalizada para variar el tamaño de un paso dado por el caminante aleatorio. Este tamaño del paso puede ser determinado influenciando el rango de los valores elegidos. ¿Puedes mapear la probabilidad exponencialmente—p.ej. hacer que la probabilidad que un valor sea elegido es igual al valor al cuadrado?

```java
float tam_paso = random(0, 10);  //Distribución uniforme del tamaño de pasos.
                                 //¡Modifícalo!
float pasox = random(-tam_paso, tam_paso);
float pasoy = random(-tam_paso, tam_paso);

x += pasox;
y += pasoy;
```

(Más tarde veremos como hacerlo más eficiente usando vectores.)