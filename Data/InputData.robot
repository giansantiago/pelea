*** Variables ***
${BROWSER} =    gc
${ENVIRONMENT} =    pelea
&{URL}    dev=http://dev-sabong-bettor.citrof.com/login    pelea=https://staging.peleadegallos.mx/login
#&{USER_ACCOUNT}    email=jovani.ogaya@citrof.com    password=p@ssw0rdS123

#Valid account for login
${VALID_EMAIL} =  qabettor@citrof.com
${VALID_PASSWORD} =  Tester101!



#${EMPTY}
#&{BLANK_EMAIL}          email=${EMPTY}                   password=p@ssw0rdS123   errormessage=Please complete all necessary details
#&{BLANK_PASSWORD}       email=gian.santiago@citrof.com    password=${EMPTY}       errormessage=Please complete all necessary details
#&{INVALID_PASSWORD}     email=jovani.ogaya@citrof.com    password=invalidpass    errormessage=Invalid email or password
#&{NON_REGISTERED_EMAIL}    email=citrofqa@gmail.com      password=p@ssw0rdS123   errormessage=Invalid email or password