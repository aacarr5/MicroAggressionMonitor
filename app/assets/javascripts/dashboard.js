$.ajax({
    url: "/user/dashboard"
}).done(function(data) {
    var input = d3Prep(count(data, "aggressor"));
    drawPie(input);
    createKey(input);
})

function createKey(data) {
    var labels = [".family", ".coworker", ".superior", ".subordinate", ".patron", ".other"];
    for (var datum in data) {
        if ({}.hasOwnProperty.call(datum, data)) {
            $(labels[datum]).append(data[datum].label + " count: " + data[datum].count)
        }
    // $(labels[datum]).append(data[datum].label + " count: " + data[datum].count)
    }
}

function drawPie(data) {
    var width = 200;
    var height = 200;
    var radius = Math.min(width, height) / 2;
    var color = d3.scale.category20b();
    var svg = d3.select("#chart")
        .append('svg')
        .attr('width', width)
        .attr('height', height)
        .append('g')
        .attr('transform', 'translate(' + (width / 2) + ',' + (height / 2) + ')');

    var arc = d3.svg.arc()
        .innerRadius(0)
        .outerRadius(radius)

    var pie = d3.layout.pie()
        .value(function(d) {
            return d.count;
        })
        .sort(null)

    var path = svg.selectAll('path')
        .data(pie(data))
        .enter()
        .append('path')
        .attr('d', arc)
        .attr('fill', function(d, i) {
            return color(d.data.label);
        });

}




function count(data, key) {
    var output = {}
    for (var micro in data) {
        var aggressor = data[micro][key]
        if (output[aggressor]) {
            output[aggressor] += 1;
        } else {
            output[aggressor] = 1
        }
    }
    return output
}

function d3Prep(data) {
    var output = [];
    for (var datum in data) {
        output.push({
            "label": datum,
            "count": data[datum]
        })
    }
    return output
}