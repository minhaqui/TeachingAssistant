import static cucumber.api.groovy.EN.*


/**
 * Created by ess on 16/04/15.
 */

Given(~'I am on the Teaching Assistant home page') { ->
    to HomePage
    at HomePage
}

When(~'^I press "([^"]*)"$') { ->
    HomePage.signUp = true
}

Then(~'I should be on the Sign Up page') { ->
    to SignUpPage
}

When(~'^I fill "([^"]*)" with "([^"]*)" and "([^"]*)" with "([^"]*)"$') { String name, login ->
    SignUpPage.fillName(name)
    SignUpPage.fillLogin(login)
}

And(~'^I press "([^"]*)"$') { ->
    SignUpPage.signUp = true

}
And(~'a student with this name or this login is not yet on the system') { ->
    if(findByName(SignUpPage.getName()) == null && findByLogin(SignUpPage.getLogin()) == null){
        doNoting()
    }
        }
Then(~'the student should be stored by the system') { ->
    if(!stored){
        SignUpPage.submitStudent()
    }
}
And(~'a random password should be sent to the email of the student') { ->
    SignUpPage.sendPassword(SignUpPage.getLogin())
}