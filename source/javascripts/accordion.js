jQuery('.js-accordion-trigger') // find the trigger
  .bind('click focus', function(){
    jQuery(this).parent().find('div').slideToggle('fast');  // apply the toggle to the ul
    jQuery(this).parent().toggleClass('is-expanded');
    event.preventDefault();
  });
