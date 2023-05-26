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
    cy.url().should("include", "inventory.html");
  });
  
Then("debería ver un mensaje de error", () => {
    cy.get(".error-message-container").should("be.visible");
  });