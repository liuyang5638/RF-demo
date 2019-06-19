*** Settings ***
Library           Selenium2Library

*** Test Cases ***
浦银CRM登录
    Open Browser    http://211.157.16.107/pycrm/    Chrome
    Maximize Browser Window    #窗口最大化
    input Text    id=username    pyascs    #输入用户
    Input Password    id=password    12345.com    #输入密码
    Click Element    id=btn_login    #点击登录键
    Sleep    4    #等待四秒
    ${title}    Get Title    #获得页面的title
    log    ${title}    #打印title
    Comment    Should Contain    ${title}    浦银基金-CRM系统
    Close All Browsers    #关闭浏览器
