//= require jquery
//= require jquery_ujs
//= require turbolinks

//= require bootstrap-sprockets
//= require animate-scroll
//= require fileinput

//= require underscore
//= require backbone
//= require lamington_properties




var setFilepickerKey = function() {
  filepicker.setKey("<%= ENV['FILEPICKER_KEY'] %>")
};
  

var updateSortable = function(event, ui) {
      $.post($(this).data('update-url'), $(this).sortable('serialize'));
};

var fadeOutElement = function($el, delay) {
  window.setTimeout(function() {
    $el.fadeOut();
  }, delay);
};

var fadeInElement = function($el, delay) {
  window.setTimeout(function() {
    $el.fadeIn();
  }, delay);
};

var clearElement = function($el){
  $el.html("");
};

var confirm_destroy = function(element, action) {
  if (confirm("Are you sure?")) {
    var f = document.createElement('form');
    f.style.display = 'none';
    element.parentNode.appendChild(f);
    f.method = 'POST';
    f.action = action;
    var m = document.createElement('input');
    m.setAttribute('type', 'hidden');
    m.setAttribute('name', '_method');
    m.setAttribute('value', 'delete');
    f.appendChild(m);
    f.submit();
  }
  return false;
}

var addTime = function(id) {
 $(".time-group").append("<label for='" + id + "'>Time" + id + ":</label><input id='" + id + "' type='time' name='times[]' value=''>"); 
};

// Fancy form show edit

var editField = function (event) {
    event.preventDefault();
    var $currentTarget = $(event.currentTarget);
    var field = $currentTarget.data('field');
    var $input = $('<input class="edit-input">');

    $input.data('field', field);
    $input.val(this.model.escape(field));
    $currentTarget.removeClass('editable');
    $currentTarget.html($input);
    $input.focus();
};

var saveField = function (event) {
    event.preventDefault();
    var field = $(event.currentTarget).data('field');
    var newVal = $(event.currentTarget).val();

    this.model.set(field, newVal);
    this.model.save();
    this.render();
};

var ensureUnique = function(description) {
  var isUniq = true;

  $('.unique-choice').each(function(i, el) {
    if (el.text === description) {
      isUniq = false;
    };
  })

  return isUniq;
};

var rowFadeout = function() {
    $(this).closest('tr').fadeOut();
  };
  
var collapseCheck = function() {
  
  if (scrollCheck(54)) {
    addClasses({'body': 'collapsed'});
  } else {
    removeClasses({'body': 'collapsed'});
  }
};

var addClasses = function(classHash) {
  for (var key in classHash) {
    $(key).addClass(classHash[key]);
  }
};

var removeClasses = function(classHash) {
  for (var key in classHash) {
    $(key).removeClass(classHash[key]);
  }
};
// toggleHash is a hash matching pattern [{ "elem": "addClassName"}, { "elem": "removeClassName"}]

var scrollCheck = function(breakPoint) {

  if ($(this).scrollTop() >= breakPoint) {
    return true;
  } else {
    return false;
  }
};

var checkSize = function() {
    if ($(".sampleClass").css("float") == "none" ){
      return true;
    } else {
      return false;
    }
};


window.spinner = {
  on: function(){
    $(".spinner").show();
  },
  off: function(){
    $(".spinner").hide();
  }
};

window.modal = {
  show: function(){
    $("body").toggleClass("has-active-modal");
    return false;
  },
  hide: function(){
    $("body").removeClass("has-active-modal");
  },
  swapContent: function(htmlString) {
    $("#modal-container").html(htmlString);
  
    window.modal.show();
  }
};

window.messages = {
  display: function(){
    if (typeof flashErrors !== "undefined") {
      var $el = $(".errors");
      $el.html(flashErrors);
      $el.fadeIn();
      window.setTimeout(function() {
        $el.fadeOut();
      }, 6000);
    }
    if (typeof flashNotices !== "undefined") {
      var $el = $(".notices");
      $el.html(flashNotices);
      $el.fadeIn();
      fadeOutElement($el, 6000);
    }
  }
};


$(document).on("ajax:before", function(event){
  window.spinner.on();

  clearElement($('.notices'));
  clearElement($('.errors'));
});

$(document).on("ajax:success", function(event){
  
  $('.plus').click(function(event) {
    var id = $('.time-input > input:last-child').attr('id');
    id = parseInt(id) + 1;
    
    if (id < 10) {
      addTime(id);  
    }
  });
});

$(document).on("ajax:complete", function(event){
  window.spinner.off();
  window.messages.display();
});

$(document).on('page:fetch', function() {
  window.spinner.on();
});

// Bind event listeners for TurboLinks
// $(document).on('page:change', function() {
  
$(document).on('page:change', function() {
  window.spinner.off();
});
// use doc.ready for backbone.js. not compatible with 
$(document).ready(function(){
  setFilepickerKey();
  window.spinner.off();
  $(window).scroll(collapseCheck);
  
  fadeOutElement($('.errors'), 6000);
  fadeOutElement($('.notices'), 6000);
  
  $(".file-input").fileinput({
    removeClass: "btn btn-danger",
    uploadClass: "btn btn-success"
  });
  
  
  $('.anchored').on("click", function(event) {
    var $el = $($(event.target).data("anchor"));
     
    if ($el.length > 0) {
      event.preventDefault(); 
      $el.animatescroll({});
    }
  });
  
  
  $('.deletable').bind('ajax:success', rowFadeout);
  
  $('.login').on("click", window.modal.show);
  
  $(".modal").on("click", function(event){
    $target = $(event.target);

    if($target.is(".modal") || $target.is(".modal-close-button")){
      event.preventDefault();
      window.modal.hide();
    }
  });
  
  LamingtonProperties.initialize();
  
});