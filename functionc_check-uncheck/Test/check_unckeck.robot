*** Settings ***
Library    Browser
Library    collections
Resource    ${CURDIR}/../keyword_check/key_check_uncheck.resource

*** Test Cases ***
Test check uncheck function
    [Documentation]    *-- Vorathon --* ${\n}
    ...    **Test Step Description** ${\n} 
    ...    1. เปิดเว็บ https://demoqa.com/checkbox ${\n}
    ...        - รอจนกว่า Elements ของกล่อง Home แสดงที่หน้าจอ ${\n}
    ...    2. ทำการกดปุ่มลูกศรแสดงรายละเอียดในกล่อง ${\n}
    ...        - กดปุ่มลูกศรแสดงรายละเอียดในกล่อง Home ${\n}
    ...        - กดปุ่มลูกศรแสดงรายละเอียดในกล่อง Desktop ${\n}
    ...        - กดปุ่มลูกศรแสดงรายละเอียดในกล่อง Document ${\n}
    ...        - กดปุ่มลูกศรแสดงรายละเอียดในกล่อง Downloads ${\n}
    ...    3. ทำสอบการใช้งานฟังก์ชั่น check-unckeck ${\n}
    ...        - check ปุ่ม Home ${\n}
    ...        - uncheck ปุ่ม Desktop ${\n}
    ...        - uncheck ปุ่ม Downloads ${\n}
    ...        - uncheck ปุ่ม Home ${\n}
    ...        - check ปุ่ม Desktop ${\n}
    ...    ***Expected Result*** ${\n}
    ...    1. เปิดเว็บ https://demoqa.com/checkbox สำเร็จ ${\n}
    ...    2. สามารถแสดงรายละเอียดในแต่ละกล่องได้ ${\n}
    ...    3. สามารถใช้งานฟังก์ชั่น check-unckeck ได้ ${\n}
    [Tags]    Test for function check/uncheck
    open web check
    Expand home
    Expand desktop
    Expand document
    Expand downloads
    Take Screenshot    filename=expand menu    fullPage=True
    check checkbox home
    Take Screenshot    filename=check box home   fullPage=True
    uncheck checkbox desktop
    Take Screenshot    filename=uncheck box desktop   fullPage=True
    uncheck checkbox downloads
    Take Screenshot    filename=uncheck box downloads   fullPage=True
    uncheck checkbox home
    check checkbox desktop
    Take Screenshot    filename=check box desktop        fullPage=True

