*** Variables ***
${BROWSER} =    gc
${ENVIRONMENT} =    dev
&{URL}    dev=https://dev-sabong-admin.citrof.com/login    pelea=https://staging-backoffice.peleadegallos.mx/login
#&{USER_ACCOUNT}    email=jovani.ogaya@citrof.com    password=p@ssw0rdS123

#Valid account for login
${VALID_EMAIL} =  qaadmin@citrof.com
${VALID_PASSWORD} =  Tester101!
${VALID_PASSWORD2} =  Tester101!!

#Change password
${NEWPASS1} =    Tester101!
${CONFIRMPASS1} =    Tester101!
${NEWPASS2} =    Tester101!!
${CONFIRMPASS2} =    Tester101!!

#EditProfile
${PHOTO} =    C:/robot-scripts/sabongeros/Data//Admin/profile_picture.jpg
${EP_FIRSTNAME} =    Gabmin
${EP_LASTNAME} =    Ali
${EP_USERNAME} =    gab.ali
${EP_MOBILE} =    9555555555
${EP_EMAIL} =    gabmin@citrof.com
${EP_ADDRESS} =    13 Manila West

${EP_FIRSTNAME2} =    QA
${EP_LASTNAME2} =    Admin
${EP_USERNAME2} =    qaadmin
${EP_MOBILE2} =    9566433017
${EP_EMAIL2} =    qaadmin@citrof.com
${EP_BIRTHDATE2} =    01/01/1991
${EP_ADDRESS} =    14 Manila East

#Edit Scout
${SC_FIRSTNAME} =   Gab
${SC_LASTNAME} =    Scout
${SC_EMAIL} =    gabscout@auto.com
${SC_MOBILE} =    0952546546
${SC_USERNAME} =    gabscout
${SC_PASSWORD} =    tester102

${SC_FIRSTNAME2} =   QA
${SC_LASTNAME2} =    Scout
${SC_EMAIL2} =    qascout@citrof.com
${SC_MOBILE2} =    0955123232
${SC_USERNAME2} =    qascout
${SC_PASSWORD2} =    tester101