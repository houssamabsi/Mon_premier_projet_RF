*** Settings ***
Library    SeleniumLibrary    
*** Test Cases ***
logintest
    [Documentation]    ceci est une manier de commenter le test 
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Input Text    id=txtUsername    &{dataLogin}[username]                                        #@{Logins}[0]
    Input Password    id=txtPassword    admin123    &{dataLogin}[password]                        #@{Logins}[1]
    Click Button    //*[@id="btnLogin"]
    Click Element    id=welcome
    Set Browser Implicit Wait    5        
    Click Element    link=Logout    
    Log    end of test by by 
    #variable systeme
    Log    ceci est un test execute par%{username} dans %{os}

*** Variables ***
#varibale de type scalaire
${URL}    https://opensource-demo.orangehrmlive.com/index.php/auth/login
${Browser}    gc
#variable de type list
@{Logins}    Admin    admin123
#variable de type dictionnaire   
&{dataLogin}    username=Admin    password=admin123