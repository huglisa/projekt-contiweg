function embed(docid, width, height) {
  window.parent.jInsertEditorText('{GroupDocs guid="' + docid +'" width="' + width + '" height="' + height + '"}', 'jform_articletext');
  window.parent.SqueezeBox.close();
}

(function($) {
$(function() {

  $('ul.tabs').delegate('li:not(.current)', 'click', function() {
    $(this).addClass('current').siblings().removeClass('current')
      .parents('div.section').find('div.box').eq($(this).index()).fadeIn(150).siblings('div.box').hide();
  })

})
})(jQuery)
