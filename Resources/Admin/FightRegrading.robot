*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${fr_datepicker}    //div[@class='row ml-5 mr-5 mt-15 mb-15']/div[1]/div/button
${fr_status_dd}    //div[@class='row ml-5 mr-5 mt-15 mb-15']/div[2]/div/button
${fr_clear_btn}    //div[@class='row ml-5 mr-5 mt-15 mb-15']/div[3]/div/button
${fr_row}    //div[@class='data-table p-relative table-listing ng-star-inserted'] //tbody //tr[1]

${fr_timestamp_lbl}    //div[@class='col-xl-6 col-lg-6 col-md-7 col-sm-6 col-xs-12 text-right']/h3/span
${fr_fightnum_lbl}    //div[@class='row mt-10 ng-star-inserted']/div[1]/div/span
${fr_grade_lbl}    //div[@class='row grades-section pt-15 pb-20 ng-star-inserted']/div[2]/p[1]
${fr_sentby_lbl}    //div[@class='row grades-section pt-15 pb-20 ng-star-inserted']/div[2]/p[2]
${fr_role_lbl}    //div[@class='row grades-section pt-15 pb-20 ng-star-inserted']/div[2]/span
${fr_grade_lbl2}    //div[@class='row grades-section pt-15 pb-20 ng-star-inserted']/div[3]/p[1]
${fr_sentby_lbl2}    //div[@class='row grades-section pt-15 pb-20 ng-star-inserted']/div[3]/p[2]
${fr_role_lbl2}    //div[@class='row grades-section pt-15 pb-20 ng-star-inserted']/div[3]/span[1]
${fr_result_lbl}    //div[@class='mt-10 mb-10 text-center ng-star-inserted']/span
${fr_admin_lbl}    //span[@class='sub-label2 ng-star-inserted']/span[1]

${fr_eventname_lbl}    //h5[@class='main-label']
${fr_arena_lbl}    //div[@class='col-xl-3 col-lg-3 col-md-7 col-sm-6 col-12'][3]/span
${fr_fightnum_lbl2}    //div[@class='col-xl-3 col-lg-3 col-md-7 col-sm-6 col-12'][4]/span
${fr_scout_lbl}    //div[@class='col-xl-6 col-lg-6 col-md-7 col-sm-6 col-12'][2]/span
${fr_streamlink_lbl}    //div[@class='col-xl-6 col-lg-6 col-md-7 col-sm-6 col-12'][1]/span
