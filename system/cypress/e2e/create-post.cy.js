describe("Posts", () => {
  context("with valid inputs", () => {
    it("creates a post", () => {
      cy.viewport(957, 823);
      cy.visit("/posts");
      cy.contains('New post').click();
      cy.get("#post_title").clear().type('A New Post');
      cy.get("#post_body").clear().type('Something...');
      cy.contains('Create Post').click();
      cy.contains("Post was successfully created.");
    });
  });
});

