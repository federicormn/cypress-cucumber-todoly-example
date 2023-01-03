class PageExample
{
    elements = 
    {
        inputDuckDuckGo: () => cy.get("input"),
        logoDuckGo: () => cy.get("#logo_homepage_link")
    }

    validateInput()
    {
        this.elements.inputDuckDuckGo().should("have.attr",
                                                "placeholder",
                                                "Search the web without being tracked");
        
    }

    valideteLogo()
    {
        this.elements.logoDuckGo().click();
    }
}

export const pageExample = new PageExample(); 