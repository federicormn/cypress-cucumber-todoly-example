import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import  {mainPageTodoLy} from "../../pages/MainPageTodoLy"
import { loginModal } from "@pages/LoginModal";
import { homePage } from "@pages/HomePage";

const email = "fhr1@fhr1.com"   //maybe constants class? --> ENV File 
const password = "12345"        //''

Given("user enters main page", () => 
    {
        cy.visit("/");
        //cy.visit("https://todo.ly/");
    });

When("user clicks on [Login] button on todo.ly main page", () => 
    {
        mainPageTodoLy.clickLogin();
    });

When("types 'fhr1@fhr1.com' in [Email] textbox", () => 
    {
        loginModal.typeEmail(email)
    })

When("types '12345' in [Password] textbox", () => 
    {
        loginModal.typePassword(password)
    })

When("clicks [Login] button on Login modal", () => 
    {
        loginModal.clickLoginBtn()
    })


Then("[Logout] button should be displayed on the top right of the page", () => 
    {
        homePage.elements.logoutBtn().should('be.visible')
    });

    //