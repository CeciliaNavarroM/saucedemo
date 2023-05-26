Feature: Agregar productos

    Esto es un demo  agregar productos al carrito en saucedemo.cl
 

  
    Scenario Outline: Agregar un producto al carro
        Given Abrir el navegador principal
        When Cargando el usuario <username>
        When Cargando el password <password>
        And Click en Button
        Then debería ver la página de productos
        When hago clic en el botón add to cart del producto
        Then debería ver el ícono de carrito con la cantidad <cantidad>

 Scenario Outline: valor incorrecto en la cantidad en el icono de carrito
        Given Abrir el navegador principal
        When Cargando el usuario <username>
        When Cargando el password <password>
         And Click en Button
        Then debería ver la página de productos
        When hago clic en el botón add to cart del producto 
        Then debería ver el ícono de carrito con la cantidad <cantidad>




        Examples:
            | username      | password          | cantidad |
            | standard_user | secret_sauce      |  1 |
            | problem_user  | secret_sauce      |  3 |
           
           
   