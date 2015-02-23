$ ->
    # slide price
    $("#slider-range").slider(
        range: true,
        min: 18000,
        max: 50000,
        values: [ 22650, 31643 ],
        slide: (event, ui)->
           $("#amount").val(ui.values[ 0 ] + "р. - " + ui.values[1] +  "р.") 
    )
    
    $( "#amount" ).val( $( "#slider-range" ).slider( "values", 0 ) + "р. - " + $( "#slider-range" ).slider( "values", 1 ) +  "р." )
    
    
    # Прокрутка товаров во вкладках
    whirling = $('#look_tabs_items .look_whirling')
    
    goods_whats_hot = $("#look_tabs_items #whats_hot .look_cell_with_goods")
    goods_whats_hot_html = []
    goods_whats_hot.each(->
        goods_whats_hot_html.push($(@).html())
        console.log $(@).html()
    )
    
    
    # ------------------------- sort_next -----------------------------
    sort_next = ->
        whirling.animate(
            {left: "-300px"},
            duration: 200,
            complete: ->
                whirling.css('left': '0')
                goods_whats_hot.each(->
                    
                    index = +$(@).attr("data-product-index")
                    
                    $(@).attr(
                        "data-product-index": if (index + 1) > (goods_whats_hot.length - 1) then '0' else (index + 1)
                    )
                    $(@).html(goods_whats_hot_html[$(@).attr("data-product-index")])
                )
        )
        
        false
    # ------------------------- sort_next END -------------------------

    # ------------------------- sort_prev -----------------------------
    sort_prev = ->
        whirling.animate(
            {left: "300px"},
            duration: 200,
            complete: ->
                whirling.css('left': '0')
                goods_whats_hot.each(->
                    
                    index = +$(@).attr("data-product-index")
                    
                    $(@).attr(
                        "data-product-index": if (index - 1) < 0 then (goods_whats_hot.length - 1) else (index - 1)
                    )
                    $(@).html(goods_whats_hot_html[$(@).attr("data-product-index")])
                )
        )
        
        false
    # ------------------------- sort_prev END -------------------------
    
    $('#look_item_next').on('click', sort_next)
    $('#look_item_prev').on('click', sort_prev)
    
    