function createOrderDashboard() {

    var orderStatusLibelle = ($('#orderStatusLibelle').val()).split('#');
    var orderStatusData = ($('#orderStatusData').val()).split('#');
    var data = new Array();
    var dataPie = new Array();
    for (var i = 0; i < orderStatusLibelle.length; i++){
    data[i] =(parseInt(orderStatusData[i]));
    var dat = new Array();
    dat[0] = orderStatusLibelle[i];
    dat[1] = parseInt(orderStatusData[i]);
    dataPie[i] = dat;
}

//    alert(orderStatusLibelle);
    $('#piechart_order').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: ''
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
                name: 'Poids',
                colorByPoint: true,
                data: dataPie
            }]
    });


    // Create the chart
    $('#histogram_order').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: ''
        },
        subtitle: {
            text: ''
        },
        xAxis: {
            categories: orderStatusLibelle,
            type: 'category'
        },
        yAxis: {
            title: {
                text: 'Ordre'
            }

        },
        legend: {
            enabled: true
        },
        plotOptions: {
            series: {
                borderWidth: 0,
                dataLabels: {
                    enabled: true,
                    format: '{point.y:.0f}'
                }
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
            pointFormat: '<span style="color:{point.color}">{point.category}</span>: <b>{point.y:.0f}</b><br/>'
        },
        series: [{
                name: 'Ordres',
                colorByPoint: true,
                data: data
            }]
    });


};


// CLIENT
function createCommissionDashboard(){
   var commissionOperationData = ($('#commissionOperationData').val()).split('#');
   var data = new Array();
   for (var i = 0; i < commissionOperationData.length; i++){
       data[i] =(parseInt(commissionOperationData[i]));
   }

   $('#sgi_commission').highcharts({

          chart: {
              polar: true,
              type: 'line'
          },

          title: {
              text: 'Commissions',
              x: -80
          },

          pane: {
              size: '80%'
          },

          xAxis: {
              categories: ['Droit de garde', 'Transfert de titre', 'Nantissement', 'Paiement dividende', 'Paiement d\'interet',
                           'Vente de titres', 'Achat de titres'],
              tickmarkPlacement: 'on',
              lineWidth: 0
          },

          yAxis: {
              gridLineInterpolation: 'polygon',
              lineWidth: 0,
              min: 0
          },

          tooltip: {
              shared: true,
              pointFormat: '<span style="color:{series.color}">{series.name}: <b>{point.y:,.0f}</b><br/>'
          },

          legend: {
              align: 'right',
              verticalAlign: 'top',
              y: 70,
              layout: 'vertical'
          },

          series: [{
              name: 'Comission',
              data: data,
              pointPlacement: 'on'
          }]

      });
}