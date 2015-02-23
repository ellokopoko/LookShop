(function() {
  $(function() {
    var goods_whats_hot, goods_whats_hot_html, sort_next, sort_prev, whirling;
    $("#slider-range").slider({
      range: true,
      min: 18000,
      max: 50000,
      values: [22650, 31643],
      slide: function(event, ui) {
        return $("#amount").val(ui.values[0] + "р. - " + ui.values[1] + "р.");
      }
    });
    $("#amount").val($("#slider-range").slider("values", 0) + "р. - " + $("#slider-range").slider("values", 1) + "р.");
    whirling = $('#look_tabs_items .look_whirling');
    goods_whats_hot = $("#look_tabs_items #whats_hot .look_cell_with_goods");
    goods_whats_hot_html = [];
    goods_whats_hot.each(function() {
      goods_whats_hot_html.push($(this).html());
      return console.log($(this).html());
    });
    sort_next = function() {
      whirling.animate({
        left: "-300px"
      }, {
        duration: 200,
        complete: function() {
          whirling.css({
            'left': '0'
          });
          return goods_whats_hot.each(function() {
            var index;
            index = +$(this).attr("data-product-index");
            $(this).attr({
              "data-product-index": (index + 1) > (goods_whats_hot.length - 1) ? '0' : index + 1
            });
            return $(this).html(goods_whats_hot_html[$(this).attr("data-product-index")]);
          });
        }
      });
      return false;
    };
    sort_prev = function() {
      whirling.animate({
        left: "300px"
      }, {
        duration: 200,
        complete: function() {
          whirling.css({
            'left': '0'
          });
          return goods_whats_hot.each(function() {
            var index;
            index = +$(this).attr("data-product-index");
            $(this).attr({
              "data-product-index": (index - 1) < 0 ? goods_whats_hot.length - 1 : index - 1
            });
            return $(this).html(goods_whats_hot_html[$(this).attr("data-product-index")]);
          });
        }
      });
      return false;
    };
    $('#look_item_next').on('click', sort_next);
    return $('#look_item_prev').on('click', sort_prev);
  });

}).call(this);
