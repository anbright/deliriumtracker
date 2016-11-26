$(document).ready(function() {
    var max = $(".data_range").data("max");
    var min = $(".data_range").data("min");
    var from = $(".data_range").data("from");
    var to = $(".data_range").data("to");

    var slider = $("#slider").slider({
        range: true,
        min: min,
        max: max,
        values: [from, to],
        slide: function(event, ui) {
            $("#slider_from").val(ui.values[0]);
            $("#slider_to").val(ui.values[1]);
        }
    });
});