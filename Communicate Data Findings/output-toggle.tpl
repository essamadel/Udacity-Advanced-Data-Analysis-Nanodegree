{# Jupyter Notebook Toggle Template for Slides by Damian Avila 
   from http://www.damian.oquanta.info/posts/hide-the-input-cells-from-your-ipython-slides.html
#}

{%- extends 'slides_reveal.tpl' -%}

{% block input_group -%}
<div class="input_hidden">
{{ super() }}
</div>
{% endblock input_group %}

{%- block header -%}
{{ super() }}

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<style type="text/css">
//div.output_wrapper {
//  margin-top: 0px;
//}
.input_hidden {
  display: none;
//  margin-top: 5px;

.prompt {display: none!important;}

//.reveal {overflow-y: auto!important}

.scrollable-slide {
    height: 800px;
    overflow-y: auto !important;
}

.reveal p {
    margin: 0px!important;
}

}
</style>

<script>

function st( event ) {
	     $('.slides').css('width','95%');
		 $('.slides').css('height','auto');
        $('.slides').css('inset','');
        $('.slides').css('transform','translate(3%, 0%)');
		$('.present').css('top', '0px')
}

//window.addEventListener('load', function () {		
//		Reveal.addEventListener( 'ready', st );
//		Reveal.addEventListener( 'slidechanged',  st);
//})

$(document).ready(function(){
	  $(".output_wrapper").click(function(){
		  $(this).prev('.input_hidden').slideToggle();
	  });
	  $(".prompt").hide()
	setTimeout(function(){ 
		Reveal.addEventListener( 'ready', st );
		Reveal.addEventListener( 'slidechanged',  st);
		
		function resetSlideScrolling(slide) {
			$(slide).removeClass('scrollable-slide');
		}

		function handleSlideScrolling(slide) {
			if ($(slide).height() >= 650) {
				$(slide).addClass('scrollable-slide');
				$(slide).css('font-size','small');
			}
		}

		Reveal.addEventListener('ready', function (event) {
			handleSlideScrolling(event.currentSlide);
		});

		Reveal.addEventListener('slidechanged', function (event) {
			resetSlideScrolling(event.previousSlide)
			handleSlideScrolling(event.currentSlide);
		});
	
	}, 1000);
	
	
 //$(".navigate-right").click(function(){

  //});
})

</script>
{%- endblock header -%}

{% block body %}
{{ super() }}
<script>


</script>
{% endblock body %}
