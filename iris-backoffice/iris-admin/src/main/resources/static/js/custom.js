/**
 * Created by souraya on 31/03/16.
 */

function reloadPage () {
    location.reload(true);
};


function parseDate(input) {
    var parts = input.match(/(\d+)/g);
    var mydate = parts[0] + "-" + parts[1] + "-" + parts[2];
    return new Date(mydate);
}

function sendPost(path, params, method, csrf_name, csrf_value) {
    method = method || "post";

    var form = document.createElement("form");
    form.setAttribute("method", method);
    form.setAttribute("action", path);

    var hiddenField = document.createElement("input");
    hiddenField.setAttribute("type", "hidden");
    hiddenField.setAttribute("name", csrf_name);
    hiddenField.setAttribute("value", csrf_value);
    form.appendChild(hiddenField);

    for(var key in params) {
        if(params.hasOwnProperty(key)) {
            var hiddenField = document.createElement("input");
            hiddenField.setAttribute("type", "hidden");
            hiddenField.setAttribute("name", key);
            hiddenField.setAttribute("value", params[key]);

            form.appendChild(hiddenField);
        }
    }

    document.body.appendChild(form);
    form.submit();
}

jQuery(document).ready(function($) {

    //ACTIF MENU
    $('#presentation').click(function(){
        $('.l-header .nav-pills li+li').slideToggle();
    });

    /*$('.l-header .nav li a').click(function(){
        $('.l-header .nav li a').removeClass('actif');
        $(this).addClass('actif');
    });*/



    //CHOSEN
    $("#mutualFundListSearch .form-group select, #add-edit-mutualfund .form-group select").chosen({
        disable_search_threshold: 2
    });


    //BROWSER WIDTH
    browser_width = $(window).width();
    if (browser_width >= 768) {}

    //DYNAMIC HEIGHT
    var hauteur = $(window).height();
    var new_hauteur = hauteur - 66;
    //alert(new_hauteur);
    $(".leftside").css("height", hauteur);
    $(".rightside").css("min-height", hauteur);

    $('#add-edit-mutualfund #category').change(function() {
        var choice = $(this).val();

        if(choice !=null && choice == 'MIXED') {
            $('#asset-classes').removeClass('hidden');
        }else {
            $('#asset-classes').addClass('hidden');
            $('input[name=assetClasses]:first').attr("checked","checked");
        }
    });

    $('.return-collateral-choice').click(function() {
        //var ns = document.getElementById("returnForm").elements.namedItem("numberOfShares").value;
        var ns = $("#numberOfShares").val();
        if($(this).attr('id') == 'partielle') {
            $('#indicate-collateral-number-of-shares').val(1);
            $('#indicate-collateral-number-of-shares').prop('disabled', false);
            $("#typeOfReturn").val(id);
        }

        if($(this).attr('id') == 'totale') {
            $('#indicate-collateral-number-of-shares').val(ns);
            $('#indicate-collateral-number-of-shares').prop('disabled', true);
            $("#typeOfReturn").val(id);

        }
    });
    var choice_asset = $('#choice-asset-value').val();
    if(choice_asset != null){
        updateFinancialAsset();
    }
    $('#choice-asset-value').change(function() {
        //var financialAsset ={}
        //financialAsset["id"] = id;
        updateFinancialAsset();

    });

    $('#partyId').change(function() {
        var partName = $("#partyId option:selected").text();
        $('#partyName').val(partName);
    });

    $('#choice-date').change(function() {
        updateFinancialAssetDateAmount();
    });

    $('#choice-quantity').on('input',function(e) {
        updateCalculateChoiceAmountAJAX();
    });

    $("#buy_shares").find('#numberOfShares').on('input',function(e) {
        updateCalculateAmountAJAX();
    });
    $("#buy_shares").find('#nbshares').on('input',function(e) {
        var selectShares = Number($(this).val());
        var availableShares = Number($("#buy_shares").find("#availableShares").text());

        $("#buy_shares").find("#numberOfShares").val(availableShares);
        updateCalculateAmountAJAX();
    });

    ///////////////////client default bank account/////////////////////////
    var newDefaultAccount =  $('input[name="defaultAccount"][checked="checked"]').val();
    var oldDefaultAccount;
    var clientBankAccountDefault=$('input[name="clientDefault"]').val();
    $("input:radio[name=defaultAccount]").change(function() {
        oldDefaultAccount = newDefaultAccount;
        newDefaultAccount = $(this).val();
       defaultBankAccount(oldDefaultAccount,newDefaultAccount,clientBankAccountDefault)

        });


    ///////////////////end client default bank account/////////////////////////


    $("#client .detail").on("click", function() {
        var id = Number($(this).attr("id"));
        clientDetail(id, "details_client");
    });

    $("#client .edit").on("click", function() {
        var id = Number($(this).attr("id"));
        clientEdit(id, "edit_client");
    });

    $("#stock .edit-stock").on("click", function() {
        var id = Number($(this).attr("id"));
        stockEdit(id, "edit_stock");
    });

    $("#bond .edit-bond").on("click", function() {
        var id = Number($(this).attr("id"));
        bondEdit(id, "edit_bond");
    });

    $("#market .edit-market").on("click", function() {
        var id = Number($(this).attr("id"));
        marketEdit(id, "edit_market");
    });

    $("#market .delete-market").on("click", function() {
        var id = Number($(this).attr("id"));
        deleteMarket(id, "delete_market");
    });

    $('#edit_client').on('hidden.bs.modal', function () {
        location.reload(true);
    });

    $('#new_transaction').on('hidden.bs.modal', function () {
        location.reload(true);
    });


    $('#new_client').on('hidden.bs.modal', function () {
        location.reload(true);
    });

    $('#select_mutualfund').on('hidden.bs.modal', function () {
        location.reload(true);
    });


    $('.editButton').on('click', function() {
        var id = $(this).attr('id');
        displayClientBankAccount(id);
    });

    $('.st_mutualfund').on('click', function() {
        var id = $(this).attr('id');
        $("#select_mutualfund input[name=next_step]").val(id);
    });

    $('#select_mutualfund').on('hidden.bs.modal', function () {
        location.reload(true);
    });


    $('#datepicker').change(function() {
        updateMutualFundDateAmount();
    });


    $('.returnButton').on('click', function() {
        var id = $(this).attr('id');

            $("#collateralId").val(id);

    });

    $('.collateralHistory').on('click', function() {
        var id = $(this).attr('id');
        $("#table_collateral_history > tbody").html("");
        getCollateralHistoriesByCollateralId(id);
    });

    $('.have-bank-account').click(function() {
        if($(this).attr('id') == 'oui') {
            $('#bank-name').prop('disabled', false);
            $('#rib').prop('disabled', false);
        }
        if($(this).attr('id') == 'non') {
            $('#bank-name').prop('disabled', true);
            $('#rib').prop('disabled', true);
        }
    });

    $('.first-contact').click(function() {
        if($(this).attr('id') == 'other2') {
            $("#firstContact2").show();
        }
        if($(this).attr('id') == 'other') {
            $("#firstContact").show();
        }
        if($(this).attr('id') != 'other' && $(this).attr('id') != 'other2') {
            $("#firstContact2").hide();
            $("#firstContact").hide();
        }
    });

    $(".next-step").click(function(e) {
        var $active = $('.wizard .nav-tabs li.active');
        nextTab($active);
    });

    $(".prev-step").click(function(e) {
        var $active = $('.wizard .nav-tabs li.active');
        prevTab($active);

    });

    function nextTab(elem) {
        $(elem).next().find('a[data-toggle="tab"]').click();
    }
    function prevTab(elem) {
        $(elem).prev().find('a[data-toggle="tab"]').click();
    }

    $(".select-country").click(function(e) {
        var code_country = $(this).attr('value');
        if(code_country == 'CM') {
            $('.select-district').prop('disabled', false);
        } else {
            $('.select-district').prop('disabled', true);
        }
    });
    $(".select-sense").click(function(e) {
        var sense = $(this).attr('value');
        if(sense == 'INPUT') {
            $('.commission-sgi').prop('disabled', true);
            $('.commission-dcbr').prop('disabled', true);
        } else {
            $('.commission-sgi').prop('disabled', false);
            $('.commission-dcbr').prop('disabled', false);
        }
    });

    /*$('[data-toggle="my-popover"]').popover({
        'template':'<div class="popover" role="tooltip" style="width: 300px;"><h6 class="popover-title"></h6><div><a data-target="#create_natural_person" data-toggle="modal" href="#"><span style="font-size: medium">Personne physique</span><div class="popover-content"></div></a>' +
        '<a data-target="#create_legal_person" data-toggle="modal" href="#"><span style="font-size: medium">Personne morale</span><div class="popover-content"></div></a>' +
        '</div></div>',
        'html': true});*/
    $('#example').popover({
        width: '500px',
        html: true,
        trigger: 'hover',
        container: '#example',
        title : 'Nouveau client',
        placement: 'top',
        content: function () {
            return '<a data-target="#create_natural_person" data-toggle="modal" href="#"><span style="font-size: medium" th:text="#{client.list.add.naturalperson}">Personne physique</span></a>' +
                   '<br/>' +
                   '<a data-target="#create_legal_person" data-toggle="modal" href="#"><span style="font-size: medium" th:text="#{client.list.add.legalperson}">Personne morale</span></a>'
        },
        animation: false
    }).on({
        show: function (e) {
            var $this = $(this);

            // Currently hovering popover
            $this.data("hoveringPopover", true);

            // If it's still waiting to determine if it can be hovered, don't allow other handlers
            if ($this.data("waitingForPopoverTO")) {
                e.stopImmediatePropagation();
            }
        },
        hide: function (e) {
            var $this = $(this);

            // If timeout was reached, allow hide to occur
            if ($this.data("forceHidePopover")) {
                $this.data("forceHidePopover", false);
                return true;
            }

            // Prevent other `hide` handlers from executing
            e.stopImmediatePropagation();

            // Reset timeout checker
            clearTimeout($this.data("popoverTO"));

            // No longer hovering popover
            $this.data("hoveringPopover", false);

            // Flag for `show` event
            $this.data("waitingForPopoverTO", true);

            // In 1500ms, check to see if the popover is still not being hovered
            $this.data("popoverTO", setTimeout(function () {
                // If not being hovered, force the hide
                if (!$this.data("hoveringPopover")) {
                    $this.data("forceHidePopover", true);
                    $this.data("waitingForPopoverTO", false);
                    $this.popover("hide");
                }
            }, 1500));

            // Stop default behavior
            return false;
        }
    });


    $("#infotable tr").click(function() {
        var value = $(this).attr('id');
        if(!isNaN(value)) {
            location.href = "/client/" + value+"/situation";
        }
    });

    $("#infotable tr").hover(
        function () {
            //alert("hover");
            $(this).css("background-color","gray");
        },
        function () {
            $(this).css("background","");
        }
    );


    $("#typeAssetClass").on("change", function() {
        var assetClass =$(this).val();
        var market = $("#orderMarket").val();
        var tradingAccount = $('.tradingAccountPassOrder').val();
        var orderSense = $('.orderSensePassOrder').val();
        if(assetClass != '') {
            selectionFinancialAsset(assetClass,market,tradingAccount, orderSense);
        }

    });

    $("#orderTypeToCreate").change(function(){
        // alert('MARKET_ORDER');
        $('#minQuantityToCreateOrder').addClass('hidden');
        if($('#orderTypeToCreate').val() == 'MARKET_ORDER'){
            $('#rowPrice').addClass('hidden');
        }else{
            $('#rowPrice').removeClass('hidden');
        }

        // Order parameter
              var selectOrderTypeToCreate = document.getElementById("orderTypeToCreate");
               if(selectOrderTypeToCreate.value == 'MARKET_ORDER'){
                    $('#orderParameterToCreateOrder option[id=allOrNothingCreate]').remove();
                    $('#orderParameterToCreateOrder option[id=inBestLimitCreate]').remove();
                  }else
                     if(selectOrderTypeToCreate.value == 'LIMIT_ORDER'){
                          $('#orderParameterToCreateOrder option[id=allOrNothingCreate]').remove();
                          $('#orderParameterToCreateOrder option[id=inBestLimitCreate]').remove();
                          $('#orderParameterToCreateOrder').append('<option value="ALL_OR_NOTHING" id="allOrNothingCreate">Tout ou Rien</option>');
                       }else{
                           $('#orderParameterToCreateOrder option[id=allOrNothingCreate]').remove();
                           $('#orderParameterToCreateOrder option[id=inBestLimitCreate]').remove();
                           $('#orderParameterToCreateOrder').append('<option value="ALL_OR_NOTHING" id="allOrNothingCreate">Tout ou Rien</option>');
                           $('#orderParameterToCreateOrder').append('<option value="IN_MINIMAL_QUANTITY" id="inBestLimitCreate">A Quantité minimale</option>');
                           }

    });

    $('#orderParameterToCreateOrder').change(function(){
        var selectOrderParameter = $('#orderParameterToCreateOrder').val();
        if(selectOrderParameter == 'IN_MINIMAL_QUANTITY'){
           $('#minQuantityToCreateOrder').removeClass('hidden');
        }else{
           $('#minQuantityToCreateOrder').addClass('hidden');
        }
    });


    $("#orderMarket").on("change", function() {
        var assetClass =$("#typeAssetClass").val();
        var market = $(this).val();
         document.getElementById("clientIdInOrder").value = $('#idClientGiveOrder').val();
         var tradingAccount = $('.tradingAccountPassOrder').val();
         var orderSense = $('.orderSensePassOrder').val();

        if(assetClass != '') {
            selectionFinancialAsset(assetClass,market, tradingAccount, orderSense);
        }

    });

    $("#trading-account-list .delete").on("click", function() {
        var id = Number($(this).attr("id"));
        var account_number = $(this).attr("name");
        var desc = $(this).attr("alt");
        deleteTradingAccount(id, account_number, desc, "confirm_delete_trading_account");
    });
    $("#trading-account-list .edit").on("click", function() {
        var id = Number($(this).attr("id"));
        $("#status-tradingaccount-form").removeClass("hidden");

        $("#title-update-trading-account").removeClass("hidden");
        $("#title-new-trading-account").addClass("hidden");
        clientTradingAccount(id, "create_trading_account");
    });
    $("#create-trading-account .edit").on("click", function() {
        //var id = Number($(this).attr("id"));
        $("#title-update-trading-account").addClass("hidden");
        $("#title-new-trading-account").removeClass("hidden");

        $("#status-tradingaccount-form").addClass("hidden");
        clientTradingAccount(-1, "create_trading_account");
    });

    //======= PASS ORDER MODAL=======




    $('#ordersubscriber').popover({
        width: '500px',
        html: true,
        trigger: 'hover',
        container: '#ordersubscriber',
        title : 'Passer un Ordre',
        placement: 'top',
        content: function () {
            return '<a href="/pass/order/buy" id="linkPassOrderBuy" class="buyorder1"><span style="font-size: medium">ACHAT</span></a>' +
                '<br/>' +
                '<a href="/pass/order/sell"><span style="font-size: medium">VENTE</span></a>'
        },
        animation: false
    }).on({
        show: function (e) {

            var $this = $(this);

            // Currently hovering popover
            $this.data("hoveringPopover", true);

            // If it's still waiting to determine if it can be hovered, don't allow other handlers
            if ($this.data("waitingForPopoverTO")) {
                e.stopImmediatePropagation();
            }
        },
        hide: function (e) {
            var $this = $(this);

            // If timeout was reached, allow hide to occur
            if ($this.data("forceHidePopover")) {
                $this.data("forceHidePopover", false);
                return true;
            }

            // Prevent other `hide` handlers from executing
            e.stopImmediatePropagation();

            // Reset timeout checker
            clearTimeout($this.data("popoverTO"));

            // No longer hovering popover
            $this.data("hoveringPopover", false);

            // Flag for `show` event
            $this.data("waitingForPopoverTO", true);

            // In 1500ms, check to see if the popover is still not being hovered
            $this.data("popoverTO", setTimeout(function () {
                // If not being hovered, force the hide
                if (!$this.data("hoveringPopover")) {
                    $this.data("forceHidePopover", true);
                    $this.data("waitingForPopoverTO", false);
                    $this.popover("hide");
                }
            }, 1500));

            // Stop default behavior
            return false;
        }
    });

    //$('#buyorder1').click(function(){
    //    document.getElementById("ordersense").value = "BUY";
    //           alert("buying");

    //});

    //var n= $('#orderType').val();
    //alert("-----OrderType----"+n);



    //asset transfert
    $("#asset-transfert").on("click", function() {
        var id = Number($(this).attr("value"));
        //alert("Show asset transfert history : "+id);
        assetTransfertHistory(id);
    });
    //calculate commission SGI
    $("#commissionSGI").keyup(function() {
        var comm = Number($(this).val());

        var tav = comm*0.18;
        var ttc = comm*1.18;
        //alert("tva : "+tav+ " et ttc : "+ttc);
        $("#tva").text(tav).append(" XOF");
        $("#ttc").text(ttc).append(" XOF");
    });

    //update asset list on change
    $("#assetTransfertSense").change(function(){
        var sense = $(this).val();
        //$('.asset-class-transfert').remove();
        $('#tradingAccountAssetShortList option[value != "" ]').remove();
        refreshAssetList(sense);
    });
    $("#assetTransfertSense").click(function(){
        var sense = $(this).val();
        $('#tradingAccountAssetShortList option[value != "" ]').remove();
        refreshAssetList(sense);
    });
    $(".asset-class-transfert").click(function(e) {
        var asset_class = $(this).attr('title');
        alert("asset class : "+asset_class);
        $("#assetClass").val(asset_class);
    });

    ///////////admin users/////////

    $('.editAdminUser').on("click", function() {
        var id = Number($(this).attr("id"));
        adminUserEdit(id, "edit_user");
    });


    //======================== functions ====================
    function updateFinancialAsset(){
        var id = parseInt($("#choice-asset-value").val());

        if(!isNaN(id) && id !=null) {
            $.ajax({
                type: "GET",
                contentType: "application/json",
                url: "/financial-asset/" + id + "/details",
                //data: JSON.stringify(financialAsset),
                dataType: 'json',
                timeout: 100000,
                success: function (data) {
                    console.log("SUCCESS: ", data);
                    $("#financialAssetName").val(data.name);
                    updateChoiceDateAndPrice(data);
                    updateCalculateChoiceAmountAJAX();
                },
                error: function (e) {
                    console.log("ERROR: ", e);
                },
                done: function (e) {
                    console.log("DONE");
                }
            });
        }else{
           /* var date ={year:2016,monthValue:1,dayOfMonth:1}
            var data= {price:0,date:date};

            updateChoiceDateAndPrice(data);*/
            updateCalculateChoiceAmountAJAX();
        }
    }

    function updateFinancialAssetDateAmount(){
        var dateString = $("#choice-date").val();
        var financialAssetId = parseInt($("#choice-asset-value").val());
        var category = ($("#choice-category").val());
        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: "/financial-asset/"+dateString+"/price/"+financialAssetId+"/"+category,
            dataType: 'json',
            timeout: 100000,
            success: function (data) {
                console.log("SUCCESS: ", data);
                $("#choice-price-value").text(data);
                $("#assetPrice").val(data);
                updateCalculateChoiceAmountAJAX();
            },
            error: function (e) {
                console.log("ERROR: ", e);
            },
            done: function (e) {
                console.log("DONE");
            }
        });

    }
    function updateChoiceDateAndPrice(data){
        try {
            var yearAjax = data.date.year;
            var monthAjax = data.date.monthValue;
            var dayAjax = data.date.dayOfMonth;
            var faDate = new Date(dayAjax+"-"+monthAjax+"-"+yearAjax);
            var faDateString = faDate.toISOString().slice(0,10);
            var aa = faDateString.slice(0,4);
            var jj = faDateString.slice(5,7);
            var mm = faDateString.slice(8,10);
            $("#choice-date").val(jj+"-"+mm+"-"+aa);
        }catch (err){
            console.log("date error: "+err.message);

        }
        $("#choice-price-value").text(data.price);
        $("#assetPrice").val(data.price);

    }

    function updateCalculateChoiceAmountAJAX(){
        var price = parseFloat($("#choice-price-value").text());
        var quantity = Number($("#choice-quantity").val());
        if(isNaN(quantity)){
            quantity =0;
        }
        if(isNaN(price)){
            price =0;
        }

        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: "/financial-asset/" + price + "/" + quantity + "/calculate",
            dataType: 'json',
            timeout: 100000,
            success: function (data) {
                $("#choice-amount-value").text(data);
                $("#totalAmount").val(data);

            },
            error: function (e) {
                console.log("ERROR: ", e);
            },
            done: function (e) {
                console.log("DONE");
            }
        });
    }

    /*
     *============================= Client Subscription functions
     */


    function deleteMarket(id, modal){
        $.ajax({
            type : "GET",
            contentType : "application/json",
            url : "/market/edit-market/"+ id,
            dataType : 'json',
            timeout : 100000,
            success : function(data) {
                var edit_modal = "#"+modal;
                var actionType = "edit";

                $(edit_modal).find("#id").val(data.id);
                $(edit_modal).find("#name").val(data.name);
                $(edit_modal).find("#description").val(data.description);
                $(edit_modal).find("#actionType").val(actionType);

                $(edit_modal).modal('show');
            },
            error : function(e) {
                console.log("ERROR: ", e);
            },
            done : function(e) {
                console.log("DONE");
            }
        });
    }

    function marketEdit(id, modal){
        $.ajax({
            type : "GET",
            contentType : "application/json",
            url : "/market/edit-market/"+ id,
            dataType : 'json',
            timeout : 100000,
            success : function(data) {
                var edit_modal = "#"+modal;
                var actionType = "edit";

                $(edit_modal).find("#id").val(data.id);
                $(edit_modal).find("#name").val(data.name);
                $(edit_modal).find("#description").val(data.description);
                $(edit_modal).find("#actionType").val(actionType);

                $(edit_modal).modal('show');
            },
            error : function(e) {
                console.log("ERROR: ", e);
            },
            done : function(e) {
                console.log("DONE");
            }
        });
    }

    function stockEdit(id, modal){
        $.ajax({
            type : "GET",
            contentType : "application/json",
            url : "/market/edit-stock/"+ id,
            dataType : 'json',
            timeout : 100000,
            success : function(data) {
                var edit_modal = "#"+modal;

                $(edit_modal).find("#id").val(data.id);
                $(edit_modal).find("#name").val(data.name);
                $(edit_modal).find("#isinCode").val(data.isinCode);
                $(edit_modal).find("#ticker").val(data.ticker);

                $(edit_modal).modal('show');
            },
            error : function(e) {
                console.log("ERROR: ", e);
            },
            done : function(e) {
                console.log("DONE");
            }
        });
    }

    function bondEdit(id, modal){
        $.ajax({
            type : "GET",
            contentType : "application/json",
            url : "/market/edit-bond/"+ id,
            dataType : 'json',
            timeout : 100000,
            success : function(data) {
                var edit_modal = "#"+modal;
                var yearAjax = data.maturityDate.year;
                var monthAjax = data.maturityDate.monthValue;
                var dayAjax = data.maturityDate.dayOfMonth;
                var faDate = new Date(yearAjax+"-"+monthAjax+"-"+dayAjax);
                var mydDate = faDate.toISOString().slice(0,10);
                var aa = mydDate.slice(0,4);
                var jj = mydDate.slice(5,7);
                var mm = mydDate.slice(8,10);

                $(edit_modal).find("#id").val(data.id);
                $(edit_modal).find("#name").val(data.name);
                $(edit_modal).find("#isinCode").val(data.isinCode);
                $(edit_modal).find("#ticker").val(data.ticker);
                $(edit_modal).find("#principalAmount").val(data.principalAmount);
                $(edit_modal).find("#coupon").val(data.coupon);
                $(edit_modal).find("#maturityDate").val(jj+"-"+mm+"-"+aa);

                $(edit_modal).modal('show');
            },
            error : function(e) {
                console.log("ERROR: ", e);
            },
            done : function(e) {
                console.log("DONE");
            }
        });
    }

    function clientEdit(id, modal){
        $.ajax({
            type : "GET",
            contentType : "application/json",
            url : "/subscription/"+ id +"/editclient",
            dataType : 'json',
            timeout : 100000,
            success : function(data) {

                var yearAjax = data.birthdate.year;
                var monthAjax = data.birthdate.monthValue;
                var dayAjax = data.birthdate.dayOfMonth;
                var faDate = new Date(yearAjax+"-"+monthAjax+"-"+dayAjax);
                var birthdate = faDate.toISOString().slice(0,10);
                var edit_modal = "#"+modal;

                $(edit_modal).find("#id").val(data.id)
                $(edit_modal).find("#firstName").val(data.firstName)
                $(edit_modal).find("#lastName").val(data.lastName);
                $(edit_modal).find("#phoneNumber").val(data.phoneNumber);
                $(edit_modal).find("#email").val(data.email);
                $(edit_modal).find("#birthdate").val(birthdate);
                $(edit_modal).find("#fax").val(data.fax);
                $(edit_modal).find("#address").val(data.address);
                $(edit_modal).find("#companyName").val(data.companyName);
                $(edit_modal).find("#occupationCode").val(data.occupationCode);
                $(edit_modal).find("#personType").val(data.clientType);
                $(edit_modal).find("#country").val(data.country);
                $(edit_modal).find("#districtCode").val(data.districtCode);
                $(edit_modal).find("#idCardType").val(data.idCardType);
                $(edit_modal).find("#idCardNumber").val(data.idCardNumber);
                $(edit_modal).find("#gender").val(data.gender);


                $(edit_modal).modal('show');

            },
            error : function(e) {
                console.log("ERROR: ", e);
            },
            done : function(e) {
                console.log("DONE");
            }
        });
    }


    function clientDetail(id, modal){
        $.ajax({
            type : "GET",
            contentType : "application/json",
            url : "/subscription/"+ id +"/client",
            dataType : 'json',
            timeout : 100000,
            success : function(data) {

                var yearAjax = data.birthdate.year;
                var monthAjax = data.birthdate.monthValue;
                var dayAjax = data.birthdate.dayOfMonth;
                var faDate = new Date(yearAjax+"-"+monthAjax+"-"+dayAjax);
                var birthdate = faDate.toISOString().slice(0,10);
                var detail_modal = "#"+modal;

                $(detail_modal).find("#firstName").val(data.firstName)
                $(detail_modal).find("#lastName").val(data.lastName);
                $(detail_modal).find("#phoneNumber").val(data.phoneNumber);
                $(detail_modal).find("#email").val(data.email);
                $(detail_modal).find("#birthdate").val(birthdate);
                $(detail_modal).find("#fax").val(data.fax);
                $(detail_modal).find("#address").val(data.address);
                $(detail_modal).find("#occupationCode").val(data.occupationCode);
                $(detail_modal).find("#clientTypeType").val(data.clientTypeType);
                $(detail_modal).find("#countryCode").val(data.countryCode);
                $(detail_modal).find("#districtCode").val(data.districtCode);
                $(detail_modal).find("#idCardTypeId").val(data.idCardTypeId);
                $(detail_modal).find("#idCardNumber").val(data.idCardNumber);
                $(detail_modal).find("#genderName").val(data.genderName);
                $(detail_modal).find("#companyName").val(data.companyName);


                $(detail_modal).modal('show');

            },
            error : function(e) {
                console.log("ERROR: ", e);
            },
            done : function(e) {
                console.log("DONE");
            }
        });

    }

    function assetTransfertHistory(id){
        $.ajax({
            url: 'asset-transfert-list',
            type: 'get',
            data: 'id-trading-account=' + id,
            success: function (data) {
                console.log("SUCCESS: ", data);
                var assetTransfertHistory = data.rows;
                $("#assetTransfertId > tbody").html("");
                for (var i = 0; i < assetTransfertHistory.length; i++)
                {
                    var yearDate = assetTransfertHistory[i].historyDate.year;
                    var monthDate = assetTransfertHistory[i].historyDate.monthValue;
                    var dayDate = assetTransfertHistory[i].historyDate.dayOfMonth;
                    var history_Date = dayDate+"/"+monthDate+"/"+yearDate;
                    var trContent = "<tr><td>" + history_Date + "</td>";
                    trContent += "<td>" + assetTransfertHistory[i].assetName + "</td>";
                    trContent += "<td>" + assetTransfertHistory[i].description + "</td>";
                    if(assetTransfertHistory[i].assetTransfertSense == 'INPUT') {
                        trContent += "<td></td>";
                        trContent += "<td>" + assetTransfertHistory[i].quantity + "</td>";
                    } else {
                        trContent += "<td>" + assetTransfertHistory[i].quantity + "</td>";
                        trContent += "<td></td>";
                    }
                    trContent += "</tr>";

                    $('#listAssetTransfert').append(trContent);
                    trContent = null;
                }
                collateralHistoryList = null;
                $("#asset_transfert_list").modal('show');
            },
            error: function (e) {
                console.log("ERROR: ", e);
                alert("ERROR");
            },
            done: function (e) {
                console.log("DONE");
                alert("DONE");
            }
        });
    }

    function refreshAssetList(id){
        $.ajax({
            url: 'refresh-asset-list',
            type: 'get',
            data: 'sense=' + id,
            success: function (data) {
                console.log("SUCCESS: ", data);
                var assetclass = "asset-class-transfert";
                $('#tradingAccountAssetShortList option[value != "" ]').remove();
                for (var i = 0; i < data.length; i++) {
                    var opp = '<option value="'+data[i].financialAsset+'" title="'+data[i].assetClasss +'" class="asset-class-transfert" >'+data[i].assetName+'</option>';
                    $('#tradingAccountAssetShortList').append(opp);
                }
            },
            error: function (e) {
                console.log("ERROR: ", e);
            },
            done: function (e) {
                console.log("DONE");
            }
        });
    }

    function clientTradingAccount(id, modal){
        $.ajax({
            type : "GET",
            contentType : "application/json",
            url : "/trading-account/"+ id +"/edit",
            dataType : 'json',
            timeout : 100000,
            success : function(data) {

                var edit_modal = "#"+modal;
                if(id>0) {
                    var yearAjax = data.creationDateOfTradingAccount.year;
                    var monthAjax = data.creationDateOfTradingAccount.monthValue;
                    var dayAjax = data.creationDateOfTradingAccount.dayOfMonth;
                    var faDate = new Date(yearAjax+"-"+monthAjax+"-"+dayAjax);
                    var birthdate = faDate.toISOString().replace(/T.*/,'').split('-').reverse().join('/');
                    $(edit_modal).find("#creationDateOfTradingAccount").val(birthdate);
                } else {
                    $(edit_modal).find("#creationDateOfTradingAccount").val(null);
                    //$(edit_modal).find("#tradingAccountStatus").addClass("hidden");
                }

                $(edit_modal).find("#id").val(data.id)
                $(edit_modal).find("#description").val(data.description)
                $(edit_modal).find("#tradingAccountStatus").val(data.tradingAccountStatus)
                //alert("show status : "+data.showStatus);

                $(edit_modal).modal('show');

            },
            error : function(e) {
                console.log("ERROR: ", e);
            },
            done : function(e) {
                console.log("DONE");
            }
        });
    }

    function deleteTradingAccount(id, name, desc, modal){
        $.ajax({
            type : "GET",
            contentType : "application/json",
            url : "/trading-account/"+ id +"/deletable?account-number="+name+"&client-name="+desc,
            dataType : 'json',
            timeout : 100000,
            success : function(data) {

                $('#id-trading-account-number').html("");
                if (data == true) {
                    //alert("delete possible");
                    $('#suspendBtn').addClass("hidden");
                    $('#yesBtn').removeClass("hidden");

                    $('#text-suspend-account').addClass("hidden");
                    $('#text-confirm-delete').addClass("hidden");

                    var msg1 = "<h3> Voulez-vous réellement supprimer le compte numéro ";
                    var msg2 = "  du client ";
                    var msg3 = msg1 + name + msg2 + desc + "</h3>";
                    $('#id-trading-account-number').append(msg3);
                } else {
                    //alert("TA not deletable : suspend please");
                    $('#suspendBtn').removeClass("hidden");
                    $('#yesBtn').addClass("hidden");

                    $('#text-suspend-account').addClass("hidden");
                    $('#text-confirm-delete').addClass("hidden");

                    var msg3 = "<h3> Le compte " + name +
                        " est déjà relié à des transactions, la suppression est donc impossible </h3>";
                    $('#id-trading-account-number').append(msg3);
                }
                var edit_modal = "#"+modal;
                $(edit_modal).find("#id-trading-account").val(id);

                $(edit_modal).modal('show');

            },
            error : function(e) {
                console.log("ERROR: ", e);
            },
            done : function(e) {
                console.log("DONE");
            }
        });
    }

    $('input:radio[name=buyingback]').click(function() {

        var availableShares = Number($("#availableShares").text());
        var buyingbacktype = $(this).attr('id');

        if (buyingbacktype == 'buyingbackAll'){
            $("#buy_shares").find("#nbshares").prop('disabled', true);
            $("#buy_shares").find("#nbshares").val(availableShares);
            $("#buy_shares").find("#numberOfShares").val(availableShares);

        }
        else if (buyingbacktype == 'buyingbackPartial'){
            $("#buy_shares").find("#nbshares").val('');
            $("#buy_shares").find("#nbshares").prop('disabled', false);

        }
        updateCalculateAmountAJAX();
    });

    function updateCalculateAmountAJAX(){

        var price = parseFloat($("#buy_shares").find("#a_value").text());
        var mFees = parseFloat($("#buy_shares").find("#mFees").text());
        var commisionFees = parseFloat($("#buy_shares").find("#comissionAmount").val());

        if (!commisionFees)
            commisionFees = 0;

        var action = $("#action").val();

        if (action != 'buyingback')
            var quantity = Number($("#buy_shares").find("#numberOfShares").val());
        else
            var quantity = Number($("#buy_shares").find("#nbshares").val());
        var availableShares = Number($("#buy_shares").find("#availableShares").text());

        if(isNaN(quantity)){
            quantity =0;
        }
        if(isNaN(price)){
            price =0;
        }

        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: "/subscription/" + price + "/" + quantity +"/" + mFees + "/calculate",
            dataType: 'json',
            timeout: 100000,
            success: function (data) {

                var total = data[2]+commisionFees;

                $("#buy_shares").find("#amountValue").text(data[0]);
                $("#buy_shares").find("#totalAmountValue").text(total);
                $("#buy_shares").find("#assetValue").val(price);
                $("#buy_shares").find("#sharesAmount").val(data[0]);
                $("#buy_shares").find("#entryOrExitAmount").val(data[1]);
                $("#buy_shares").find("#totalAmount").val(total);
                $("#buy_shares").find("#comissionAmountValue").text(data[1]);

                if (action == 'buyingback')
                    $("#buy_shares").find("#exitFees").val(mFees);
                else
                    $("#buy_shares").find("#entryFees").val(mFees);


                if (action != 'buyingback')
                    if (data[3] < total){
                        $('#test_accountBalance_totalValue').val(-1);
                        $('#error').addClass( "alert alert-danger").html('Liquidité insuffisante.');
                        $("#buy_shares").find("#submitButton").prop('disabled', true);
                    }
                    else{
                        $('#test_accountBalance_totalValue').val(0);
                        $('#error').removeClass( "alert alert-danger").html('');
                        $("#buy_shares").find("#submitButton").prop('disabled', false);
                    }

                if (availableShares > 0)
                    if (quantity > availableShares){
                        $('#test_accountBalance_totalValue').val(-2);
                        $("#buy_shares").find('#error').addClass( "alert alert-danger").html('Depassement du nombre de parts.');
                        $("#buy_shares").find("#submitButton").prop('disabled', true);
                    }
                    else {
                        $('#test_accountBalance_totalValue').val(0);
                        $('#error').removeClass( "alert alert-danger").html('');
                        $("#buy_shares").find("#submitButton").prop('disabled', false);
                    }
            },
            error: function (e) {
                console.log("ERROR: ", e);
            },
            done: function (e) {
                console.log("DONE");
            }
        });
    }


    $('#add_subscriber input[name=clientCode]').autocomplete({
            serviceUrl: "/subscription/clients?clientCode=1",
            paramName: "term",
            delimiter: ",",
            onSelect: function(suggestion) {
                $("#add_subscriber input[name=clientId]").val(suggestion.id);
            },
            transformResult: function(response) {
                return {
                    //must convert json to javascript object before process
                    suggestions: $.map($.parseJSON(response), function(item) {
                        return { value: item.clientCode, id: item.id};
                    })

                };
            }

        }
    );

    $('#add_subscriber input[name=lastName]').autocomplete({
            serviceUrl: "/subscription/clients?clientCode=0",
            paramName: "term",
            delimiter: ",",
            onSelect: function(suggestion) {
                $("#add_subscriber input[name=clientId]").val(suggestion.id);
            },
            transformResult: function(response) {
                return {
                    //must convert json to javascript object before process
                    suggestions: $.map($.parseJSON(response), function(item) {
                        return { value: item.firstName+" "+item.lastName, id: item.id};
                    })

                };
            }

        }
    );

    $('#cash_deposit_step1 input[name=clientCode]').autocomplete({
            serviceUrl: "/subscription/clients?clientCode=1",
            paramName: "term",
            delimiter: ",",
            onSelect: function(suggestion) {
                $("#cash_deposit_step1 input[name=clientId]").val(suggestion.id);
            },
            transformResult: function(response) {
                return {
                    //must convert json to javascript object before process
                    suggestions: $.map($.parseJSON(response), function(item) {
                        return { value: item.clientCode, id: item.id};
                    })

                };
            }
        }
    );

    $('#cash_deposit_step1 input[name=lastName]').autocomplete({
            serviceUrl: "/subscription/clients?clientCode=0",
            paramName: "term",
            delimiter: ",",
            onSelect: function(suggestion) {
                $("#cash_deposit_step1 input[name=clientId]").val(suggestion.id);
            },
            transformResult: function(response) {
                return {
                    //must convert json to javascript object before process
                    suggestions: $.map($.parseJSON(response), function(item) {
                        return { value: item.firstName+" "+item.lastName, id: item.id};
                    })

                };
            }

        }
    );

    function updateMutualFundDateAmount(){
        var dateString = $("#datepicker").val();
        var mutualfundId = $("#mutualfundId").val();

        dateString = dateString.replace(new RegExp('/', 'g'), "-");

        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: "/subscription/"+dateString+"/"+mutualfundId+"/price",
            dataType: 'json',
            timeout: 100000,
            success: function (data) {
                $("#a_value").text(data);
                updateCalculateAmountAJAX();
            },
            error: function (e) {
                $("#assetValue").text(0);
                console.log("ERROR: ", e);
            },
            done: function (e) {
                console.log("DONE");
            }
        });

    }


    /*
     * ==============================  End Client Subscription functions
     */

    $('.modal-asset-transfert').css('width', '50%');
    $('.modal-asset-transfert2').css('width', '40%');
    $('.modal-ds').css('width', '80%');
    $('.modal-ds').css('max-height', '90%');
    $('.modal-ds').css('overflow-y', 'auto');

    $('.modal-add-order').css('width', '70%');

      $(window).load(function(){

             if($('#idIsDashboard').val() != null){
                createOrderDashboard();
                createCommissionDashboard();
             }

              if($('#idIsDetails').val() == 'true'){
                   d = new Date($('#deadlineEdit').val());
                   dt = d.getDate();
                   mn = d.getMonth();
                   mn++;
                   yy = d.getFullYear();
                   //alert(dt + '/' + mn + '/' + yy);
                  // document.getElementById("deadlineEdit").value = dt + "/" + mn + "/" + yy;

                  $('#detail_order').modal();
                  var selectOrderStatus = document.getElementById("selectOrderStatus");
                  if(selectOrderStatus.value != 'IN_PROGRESS' && selectOrderStatus.value != 'VALIDATED'){
                       $('#linkExecuteOrder').addClass('hidden');
                  }
                  if(selectOrderStatus.value == 'IN_PROGRESS' || selectOrderStatus.value == 'EXECUTED'){
                     $('#actualStatus').addClass('hidden');
                  }
                  var selectOrderParameter = document.getElementById("selectOrderParameter");
                  if(selectOrderParameter.value == null || selectOrderParameter.value == ''){
                       $('#divOrderParameter').addClass('hidden');
                   };

                   var actualStatus = $('#orderEditActualStatus').attr('data');
                   if(actualStatus == 'EXECUTED'){
                      $('#btnEditOrder').addClass('hidden');
                   }
              }

              if($('#idIsExecuteOrder').val() == 'true'){
                    $('#execute_order').modal();
                    //$('#orderIdInExecOrder').val() = $('#orderViewIdInExecOrder').val();
                    document.getElementById("orderIdInExecOrder").value = $('#orderViewIdInExecOrder').val();
                    document.getElementById("addedValueInExecOrder").value = $('#financialAssetIdInExecOrder').val();
               }
              //alert('passOrder : '+$('#idIsPassOrder').val());
               if($('#idIsPassOrder').val() == 'true'){
                     $('#add_order_buy_step2').modal();

                     var x = $('#declaredQuantityInPassOrder');
                                 var y = $('#quantityInPassOrder');
                                 $('#msgVerifyDeclaredQuantity').addClass('hidden');
                                 $('#msgVerifyQuantity').addClass('hidden');
                                 $('#msgVerifyQuantity2').addClass('hidden');
                            if(x.val() != null && y.val() != null){
                                  var valX = parseInt(x.val());
                                  var valY = parseInt(y.val());

                                  if((valX > valY)){
                                     $('#msgVerifyDeclaredQuantity').removeClass('hidden');
                                      $('#msgVerifyQuantity2').removeClass('hidden');
                                  }
                            }
                     if($('#hasErrorMinQuantity').val() == 'false'){
                        $('#minQuantityToCreateOrder').removeClass('hidden');
                     }
               }

          if($('#statusAddTradingAccount').val() == 'true') {
              $('#status-tradingaccount-form').addClass("hidden");
              $('#title-new-trading-account').removeClass("hidden");
              $('#title-update-trading-account').addClass("hidden");
          } else{
              $('#title-new-trading-account').addClass("hidden");
          }

          var tabToShow = $('#tabToShow').val();
          if(tabToShow != null) {
              var idTab = "#"+tabToShow;
              $(idTab).click();
          }
          var disableBankInfo = $('#disableBankInfo').val();
          if(disableBankInfo == 'false') {
              $('#non').click();
          }
          var clickSelectCountry = $('#clickSelectCountry').val();
          var elmt = $('.select-country[value='+clickSelectCountry+']');
          elmt.click();
          var clickSelectsense = $('#clickSelectSense').val();
          var elmt = $('.select-sense[value='+clickSelectsense+']');
          elmt.click();
          $('#assetTransfertSense').click();

      // Custody fees modal
          if($('#idIsCustodyOperation').val() == 'true'){
            $('#custody_operation_list').modal();
          }

          if($('#showAssetTransfertHistory').val() == 'true'){
              $('#asset-transfert').click();
          }

          if($('#idIsAddCustodyFeesOperation').val() == 'true'){
              $('#add_custody_fees_operation').modal();
          }

       // Dividend payment modal
          if($('#idIsDividendPaymentOperation').val() == 'true'){
             $('#dividend_payment_list').modal();
             if($('#selectFiancialAssetInDividendForm').val() == null){
                $('#btnSubmitDividendPaymentForm').addClass('hidden');
             }
          }


          if($('#idCashDeposit').val() == 'true'){
              $('#cash_deposit_list').modal();
          }

          if($('#idIsAddDividendPayment').val() == 'true'){
            $('#add_dividend_payment').modal();
          }

          // Settings accounts
          if($('#idIsDetailAccount').val() == 'true'){
             $('#edit_account').modal();
          }
          if($('#idIsAddAccount').val() == 'true'){
            $('#add_account').modal();
          }
          if ($('#idIsAddAccountType').val() == 'true'){
            $('#add_account_type').modal();
          }
          if ($('#idIsEditAccountType').val() == 'true'){
               $('#edit_account_type').modal();
          }

          //add iris user admin
          if($('#idErrorFound').val() == 'true'){
              $('#new_user').modal();

          }

      });

    // Size modal order details
    $('.modal-order').css('width', '70%');

// Select AssetClass during (Order modification)
     $('#selectAssetClassEditOrder').change(function(){

          $('#changeOrderStatus input[type=hidden]').remove();
                   var marketId = $('#selectMarketEditOrder').val();
                   var assetClass = $('#selectAssetClassEditOrder').val();
                   var financialAssetId = $('.financialAssetIdEditOrder').val();
                   var orderSense = $('.orderSenseEditOrder').val();
                   selectionFinancialAssetEditOrder(marketId, assetClass, financialAssetId, orderSense);

     });

// Select market during order modification
     $('#selectMarketEditOrder').change(function(){
     $('#changeOrderStatus input[type=hidden]').remove();
         var marketId = $('#selectMarketEditOrder').val();
         var assetClass = $('#selectAssetClassEditOrder').val();
         var financialAssetId = $('.financialAssetIdEditOrder').val();
         //alert(financialAssetId);
         var orderSense = $('.orderSenseEditOrder').val();
         //alert(orderSense);
         selectionFinancialAssetEditOrder(marketId, assetClass, financialAssetId, orderSense);
     });

// Select financialAsset during order modification
     $('#selectFinancialAssets').change(function(){
         $('#changeOrderStatus input[type=hidden]').remove();
     });

     $('#orderTypeToEdit').change(function(){
         if($('#orderTypeToEdit').val() == 'MARKET_ORDER'){
             $('#limitPrice1').addClass('hidden');
             $('#orderEditLimitPrice1').val(0);
            // alert('MARKET_ORDER');
         }else{
             $('#limitPrice1').removeClass('hidden');
         }
          $('#minQuantity').addClass('hidden');
           // Order parameter
                  var selectOrderTypeToEdit = document.getElementById("orderTypeToEdit");
                           if(selectOrderTypeToEdit.value == 'MARKET_ORDER'){
                             $('#selectOrderParameter option[id=allOrNothing]').remove();
                             $('#selectOrderParameter option[id=inBestLimit]').remove();
                           }else
                              if(selectOrderTypeToEdit.value == 'LIMIT_ORDER'){
                                  $('#selectOrderParameter option[id=allOrNothing]').remove();
                                  $('#selectOrderParameter option[id=inBestLimit]').remove();
                                  $('#selectOrderParameter').append('<option value="ALL_OR_NOTHING" id="allOrNothing">Tout ou Rien</option>');
                              }else{
                                 $('#selectOrderParameter option[id=allOrNothing]').remove();
                                 $('#selectOrderParameter option[id=inBestLimit]').remove();
                                 $('#selectOrderParameter').append('<option value="ALL_OR_NOTHING" id="allOrNothing">Tout ou Rien</option>');
                                 $('#selectOrderParameter').append('<option value="IN_MINIMAL_QUANTITY" id="inBestLimit">A Quantité minimale</option>');
                              }

     });

     $('#btnEditOrder').click(function(){
           $('#detail_order .edit').removeAttr('disabled');
           $('#divValidEditOrder').removeClass('hidden');
           $('#rowToHide1').addClass('hidden');
           $('#rowToHide2').addClass('hidden');
           $('#btnsModalDetailsOrder').addClass('hidden');
           $('#actualStatus').addClass('hide');
           $('#divSelectMarketList').removeClass('hidden');

           var selectOrderTypeToEdit = document.getElementById("orderTypeToEdit");
           $('#divOrderParameter').removeClass('hidden');
           if(selectOrderTypeToEdit.value == 'MARKET_ORDER'){
              $('#selectOrderParameter option[id=allOrNothing]').remove();
              $('#selectOrderParameter option[id=inBestLimit]').remove();
           }else
           if(selectOrderTypeToEdit.value == 'LIMIT_ORDER'){
             $('#selectOrderParameter option[id=inBestLimit]').remove();
            }
     });

     $('#selectOrderParameter').change(function(){
         var selectOrderParameter = document.getElementById("selectOrderParameter");
         if(selectOrderParameter.value != 'IN_MINIMAL_QUANTITY'){
            $('#minQuantity').addClass('hidden');
         }else{
            $('#minQuantity').removeClass('hidden');
         }
     });

     // Change orderStatus
     $('#actualStatus').click(function(){
         $('#divActualStatus').addClass('hidden');
         $('#changeOrderStatus').removeClass('hidden');
         $('#btnsModalDetailsOrder').addClass('hidden');

         document.getElementById("isChangeOrderStatus").value = "true";
     });
     $('#deadlineEdit').click(function(){
         document.getElementById("isChangeOrderStatus").value = "false";
         //alert('Datepicker');
     });

     $('#btnCancelExecuteOrder').click(function(){
          $('#detail_order').modal();
          $('#actualStatus').addClass('hidden');
     });

// Lignes cliquables (liste des ordres)
     $("#tbodyOrders tr").click(function() {
             var value = $(this).attr('id');
             if(!isNaN(value)) {
                location.href = "/order/" + value+"/details";
             }
         });

      // Controle sur la quantité dévoilée pendant la création d'un odre declaredQuantity <= quantity
         $('#declaredQuantityInPassOrder').keyup(function(){
            //alert('Ok !');
            var x = $('#declaredQuantityInPassOrder');
            var y = $('#quantityInPassOrder');
            $('#msgVerifyDeclaredQuantity').addClass('hidden');
            $('#msgVerifyQuantity').addClass('hidden');
            $('#msgVerifyQuantity2').addClass('hidden');

             var valX = parseInt(x.val());
             var valY = parseInt(y.val());

             if(y.val() == null || y.val() == ''){
                 x.val(null);
                 $('#msgVerifyQuantity').removeClass('hidden');
                 y.focus();
             }else
                  if((valX > valY)){
                     $('#msgVerifyDeclaredQuantity').removeClass('hidden');
                     $('#msgVerifyQuantity2').removeClass('hidden');
                     //x.val(Math.round(x.val()/10));
                  }
                  else
                    if(x.val() == 0){
                       x.val(null);
                    }

         });

         $('#quantityInPassOrder').keyup(function(){
             $('#msgVerifyQuantity').addClass('hidden');
             $('#msgVerifyQuantity2').addClass('hidden');
         });

        // Show detail stock
        $('.linkShowDetailStock').click(function(){
           var id = $(this).attr('data');
           $('#stock_details').modal();
           findDetailStock(id);
        });

        // Show detail stock
                $('.linkShowDetailBond').click(function(){
                   var id = $(this).attr('data');
                   $('#bond_details').modal();
                   findDetailBond(id);
                });

        // On submit form execute order
        $('#btnSubmitExecuteOrder').click(function(){
           var quantity = $('#quantityExecuteOrder').val();
           var price = $('#priceExecuteOrder').val();
           var date = $('#portfolioHistoryDate').val();
           var tauxSgi = $('#tauxSgiExecuteOrder').val();
           var tauxDcbr = $('#tauxDcbrExecuteOrder').val();
           var tauxBrvm = $('#tauxBrvmExecuteOrder').val();
           var tax = $('#taxExecuteOrder').val();

           if(quantity != '' && price != '' && date != '' && tauxSgi != '' && tauxDcbr != '' && tauxBrvm != '' && tax != ''){
              $('#execute_order').modal('hide');
              $('#waiting_animation').modal();
              $body = $("body");

              $(document).on({
                ajaxStart: function() { $body.addClass("loading");    },
                 ajaxStop: function() { $body.removeClass("loading"); }
              });
            }

        });

      // Execution order: quantity key up
        $('#quantityExecuteOrder').keyup(function(){
            var quantity = $('#quantityExecuteOrder').val();
            var availableQuantity = $('#availableQuantityExecuteOrder').val();
            var quantityS = 'q'+quantity;
            var availableQuantityS = 'q'+availableQuantity;
            if(quantityS.length <3 && quantity == 0){
               $('#quantityExecuteOrder').val('');
               $('#msgInvalidQuantityExecuteOrder').addClass('hidden');
               $('#btnSubmitExecuteOrder').removeClassClass('hidden');
            }else
            if(availableQuantityS.length == quantityS.length){
              if(quantity > availableQuantity){
                 $('#msgInvalidQuantityExecuteOrder').removeClass('hidden');
                 $('#btnSubmitExecuteOrder').addClass('hidden');
              }else{
                 $('#msgInvalidQuantityExecuteOrder').addClass('hidden');
                 $('#btnSubmitExecuteOrder').removeClass('hidden');
              }
            }else
               if(quantityS.length > availableQuantityS.length){
               $('#msgInvalidQuantityExecuteOrder').removeClass('hidden');
               $('#btnSubmitExecuteOrder').addClass('hidden');
            }else{
               $('#msgInvalidQuantityExecuteOrder').addClass('hidden');
               $('#btnSubmitExecuteOrder').removeClass('hidden');
            }

        });

// Pass order: on keyup quantity
        $('#quantityInPassOrder').keyup(function(){
            var orderSense = $('.orderSensePassOrder').val();

            var quantity = $('#quantityInPassOrder').val();
            var portfolioQuantity = $('.portfolioQuantityPassOrder').val();
            var q = 'q'+quantity;
            var p = 'q'+portfolioQuantity;

            if (q.length <3 && quantity == 0){
               $('#quantityInPassOrder').val('');
            }else
            if(orderSense == 'SELL'){
               if(p.length == q.length){
                  if(quantity > portfolioQuantity){
                    $('#msgInvalidQuantityPassOrder').removeClass('hidden');
                    $('#btnSubmitPassOrder').addClass('hidden');
                  }else{
                     $('#msgInvalidQuantityPassOrder').addClass('hidden');
                     $('#btnSubmitPassOrder').removeClass('hidden');
                  }
               }else
                 if(q.length > p.length){
                  $('#msgInvalidQuantityPassOrder').removeClass('hidden');
                  $('#btnSubmitPassOrder').addClass('hidden');
               }else{
                  $('#msgInvalidQuantityPassOrder').addClass('hidden');
                  $('#btnSubmitPassOrder').removeClass('hidden');
               }
            }
        });


        $('.popover').css('width', '600px');

        $(".tableOrderExecutionHistory").mouseover(function() {
                     var value = $(this).attr('id');
                     var $tr = $(this);
                     $('.tableOrderExecutionHistory').popover('destroy');

                                 $.ajax({
                                     type: "GET",
                                     contentType: "text/html",
                                     url: '/info-order-execution/'+value,
                                     dataType: 'html',
                                     success: function(html) {
                                         $tr.popover({
                                             title: '<div style="width: 400px;">Informations</div>',
                                             content: html,
                                             placement: 'top',
                                             html: true,
                                             trigger: 'hover'}).popover('show');
                                     },
                                      error: function (e) {
                                         //console.log("ERROR: ", e);
                                     }
                                 });
                 });

                 $(".dropdown-toggle").dropdown();

                $('#commissionRationInCustody').keyup(function(){
                     var waletValue = $('#waletValueInCustody').val();
                     var commission = $('#commissionRationInCustody').val();
                     var amount = (waletValue * commission) / 100;
                      $('#operationToPerceiveInCustody2').val(amount);
                      document.getElementById("operationToPerceiveInCustody").value = amount;
                });

// Dividend Payment form
                $('#selectFiancialAssetInDividendForm').change(function(){
                    var tradingAccountId = $('#tradingAccountInDividendForm').val();
                    var financialAssetId = $('#selectFiancialAssetInDividendForm').val();
                    getQuantityPortfolioDetailInDividendForm(financialAssetId, tradingAccountId);
                });

      // Settings accounts
      $("#tbodyAccounts tr").click(function() {
                   var value = $(this).attr('data');
                   if(!isNaN(value)) {
                      location.href = "/settings/account/" + value;
                   }
               });
      // new account
      $('#btnNewAccount').click(function(){
          $('.new-account').val('');
          var value = $('#selectAccountTypeInAddAccount').val();
          $('#accountNumberInAddAccount').val(value);
      });
      // Onchange accounType
      $('#selectAccountTypeInAddAccount').change(function(){
          var value = $('#selectAccountTypeInAddAccount').val();
          $('#accountNumberInAddAccount').val(value);
      });

      // OnkeyUp accountNumber
      $('#accountNumberInAddAccount').keyup(function(){
      //alert('eedd');
           var accountTypeAccountNumber = $('#selectAccountTypeInAddAccount').val();
           var accountNumber = $('#accountNumberInAddAccount').val();
           var x = accountTypeAccountNumber+'1';
           var y = accountNumber+'1';
           if(y.length >= x.length){
              if(y.substring(0,x.length - 1) != accountTypeAccountNumber){
                $('#accountNumberInAddAccount').val(accountTypeAccountNumber);
              }
           }
      });

   // AccountType
   $('.btnEditAccountType').click(function(){
      var accountNumber = $(this).closest("tr").attr('data');
      //alert('ok : '+accountNumber);
      if(!isNaN(accountNumber)) {
          location.href = "/show/account-type/" +accountNumber;
      }

   });

   $('.btnDeleteAccountType').click(function(){
         var accountNumber = $(this).closest("tr").attr('data');
         if(!isNaN(accountNumber)) {
             $('#delete_account_type').modal();
             getAccountTypeToDelete(accountNumber);
         }

    });

   $('#confirmDeleteAccountType').click(function(){
      var accountNumber = $('#idAccountNumberToDeleteAccountType').val();
      confirmDeleteAccountType(accountNumber);
   });

});

/*
 * ==============================  Client BankAccount functions
 */


function defaultBankAccount(oldDefaultAccount,newDefaultAccount,clientBankAccountDefault) {

    $.ajax({
        type : "GET",
        contentType : "application/json",
        url : "/client/bankaccount/"+ oldDefaultAccount +"/defaultbankaccount/"+newDefaultAccount+"/"+clientBankAccountDefault,
        dataType : 'json',
        timeout : 100000,


    });

}

//*******function getCollateralHistoryByCollateralId *****

function getCollateralHistoriesByCollateralId(id) {
    $.ajax({
        url: 'collateralHistory/get',
        type: 'get',
        data: 'idCollateral=' + id,
        success: function (data) {
            console.log("SUCCESS: ", data);
            var collateralHistoryList = data.collateralHistoryRows;
            $("#table_collateral_history > tbody").html("");
            for (var i = 0; i < collateralHistoryList.length; i++)
            {
                var yearDate = collateralHistoryList[i].dateCollateral.year;
                var monthDate = collateralHistoryList[i].dateCollateral.monthValue;
                var dayDate = collateralHistoryList[i].dateCollateral.dayOfMonth;
                var dateCollateral = dayDate+"-"+monthDate+"-"+yearDate;
                var valeur = collateralHistoryList[i].sharesPrice * collateralHistoryList[i].numbersOfShares;
                var trContent = "<tr><td>" + dateCollateral + "</td>";
                trContent += "<td>" + collateralHistoryList[i].numbersOfShares + "</td>";
                trContent += "<td>" + collateralHistoryList[i].sharesPrice + "</td>";
                trContent += "<td>" + valeur + "</td>";
                trContent += "<td>" + collateralHistoryList[i].movementType + "</td>";
                trContent += "</tr>";

                $('#listCollateralHistory').append(trContent);
                trContent = null;
            }
            collateralHistoryList = null;
            $("#collateral_history").modal('show');
        },
        error: function (e) {
            console.log("ERROR: ", e);
        },
        done: function (e) {
            console.log("DONE");
        }
    });
}





function displayClientBankAccount(id){

    $.ajax({
        url: '/client/bankaccount/' + id + '/details',
        method: 'GET',
        datatype:'JSON'
    }).success(function(response) {
        // Populate the form fields with the accountBank data
        $('#userForm').find('[name="id"]').val(response.id);
        $('#userForm').find('[name="bankCode"]').val(response.bankCode);
        $('#userForm').find('[name="branchCode"]').val(response.branchCode);
        $('#userForm').find('[name="accountNumber"]').val(response.accountNumber);
        $('#userForm').find('[name="ribKey"]').val(response.ribKey);
        $('#userForm').find('[name="iban"]').val(response.iban);
    });
}
/*
 * ==============================  End Client BankAccount functions
 */

/*
 * ==============================  Order functions
 */

function selectionFinancialAsset(assetClass,market, tradingAccount, orderSense){

    $.ajax({
        type: "GET",
        contentType: "application/json",
        url: "/" + market + "/asset-class/" + assetClass + "/" + tradingAccount + "/" + orderSense,
        dataType: 'json',
        timeout: 100000,
        success: function (data) {
            console.log("SUCCESS: ", data);

            var select = $("#financialAsset");

            $.each(data, function (index, array) {
                $('#financialAsset option[class=financialSelector]').remove();

            });
            $.each(data, function (index, array) {
                select.append('<option value="' + array.id + '" class="financialSelector">' + array.name + '</option>');
            });

            if(! $.trim(data)){
                $('#msgFinancialAssetPassOrder').removeClass('hidden');
                $('#btnSubmitPassOrder').addClass('hidden');
            }else{
               $('#msgFinancialAssetPassOrder').addClass('hidden');
               $('#btnSubmitPassOrder').removeClass('hidden');
            }

        },
        error: function (e) {
            console.log("ERROR: ", e);
        },
        done: function (e) {
            console.log("DONE");
        }
    });

/*
   if (assetClass == 'BOND'){
       $('#financialAssetStock').hide();
       $('#financialAssetBond').show();
   }

    if (assetClass == 'STOCK') {
        $('#financialAssetStock').show();
        $('#financialAssetBond').hide();
    }

*/

}

function selectionFinancialAssetEditOrder(marketId, assetClass, tradingAccountId, orderSense){

        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: "/"+ marketId + "/select/financial-asset/" + assetClass + "/" + tradingAccountId + "/" + orderSense,
            dataType: 'json',
            timeout: 100000,
            success: function (data) {
                console.log("SUCCESS: ", data);
                var select = $("#selectFinancialAssets");

                $.each(data, function (index, array) {
                    $('#selectFinancialAssets option[class=financialOrderSelector]').remove();
                });
                $.each(data, function (index, array) {
                    select.append('<option value="' + array.id + '" class="financialOrderSelector">' + array.name + '</option>');
                });

                if(! $.trim(data)){
                    $('.financialOrderSelector').addClass('hidden');
                    $('#selectFinancialAssets').val('');
                    $('#msgFinancialAssetEditOrder').removeClass('hidden');
                    $('#btnValidEditOrder').addClass('hidden');
                 }else{
                     $('#msgFinancialAssetEditOrder').addClass('hidden');
                     $('#btnValidEditOrder').removeClass('hidden');
                }

            },
            error: function (e) {
                console.log("ERROR: ", e);
            },
            done: function (e) {
                console.log("DONE");
            }
        });

}

function findDetailStock(id){
   Date.prototype.yyyymmdd = function() {
     var mm = this.getMonth() + 1; // getMonth() is zero-based
     var dd = this.getDate();

     return [this.getFullYear()+'/', !mm[1] && '', mm+'/', !dd[1] && '', dd].join(''); // padding
   };

  $.ajax({
              type: "GET",
              contentType: "application/json",
              url: "/show/stock/"+ id,
              dataType: 'json',
              timeout: 100000,
              success: function (data) {
                  $('#stockViewName').val(data.name);
                  $('#stockViewIsinCode').val(data.isinCode);
                  $('#stockViewTicker').val(data.ticker);
                  $('#stockViewBenchmarkIndex').val(data.benchmarkIndex);
                  $('#stockViewPrice').val(data.price);
                  var dat = new Date(data.lastQuotationDate);
                  $('#stockViewLastQuotationDate').val(dat.yyyymmdd());
              },
              error: function (e) {
                  alert('Error findShowDetailStock');
              }
          });

}

function findDetailBond(id){
   Date.prototype.yyyymmdd = function() {
     var mm = this.getMonth() + 1; // getMonth() is zero-based
     var dd = this.getDate();

     return [this.getFullYear()+'/', !mm[1] && '', mm+'/', !dd[1] && '', dd].join(''); // padding
   };

  $.ajax({
              type: "GET",
              contentType: "application/json",
              url: "/show/bond/"+ id,
              dataType: 'json',
              timeout: 100000,
              success: function (data) {
                  $('#bondViewName').val(data.name);
                  $('#bondViewIsinCode').val(data.isinCode);
                  $('#bondViewTicker').val(data.ticker);
                  $('#bondViewPrincipalAmount').val(data.principalAmount);
                  $('#bondViewMarketPrice').val(data.marketPrice);
                  $('#bondViewCoupon').val(data.coupon);
                  var dat = new Date(data.lastQuotationDate);
                  $('#bondViewLastQuotationDate').val(dat.yyyymmdd());
                  var dat2 = new Date(data.maturityDate);
                  $('#bondViewMaturityDate').val(dat2.yyyymmdd());
              },
              error: function (e) {
                  alert('Error findShowDetailBond');
              }
          });

}



function getQuantityPortfolioDetailInDividendForm(financialAssetId, tradingAccountId){

        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: "/dividend/select/financial-asset/" + financialAssetId + "/" + tradingAccountId,
            dataType: 'json',
            timeout: 100000,
            success: function (data) {
                console.log("SUCCESS: ", data);
                $('#quantiteInDividendForm').val(data);
                $('#quantiteInDividendForm2').val(data);

                if(! $.trim(data)){
                    $('#quantiteInDividendForm2').val('');
                    $('#quantiteInDividendForm').val('');
                    $('#btnSubmitDividendPaymentForm').addClass('hidden');
                 }else{
                     $('#btnSubmitDividendPaymentForm').removeClass('hidden');
                }

            },
            error: function (e) {
                console.log("ERROR: ", e);
            },
            done: function (e) {
                console.log("DONE");
            }
        });

}


/*
 * ==============================  End Order  functions
 */


/*
 * ============================== admin user  functions
 */


function adminUserEdit(id, modal){
    $.ajax({
        type : "GET",
        contentType : "application/json",
        url : "/edit/admin/user/"+ id ,
        dataType : 'json',
        timeout : 100000,
        success : function(data) {

            var yearAjax = data.creationDate.year;
            var monthAjax = data.creationDate.monthValue;
            var dayAjax = data.creationDate.dayOfMonth;
            var faDate = new Date(yearAjax+"-"+monthAjax+"-"+dayAjax);
            var creationDate = faDate.toISOString().slice(0,10);
            var edit_modal = "#"+modal;

            $(edit_modal).find("#login").val(data.login)
            $(edit_modal).find("#id").val(id)
            $(edit_modal).find("#creationDate").val(creationDate);


            $(edit_modal).modal('show');

        },
        error : function(e) {
            console.log("ERROR: ", e);
        },
        done : function(e) {
            console.log("DONE");
        }
    });

}

function getAccountTypeToDelete(accountNumber){
  $.ajax({
          type : "GET",
          contentType : "application/json",
          url : "/delete/get/account-type/"+ accountNumber ,
          dataType : 'json',
          timeout : 100000,
          success : function(data) {
              $('#accountNumberDeleteAccountType').text(accountNumber);
              $('#typeDeleteAccountType').text(data.type);
              $('#idAccountNumberToDeleteAccountType').val(accountNumber);
          },
          error : function(e) {
              console.log("ERROR: ", e);
          },
          done : function(e) {
              console.log("DONE");
          }
      });
}

function confirmDeleteAccountType(accountNumber){
  $.ajax({
          type : "GET",
          contentType : "application/json",
          url : "/confirm/delete/account-type/"+ accountNumber ,
          dataType : 'json',
          timeout : 100000,
          success : function(data) {
             location.href = "/accounts-type";
          },
          error : function(e) {
              console.log("ERROR: ", e);
          },
          done : function(e) {
              console.log("DONE");
          }
      });
}


/*
 * ==============================  End admin user functions
 */


