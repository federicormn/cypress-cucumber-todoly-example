class MainPageTodoLy
{
    elements =
    {
        loginBtn: () => cy.get('.HPHeaderLogin > a > img')
    }

    clickLogin()
    {
        this.elements.loginBtn().click();
    }


}

export const mainPageTodoLy = new MainPageTodoLy();