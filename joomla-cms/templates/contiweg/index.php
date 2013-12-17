<?php
defined('_JEXEC') or die;

/**
 * Template for Joomla! CMS, created with Artisteer.
 * See readme.txt for more details on how to use the template.
 */

require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . 'functions.php';

// Create alias for $this object reference:
$document = $this;

// Shortcut for template base url:
$templateUrl = $document->baseurl . '/templates/' . $document->template;

Artx::load("Artx_Page");

// Initialize $view:
$view = $this->artx = new ArtxPage($this);

// Decorate component with Artisteer style:
$view->componentWrapper();

JHtml::_('behavior.framework', true);

?>
<!DOCTYPE html>
<html dir="ltr" lang="<?php echo $document->language; ?>">
<head>
    <jdoc:include type="head" />
    <link rel="stylesheet" href="<?php echo $document->baseurl; ?>/templates/system/css/system.css" />
    <link rel="stylesheet" href="<?php echo $document->baseurl; ?>/templates/system/css/general.css" />

    <!-- Created by Artisteer v4.1.0.59861 -->
    
    
    <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no, width = device-width">

    <!--[if lt IE 9]><script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <link rel="stylesheet" href="<?php echo $templateUrl; ?>/css/template.css" media="screen">
    <!--[if lte IE 7]><link rel="stylesheet" href="<?php echo $templateUrl; ?>/css/template.ie7.css" media="screen" /><![endif]-->
    <link rel="stylesheet" href="<?php echo $templateUrl; ?>/css/template.responsive.css" media="all">


   <script>
        if ('undefined' != typeof jQuery)
        {
            document._artxJQueryBackup = jQuery;
        }

		function resize() {
			jQuery("div.random-image>img").width(jQuery(".art-hmenu").width());/*jQuery(document).width());*/
			jQuery("div.random-image").css('margin-left', (jQuery(document).width() - (jQuery(".art-hmenu").width()))/2);
			jQuery("div.random-image>img").height(jQuery(".art-header").height());
			
			//Startseite vergrößen wenn menüleistenbreite größer als 1300px ist
			if (jQuery(".art-hmenu").width() > 1300) //größer als 1300
			{
				jQuery(".alles").css('width', 735);
				jQuery(".alles").css('height', 475);
			
				jQuery("#angebot").css('width', 200);
				jQuery("#angebot").css('height', 125);
				jQuery("#angebot").css('left', 125);
				jQuery("#angebot>span").css('line-height',10);
				
				jQuery("#aktuelles").css('height', 125);
				jQuery("#aktuelles").css('width', 175);
				jQuery("#aktuelles").css('top', 125);
				jQuery("#aktuelles>span").css('line-height',10);
				
				jQuery("#wueu").css('height', 150);
				jQuery("#wueu").css('width', 150);
				jQuery("#wueu").css('top', 125);
				jQuery("#wueu").css('left', 175);
				jQuery("#wueu>span").css('line-height',12);
				
				jQuery("#wsv").css('height', 125);
				jQuery("#wsv").css('width', 175);
				jQuery("#wsv").css('top', 50);
				jQuery("#wsv").css('left', 325);
				jQuery("#wsv>span").css('line-height',10);
				
				jQuery("#erfolge").css('height', 150);
				jQuery("#erfolge").css('width', 175);
				jQuery("#erfolge").css('top', 25);
				jQuery("#erfolge").css('left', 500);
				jQuery("#erfolge>span").css('line-height',12);
				
				jQuery("#service").css('height', 100);
				jQuery("#service").css('width', 200);
				jQuery("#service").css('top', 175);
				jQuery("#service").css('left', 325);
				jQuery("#service>span").css('line-height',8);
				
				jQuery("#schulteam").css('height', 125);
				jQuery("#schulteam").css('width', 175);
				jQuery("#schulteam").css('top', 175);
				jQuery("#schulteam").css('left', 525);
				jQuery("#schulteam>span").css('line-height',10);
				
				jQuery("#bibliothek").css('height', 100);
				jQuery("#bibliothek").css('width', 175);
				jQuery("#bibliothek").css('top', 275);
				jQuery("#bibliothek").css('left', 175);
				jQuery("#bibliothek>span").css('line-height',8);
				
				jQuery("#simongasse").css('height', 100);
				jQuery("#simongasse").css('width', 175);
				jQuery("#simongasse").css('top', 375);
				jQuery("#simongasse").css('left', 175);
				jQuery("#simongasse>span").css('line-height',8);
				
				jQuery("#schulpartner").css('height', 150);
				jQuery("#schulpartner").css('width', 175);
				jQuery("#schulpartner").css('top', 275);
				jQuery("#schulpartner").css('left', 350);
				jQuery("#schulpartner>span").css('line-height',12);
				
				jQuery("#contiuni").css('height', 90);
				jQuery("#contiuni").css('width', 210);
				jQuery("#contiuni").css('top', 300);
				jQuery("#contiuni").css('left', 525);
				jQuery("#contiuni>span").css('line-height',7);
				
				jQuery("#eklabu").css('height', 40);
				jQuery("#eklabu").css('width', 150);
				jQuery("#eklabu").css('top', 250);
				jQuery("#eklabu").css('left', 25);
				jQuery("#eklabu").css('padding-top', 50);
				jQuery("#eklabu").css('padding-bottom', 50);
				
			}
			else if(jQuery(".art-hmenu").width() < 1300)//kleiner als 1300 STANDARDEINSTELLUNGEN
			{
				jQuery(".alles").css('width', 630);
				jQuery(".alles").css('height', 380);
				
			    jQuery("#angebot").css('width', 175);
				jQuery("#angebot").css('height', 100);
				jQuery("#angebot").css('left', 100);
				jQuery("#angebot>span").css('line-height',8);
				 
				jQuery("#aktuelles").css('height', 100);
				jQuery("#aktuelles").css('width', 150);
				jQuery("#aktuelles").css('top', 100);
				jQuery("#aktuelles>span").css('line-height',8);
				 
				jQuery("#wueu").css('height', 125);
				jQuery("#wueu").css('width', 125);
				jQuery("#wueu").css('top', 100);
				jQuery("#wueu").css('left', 150);
				jQuery("#wueu>span").css('line-height',10);
				 
				jQuery("#wsv").css('height', 100);
				jQuery("#wsv").css('width', 150);
				jQuery("#wsv").css('top', 50);
				jQuery("#wsv").css('left', 275);
				jQuery("#wsv>span").css('line-height',8);
				
				jQuery("#erfolge").css('height', 125);
				jQuery("#erfolge").css('width', 125);
				jQuery("#erfolge").css('top', 25);
				jQuery("#erfolge").css('left', 425);
				jQuery("#erfolge>span").css('line-height',10);
				
				jQuery("#service").css('height', 75);
				jQuery("#service").css('width', 175);
				jQuery("#service").css('top', 150);
				jQuery("#service").css('left', 275);
				jQuery("#service>span").css('line-height',6);
				
				jQuery("#schulteam").css('height', 100);
				jQuery("#schulteam").css('width', 125);
				jQuery("#schulteam").css('top', 150);
				jQuery("#schulteam").css('left', 450);
				jQuery("#schulteam>span").css('line-height',8);
				
				jQuery("#bibliothek").css('height', 75);
				jQuery("#bibliothek").css('width', 150);
				jQuery("#bibliothek").css('top', 225);
				jQuery("#bibliothek").css('left', 150);
				jQuery("#bibliothek>span").css('line-height',6);
				
				jQuery("#simongasse").css('height', 80);
				jQuery("#simongasse").css('width', 150);
				jQuery("#simongasse").css('top', 300);
				jQuery("#simongasse").css('left', 150);
				jQuery("#simongasse>span").css('line-height',6);
				
				jQuery("#schulpartner").css('height', 125);
				jQuery("#schulpartner").css('width', 150);
				jQuery("#schulpartner").css('top', 225);
				jQuery("#schulpartner").css('left', 300);
				jQuery("#schulpartner>span").css('line-height',10);
				
				jQuery("#contiuni").css('height', 65);
				jQuery("#contiuni").css('width', 180);
				jQuery("#contiuni").css('top', 250);
				jQuery("#contiuni").css('left', 450);
				jQuery("#contiuni>span").css('line-height',5);
				
				jQuery("#eklabu").css('height', 35);
				jQuery("#eklabu").css('width', 125);
				jQuery("#eklabu").css('top', 200);
				jQuery("#eklabu").css('left', 25);
				jQuery("#eklabu").css('padding-top', 40);
				jQuery("#eklabu").css('padding-bottom', 50);
			}
		}

		onresize = resize;

		jQuery(resize);


		</script>
    <script src="<?php echo $templateUrl; ?>/jquery.js"></script>
    <script>jQuery.noConflict();</script>

    <script src="<?php echo $templateUrl; ?>/script.js"></script>
    <?php $view->includeInlineScripts() ?>
    <script>if (document._artxJQueryBackup) jQuery = document._artxJQueryBackup;</script>
    <script src="<?php echo $templateUrl; ?>/script.responsive.js"></script>
</head>
<body>

<div id="art-main">
<header class="art-header"><?php echo $view->position('position-30', 'art-nostyle'); ?>


    <div class="art-shapes">

            </div>




                        
                    
</header>
<div class="art-sheet clearfix">
<?php if ($view->containsModules('position-1', 'position-28', 'position-29')) : ?>
<nav class="art-nav">
    
<?php if ($view->containsModules('position-28')) : ?>
<div class="art-hmenu-extra1"><?php echo $view->position('position-28'); ?></div>
<?php endif; ?>
<?php if ($view->containsModules('position-29')) : ?>
<div class="art-hmenu-extra2"><?php echo $view->position('position-29'); ?></div>
<?php endif; ?>
<?php echo $view->position('position-1'); ?>
 
    </nav>
<?php endif; ?>
<?php echo $view->position('position-15', 'art-nostyle'); ?>
<?php echo $view->positions(array('position-16' => 33, 'position-17' => 33, 'position-18' => 34), 'art-block'); ?>
<div class="art-layout-wrapper">
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <?php if ($view->containsModules('position-7', 'position-4', 'position-5')) : ?>
<div class="art-layout-cell art-sidebar1">
<?php echo $view->position('position-7', 'art-block'); ?>
<?php echo $view->position('position-4', 'art-block'); ?>
<?php echo $view->position('position-5', 'art-block'); ?>




                        </div>
<?php endif; ?>

                        <div class="art-layout-cell art-content">
<?php
  echo $view->position('position-19', 'art-nostyle');
  if ($view->containsModules('position-2'))
    echo artxPost($view->position('position-2'));
  echo $view->positions(array('position-20' => 50, 'position-21' => 50), 'art-article');
  echo $view->position('position-12', 'art-nostyle');
  echo artxPost(array('content' => '<jdoc:include type="message" />', 'classes' => ' art-messages'));
  echo '<jdoc:include type="component" />';
  echo $view->position('position-22', 'art-nostyle');
  echo $view->positions(array('position-23' => 50, 'position-24' => 50), 'art-article');
  echo $view->position('position-25', 'art-nostyle');
?>



                        </div>
                        <?php if ($view->containsModules('position-6', 'position-8', 'position-3')) : ?>
<div class="art-layout-cell art-sidebar2">
<?php echo $view->position('position-6', 'art-block'); ?>
<?php echo $view->position('position-8', 'art-block'); ?>
<?php echo $view->position('position-3', 'art-block'); ?>


                        </div>
<?php endif; ?>
                    </div>
                </div>
            </div>
<?php echo $view->positions(array('position-9' => 33, 'position-10' => 33, 'position-11' => 34), 'art-block'); ?>
<?php echo $view->position('position-26', 'art-nostyle'); ?>

<footer class="art-footer">
<div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-0" style="width: 100%">
<?php if ($view->containsModules('position-31')) : ?>
    <?php echo $view->position('position-31', 'art-nostyle'); ?>
<?php else: ?>
        <p><br></p>
    <?php endif; ?>
</div>
    </div>
</div>

</footer>

    </div>
</div>



<?php echo $view->position('debug'); ?>
</body>
</html>