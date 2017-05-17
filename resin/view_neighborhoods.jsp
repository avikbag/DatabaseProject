<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="script.js"></script>
</head>

<body>

<div id="buttons">
    <div>
        <a href="#" class="btn blue" id="neighborhoods">Neighborhoods</a>
        <a href="#" class="btn green" id="food">Food</a>
        <a href="#" class="btn red" id="demographics">Demographics</a>
        <a href="#" class="btn purple" id="properties">Properties</a>
        <a href="#" class="btn orange" id="recreationals">Recreationals</a>
        <a href="#" class="btn yellow" id="schools">Schools</a>
        <a href="#" class="btn blue" id="shooting_crimes">Shooting Crimes</a>
        <a href="#" class="btn green" id="transportations">Transportations</a>
    </div>
    <div>
        <a href="#" class="btn blue" id="query1">Safety Rating</a>
        <a href="#" class="btn green" id="query2">Manayunk's Restaurants</a>
        <a href="#" class="btn red" id="query3">Safest Schools</a>
        <a href="#" class="btn purple" id="query4">Neighborhoods Have Subway & Bus</a>
        <a href="#" class="btn orange" id="query5">Neighborhoods For Sale</a>
    </div>
</div>

<div id="neighborhoods_table">
    <h1><span class="span1">&lt;</span>Neighborhoods<span class="span1">&gt;</span> <span class="span2">Table</pan></h1>
    <h2>Data gathered by <a href="http://www.visitphilly.com/philadelphia-neighborhoods/" target="_blank">http://www.visitphilly.com/philadelphia-neighborhoods/</a>
    </h2>

    <table class="container">
        <thead>
        <tr>
            <th><h1>Name</h1></th>
            <th><h1>Zipcode</h1></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="neighborhood" items="${neighborhoods}">
            <tr>
                <td>${neighborhood.name}</td>
                <td>${neighborhood.zipcode}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<div id="food_table">
    <h1><span class="span1">&lt;</span>Food<span class="span1">&gt;</span> <span class="span2">Table</pan></h1>
    <h2>Data gathered by <a href="http://centercityphila.org/explore-center-city/ccd-restaurant-week" target="_blank">http://centercityphila.org/explore-center-city/ccd-restaurant-week</a>
    </h2>

    <table class="container">
        <thead>
        <tr>
            <th><h1>Name</h1></th>
            <th><h1>Address</h1></th>
            <th><h1>Category</h1></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="food" items="${foodList}">
            <tr>
                <td>${food.name}</td>
                <td>${food.address}</td>
                <td>${food.category}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<div id="demographics_table">
    <h1><span class="span1">&lt;</span>Demographics<span class="span1">&gt;</span> <span class="span2">Table</pan></h1>
    <h2>Data gathered by <a href="http://centercityphila.org/explore-center-city/ccd-restaurant-week" target="_blank">http://centercityphila.org/explore-center-city/ccd-restaurant-week</a>
    </h2>

    <table class="container">
        <thead>
        <tr>
            <th><h1>Neighborhood Name</h1></th>
            <th><h1>Zipcode</h1></th>
            <th><h1>Ethnicity</h1></th>
            <th><h1>Median Age Group</h1></th>
            <th><h1>Median Salary</h1></th>
            <th><h1>Unemployment</h1></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="demographic" items="${demographics}">
            <tr>
                <td>${demographic.neighborhoodName}</td>
                <td>${demographic.zipcode}</td>
                <td>${demographic.ethnicity}</td>
                <td>${demographic.median_age_group}</td>
                <td>${demographic.median_salary}</td>
                <td>${demographic.unemployment}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<div id="properties_table">
    <h1><span class="span1">&lt;</span>Properties<span class="span1">&gt;</span> <span class="span2">Table</pan></h1>
    <h2>Data gathered by <a href="http://centercityphila.org/explore-center-city/ccd-restaurant-week" target="_blank">http://centercityphila.org/explore-center-city/ccd-restaurant-week</a>
    </h2>

    <table class="container">
        <thead>
        <tr>
            <th><h1>Neighborhood Name</h1></th>
            <th><h1>Zipcode</h1></th>
            <th><h1>Type</h1></th>
            <th><h1>Status</h1></th>
            <th><h1>Price</h1></th>
            <th><h1>Size</h1></th>
            <th><h1>Bed/Bath</h1></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="property" items="${properties}">
            <tr>
                <td>${property.neighborhoodName}</td>
                <td>${property.zipcode}</td>
                <td>${property.type}</td>
                <td>${property.status}</td>
                <td>${property.price}</td>
                <td>${property.size}</td>
                <td>${property.bedBath}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<div id="recreationals_table">
    <h1><span class="span1">&lt;</span>Recreationals<span class="span1">&gt;</span> <span class="span2">Table</pan></h1>
    <h2>Data gathered by <a href="http://centercityphila.org/explore-center-city/ccd-restaurant-week" target="_blank">http://centercityphila.org/explore-center-city/ccd-restaurant-week</a>
    </h2>

    <table class="container">
        <thead>
        <tr>
            <th><h1>Neighborhood Name</h1></th>
            <th><h1>Zipcode</h1></th>
            <th><h1>Name</h1></th>
            <th><h1>Type</h1></th>
            <th><h1>Age Group</h1></th>
            <th><h1>Rating</h1></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="recreational" items="${recreationals}">
            <tr>
                <td>${recreational.neighborhoodName}</td>
                <td>${recreational.zipcode}</td>
                <td>${recreational.name}</td>
                <td>${recreational.type}</td>
                <td>${recreational.ageGroup}</td>
                <td>${recreational.rating}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<div id="schools_table">
    <h1><span class="span1">&lt;</span>Schools<span class="span1">&gt;</span> <span class="span2">Table</pan></h1>
    <h2>Data gathered by <a href="http://centercityphila.org/explore-center-city/ccd-restaurant-week" target="_blank">http://centercityphila.org/explore-center-city/ccd-restaurant-week</a>
    </h2>

    <table class="container">
        <thead>
        <tr>
            <th><h1>Neighborhood Name</h1></th>
            <th><h1>Zipcode</h1></th>
            <th><h1>Grade Level</h1></th>
            <th><h1>Enrollment</h1></th>
            <th><h1>Type</h1></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="school" items="${schools}">
            <tr>
                <td>${school.neighborhoodName}</td>
                <td>${school.zipcode}</td>
                <td>${school.name}</td>
                <td>${school.gradeLevel}</td>
                <td>${school.enrollment}</td>
                <td>${school.type}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


<div id="shooting_crimes_table">
    <h1><span class="span1">&lt;</span>Shooting Crimes<span class="span1">&gt;</span> <span class="span2">Table</pan>
    </h1>
    <h2>Data gathered by <a href="http://centercityphila.org/explore-center-city/ccd-restaurant-week" target="_blank">http://centercityphila.org/explore-center-city/ccd-restaurant-week</a>
    </h2>

    <table class="container">
        <thead>
        <tr>
            <th><h1>Neighborhood Name</h1></th>
            <th><h1>Zipcode</h1></th>
            <th><h1>Incident Time</h1></th>
            <th><h1>Fatality</h1></th>
            <th><h1>Officer Involved</h1></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="shootingCrime" items="${shootingCrimes}">
            <tr>
                <td>${shootingCrime.neighborhoodName}</td>
                <td>${shootingCrime.zipcode}</td>
                <td>${shootingCrime.incidentTime}</td>
                <td>${shootingCrime.fatality}</td>
                <td>${shootingCrime.officerInvolved}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<div id="transportations_table">
    <h1><span class="span1">&lt;</span>Shooting Crimes<span class="span1">&gt;</span> <span class="span2">Table</pan>
    </h1>
    <h2>Data gathered by <a href="http://centercityphila.org/explore-center-city/ccd-restaurant-week" target="_blank">http://centercityphila.org/explore-center-city/ccd-restaurant-week</a>
    </h2>

    <table class="container">
        <thead>
        <tr>
            <th><h1>Neighborhood Name</h1></th>
            <th><h1>Zipcode</h1></th>
            <th><h1>Station Address</h1></th>
            <th><h1>Type</h1></th>
            <th><h1>Route</h1></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="transporation" items="${transporations}">
            <tr>
                <td>${transporation.neighborhoodName}</td>
                <td>${transporation.zipcode}</td>
                <td>${transporation.stationAddress}</td>
                <td>${transporation.type}</td>
                <td>${transporation.route}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<div id="query1_table">
    <h1><span class="span1">&lt;</span>Safety Scores<span class="span1">&gt;</span> <span class="span2">Table</pan></h1>
    <h2>Safety score based on shooting crime incidents of all neighborhoods</h2>

    <table class="container">
        <thead>
        <tr>
            <th><h1>Neighborhood Name</h1></th>
            <th><h1>Safety Score</h1></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="safetyScore" items="${safetyScores}">
            <tr>
                <td>${safetyScore.get("neighborhood_name")}</td>
                <td>${safetyScore.get("safetyScore")}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<div id="query2_table">
    <h1><span class="span1">&lt;</span>Restaurants In Manayunk<span class="span1">&gt;</span> <span
            class="span2">Table</pan></h1>
    <h2>All the restaurants in Manayunk</h2>

    <table class="container">
        <thead>
        <tr>
            <th><h1>Restaurant Name</h1></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="restaurant" items="${manayunkRestaurants}">
            <tr>
                <td>${restaurant}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


<div id="query3_table">
    <h1><span class="span1">&lt;</span>Safest Schools<span class="span1">&gt;</span> <span class="span2">Table</pan>
    </h1>
    <h2>Schools that have a safety score lower than 1</h2>

    <table class="container">
        <thead>
        <tr>
            <th><h1>School Name</h1></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="school" items="${safestSchools}">
            <tr>
                <td>${school}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


<div id="query4_table">
    <h1><span class="span1">&lt;</span>Neighborhood With Subway & Bus<span class="span1">&gt;</span> <span
            class="span2">Table</pan></h1>
    <h2>Neighborhoods that have both subway and bus</h2>

    <table class="container">
        <thead>
        <tr>
            <th><h1>Neighborhood Name</h1></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="neighborhood" items="${subwayAndBus}">
            <tr>
                <td>${neighborhood}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


<div id="query5_table">
    <h1><span class="span1">&lt;</span>Neighborhood With Houses For Sale<span class="span1">&gt;</span> <span
            class="span2">Table</pan></h1>
    <h2>Neighborhoods where there are houses for sale</h2>

    <table class="container">
        <thead>
        <tr>
            <th><h1>Neighborhood Name</h1></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="neighborhood" items="${housesForSale}">
            <tr>
                <td>${neighborhood}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>