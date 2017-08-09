# CSC510Project

An attempt to port web application developed for the class project into .NET

## Boiler Plate - Project in Visual studioo.

Setup the visual studio using  recommend  extensions. [link]()

Used the ASP.NET setup withWeb Application Project on .NET Framework, over cross platform way of .NET core  web application. 

Setup git repository over the the wizard and hooked up both **Teamviewer** and **github**


## Backend - Web API using RESTful interface on CRUD operations
 Rest controllers -> Entity Models -> DBO -> DB
 
 > Aim is to use repository pattern over here
 
### Persistence - Created the entities using the **.NET Entity Framework 6.0** for the project

* Using ADO.NET Entity data model.
  * with **model first approach.**
     * created 3 simple entities in the Entity model designer - User, Movie, Critic and designed relationship between them.
     * created a sql dump of the physical ERD and executed it on the target sql server hosted in **Azure**.
* Created controller classes for the Web API using the one of the **Web API scaffholdings**
* ![]()
