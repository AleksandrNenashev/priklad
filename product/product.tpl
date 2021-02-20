<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-8'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <?php if ($thumb || $images) { ?>
          <ul class="thumbnails">
            <?php if ($thumb) { ?>
            <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
            <?php if ($attribute_groups) { ?>
            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
            <?php } ?>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
            <?php if ($attribute_groups) { ?>
            <div class="tab-pane" id="tab-specification">
              <table class="table table-bordered">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <thead>
                  <tr>
                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php } ?>
              </table>
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
              <form class="form-horizontal" id="form-review">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <?php echo $captcha; ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>
          </div>
        </div>
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-4'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <div class="btn-group">
            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart"></i></button>
            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-exchange"></i></button>
          </div>
          <h1><?php echo $heading_title; ?></h1>
          <ul class="list-unstyled">
            <?php if ($manufacturer) { ?>
            <li><?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
            <?php } ?>
            <li><?php echo $text_model; ?> <?php echo $model; ?></li>
            <?php if ($reward) { ?>
            <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
            <?php } ?>
            <li><?php echo $text_stock; ?> <?php echo $stock; ?></li>
          </ul>
          <?php if ($price) { ?>
          <ul class="list-unstyled">
            <?php if (!$special) { ?>
            <li>
              <h2><?php echo $price; ?></h2>
            </li>
            <?php } else { ?>
            <li><span style="text-decoration: line-through;"><?php echo $price; ?></span></li>
            <li>
              <h2><?php echo $special; ?></h2>
            </li>
            <?php } ?>
            <?php if ($tax) { ?>
            <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
            <?php } ?>
            <?php if ($points) { ?>
            <li><?php echo $text_points; ?> <?php echo $points; ?></li>
            <?php } ?>
            <?php if ($discounts) { ?>
            <li>
              <hr>
            </li>
            <?php foreach ($discounts as $discount) { ?>
            <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
          <div id="product">
            <?php if ($options) { ?>
            <hr>
            <h3><?php echo $text_option; ?></h3>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php if ($option_value['image']) { ?>
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
                    <?php } ?>                    
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php if ($option_value['image']) { ?>
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
                    <?php } ?>
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if ($recurrings) { ?>
            <hr>
            <h3><?php echo $text_payment_recurring; ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id']; ?>"><?php echo $recurring['name']; ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
            <?php } ?>
            <div class="form-group">
              <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
              <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <br />
              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?php echo $button_cart; ?></button>
            </div>
            <?php if ($minimum > 1) { ?>
            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
            <?php } ?>
          </div>
          <?php if ($review_status) { ?>
          <div class="rating">
            <p>
              <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($rating < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>
              <?php } ?>
              <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
            <hr>
            <!-- AddThis Button BEGIN -->
            <div class="addthis_toolbox addthis_default_style" data-url="<?php echo $share; ?>"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
            <!-- AddThis Button END -->
          </div>
          <?php } ?>
        </div>
      </div>
      <?php if ($products) { ?>
      <h3><?php echo $text_related; ?></h3>
      <div class="row">
        <?php $i = 0; ?>
        <?php foreach ($products as $product) { ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-xs-8 col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-xs-6 col-md-4'; ?>
        <?php } else { ?>
        <?php $class = 'col-xs-6 col-sm-3'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <div class="product-thumb transition">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div class="caption">
              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <p><?php echo $product['description']; ?></p>
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($j = 1; $j <= 5; $j++) { ?>
                <?php if ($product['rating'] < $j) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if ($product['price']) { ?>
              <p class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
                <?php if ($product['tax']) { ?>
                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                <?php } ?>
              </p>
              <?php } ?>
            </div>
            <div class="button-group">
              <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span> <i class="fa fa-shopping-cart"></i></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
            </div>
          </div>
        </div>
        <?php if (($column_left && $column_right) && (($i+1) % 2 == 0)) { ?>
        <div class="clearfix visible-md visible-sm"></div>
        <?php } elseif (($column_left || $column_right) && (($i+1) % 3 == 0)) { ?>
        <div class="clearfix visible-md"></div>
        <?php } elseif (($i+1) % 4 == 0) { ?>
        <div class="clearfix visible-md"></div>
        <?php } ?>
        <?php $i++; ?>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($tags) { ?>
      <p><?php echo $text_tags; ?>
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
        <?php } else { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
      </p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
  $.ajax({
    url: 'index.php?route=product/product/getRecurringDescription',
    type: 'post',
    data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
    dataType: 'json',
    beforeSend: function() {
      $('#recurring-description').html('');
    },
    success: function(json) {
      $('.alert, .text-danger').remove();

      if (json['success']) {
        $('#recurring-description').html(json['success']);
      }
    }
  });
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
  $.ajax({
    url: 'index.php?route=checkout/cart/add',
    type: 'post',
    data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
    dataType: 'json',
    beforeSend: function() {
      $('#button-cart').button('loading');
    },
    complete: function() {
      $('#button-cart').button('reset');
    },
    success: function(json) {
      $('.alert, .text-danger').remove();
      $('.form-group').removeClass('has-error');

      if (json['error']) {
        if (json['error']['option']) {
          for (i in json['error']['option']) {
            var element = $('#input-option' + i.replace('_', '-'));

            if (element.parent().hasClass('input-group')) {
              element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
            } else {
              element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
            }
          }
        }

        if (json['error']['recurring']) {
          $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
        }

        // Highlight any found errors
        $('.text-danger').parent().addClass('has-error');
      }

      if (json['success']) {
        $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

        $('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

        $('html, body').animate({ scrollTop: 0 }, 'slow');

        $('#cart > ul').load('index.php?route=common/cart/info ul li');
      }
    },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
  });
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
  pickTime: false
});

$('.datetime').datetimepicker({
  pickDate: true,
  pickTime: true
});

$('.time').datetimepicker({
  pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
  var node = this;

  $('#form-upload').remove();

  $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

  $('#form-upload input[name=\'file\']').trigger('click');

  if (typeof timer != 'undefined') {
      clearInterval(timer);
  }

  timer = setInterval(function() {
    if ($('#form-upload input[name=\'file\']').val() != '') {
      clearInterval(timer);

      $.ajax({
        url: 'index.php?route=tool/upload',
        type: 'post',
        dataType: 'json',
        data: new FormData($('#form-upload')[0]),
        cache: false,
        contentType: false,
        processData: false,
        beforeSend: function() {
          $(node).button('loading');
        },
        complete: function() {
          $(node).button('reset');
        },
        success: function(json) {
          $('.text-danger').remove();

          if (json['error']) {
            $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
          }

          if (json['success']) {
            alert(json['success']);

            $(node).parent().find('input').val(json['code']);
          }
        },
        error: function(xhr, ajaxOptions, thrownError) {
          alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
      });
    }
  }, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
  $.ajax({
    url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
    type: 'post',
    dataType: 'json',
    data: $("#form-review").serialize(),
    beforeSend: function() {
      $('#button-review').button('loading');
    },
    complete: function() {
      $('#button-review').button('reset');
    },
    success: function(json) {
      $('.alert-success, .alert-danger').remove();

      if (json['error']) {
        $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
      }

      if (json['success']) {
        $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

        $('input[name=\'name\']').val('');
        $('textarea[name=\'text\']').val('');
        $('input[name=\'rating\']:checked').prop('checked', false);
      }
    }
  });
});

$(document).ready(function() {
  $('.thumbnails').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true
    }
  });
});
//--></script>



<div class="container">

        <div class="white-box">

            <h1 class="heading"><?php echo $heading_title; ?></h1>

            <div class="product-share">
                <strong>Поделиться:</strong>

                <a id="vk_share_button" href="https://vk.com/share.php?url=line-f.ru/shop/product/223/priklad-magpul-ctr-mil-spec-model/" target="_blank"><a href="https://vk.com/share.php?url=https%3A%2F%2Fline-f.ru%2Fshop%2Fproduct%2F223%2Fpriklad-magpul-ctr-mil-spec-model%2F" onmouseup="this._btn=event.button;this.blur();" onclick="return VK.Share.click(0, this);" style="display: inline-block;text-decoration: none;-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;"><span style="position: relative;padding: 0;-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;">
                    <svg class="icon icon_social-vk">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/static/images/sprite.svg#social-vk"></use>
                    </svg>
                </span></a></a>
                <a href="https://www.facebook.com/sharer/sharer.php?u=line-f.ru/shop/product/223/priklad-magpul-ctr-mil-spec-model/" target="_blank">
                    <svg class="icon icon_social-fb">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/static/images/sprite.svg#social-fb"></use>
                    </svg>
                </a>
                <a href="https://plus.google.com/share?url=line-f.ru/shop/product/223/priklad-magpul-ctr-mil-spec-model/" target="_blank">
                    <svg class="icon icon_social-gp">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/static/images/sprite.svg#social-gp"></use>
                    </svg>
                </a>
                <a href="https://twitter.com/intent/tweet?url=line-f.ru/shop/product/223/priklad-magpul-ctr-mil-spec-model/&amp;text=Приклад телескопический Magpul CTR - Mil-spec Model (BLK) line-f.ru/media/galleries/%D0%9F%D1%80%D0%B8%D0%BA%D0%BB%D0%B0%D0%B4_Magpul_CTR_Mil-spec_1.jpg" target="_blank">
                    <svg class="icon icon_social-tt">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/static/images/sprite.svg#social-tt"></use>
                    </svg>
                </a>
            </div>
            
            <div class="product-main product_inStock">
            
                <div class="product-images">
                  <?php if ($thumb || $images) { ?>
                    <div class="product-images__main">
                      <?php if ($thumb) { ?>
                        <a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
                        <?php } ?>
                    </div>
                    
                    
                    <div class="slider previews-slider">
                        <div class="slider__frame previews-slider__frame">
                            <div id="slides">
                                <div class="arrow-next">
                                    NEXT
                                </div>
                                <ul class="slider__slides previews-slider__slides">
                                    <?php if ($images) { ?>
                                    <?php foreach ($images as $image) { ?>
                                    <li class="slider__slide">
                                        <a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
                                    </li>
                                    <?php } ?>
                                    <?php } ?>
                                    
                                    
                                </ul>
                              </div>
                            
                        </div>
                    <span class="slider__prev previews-slider__prev slider_disable-nav" style="display: none;">
    <svg class="icon icon_arrow">
        <use xlink:href="/static/images/sprite.svg#arrow"></use>
    </svg>
</span>
<span class="slider__next previews-slider__next slider_disable-nav" style="display: none;">
    <svg class="icon icon_arrow">
        <use xlink:href="/static/images/sprite.svg#arrow"></use>
    </svg>
</span>
<?php } ?>
</div>

                </div>

                <div class="product-info">
                    <div class="product-info__description">
                        <div></div>
                        <dl class="options-list">
                            <dt>Производитель:</dt>
                            <dd><a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></dd>
                            
                            <dt>Вид:</dt>
                            <dd>Телескопический</dd>
                            
                            <dt>Материал:</dt>
                            <dd>Полимер</dd>
                            
                            <dt>Цвет:</dt>
                            <dd>Черный</dd>
                            
                        </dl>
                    </div>
                    
                    <div class="product-info__price">9390.00 руб.</div>
                    
                    <div class="product-info__cart">
                        
                        <a data-id="223" class="btn add-to-cart add-product" id="product-add" href="/shop/add-to-cart/">
                            <svg class="icon icon_cart">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/static/images/sprite.svg#cart"></use>
                            </svg>
                            В корзину
                        </a>
                        
                    </div>

                </div>
            </div>
        </div>
        <div class="white-box">

            <div class="product-tabs">
                <a class="tab-global tabs_active" href="#product-description">Описание</a>

                <div class="tabs-content" id="product-description" style="display: block;">
                    <ul>
  <li style="text-align:justify"><strong>Вес:</strong> 250 г</li>
  <li style="text-align:justify"><strong>Длина приклада максимальная:</strong> 175 мм</li>
  <li style="text-align:justify"><strong>Диапазон настройки Length of Pull: </strong>84 мм</li>
  <li style="text-align:justify"><strong>Length of Pull, карабин M4, приклад сложен:</strong> 267 мм</li>
  <li style="text-align:justify"><strong>Length of Pull, карабин M4, приклад разложен: </strong>350 мм</li>
</ul>

<p style="text-align:justify">Magpul CTR Carbine Stock (MAG310-BLK) - телескопический приклад, заменяющий стандартный приклад карабинов AR15/M4 с трубкой типа Mil-Spec.</p>

<p style="text-align:justify">Приклад Magpul имеет "зализанный" дизайн без каких-либо выступающих частей, которые могли бы зацепиться за элементы вашего снаряжения. Рычаг регулировки защищен от случайного нажатия. Приклад Magpul CTR имеет дополнительную систему фрикционного тормоза, которая минимизирует избыточное движение приклада при стрельбе, что призвано улучшить стабильность и точность.&nbsp;</p>

<p style="text-align:justify">Паз для быстросъемной QD-антабки выполнен двусторонним, имеются также две прорези для ремня шириной не более 32 мм. На прикладе установлен резиновый затыльник толщиной 0,7 см.</p>

<p style="text-align:justify"><strong>Особенности:</strong><br>
•&nbsp;&nbsp; &nbsp;Приклад Magpul CTR устанавливается на Mil трубки (Mil-Spec). Трубка в комплект не входит.<br>
•&nbsp;&nbsp; &nbsp;Система фрикционного тормоза минимизирует влияние колебаний при стрельбе.<br>
•&nbsp;&nbsp; &nbsp;Наклонная щека обеспечивает комфорт<br>
•&nbsp;&nbsp; &nbsp;Рычаг телескопического механизма защищен от случайного нажатия.<br>
•&nbsp; Хром-силиконовая запирающая пружина обеспечивает надежную блокировку приклада и долговечность работы всей системы.<br>
•&nbsp;&nbsp; &nbsp;Благодаря специальным пазам по бокам приклада есть возможность установить Cheek Riser. &nbsp;<br>
•&nbsp;&nbsp; &nbsp;Съемный резиновый затыльник толщиной 7 мм имеет антискользящую поверхность и снижает влияние отдачи на стрелка.<br>
•&nbsp;&nbsp; &nbsp;Приклад CTR совместим с антабкой ASAP и другими антабками, устанавливающимися на тыльную часть ресивера.<br>
•&nbsp;&nbsp; &nbsp;Паз для быстросъемной QD-антабки (до 1,5") и две прорези для ремня шириной до 32 мм.</p>
                </div>
                <div class="product-video"></div>

                <a class="tab-global" href="#product-delivery">Доставка</a>

                <!--noindex--><div class="tabs-content" id="product-delivery" style="display: none;">
                    <ol>
  <li><a href="https://line-f.ru/dostavka-i-oplata/#heading-1">Самовывоз из Центра тюнинга оружия "Линия огня"</a></li>
  <li><a href="https://line-f.ru/dostavka-i-oplata/#heading-2">Курьерская доставка по Санкт-Петербургу в пределах КАД (+пригороды)</a></li>
  <li><a href="http://line-f.ru/dostavka-i-oplata/#heading-3">Самовывоз из пунктов выдачи "Главпункт" в Санкт-Петербурге и Лен. области</a></li>
  <li><a href="http://line-f.ru/dostavka-i-oplata/#heading-4">Курьерская доставка по Москве в пределах МКАД (+пригороды)</a></li>
  <li><a href="http://line-f.ru/dostavka-i-oplata/#heading-5">Самовывоз из пунктов выдачи в Москве и ближайшем Подмосковье</a></li>
  <li><a href="https://line-f.ru/dostavka-i-oplata/#heading-6">Доставка в офис СДЭК</a></li>
  <li><a href="http://line-f.ru/dostavka-i-oplata/#heading-7">Доставка по России в пункты выдачи "Боксберри", "Hermes" и другие</a></li>
  <li><a href="https://line-f.ru/dostavka-i-oplata/#heading-8">Доставка по России Почтой России</a></li>
</ol>
                    <ul class="product-delivery">
                        
                        <li>
                            <p><strong>Самовывоз из Линии огня</strong></p>
                            <p style="text-align:justify">Бесплатно. Санкт-Петербург, Средний пр. В.О., 85. Заказы обрабатываются в режиме работы Интернет-магазина: пн-пт, 10:00 - 18:00</p>
                            <p><a href="/shop/shipping/#heading-1">Подробнее</a></p>
                        </li>
                        
                        <li>
                            <p><strong>Курьером по Санкт-Петербургу в пределах КАД (+пригороды)</strong></p>
                            <p>Через 1 рабочий день. От 250 руб. Оплата при получении.</p>
                            <p><a href="/shop/shipping/#heading-2">Подробнее</a></p>
                        </li>
                        
                        <li>
                            <p><strong>Самовывоз из пунктов выдачи в Санкт-Петербурге и Ленобласти</strong></p>
                            <p>Через 1-2 рабочих дня. 150 руб. Оплата при получении.</p>
                            <p><a href="/shop/shipping/#heading-3">Подробнее</a></p>
                        </li>
                        
                        <li>
                            <p><strong>Курьерская доставка по Москве в пределах МКАД  (+пригороды)</strong></p>
                            <p>Через 2 рабочих дня. От 350 руб. Оплата при получении.</p>
                            <p><a href="/shop/shipping/#heading-4">Подробнее</a></p>
                        </li>
                        
                        <li>
                            <p><strong>Самовывоз из пунктов выдачи в Москве (+пригороды)</strong></p>
                            <p>Через 2-4 рабочих дня. От 320 руб. Оплата при получении.</p>
                            <p><a href="/shop/shipping/#heading-5">Подробнее</a></p>
                        </li>
                        
                        <li>
                            <p><strong>Доставка в офис СДЭК</strong></p>
                            <p>От 1 до 14 рабочих дней, от 270 руб. Для Петербурга в пределах КАД - 150 руб., для Москвы в пределах МКАД - 250 руб.</p>
                            <p><a href="/shop/shipping/#heading-6">Подробнее</a></p>
                        </li>
                        
                        <li>
                            <p><strong>Доставка по России в пункты выдачи "Боксберри", "Hermes" и др.</strong></p>
                            <p>От 3 до 15 дней. От 340 руб. Оплата при получении.</p>
                            <p><a href="/shop/shipping/#heading-7">Подробнее</a></p>
                        </li>
                        
                        <li>
                            <p><strong>Доставка Почтой России</strong></p>
                            <p>От 3 до 30 дней. От 340 руб. Оплата при получении</p>
                            <p><a href="/shop/shipping/#heading-8">Подробнее</a></p>
                        </li>
                        
                    </ul>
                </div><!--/noindex-->

                <a class="tab-global" href="#product-payment">Оплата</a>

                <!--noindex--><div class="tabs-content" id="product-payment" style="display: none;">

                    <ol>
  <li><a href="https://line-f.ru/shop/payment/#heading-1">Наличными при получении</a></li>
  <li><a href="http://line-f.ru/shop/payment/#heading-2">Банковской картой при получении</a></li>
  <li><a href="http://line-f.ru/shop/payment/#heading-3">Банковской картой на сайте</a></li>
  <li><a href="http://line-f.ru/shop/payment/#heading-4">Банковский перевод</a></li>
</ol>

                    <ul class="product-delivery">
                        
                        <li>
                            <p><strong>Наличными при получении</strong></p>
                            <p style="text-align:justify">Оплата наличными при получении</p>
                            <p><a href="/shop/payment/#heading-1">Подробнее</a></p>
                        </li>
                        
                        <li>
                            <p><strong>Картой при получении</strong></p>
                            <p style="text-align:justify">Банковской картой при получении</p>
                            <p><a href="/shop/payment/#heading-2">Подробнее</a></p>
                        </li>
                        
                        <li>
                            <p><strong>Банковской картой на сайте</strong></p>
                            <p>Оплата банковской картой на сайте</p>
                            <p><a href="/shop/payment/#heading-3">Подробнее</a></p>
                        </li>
                        
                        <li>
                            <p><strong>Банковский перевод по счету</strong></p>
                            <p>Счет-квитанция для оплаты через банк</p>
                            <p><a href="/shop/payment/#heading-4">Подробнее</a></p>
                        </li>
                        
                    </ul>
                </div><!--/noindex-->

                <a class="tab-global" href="#product-reviews">Отзывы (0)</a>

                <div class="tabs-content" id="product-reviews" style="display: none;">
                    <div class="review-button">
                        <button data-url="/shop/add-comment/" class="btn">Оставить отзыв</button>
                    </div>
                    
                    <dl class="reviews">
                        

                    </dl>
                </div>
            </div>
        </div>
        

    </div>




<?php echo $footer; ?>
