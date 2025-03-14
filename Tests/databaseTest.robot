*** Settings ***

Library     DatabaseLibrary
Library     OperatingSystem

Test Setup      Connect To Database     pymysql     ${DBname}   ${DBuser}   ${DBpassword}   ${DBhostname}   ${DBportname}
Test Teardown   Disconnect From Database

*** Variables ***

${DBname}   mydb
${DBuser}   root
${DBpassword}   root
${DBhostname}   127.0.0.1
${DBportname}   3306


*** Test Cases ***

#create person table
#    ${output}=  Execute Sql String    create table person(id int (20), firstname varchar (20),lastname varchar (20));
#    Log To Console    ${output}
#    Should Be Equal As Strings    ${output}    None


#inserting data in person table
#
#    ${output}=  Execute Sql String    insert into person values(1,"chetan","kumar");
#    Log To Console    ${output}
#    Should Be Equal As Strings  ${output}   None

#insert data in person table
#
#    ${query}=   Execute Sql Script    ./DatasetFiles/persondata.sql
#    Log To Console    ${query}
#    Should Be Equal As Strings    ${query}    None

#validate data is present in table
#
#    Check If Exists In Database    select * from person where firstname='chetan';

#validate data is not there in database
#
#    Check If Not Exists In Database    select * from person where firstname='michel';

#check person table exists in database
#
#    Table Must Exist    person

#verify row count is zero
#
#    Row Count Is 0    select * from person where firstname='ffewf43';

#verify row count is equal to some value
#
#    Check Row Count     select * from person  ==  5


#verify row count is less then given value
#
#    Check Row Count    select * from person where firstname='chetan';    !=    2


#verify row count is greater than given value
#
#    Check Row Count    select * from person;    >    2
#
#update the record in table
#    ${query}=   Execute Sql String  update person set id=1 where firstname='mahesh';
#    Log To Console    ${query}
#    Should Be Equal As Strings    ${query}    None

Retrive records from table

    @{output}=   Query    select * from person;
    Log To Console  many @{output}



*** Keywords ***

