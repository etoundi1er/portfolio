$.widget("ui.tooltip", $.ui.tooltip, {
    options: {
        content: function () {
            return $(this).prop('title');
        }
    }
});

// Allows to display elements other than a span

$(function () {
    $('.tooltip-item').attr('title', function(){
        return $(this).next('.tooltip-pop').remove().html()
    })
    $(document).tooltip();
});

// Keeping tooltip open on hover solution 2. Works like a charm

$('.tooltip-item')
    .bind( 'mouseleave', function( event ) {
    	event.stopImmediatePropagation();
    	
    	var fixed = setTimeout('$(".tooltip-item").tooltip("close")', 100);
    	
    	$(".ui-tooltip").hover(
    	    function(){clearTimeout (fixed);},
    	    function(){$(".tooltip-item").tooltip("close");}
    	);
    	
    	// close any lingering tooltips
        $('div.ui-tooltip').not('.' + $class).remove();
    })
    .tooltip();