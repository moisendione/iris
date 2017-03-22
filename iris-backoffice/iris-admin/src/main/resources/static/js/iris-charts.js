/**
 * Created by jgaglo on 03/05/16.
 */
/* Custom functions that help in getting remote data and drawing a chart to a div */

function createNewChart(type) {
    //Financial Capital colors
    Highcharts.setOptions({
        colors: ['#203864','#b3c6e7','#7f7f7f','#d8d8d8','#ffffff','#9a0000','#adb8ca']
    });
    var chart = {
        options: {
            chart: {
                renderTo: null
            }
        }
    };
    if (type == 'line') {
        chart = jQuery.extend(true, {}, getLineBaseChart(), chart);
    } else if (type == 'pie') {
        chart = jQuery.extend(true, {}, getPieBaseChart(), chart);
    }

    chart.init(chart.options);
    return chart;
}

function getPieBaseChart() {
    // Radialize the colors
    Highcharts.getOptions().colors = Highcharts.map(Highcharts.getOptions().colors, function (color) {
        return {
            radialGradient: {
                cx: 0.5,
                cy: 0.3,
                r: 0.7
            },
            stops: [
                [0, color],
                [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
            ]
        };
    });
    var baseChart = {
        highchart: null,
        defaults: {
            chart: {
                renderTo: null,
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                defaultSeriesType: 'pie'

            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: false,
                    }
                }
            },
            credits: {
                enabled: false
            },
            exporting: {
                enabled: false
            },
            title: {
                text: null
            },
            //subtitle: {
            //    text: 'test subtitle'
            //},
            series: []
        },
        // here you'll merge the defaults with the object options
        init: function (options) {
            this.highchart = jQuery.extend({}, this.defaults, options);
        },

        create: function () {
            new Highcharts.Chart(this.highchart);
        }

    };
    return baseChart;

}

function getLineBaseChart() {

    var baseChart = {
        highchart: null,
        defaults: {

            chart: {
                renderTo: null,
                shadow: true,
                borderColor: '#ebba95',
                borderWidth: 2,
                defaultSeriesType: 'line'
            },
            credits: {
                enabled: false
            },
            exporting: {
                enabled: false
            },
            title: {
                text: null,
                x: -20,
                style: {
                    color: '#3366cc',
                    fontWeight: 'bold',
                    fontSize: '16px',
                    fontFamily: 'Trebuchet MS, Verdana, sans-serif'
                }
            },
            xAxis: {
                categories: [],
                gridLineDashStyle: 'dot',
                gridLineColor: '#197f07',
                gridLineWidth: 1,
                tickColor: '#ff40ff',
                tickWidth: 2,
                title: {
                    text: null,
                    style: {
                        color: '#3366cc',
                        fontWeight: 'bold',
                        fontSize: '12px',
                        fontFamily: 'Trebuchet MS, Verdana, sans-serif'
                    }
                },
                labels: {
                    rotation: -25,
                    align: 'right',
                    style: {
                        color: '#3366cc',
                        fontWeight: 'normal',
                        fontSize: '9px',
                        fontFamily: 'Trebuchet MS, Verdana, sans-serif'
                    }
                }
            },
            yAxis: {
                min: 0,
                gridLineWidth: 1,
                gridLineColor: '#197F07',
                gridLineDashStyle: 'dot',
                title: {
                    text: null,
                    style: {
                        color: '#3366cc',
                        fontWeight: 'bold',
                        fontSize: '12px',
                        fontFamily: 'Trebuchet MS, Verdana, sans-serif'
                    }
                },
                labels: {
                    style: {
                        color: '#3366cc',
                        fontSize: '12px',
                        fontFamily: 'Trebuchet MS, Verdana, sans-serif'
                    }
                },
                plotLines: [{
                    value: 0,
                    width: 1
                }]
            },
            tooltip: {
                crosshairs: true,
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                        this.x + ': ' + this.y;
                }
            },

            //legend: {
            //    layout: 'horizontal',
            //    backgroundColor: '#ffffff',
            //    align: 'center',
            //    verticalAlign: 'top',
            //    borderWidth: 1,
            //    shadow: true,
            //    style: {
            //        color: '#3366cc',
            //        fontWeight: 'bold',
            //        fontSize: '9px',
            //        fontFamily: 'Trebuchet MS, Verdana, sans-serif'
            //    }
            //},
            series: []

        },

        // here you'll merge the defaults with the object options
        init: function (options) {
            this.highchart = jQuery.extend({}, this.defaults, options);
        },

        create: function () {
            new Highcharts.Chart(this.highchart);
        }

    };
    return baseChart;
}//function end

function getRemoteDataDrawPieChart(url,linechart, htmlElementId) {

    $.ajax({
        url: url,
        dataType: 'json',
        success: function (data) {
            linechart.highchart.chart.renderTo = htmlElementId;
            linechart.highchart.title.text = data.title;

            var series = {
                type: 'pie',
                data: []
            };
            $.each(data.series, function (i, seriesItem) {
                series.data.push([seriesItem.name,seriesItem.data]);
            });

            linechart.highchart.series[0] = series;
            //draw the chart
            linechart.create();
        },
        error: function (xhr, ajaxOptions, thrownError) {
            //alert(xhr.status);
            //alert(thrownError);
        },
        cache: false
    });
}
function getRemoteDataDrawLineChart(url, linechart, htmlElementId) {

    $.ajax({
        url: url,
        dataType: 'json',
        success: function (data) {

            var categories = data.categories;
            var title = data.title;
            var yTitle = data.yAxisTitle;
            var xTitle = data.xAxisTitle;

            //populate the lineChart options (highchart)
            linechart.highchart.xAxis.categories = categories;
            linechart.highchart.title.text = title;
            linechart.highchart.yAxis.title.text = yTitle;
            linechart.highchart.xAxis.title.text = xTitle;
            linechart.highchart.chart.renderTo = htmlElementId;

            $.each(data.series, function (i, seriesItem) {
                //console.log(seriesItem);
                var series = {
                    showInLegend: false,
                    data: []
                };
                series.name = seriesItem.name;
                series.color = seriesItem.color;

                $.each(seriesItem.data, function (j, seriesItemData) {
                    //console.log("Data (" + j + "): " + seriesItemData);
                    series.data.push(parseFloat(seriesItemData));
                });
                linechart.highchart.series[i] = series;
            });

            //draw the chart
            linechart.create();
        },
        error: function (xhr, ajaxOptions, thrownError) {
            //alert(xhr.status);
            //alert(thrownError);
        },
        cache: false
    });
} //function end