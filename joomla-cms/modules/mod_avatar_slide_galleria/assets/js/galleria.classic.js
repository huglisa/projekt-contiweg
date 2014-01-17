/**
 * Galleria Classic Theme 2012-08-08
 * http://galleria.io
 *
 * Licensed under the MIT license
 * https://raw.github.com/aino/galleria/master/LICENSE
 *
 */

(function($) {

/*global jQuery, Galleria */

Galleria.addTheme({
    name: 'classic',
    author: 'Galleria',
    css: 'galleria.classic.css',
    defaults: {
        transition: 'slide',
        thumbCrop:  'height',
        titleColor: '#ffffff',
        desColor: '#ffffff',
        bgColor: '#000000',
        // set this to false if you want to show the caption all the time:
        _showFullscreen: true,
        _toggleInfo: true
    },
    init: function(options) {

        Galleria.requires(1.28, 'This version of Classic theme requires Galleria 1.2.8 or later');
        // add some elements
        this.addElement('info-link','info-close','fullscreen');
        this.append({
            'info' : ['info-link','info-close'],
            'stage' : 'fullscreen'
        });

        // cache some stuff
         var gallery = this,
         	container = this.$('container'),
         	info = this.$('info-link,info-close,info-text'),
            touch = Galleria.TOUCH,
            fs_link = this.$('fullscreen'),
            FULLSCREEN = false,
            transition = options.transition,
            click = touch ? 'touchstart' : 'click';

        // show loader & counter with opacity
        this.$('loader,counter').show().css('opacity', 0.4);
        
		// Recolor info
		infoColor = function(){
        	info.find('.galleria-info-title').css('color',options.titleColor);
        	info.find('.galleria-info-description').css('color',options.desColor);
        	container.css('background',options.bgColor);
        },infoColor();
        
        //Resize when thumbnails is false
        if ( options.thumbnails === false )
        {
        	this.$('stage').css('bottom',10);
        	this.$('thumbnails-container').hide();
        	this.resize();
        }

        // some stuff for non-touch browsers
        if (! touch ) {
            this.addIdleState( this.get('image-nav-left'), { left:-50 });
            this.addIdleState( this.get('image-nav-right'), { right:-50 });
            this.addIdleState( this.get('counter'), { opacity:0 });
        }

        // toggle info
        if ( options._toggleInfo === true ) {
            info.bind( click, function() {
                info.toggle();
            });
        } else {
            info.show();
            this.$('info-link, info-close').hide();
        }

        // bind some stuff
        this.bind('thumbnail', function(e) {

            if (! touch ) {
                // fade thumbnails
                $(e.thumbTarget).css('opacity', 0.6).parent().hover(function() {
                    $(this).not('.active').children().stop().fadeTo(100, 1);
                }, function() {
                    $(this).not('.active').children().stop().fadeTo(400, 0.6);
                });

                if ( e.index === this.getIndex() ) {
                    $(e.thumbTarget).css('opacity',1);
                }
            } else {
                $(e.thumbTarget).css('opacity', this.getIndex() ? 1 : 0.6);
            }
        });

        this.bind('loadstart', function(e) {
            if (!e.cached) {
                this.$('loader').show().fadeTo(200, 0.4);
            }

            this.$('info').toggle( this.hasInfo() );

            $(e.thumbTarget).css('opacity',1).parent().siblings().children().css('opacity', 0.6);
        });

        this.bind('loadfinish', function(e) {
            this.$('loader').fadeOut(200);
        });
        this.bind( 'fullscreen_enter', function(e) {
            options.FULLSCREEN = true;
            gallery.setOptions('transition', false);
            fs_link.addClass('open');
            container.css('background',options.bgColor);
            gallery.openLightbox();
            $('.galleria-lightbox-overlay, .galleria-lightbox-box').addClass('galleria_lightbox_fullscreen');
            $('.galleria-lightbox-overlay, .galleria-lightbox-box').css('display','none');
        });
        
        this.bind( 'fullscreen_exit', function(e) {
            options.FULLSCREEN = false;
            gallery.setOptions('transition',transition);
            fs_link.removeClass('open');
            $('.galleria-lightbox-overlay, .galleria-lightbox-box').removeClass('galleria_lightbox_fullscreen');
            $('.galleria-lightbox-overlay, .galleria-lightbox-box').css('display','none');
        });
         if (options._showFullscreen) {
            fs_link.click(function() {
                if (options.FULLSCREEN) {
                    gallery.exitFullscreen();
                } else {
                    gallery.enterFullscreen();
                }
            });
        } else {
            fs_link.remove();
        }
    }
});

}(jQuery));
