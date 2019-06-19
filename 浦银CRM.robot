*** Settings ***
Library           Selenium2Library

*** Test Cases ***
后台管理系统登录
    Open Browser    http://47.97.18.42:3505/py_manager/admin/console    Chrome
    Maximize Browser Window    #窗口最大化
    input Text    name=username    admin    #输入用户
    Input Password    name=password    111111    #输入密码
    Click Button    id=btn_login    #点击登录键
    Sleep    4    #等待四秒
    ${title}    Get Title    #获得页面的title
    log    ${title}    #打印title
    Comment    Should Contain    ${title}    系统管理中心
    Close All Browsers    #关闭浏览器
