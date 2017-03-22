/**
 * Created by massaer on 25/05/2016.
 */
;(function($) {
    $.fn.fixMe = function() {
       // alert('Scroll');
        return this.each(function() {
            var $this = $(this),
                $t_fixed;
            function init() {
                $this.wrap('<div class="container-ds" />');
                $t_fixed = $this.clone();
                $t_fixed.find("tbody").remove().end().addClass("fixed-ds").insertBefore($this);
                resizeFixed();
            }
            function resizeFixed() {
                $t_fixed.find("th").each(function(index) {
                    $(this).css("width",$this.find("th").eq(index).outerWidth()+"px");
                });
            }
            function scrollFixed() {
                var offset = $(this).scrollTop(),
                    tableOffsetTop = $this.offset().top,
                    tableOffsetBottom = tableOffsetTop + $this.height() - $this.find("thead").height();
                if(offset < tableOffsetTop || offset > tableOffsetBottom)
                    $t_fixed.hide();
                else if(offset >= tableOffsetTop || offset <= tableOffsetBottom || $t_fixed.is(":hidden"))
                    $t_fixed.show();
            }
            $(window).resize(resizeFixed);
            $(window).scroll(scrollFixed);
            init();
        });
    };
})(jQuery);

$(document).ready(function(){
    //$("#table_bonds").fixMe();
    $("#table_stocks").fixMe();

    $('#myTab a').click(function (e) {
        e.preventDefault()
        $(this).tab('show');

        $('html, body').animate({
            scrollTop: 20
        }, 100);
        $('html, body').animate({
            scrollTop: 0
        }, 100);
    });

    $("#btn_add_quotation").click(function () {
        $("#add_daily_security_stock").modal();
        $('html, body').animate({
            scrollTop: 20
        }, 100);
        $('html, body').animate({
            scrollTop: 0
        }, 100);
    });
});