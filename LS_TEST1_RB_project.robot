*** Settings ***
Documentation     TEST_Documentation
...
...               \ \ \ \ \ \ \ \ \ \ \ \ \ \ TEST
Suite Teardown    Close All Browsers
Test Teardown     Selenium2Library.Capture Page Screenshot
Library           Selenium2Library
Library           Verify_text_On_page.py

*** Variables ***
${mainProject}    https://www.openx.com
${career_locator}    /html[1]/body[1]/header[1]/div[2]/nav[1]/div[1]/div[4]/a[1]
${browser}        gc
${contact_us}     //a[contains(@class,'ox-default')][contains(text(),'Contact Us')]
${text}           ${EMPTY}

*** Test Cases ***
Case_1
    [Documentation]    The test - open the site
    [Tags]    Open site
    Open Phantomjs
    E2E_Verify_Ad_Delivery_Status

Case_2
    [Documentation]    Test case \ - Click_some_element
    [Tags]    click link
    Open Home Page
    click element    ${career_locator}

Case_3
    [Documentation]    The test - click an element
    Open Browser    ${mainProject}    gc
    Close Pop-up
    click element    ${contact_us}
    Close Pop-up
    ${text}    get text    //h2[@class='ui header ox-underlined']
    verify text    ${text}

*** Keywords ***
Open Home Page
    Open Browser    ${mainProject}    ${browser}
    Maximize Browser Window

Close Pop-up
    click element    xpath=/html[1]/body[1]/div[2]/section[1]/div[1]/i[1]

Open Phantomjs
    Open Browser    ${mainProject}    phantomjs
