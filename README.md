# databases
Repository for COP4710 final project.

**instructions are based on UNIX commands, equivalent windows commands may be added**

To run the db:
--------------
*requirements mysql, and on install of mysql must create an admin level user name: spring with password: thepassword (defined in application.properties)*
`mysql.server start`
when the backend starts up it will initialize the database with the data given in data.sql.

To run the back-end server:
---------------------------
*requirements maven (npm and mvn)*
`cd back-end` and run `mvn spring-boot:run`

To run the front-end:
---------------------
*requirements node, bower, and gulp.*
`cd front-end` and run `gulp`
