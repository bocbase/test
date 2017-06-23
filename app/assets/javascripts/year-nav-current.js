$(document).on('turbolinks:load', function() {
	var url = location.pathname.split('/')[2];
	var target = '#year-'+url;
	$(target).addClass('year-tag-current').removeClass('year-tag');
  return false;
});
