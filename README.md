# databases
Repository for COP4710 final project.

**instructions are based on UNIX commands, equivalent windows commands may be added**



On install of mysql:
--------------------

Create an admin level user name: spring with password: thepassword (defined in application.properties)

`mysql -u root -p`

`GRANT ALL PRIVILEGES ON *.* TO 'spring'@'localhost' IDENTIFIED BY 'thepassword';`

*Note: this is fairly bad practice but it works for our local usage.



To run the db:
--------------
*requirements: mysql*

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
