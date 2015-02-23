<div class='clearfix container'>
  <div class='content row'>
    <div class='tabbable tabs'>
      <ul class='nav nav-tabs' id='look_myTab'>
        <li class='active'>
          <a href='#whats_hot' data-toggle='tab'>
            WHAT’S HOT?
          </a>
        </li>
        <li>
          <a href='#designers' data-toggle='tab'>
            DESIGNERS
          </a>
        </li>
        <li>
          <a href='#featured' data-toggle='tab'>
            FEATURED
          </a>
        </li>
        <li>
          <a href='#latest' data-toggle='tab'>
            LATEST
          </a>
        </li>
        <li class='look_whirling_nav'>
          <a id='look_item_next' href='#look_item_next'>
            <span class='glyphicon glyphicon-chevron-right'></span>
          </a>
        </li>
        <li class='look_whirling_nav'>
          <a id='look_item_prev' href='#look_item_prev'>
            <span class='glyphicon glyphicon-chevron-left'></span>
          </a>
        </li>
      </ul>
      <div class='tab-content'>
        <div class='tab-pane active' id='whats_hot'>
          <?php include "_/views/layouts/snippet_items_whats_hot.php" ?>
        </div>
        <div class='tab-pane ' id='designers'>
          <?php include "_/views/layouts/snippet_items_designers.php" ?>
        </div>
        <div class='tab-pane ' id='featured'>
          <?php include "_/views/layouts/snippet_items_featured.php" ?>
        </div>
        <div class='tab-pane ' id='latest'>
          <?php include "_/views/layouts/snippet_items_latest.php" ?>
        </div>
      </div>
    </div>
  </div>
</div>