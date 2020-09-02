*** Variables ***
${BROWSER} =    gc
${ENVIRONMENT} =    dev
&{URL}    dev=http://dev-sabong-bettor.citrof.com/login    pelea=https://staging.peleadegallos.mx/login
#&{USER_ACCOUNT}    email=jovani.ogaya@citrof.com    password=p@ssw0rdS123

#Valid account for login
${VALID_EMAIL} =  gian.santiago@citrof.com
${VALID_PASSWORD} =  Tester101!
${VALID_PASSWORD2} =  Tester101!!

#Change password
${NEWPASS1} =    Tester101!
${CONFIRMPASS1} =    Tester101!
${NEWPASS2} =    Tester101!!
${CONFIRMPASS2} =    Tester101!!

#EditProfile
${PHOTO} =    C:/robot-scripts/sabongeros/Data/profile_picture.jpg
${EP_FIRSTNAME} =    Gab
${EP_LASTNAME} =    Ali
${EP_USERNAME} =    gab.ali
${EP_EMAIL} =    gab.ali@citrof.com
${EP_MOBILE} =    9555555555
${EP_BIRTHDATE} =    09/09/2000

${EP_FIRSTNAME2} =    Gian
${EP_LASTNAME2} =    Santiago
${EP_USERNAME2} =    gian.santiago
${EP_EMAIL2} =    gian.santiago@citrof.com
${EP_MOBILE2} =    9566433017
${EP_BIRTHDATE2} =    01/01/1991


#${EMPTY}
#&{BLANK_EMAIL}          email=${EMPTY}                   password=p@ssw0rdS123   errormessage=Please complete all necessary details
#&{BLANK_PASSWORD}       email=gian.santiago@citrof.com    password=${EMPTY}       errormessage=Please complete all necessary details
#&{INVALID_PASSWORD}     email=jovani.ogaya@citrof.com    password=invalidpass    errormessage=Invalid email or password
#&{NON_REGISTERED_EMAIL}    email=citrofqa@gmail.com      password=p@ssw0rdS123   errormessage=Invalid email or password