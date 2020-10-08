*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${newpassword_tb}    //form[@class='ng-untouched ng-pristine ng-invalid']/div[1] //input
${confirmpassword_tb}    //form[@class='ng-untouched ng-pristine ng-invalid']/div[2] //input
${save_btn}    //button[@class='btn btn-primary btn-block mat-flat-button mat-button-base']



Password mismatched.

The confirm password field is required.

The password field is required.

The password must be at least 8 characters.,The password format is invalid.,This password is just too common. Please try another!

The password format is invalid.
