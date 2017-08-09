# CSC510Project

An attempt to port web application developed for the class project into .NET

## Boiler Plate - Project in Visual studio 2017.

Setup the visual studio using  recommend  extensions. [link](https://github.com/tnkteja/Everything.NET#extensions)

Used the ASP.NET setup withWeb Application Project on .NET Framework, ( over cross platform way of .NET core  web application. since I started with this .. [1]) 

![project setup](https://github.com/tnkteja/CSC510Project.NET/blob/master/images/projectsetup.png)

Setup git repository over the the wizard and hooked up both **Teamviewer** and **github**


## Backend - Web API using RESTful interface on CRUD operations
 Rest controllers -> Entity Models -> DBO -> DB
 
 > Aim is to use repository pattern over here
 
### Persistence - Created the entities using the **.NET Entity Framework 6.0** for the project

* Using ADO.NET Entity data model.
  * with **model first approach.**
     * created 3 simple entities in the Entity model designer - User, Movie, Critic and designed relationship between them.
     * created a sql dump of the physical ERD and executed it on the target sql server hosted in **Azure**.
       * Created a sql database instance in **Azure** on a SQL server instance.
* Created controller classes for the Web API using the one of the **Web API scaffholdings**
* ![]()

### Identity management - 
## References
1. _https://andrewlock.net/understanding-net-core-netstandard-and-asp-net-core/_
