$(document).ready(function () {
    $('#neighborhoods_table').hide();
    $('#food_table').hide();
    $('#demographics_table').hide();
    $('#properties_table').hide();
    $('#recreationals_table').hide();
    $('#schools_table').hide();
    $('#shooting_crimes_table').hide();
    $('#transportations_table').hide();

    $('#neighborhoods').click(function () {
        $('#neighborhoods_table').toggle();
        $('#neighborhoods').toggleClass("black");
    });

    $('#food').click(function () {
        $('#food_table').toggle();
        $('#food').toggleClass("black");
    });

    $('#demographics').click(function () {
        $('#demographics_table').toggle();
        $('#demographics').toggleClass("black");
    });

    $('#properties').click(function () {
        $('#properties_table').toggle();
        $('#properties').toggleClass("black");
    });

    $('#recreationals').click(function () {
        $('#recreationals_table').toggle();
        $('#recreationals').toggleClass("black");
    });

    $('#schools').click(function () {
        $('#schools_table').toggle();
        $('#schools').toggleClass("black");
    });

    $('#shooting_crimes').click(function () {
        $('#shooting_crimes_table').toggle();
        $('#shooting_crimes').toggleClass("black");
    });

    $('#transportations').click(function () {
        $('#transportations_table').toggle();
        $('#transportations').toggleClass("black");
    });

    $('#query1_table').hide();
    $('#query2_table').hide();
    $('#query3_table').hide();
    $('#query4_table').hide();
    $('#query5_table').hide();

    $('#query1').click(function () {
        $('#query1_table').toggle();
        $('#query1').toggleClass("black");
    });

    $('#query2').click(function () {
        $('#query2_table').toggle();
        $('#query2').toggleClass("black");
    });

    $('#query3').click(function () {
        $('#query3_table').toggle();
        $('#query3').toggleClass("black");
    });

    $('#query4').click(function () {
        $('#query4_table').toggle();
        $('#query4').toggleClass("black");
    });

    $('#query5').click(function () {
        $('#query5_table').toggle();
        $('#query5').toggleClass("black");
    });

});