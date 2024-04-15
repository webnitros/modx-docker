describe('template spec', () => {
    it('passes', () => {

        //////////////////////
        //// Frontend //////
        //////////////////////
        cy.visit('/')
        cy.get('h1').should('contain', 'Congratulations!')


        //////////////////////
        //// Backend //////
        //////////////////////

        // Переходим в админку
        cy.visit('/manager/')

        // Вводим логин и пароль
        //cy.get('#modx-login-username').type(Cypress.env('ADMIN_USERNAME'))
        //cy.get('#modx-login-password').type(Cypress.env('ADMIN_PASSWORD'))
        cy.get('#modx-login-username').type('admin')
        cy.get('#modx-login-password').type('mysupersecretpassword')

        // Нажимаем кнопку входа
        cy.get('#modx-login-btn').click()


        cy.visit('/manager/?a=workspaces')
        cy.get('h2').should('contain', 'Менеджер пакетов')

        //// Вводи mspre и нажимаем enter
        //cy.get('#modx-package-search').type(Cypress.env('PACKAGE_NAME')).type('{enter}')


        //// Находим таблицу с классом .x-grid3-row-table в ней должна остаться одна записать
        //cy.get('.x-grid3-row-table').should('have.length', 1)

        // Проверяем что элемент с классом .x-grid3-col-meta-col содержит текст
        //cy.get('.x-grid3-col-meta-col').should('contain', Cypress.env('PACKAGE_VERSION'))


    })
})
