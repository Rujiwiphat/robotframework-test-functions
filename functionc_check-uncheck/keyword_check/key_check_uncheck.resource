*** Settings ***
Library    Browser
Library    collections
Resource    ${CURDIR}/../variable_check/var_check_uncheck.resource
Resource    ${CURDIR}/../xpath/xpath_check_uncheck.resource

*** Keywords ***
open web check
    New Browser    ${browser}    headless=False    timeout=30s    slowMo=1s
    New Context    viewport={"width": 1280, "height": 800}
    Set Browser Timeout    timeout=30s          # <- ตั้ง timeout ให้ทุก action ของเพจ
    New Page       ${url}
    # ตัวอย่างรอ element เป้าหมายหลังโหลด
    Wait For Elements State    selector=${box_home}        state=visible    timeout=20s

Expand ${menu}
    IF    '${menu}' == 'home'
        Click    selector=${expand_home}      
    ELSE IF   '${menu}' == 'desktop'  
        Click    selector=${expand_desktop} 
    ELSE IF   '${menu}' == 'document'  
        Click    selector=${expand_documents}   
    ELSE IF   '${menu}' == 'downloads'  
        Click    selector=${expand_downloads}                
    END
    
${action} box ${menu}
    IF    '${action}' == 'check'
        Check Checkbox    selector=//label[@for='tree-node-${menu}']/span[contains(@class,'rct-checkbox')]
    ELSE IF    '${action}' == 'uncheck'
        Uncheck Checkbox    selector=//label[@for='tree-node-${menu}']/span[contains(@class,'rct-checkbox')]           
    END
