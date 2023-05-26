Given('Abrir el navegador principal',()=>{
    cy.visit("https://saucedemo.com")
})

When('Cargando el usuario {word}',(usuario)=>{
    cy.get('#user-name').should('be.visible').type(usuario)
    cy.wait(500)
})

When('Cargando el password {word}',(password)=>{
    cy.get('#password').should('be.visible').type(password)
    cy.wait(500)
})



And('Click en Button',()=>{
    cy.get('#login-button').should('be.visible').click({force: true})
    cy.wait(500)
})


Then("debería ver la página de productos", () => {
    cy.url().should("include", "inventory.html")
    cy.wait(1500)
  });
  
  When('hago clic en el botón add to cart del producto', () => {

      cy.get('#add-to-cart-sauce-labs-backpack').should('have.text', 'Add to cart').click({force: true})

  });
  
Then('debería ver el ícono de carrito con la cantidad {word}', (cantidad) => {
    cy.get('.shopping_cart_badge').should('have.text', cantidad);
  });