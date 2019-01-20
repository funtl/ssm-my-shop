;(function ($, window, document, undefined) {

  var Magnifier = function (elem) {
    var self = this;
    this.$elem = elem;
    this.$smallBox = this.$elem.find('.small-box');
    this.$smallBox_pic = this.$smallBox.find('img');
    this.$smallBox_mask = this.$smallBox.find('.hover');
    this.$thumbnailBox = this.$elem.find('.thumbnail-box');
    this.$thumbnailBox_prev = this.$thumbnailBox.find('.btn-prev');
    this.$thumbnailBox_next = this.$thumbnailBox.find('.btn-next');
    this.$thumbnailBox_wrapper = this.$thumbnailBox.find('.wrapper');
    this.$thumbnailBox_item = this.$thumbnailBox.find('.item');
    this.$thumbnailBox_pic = this.$thumbnailBox.find('img');
    this.$bigBox = this.$elem.find('.big-box');
    this.$bigBox_pic = this.$bigBox.find('img');
  };

  Magnifier.prototype = {
    moveBigPic: function () { // 改变大图
      var scaleX = this.$smallBox_mask.position().left / (this.$smallBox.width() - this.$smallBox_mask.width());
      var scaleY = this.$smallBox_mask.position().top / (this.$smallBox.height() - this.$smallBox_mask.height());
      var scroll_l = scaleX * (this.$bigBox_pic.width() - this.$bigBox.width());
      var scroll_t = scaleY * (this.$bigBox_pic.height() - this.$bigBox.height());

      this.$bigBox.scrollLeft(scroll_l).scrollTop(scroll_t);
    },

    changeSrouce: function (index, cur_src) { // 改变大小图地址
      this.$smallBox_pic.attr('src', cur_src);
      this.$bigBox_pic.attr('src', 'images/big_'+(index + 1)+'.jpg');
    },

    setMask: function () { // 设置 mask 宽高
      var mask_w = this.$smallBox.width() / (this.$bigBox_pic.width() / this.$bigBox.width());
      var mask_h = this.$smallBox.height() / (this.$bigBox_pic.height() / this.$bigBox.height());

      this.$smallBox_mask.css({width: mask_w, height: mask_h});
    },

    inital: function () { // 初始化
      var self = this;
      
      this.$thumbnailBox_next.click(function () {
        var ov_pic = self.$thumbnailBox_item.length - 5;
        var ov_dis = ov_pic * 78;

        if (ov_pic > 0) {
          self.$thumbnailBox_wrapper.animate({marginLeft: -ov_dis});
        }
      });
      
      this.$thumbnailBox_prev.click(function () {
        self.$thumbnailBox_wrapper.animate({marginLeft: 0});
      });

      this.$thumbnailBox_item.mouseover(function () {
        var cur_src = $(this).attr('data-src');

        self.$thumbnailBox_item.removeClass('item-cur');

        $(this).addClass('item-cur');

        self.changeSrouce($(this).index(), cur_src);
      });

      this.$smallBox.hover(function () {
        self.$bigBox.show();
        self.$smallBox_mask.show();
        self.setMask();

        $(this).mousemove(function (ev) {
          var oEvent = ev || window.event;
          var offset_pos = {
            left: oEvent.clientX - $(this).offset().left - self.$smallBox_mask.width() / 2,
            top: oEvent.clientY - $(this).offset().top - self.$smallBox_mask.height() / 2 + $(window).scrollTop()
          };

          if (offset_pos.left < 0) {
            offset_pos.left = 0;
          } else if (offset_pos.left > $(this).width() - self.$smallBox_mask.width()) {
            offset_pos.left = $(this).width() - self.$smallBox_mask.width();
          }
          if (offset_pos.top < 0) {
            offset_pos.top = 0;
          } else if (offset_pos.top > $(this).height() - self.$smallBox_mask.height()) {
            offset_pos.top = $(this).height() - self.$smallBox_mask.height();
          }

          self.$smallBox_mask.css(offset_pos);

          self.moveBigPic();
        });
      }, function () {
        self.$smallBox_mask.hide();
        self.$bigBox.hide();
      });
    },

    constructor: Magnifier
  };

  $.fn.magnifier = function () {
    var magnifier = new Magnifier(this);

    return magnifier.inital();
  };

})(jQuery, window, document);