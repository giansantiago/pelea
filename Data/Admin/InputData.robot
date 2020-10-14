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


${PHOTO} =    C:/robot-scripts/sabongeros/Data//Admin/profile_picture.jpg
${EP_FIRSTNAME} =    Qa
${EP_LASTNAME} =    Admin
${EP_USERNAME} =    qaadmin
${EP_MOBILE} =    9566433017
${EP_EMAIL} =    qaadmin@citrof.com
${EP_ADDRESS2} =    13 Manila West

${EP_FIRSTNAME2} =    QA
${EP_LASTNAME2} =    Admin
${EP_USERNAME2} =    qaadmin
${EP_MOBILE2} =    9566433017
${EP_EMAIL2} =    qaadmin@citrof.com
${EP_BIRTHDATE2} =    01/01/1991
${EP_ADDRESS} =    14 Manila East

#${EMPTY}
#&{BLANK_EMAIL}          email=${EMPTY}                   password=p@ssw0rdS123   errormessage=Please complete all necessary details
#&{BLANK_PASSWORD}       email=gian.santiago@citrof.com    password=${EMPTY}       errormessage=Please complete all necessary details
#&{INVALID_PASSWORD}     email=jovani.ogaya@citrof.com    password=invalidpass    errormessage=Invalid email or password
#&{NON_REGISTERED_EMAIL}    email=citrofqa@gmail.com      password=p@ssw0rdS123   errormessage=Invalid email or password