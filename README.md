### root of directory
* resin/
    * bootstrap.css
    * script.js
    * style.css
    * view_neighborhoods.jsp (the view)
        * WEBINF/
        * classes
            * project/ (MVC architecture)
                * controller/
                    * NeighborhoodServlet.java
                * model/
                    * {has all the class and repository files}
                * util/
                    * {utilities files i.e. database helper class}
                * pgBundle.properties (contains database credentials)
        * lib/
        * tmp/
        * work/
        * resinweb.xml (the brain includes servlet mapping, url)

* Project report - final_report.pdf
* ER diagram - final_ER_diagram.pdf
* Relational schema - in the sql folder contains:
    * data.sql - insert tuples into tables
    * query.sql - query contains join and or group by
    * schema.sql - create table define structure
* UI code - view_neighborhoods.jsp linked css, javascript etc
