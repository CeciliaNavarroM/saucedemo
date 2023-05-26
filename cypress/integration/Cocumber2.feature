Feature: Login

    Esto es un demo de saucedemo

  
    Scenario Outline: Iniciar sesión con credenciales válidas
        Given Abrir el navegador principal
        When Cargando el usuario <username>
        When Cargando el password <password>
        And Click en Button
        Then debería ver la página de productos

 Scenario Outline: Iniciar sesión con credenciales Inválidas
        Given Abrir el navegador principal
        When Cargando el usuario <username>
        When Cargando el password <password>
        And Click en Button
        Then debería ver un mensaje de error 




        Examples:
            | username      | password          | 
            | standard_user | secret_sauce      | 
            | juan     | juan@gmail.com    | 
           
   Scenario Outline: Agregar productos al carro
        Given Abrir el navegador principal
        When Cargando el usuario <username>
        When Cargando el password <password>
        And Click en Button
        Then debería ver un mensaje de error 
