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
	
	<script src="<?php echo $templateUrl; ?>/jquery.js"></script>
    

   <script>
        if ('undefined' != typeof jQuery)
        {
            document._artxJQueryBackup = jQuery;
        }
		
		
		function resize() 
		{		
			//Bildschirmgröße kann klein sein, trotzdem wird alles richtig angezeigt
			if (jQuery("#art-main").width() < 750)
			{
				jQuery("#art-main").css('width', 751);
				jQuery(".art-content").css('width', '42%');
			}
			else
			{
				jQuery(".art-content").css('width', '48%');
			}
		
			//Überprüfen wie breit die menüleiste und der gesamte Bilschirm ist um die Breite der Homepage festzulegen
			if((jQuery("#art-main").width() < 850)||(jQuery(document).width() < 850))
			{
				jQuery("#art-main").css('width',"100%");
			}
			else
			{
				jQuery("#art-main").css('width',"70%");
			}
			
			if((jQuery(document).width() > 850))
			{
				if((jQuery("#art-main").width() < 850))
				{
					jQuery("#art-main").css('width',"100%");
				}
			}
			// Untermenüpunkte von angebot/allgemeine infos anpassen
			if (jQuery(".art-hmenu").width() > 1020) 
			{
				jQuery(".allgemeine_infos_alles").css('height', 277);
				jQuery(".allgemeine_infos_alles").css('width', 255);
				
				jQuery(".allgemeine_infos_alles > a").css('height', 50);
				jQuery(".allgemeine_infos_alles > a").css('width', 125);
				jQuery(".allgemeine_infos_alles > a").css('font-size', 13);
				
				jQuery("#allgemeine_infos_angebot").css('line-height', 4);
				
				jQuery("#allgemeine_infos_schulform").css('line-height', 4);
				jQuery("#allgemeine_infos_schulform").css('left', 127);
				jQuery("#allgemeine_infos_schulform").css('top', 56);
				
				jQuery("#allgemeine_infos_schulgebaeude").css('line-height', 4);
				jQuery("#allgemeine_infos_schulgebaeude").css('top', 112);
				
				jQuery("#allgemeine_infos_padgrundsaetze").css('left', 127);
				jQuery("#allgemeine_infos_padgrundsaetze").css('top', 168);
				jQuery("#allgemeine_infos_padgrundsaetze").css('padding-top', 0);
				
				jQuery("#allgemeine_infos_wirgestaltenschule").css('top', 224);
				jQuery("#allgemeine_infos_wirgestaltenschule").css('padding-top', 0);
				
				
				if(jQuery(".art-hmenu").width() > 1400)
				{			
					
					jQuery(".allgemeine_infos_alles").css('height', 328);
					jQuery(".allgemeine_infos_alles").css('width', 308);
				
					jQuery(".allgemeine_infos_alles > a").css('height', 60);
					jQuery(".allgemeine_infos_alles > a").css('width', 150);
					jQuery(".allgemeine_infos_alles > a").css('font-size', 13);
				
					jQuery("#allgemeine_infos_angebot").css('line-height', 4.5);
				
					jQuery("#allgemeine_infos_schulform").css('line-height', 4.5);
					jQuery("#allgemeine_infos_schulform").css('left', 154);
					jQuery("#allgemeine_infos_schulform").css('top', 66);
				
					jQuery("#allgemeine_infos_schulgebaeude").css('line-height', 4.5);
					jQuery("#allgemeine_infos_schulgebaeude").css('top', 132);
				
					jQuery("#allgemeine_infos_padgrundsaetze").css('left', 154);
					jQuery("#allgemeine_infos_padgrundsaetze").css('top', 198);
					jQuery("#allgemeine_infos_padgrundsaetze").css('height', 52);
					jQuery("#allgemeine_infos_padgrundsaetze").css('padding-top', 8);
				
					jQuery("#allgemeine_infos_wirgestaltenschule").css('top', 264);
					jQuery("#allgemeine_infos_wirgestaltenschule").css('height', 52);
					jQuery("#allgemeine_infos_wirgestaltenschule").css('padding-top', 8);
				
					if(jQuery(".art-hmenu").width() > 1700)
					{
						jQuery(".allgemeine_infos_alles").css('height', 428);
						jQuery(".allgemeine_infos_alles").css('width', 413);
				
						jQuery(".allgemeine_infos_alles > a").css('height', 80);
						jQuery(".allgemeine_infos_alles > a").css('width', 200);
						jQuery(".allgemeine_infos_alles > a").css('font-size', 13);
				
						jQuery("#allgemeine_infos_angebot").css('line-height', 6);
				
						jQuery("#allgemeine_infos_schulform").css('line-height', 6);
						jQuery("#allgemeine_infos_schulform").css('left', 207);
						jQuery("#allgemeine_infos_schulform").css('top', 86);
				
						jQuery("#allgemeine_infos_schulgebaeude").css('line-height', 6);
						jQuery("#allgemeine_infos_schulgebaeude").css('top', 172);
				
						jQuery("#allgemeine_infos_padgrundsaetze").css('left', 207);
						jQuery("#allgemeine_infos_padgrundsaetze").css('top', 258);
						jQuery("#allgemeine_infos_padgrundsaetze").css('height', 62);
						jQuery("#allgemeine_infos_padgrundsaetze").css('padding-top', 18);
				
						jQuery("#allgemeine_infos_wirgestaltenschule").css('top', 344);
						jQuery("#allgemeine_infos_wirgestaltenschule").css('height', 62);
						jQuery("#allgemeine_infos_wirgestaltenschule").css('padding-top', 18);
					
					}
				}
				
			}
			else if(jQuery(".art-hmenu").width() < 1020)
			{
				
				jQuery(".allgemeine_infos_alles").css('height', 252);
				jQuery(".allgemeine_infos_alles").css('width', 204);
				
				jQuery(".allgemeine_infos_alles > a").css('height', 45);
				jQuery(".allgemeine_infos_alles > a").css('width', 100);
				jQuery(".allgemeine_infos_alles > a").css('font-size', 12);
				
				jQuery("#allgemeine_infos_angebot").css('line-height', 4);
				
				jQuery("#allgemeine_infos_schulform").css('line-height', 4);
				jQuery("#allgemeine_infos_schulform").css('left', 102);
				jQuery("#allgemeine_infos_schulform").css('top', 51);
				
				jQuery("#allgemeine_infos_schulgebaeude").css('line-height', 4);
				jQuery("#allgemeine_infos_schulgebaeude").css('top', 102);
				
				jQuery("#allgemeine_infos_padgrundsaetze").css('left', 102);
				jQuery("#allgemeine_infos_padgrundsaetze").css('top', 152);
				jQuery("#allgemeine_infos_padgrundsaetze").css('padding-top', 0);
				
				jQuery("#allgemeine_infos_wirgestaltenschule").css('top', 204);
				jQuery("#allgemeine_infos_wirgestaltenschule").css('padding-top', 0);
				
				
				if(jQuery(".art-hmenu").width() < 800)
				{
					jQuery(".allgemeine_infos_alles").css('height', 250);
					jQuery(".allgemeine_infos_alles").css('width', 184);
				
					jQuery(".allgemeine_infos_alles > a").css('height', 45);
					jQuery(".allgemeine_infos_alles > a").css('width', 90);
					jQuery(".allgemeine_infos_alles > a").css('font-size', 11);
				
					jQuery("#allgemeine_infos_angebot").css('line-height', 4);
				
					jQuery("#allgemeine_infos_schulform").css('line-height', 4);
					jQuery("#allgemeine_infos_schulform").css('left', 92);
					jQuery("#allgemeine_infos_schulform").css('top', 51);
				
					jQuery("#allgemeine_infos_schulgebaeude").css('line-height', 4);
					jQuery("#allgemeine_infos_schulgebaeude").css('top', 102);
				
					jQuery("#allgemeine_infos_padgrundsaetze").css('left', 92);
					jQuery("#allgemeine_infos_padgrundsaetze").css('top', 152);
					jQuery("#allgemeine_infos_padgrundsaetze").css('height', 41);
					jQuery("#allgemeine_infos_padgrundsaetze").css('padding-top', 4);
				
					jQuery("#allgemeine_infos_wirgestaltenschule").css('top', 204);
					jQuery("#allgemeine_infos_wirgestaltenschule").css('height', 41);
					jQuery("#allgemeine_infos_wirgestaltenschule").css('padding-top', 4);
				
				}
			}
			
			// Untermenüpunkte von angebot/unterstufe anpassen
			if (jQuery(".art-hmenu").width() > 1020) 
			{
				jQuery("#unterstufe_mittagsbetreuung").replaceWith('<a id="unterstufe_mittagsbetreuung" href="/index.php/angebot/unterstufe/mittagsbetreuung">Mittagsbetreuung</a>');
				jQuery("#unterstufe_berufsorientierung").replaceWith('<a id="unterstufe_berufsorientierung" href="/index.php/angebot/unterstufe/berufsorientierung">Berufs - orientierung</a>');
			
				jQuery(".unterstufe_alles").css('height', 389);
				jQuery(".unterstufe_alles").css('width', 255);
				
				jQuery(".unterstufe_alles > a").css('height', 50);
				jQuery(".unterstufe_alles > a").css('width', 125);
				jQuery(".unterstufe_alles > a").css('font-size', 13);
				
				jQuery("#unterstufe_angebot").css('line-height', 4);
				
				jQuery("#unterstufe_wasistdiewms").css('line-height', 4);
				jQuery("#unterstufe_wasistdiewms").css('left', 127);
				jQuery("#unterstufe_wasistdiewms").css('top', 56);
				
				jQuery("#unterstufe_besonderheiten").css('line-height', 4);
				jQuery("#unterstufe_besonderheiten").css('top', 112);
				jQuery("#unterstufe_tagesbetreuung").css('padding-top', 0);
				
				jQuery("#unterstufe_berufsorientierung").css('left', 127);
				jQuery("#unterstufe_berufsorientierung").css('top', 168);
				jQuery("#unterstufe_berufsorientierung").css('padding-top', 0);
				
				jQuery("#unterstufe_stundentafel").css('line-height', 4);
				jQuery("#unterstufe_stundentafel").css('top', 224);
				
				jQuery("#unterstufe_tagesbetreuung").css('line-height', 4);
				jQuery("#unterstufe_tagesbetreuung").css('left', 127);
				jQuery("#unterstufe_tagesbetreuung").css('top', 280);
				jQuery("#unterstufe_tagesbetreuung").css('padding-top', 0);
			
				jQuery("#unterstufe_mittagsbetreuung").css('line-height', 4);
				jQuery("#unterstufe_mittagsbetreuung").css('top', 336);
				jQuery("#unterstufe_mittagsbetreuung").css('padding-top', 0);
				
				
				
				if(jQuery(".art-hmenu").width() > 1400)
				{			
					jQuery("#unterstufe_berufsorientierung").replaceWith('<a id="unterstufe_berufsorientierung" href="/index.php/angebot/unterstufe/berufsorientierung">Berufsorientierung</a>');
				
					jQuery(".unterstufe_alles").css('height', 460);
					jQuery(".unterstufe_alles").css('width', 308);
				
					jQuery(".unterstufe_alles > a").css('height', 60);
					jQuery(".unterstufe_alles > a").css('width', 150);
					jQuery(".unterstufe_alles > a").css('font-size', 13);
				
					jQuery("#unterstufe_angebot").css('line-height', 4.5);
				
					jQuery("#unterstufe_wasistdiewms").css('line-height', 4.5);
					jQuery("#unterstufe_wasistdiewms").css('left', 154);
					jQuery("#unterstufe_wasistdiewms").css('top', 66);
				
					jQuery("#unterstufe_besonderheiten").css('line-height', 4.5);
					jQuery("#unterstufe_besonderheiten").css('top', 132);
				
					jQuery("#unterstufe_berufsorientierung").css('left', 154);
					jQuery("#unterstufe_berufsorientierung").css('top', 198);
					jQuery("#unterstufe_berufsorientierung").css('line-height', 4.5);
				
					jQuery("#unterstufe_stundentafel").css('line-height', 4.5);
					jQuery("#unterstufe_stundentafel").css('top', 264);
				
					jQuery("#unterstufe_tagesbetreuung").css('line-height', 4.5);
					jQuery("#unterstufe_tagesbetreuung").css('left', 154);
					jQuery("#unterstufe_tagesbetreuung").css('top', 330);
				
					jQuery("#unterstufe_mittagsbetreuung").css('line-height', 4.5);
					jQuery("#unterstufe_mittagsbetreuung").css('top', 396);
					jQuery("#unterstufe_mittagsbetreuung").css('height', 60);
					jQuery("#unterstufe_mittagsbetreuung").css('padding-top', 0);
					
				
				
					if(jQuery(".art-hmenu").width() > 1700)
					{
						jQuery(".unterstufe_alles").css('height', 600);
						jQuery(".unterstufe_alles").css('width', 413);
				
						jQuery(".unterstufe_alles > a").css('height', 80);
						jQuery(".unterstufe_alles > a").css('width', 200);
						jQuery(".unterstufe_alles > a").css('font-size', 13);
				
						jQuery("#unterstufe_angebot").css('line-height', 6);
				
						jQuery("#unterstufe_wasistdiewms").css('line-height', 6);
						jQuery("#unterstufe_wasistdiewms").css('left', 207);
						jQuery("#unterstufe_wasistdiewms").css('top', 86);
				
						jQuery("#unterstufe_besonderheiten").css('line-height', 6);
						jQuery("#unterstufe_besonderheiten").css('top', 172);
				
						jQuery("#unterstufe_berufsorientierung").css('left', 207);
						jQuery("#unterstufe_berufsorientierung").css('top', 258);
						jQuery("#unterstufe_berufsorientierung").css('line-height', 6);
				
						jQuery("#unterstufe_stundentafel").css('line-height', 6);
						jQuery("#unterstufe_stundentafel").css('top', 344);
					
						jQuery("#unterstufe_tagesbetreuung").css('line-height', 6);
						jQuery("#unterstufe_tagesbetreuung").css('left', 207);
						jQuery("#unterstufe_tagesbetreuung").css('top', 430);
				
						jQuery("#unterstufe_mittagsbetreuung").css('line-height', 6);
						jQuery("#unterstufe_mittagsbetreuung").css('top', 516);
						jQuery("#unterstufe_mittagsbetreuung").css('height', 80);
						jQuery("#unterstufe_mittagsbetreuung").css('padding-top', 0);
					}
				}
				
			}
			else if(jQuery(".art-hmenu").width() < 1020)
			{
				jQuery("#unterstufe_mittagsbetreuung").replaceWith('<a id="unterstufe_mittagsbetreuung" href="/index.php/angebot/unterstufe/mittagsbetreuung">Mittags - betreuung</a>');
			
				jQuery(".unterstufe_alles").css('height', 354);
				jQuery(".unterstufe_alles").css('width', 204);
				
				jQuery(".unterstufe_alles > a").css('height', 45);
				jQuery(".unterstufe_alles > a").css('width', 100);
				jQuery(".unterstufe_alles > a").css('font-size', 12);
				
				jQuery("#unterstufe_angebot").css('line-height', 4);
				
				jQuery("#unterstufe_wasistdiewms").css('line-height', 4);
				jQuery("#unterstufe_wasistdiewms").css('left', 102);
				jQuery("#unterstufe_wasistdiewms").css('top', 51);
				jQuery("#unterstufe_wasistdiewms").css('padding-top', 0);
				
				jQuery("#unterstufe_besonderheiten").css('line-height', 4);
				jQuery("#unterstufe_besonderheiten").css('top', 102);
				jQuery("#unterstufe_tagesbetreuung").css('padding-top', 0);
				
				jQuery("#unterstufe_berufsorientierung").css('left', 102);
				jQuery("#unterstufe_berufsorientierung").css('top', 152);
				jQuery("#unterstufe_berufsorientierung").css('padding-top', 0);
				
				jQuery("#unterstufe_stundentafel").css('line-height', 4);
				jQuery("#unterstufe_stundentafel").css('top', 204);
				
				jQuery("#unterstufe_tagesbetreuung").css('line-height', 4);
				jQuery("#unterstufe_tagesbetreuung").css('left', 102);
				jQuery("#unterstufe_tagesbetreuung").css('top', 255);
				jQuery("#unterstufe_tagesbetreuung").css('padding-top', 0);
				
				jQuery("#unterstufe_mittagsbetreuung").css('line-height', 2);
				jQuery("#unterstufe_mittagsbetreuung").css('top', 307);
				jQuery("#unterstufe_mittagsbetreuung").css('padding-top', 0);
				
				
				if(jQuery(".art-hmenu").width() < 800)
				{
					jQuery(".unterstufe_alles").css('height', 353);
					jQuery(".unterstufe_alles").css('width', 184);
				
					jQuery(".unterstufe_alles > a").css('height', 45);
					jQuery(".unterstufe_alles > a").css('width', 90);
					jQuery(".unterstufe_alles > a").css('font-size', 11);
				
					jQuery("#unterstufe_angebot").css('line-height', 4);
				
					jQuery("#unterstufe_wasistdiewms").css('line-height', 4);
					jQuery("#unterstufe_wasistdiewms").css('left', 92);
					jQuery("#unterstufe_wasistdiewms").css('top', 51);
				
					jQuery("#unterstufe_besonderheiten").css('line-height', 4);
					jQuery("#unterstufe_besonderheiten").css('top', 102);
				
					jQuery("#unterstufe_berufsorientierung").css('left', 92);
					jQuery("#unterstufe_berufsorientierung").css('top', 152);
					jQuery("#unterstufe_berufsorientierung").css('height', 41);
					jQuery("#unterstufe_berufsorientierung").css('padding-top', 4);
				
					jQuery("#unterstufe_stundentafel").css('line-height', 4);
					jQuery("#unterstufe_stundentafel").css('top', 204);
				
					jQuery("#unterstufe_tagesbetreuung").css('line-height', 4);
					jQuery("#unterstufe_tagesbetreuung").css('left', 92);
					jQuery("#unterstufe_tagesbetreuung").css('top', 255);
				
					jQuery("#unterstufe_mittagsbetreuung").css('top', 307);
					jQuery("#unterstufe_mittagsbetreuung").css('height', 41);
					jQuery("#unterstufe_mittagsbetreuung").css('padding-top', 4);
				
				}
			}
			
			// Untermenüpunkte von angebot/oberstufe anpassen
			if (jQuery(".art-hmenu").width() > 1020) 
			{
				jQuery(".oberstufe_alles").css('height', 220);
				jQuery(".oberstufe_alles").css('width', 254);
				
				jQuery(".oberstufe_alles > a").css('height', 50);
				jQuery(".oberstufe_alles > a").css('width', 125);
				jQuery(".oberstufe_alles > a").css('font-size', 13);
				
				jQuery("#oberstufe_angebot").css('line-height', 4);
				
				jQuery("#oberstufe_unsere_oberstufe").css('left', 127);
				jQuery("#oberstufe_unsere_oberstufe").css('top', 56);
				jQuery("#oberstufe_unsere_oberstufe").css('padding-top', 0);
				
				jQuery("#oberstufe_stundentafel").css('line-height', 4);
				jQuery("#oberstufe_stundentafel").css('top', 112);
				
				jQuery("#oberstufe_zentrale_reifepruefung").css('left', 127);
				jQuery("#oberstufe_zentrale_reifepruefung").css('top', 168);
				jQuery("#oberstufe_zentrale_reifepruefung").css('padding-top', 0);
				
				if(jQuery(".art-hmenu").width() > 1400)
				{			
					jQuery(".oberstufe_alles").css('height', 262);
					jQuery(".oberstufe_alles").css('width', 308);
				
					jQuery(".oberstufe_alles > a").css('height', 60);
					jQuery(".oberstufe_alles > a").css('width', 150);
					jQuery(".oberstufe_alles > a").css('font-size', 13);
				
					jQuery("#oberstufe_angebot").css('line-height', 4.5);
				
					jQuery("#oberstufe_unsere_oberstufe").css('left', 154);
					jQuery("#oberstufe_unsere_oberstufe").css('top', 66);
					jQuery("#oberstufe_unsere_oberstufe").css('height', 52);
					jQuery("#oberstufe_unsere_oberstufe").css('padding-top', 8);
				
					jQuery("#oberstufe_stundentafel").css('line-height', 4.5);
					jQuery("#oberstufe_stundentafel").css('top', 132);
				
					jQuery("#oberstufe_zentrale_reifepruefung").css('left', 154);
					jQuery("#oberstufe_zentrale_reifepruefung").css('top', 198);
					jQuery("#oberstufe_zentrale_reifepruefung").css('height', 52);
					jQuery("#oberstufe_zentrale_reifepruefung").css('padding-top', 8);
				
					if(jQuery(".art-hmenu").width() > 1700)
					{
						jQuery(".oberstufe_alles").css('height', 345);
						jQuery(".oberstufe_alles").css('width', 413);
				
						jQuery(".oberstufe_alles > a").css('height', 80);
						jQuery(".oberstufe_alles > a").css('width', 200);
						jQuery(".oberstufe_alles > a").css('font-size', 13);
				
						jQuery("#oberstufe_angebot").css('line-height', 6);
				
						jQuery("#oberstufe_unsere_oberstufe").css('left', 207);
						jQuery("#oberstufe_unsere_oberstufe").css('top', 86);
						jQuery("#oberstufe_unsere_oberstufe").css('height', 62);
						jQuery("#oberstufe_unsere_oberstufe").css('padding-top', 18);
				
						jQuery("#oberstufe_stundentafel").css('line-height', 6);
						jQuery("#oberstufe_stundentafel").css('top', 172);
				
						jQuery("#oberstufe_zentrale_reifepruefung").css('left', 207);
						jQuery("#oberstufe_zentrale_reifepruefung").css('top', 258);
						jQuery("#oberstufe_zentrale_reifepruefung").css('height', 62);
						jQuery("#oberstufe_zentrale_reifepruefung").css('padding-top', 18);
				
					}
				}
				
			}
			else if(jQuery(".art-hmenu").width() < 1020)
			{
				
				jQuery(".oberstufe_alles").css('height', 200);
				jQuery(".oberstufe_alles").css('width', 204);
				
				jQuery(".oberstufe_alles > a").css('height', 45);
				jQuery(".oberstufe_alles > a").css('width', 100);
				jQuery(".oberstufe_alles > a").css('font-size', 12);
				
				jQuery("#oberstufe_angebot").css('line-height', 4);
				
				jQuery("#oberstufe_unsere_oberstufe").css('left', 102);
				jQuery("#oberstufe_unsere_oberstufe").css('top', 51);
				jQuery("#oberstufe_unsere_oberstufe").css('padding-top', 0);
				
				jQuery("#oberstufe_stundentafel").css('line-height', 4);
				jQuery("#oberstufe_stundentafel").css('top', 102);
				
				jQuery("#oberstufe_zentrale_reifepruefung").css('left', 102);
				jQuery("#oberstufe_zentrale_reifepruefung").css('top', 152);
				jQuery("#oberstufe_zentrale_reifepruefung").css('padding-top', 0);
				
				
				if(jQuery(".art-hmenu").width() < 800)
				{
					jQuery(".oberstufe_alles").css('height', 199);
					jQuery(".oberstufe_alles").css('width', 184);
				
					jQuery(".oberstufe_alles > a").css('height', 45);
					jQuery(".oberstufe_alles > a").css('width', 90);
					jQuery(".oberstufe_alles > a").css('font-size', 11);
				
					jQuery("#oberstufe_angebot").css('line-height', 4);
				
					jQuery("#oberstufe_unsere_oberstufe").css('left', 92);
					jQuery("#oberstufe_unsere_oberstufe").css('top', 51);
					jQuery("#oberstufe_unsere_oberstufe").css('height', 41);
					jQuery("#oberstufe_unsere_oberstufe").css('padding-top', 4);
				
					jQuery("#oberstufe_stundentafel").css('line-height', 4);
					jQuery("#oberstufe_stundentafel").css('top', 102);
				
					jQuery("#oberstufe_zentrale_reifepruefung").css('left', 92);
					jQuery("#oberstufe_zentrale_reifepruefung").css('top', 152);
					jQuery("#oberstufe_zentrale_reifepruefung").css('height', 41);
					jQuery("#oberstufe_zentrale_reifepruefung").css('padding-top', 4);
				
				}
			}
			
			// Untermenüpunkte von Schulteam anpassen
			if (jQuery(".art-hmenu").width() > 1020) 
			{				
				jQuery("#schulteam_betreuungslehrerin").replaceWith('<a id="schulteam_betreuungslehrerin" href="index.php/schulteam/betreuungslehrerin">Betreuungs - lehrerin</a>');
				jQuery("#schulteam_bildungsberaterinnen").replaceWith('<a id="schulteam_bildungsberaterinnen" href="index.php/schulteam/bildungsberaterinnen">Bildungsbe- raterinnen</a>');
				jQuery("#schulteam_absolventinnen").replaceWith('<a id="schulteam_absolventinnen" href="index.php/schulteam/absolventinnen">Absolventinnen</a>');
			
				jQuery(".schulteam_alles").css('height', 445);
				jQuery(".schulteam_alles").css('width', 255);
				
				jQuery(".schulteam_alles > a").css('height', 50);
				jQuery(".schulteam_alles > a").css('width', 125);
				jQuery(".schulteam_alles > a").css('font-size', 13);
				
				jQuery("#schulteam_direktion").css('line-height', 4);
				
				jQuery("#schulteam_lehrerinnen").css('line-height', 4);
				jQuery("#schulteam_lehrerinnen").css('left', 127);
				jQuery("#schulteam_lehrerinnen").css('top', 56);
				
				jQuery("#schulteam_schuelerinnen").css('line-height', 4);
				jQuery("#schulteam_schuelerinnen").css('top', 112);
				
				jQuery("#schulteam_psychologin").css('line-height', 4);
				jQuery("#schulteam_psychologin").css('left', 127);
				jQuery("#schulteam_psychologin").css('top', 168);
				
				jQuery("#schulteam_schulaerztin").css('line-height', 4);
				jQuery("#schulteam_schulaerztin").css('top', 224);
				
				jQuery("#schulteam_betreuungslehrerin").css('left', 127);
				jQuery("#schulteam_betreuungslehrerin").css('top', 280);
				jQuery("#schulteam_betreuungslehrerin").css('padding-top', 0);
				
				jQuery("#schulteam_bildungsberaterinnen").css('top', 336);
				jQuery("#schulteam_bildungsberaterinnen").css('padding-top', 0);
				
				jQuery("#schulteam_absolventinnen").css('left', 127);
				jQuery("#schulteam_absolventinnen").css('top', 392);
				jQuery("#schulteam_absolventinnen").css('padding-top', 0);
				jQuery("#schulteam_absolventinnen").css('line-height', 4);
				
				if(jQuery(".art-hmenu").width() > 1400)
				{			
					jQuery("#schulteam_betreuungslehrerin").replaceWith('<a id="schulteam_betreuungslehrerin" href="index.php/schulteam/betreuungslehrerin">Betreuungslehrerin</a>');
					jQuery("#schulteam_bildungsberaterinnen").replaceWith('<a id="schulteam_bildungsberaterinnen" href="index.php/schulteam/bildungsberaterinnen">Bildungsberaterinnen</a>');
					
					jQuery(".schulteam_alles").css('height', 526);
					jQuery(".schulteam_alles").css('width', 308);
				
					jQuery(".schulteam_alles > a").css('height', 60);
					jQuery(".schulteam_alles > a").css('width', 150);
					jQuery(".schulteam_alles > a").css('font-size', 13);
				
					jQuery("#schulteam_direktion").css('line-height', 4.5);
				
					jQuery("#schulteam_lehrerinnen").css('line-height', 4.5);
					jQuery("#schulteam_lehrerinnen").css('left', 154);
					jQuery("#schulteam_lehrerinnen").css('top', 66);
				
					jQuery("#schulteam_schuelerinnen").css('line-height', 4.5);
					jQuery("#schulteam_schuelerinnen").css('top', 132);
								
					jQuery("#schulteam_psychologin").css('line-height', 4.5);
					jQuery("#schulteam_psychologin").css('left', 154);
					jQuery("#schulteam_psychologin").css('top', 198);
				
					jQuery("#schulteam_schulaerztin").css('line-height', 4.5);
					jQuery("#schulteam_schulaerztin").css('top', 264);
				
					jQuery("#schulteam_betreuungslehrerin").css('left', 154);
					jQuery("#schulteam_betreuungslehrerin").css('top', 330);
					jQuery("#schulteam_betreuungslehrerin").css('line-height', 4.5);
				
					jQuery("#schulteam_bildungsberaterinnen").css('top', 396);
					jQuery("#schulteam_bildungsberaterinnen").css('line-height', 4.5);
				
					jQuery("#schulteam_absolventinnen").css('left', 154);
					jQuery("#schulteam_absolventinnen").css('top', 462);
					jQuery("#schulteam_absolventinnen").css('line-height', 4.5);
				
					if(jQuery(".art-hmenu").width() > 1700)
					{
					
						jQuery(".schulteam_alles").css('height', 690);
						jQuery(".schulteam_alles").css('width', 413);
				
						jQuery(".schulteam_alles > a").css('height', 80);
						jQuery(".schulteam_alles > a").css('width', 200);
						jQuery(".schulteam_alles > a").css('font-size', 13);
				
						jQuery("#schulteam_direktion").css('line-height', 6);
				
						jQuery("#schulteam_lehrerinnen").css('line-height', 6);
						jQuery("#schulteam_lehrerinnen").css('left', 207);
						jQuery("#schulteam_lehrerinnen").css('top', 86);
				
						jQuery("#schulteam_schuelerinnen").css('line-height', 6);
						jQuery("#schulteam_schuelerinnen").css('top', 172);

						jQuery("#schulteam_psychologin").css('line-height', 6);
						jQuery("#schulteam_psychologin").css('left', 207);
						jQuery("#schulteam_psychologin").css('top', 258);
				
						jQuery("#schulteam_schulaerztin").css('line-height', 6);
						jQuery("#schulteam_schulaerztin").css('top', 344);
				
						jQuery("#schulteam_betreuungslehrerin").css('left', 207);
						jQuery("#schulteam_betreuungslehrerin").css('top', 430);
						jQuery("#schulteam_betreuungslehrerin").css('line-height', 6);
				
						jQuery("#schulteam_bildungsberaterinnen").css('top', 516);
						jQuery("#schulteam_bildungsberaterinnen").css('line-height', 6);
				
						jQuery("#schulteam_absolventinnen").css('left', 207);
						jQuery("#schulteam_absolventinnen").css('top', 602);
						jQuery("#schulteam_absolventinnen").css('line-height', 6);
					}
				}
				
			}
			else if(jQuery(".art-hmenu").width() < 1020)
			{
				jQuery("#schulteam_absolventinnen").replaceWith('<a id="schulteam_absolventinnen" href="index.php/schulteam/absolventinnen">Absolventinnen</a>');
				
				jQuery(".schulteam_alles").css('height', 410);
				jQuery(".schulteam_alles").css('width', 204);
				
				jQuery(".schulteam_alles > a").css('height', 45);
				jQuery(".schulteam_alles > a").css('width', 100);
				jQuery(".schulteam_alles > a").css('font-size', 12);
				
				jQuery("#schulteam_direktion").css('line-height', 4);
				
				jQuery("#schulteam_lehrerinnen").css('line-height', 4);
				jQuery("#schulteam_lehrerinnen").css('left', 102);
				jQuery("#schulteam_lehrerinnen").css('top', 51);
				
				jQuery("#schulteam_schuelerinnen").css('line-height', 4);
				jQuery("#schulteam_schuelerinnen").css('top', 102);
				
				jQuery("#schulteam_psychologin").css('line-height', 4);
				jQuery("#schulteam_psychologin").css('left', 102);
				jQuery("#schulteam_psychologin").css('top', 152);
				
				jQuery("#schulteam_schulaerztin").css('line-height', 4);
				jQuery("#schulteam_schulaerztin").css('top', 204);
				
				jQuery("#schulteam_betreuungslehrerin").css('left', 102);
				jQuery("#schulteam_betreuungslehrerin").css('top', 255);
				jQuery("#schulteam_betreuungslehrerin").css('padding-top', 0);
				
				jQuery("#schulteam_bildungsberaterinnen").css('top', 307);
				jQuery("#schulteam_bildungsberaterinnen").css('padding-top', 0);
				
				jQuery("#schulteam_absolventinnen").css('left', 102);
				jQuery("#schulteam_absolventinnen").css('top', 362);
				jQuery("#schulteam_absolventinnen").css('padding-top', 0);
				jQuery("#schulteam_absolventinnen").css('line-height', 4);
				
				if(jQuery(".art-hmenu").width() < 800)
				{
					jQuery("#schulteam_absolventinnen").replaceWith('<a id="schulteam_absolventinnen" href="index.php/schulteam/absolventinnen">Absolvent - innen</a>');
				
					jQuery(".schulteam_alles").css('height', 410);
					jQuery(".schulteam_alles").css('width', 184);
				
					jQuery(".schulteam_alles > a").css('height', 45);
					jQuery(".schulteam_alles > a").css('width', 90);
					jQuery(".schulteam_alles > a").css('font-size', 11);
				
					jQuery("#schulteam_direktion").css('line-height', 4);
				
					jQuery("#schulteam_lehrerinnen").css('line-height', 4);
					jQuery("#schulteam_lehrerinnen").css('left', 92);
					jQuery("#schulteam_lehrerinnen").css('top', 51);
				
					jQuery("#schulteam_schuelerinnen").css('line-height', 4);
					jQuery("#schulteam_schuelerinnen").css('top', 102);
				
					jQuery("#schulteam_psychologin").css('line-height', 4);
					jQuery("#schulteam_psychologin").css('left', 92);
					jQuery("#schulteam_psychologin").css('top', 152);
				
					jQuery("#schulteam_schulaerztin").css('line-height', 4);
					jQuery("#schulteam_schulaerztin").css('top', 204);
				
					jQuery("#schulteam_betreuungslehrerin").css('left', 92);
					jQuery("#schulteam_betreuungslehrerin").css('top', 255);
					jQuery("#schulteam_betreuungslehrerin").css('height', 41);
					jQuery("#schulteam_betreuungslehrerin").css('padding-top', 4);
				
					jQuery("#schulteam_bildungsberaterinnen").css('top', 307);
					jQuery("#schulteam_bildungsberaterinnen").css('height', 41);
					jQuery("#schulteam_bildungsberaterinnen").css('padding-top', 4);
				
					jQuery("#schulteam_absolventinnen").css('left', 92);
					jQuery("#schulteam_absolventinnen").css('top', 362);
					jQuery("#schulteam_absolventinnen").css('height', 41);
					jQuery("#schulteam_absolventinnen").css('padding-top', 4);
					jQuery("#schulteam_absolventinnen").css('line-height', 2);
				}
			}
			
			// Untermenüpunkte von Schulpartner anpassen
			if (jQuery(".art-hmenu").width() > 1020) 
			{
				jQuery(".schulpartner_alles").css('height', 276);
				jQuery(".schulpartner_alles").css('width', 255);
				
				jQuery(".schulpartner_alles > a").css('height', 50);
				jQuery(".schulpartner_alles > a").css('width', 125);
				jQuery(".schulpartner_alles > a").css('font-size', 13);
				
				jQuery("#schulpartner_sga").css('line-height', 4);
				
				jQuery("#schulpartner_elternvereinneu").css('line-height', 4);
				jQuery("#schulpartner_elternvereinneu").css('left', 127);
				jQuery("#schulpartner_elternvereinneu").css('top', 56);
				
				jQuery("#schulpartner_sponsoren").css('line-height', 4);
				jQuery("#schulpartner_sponsoren").css('top', 112);
				
				jQuery("#schulpartner_links").css('line-height', 4);
				jQuery("#schulpartner_links").css('top', 168);
				jQuery("#schulpartner_links").css('left', 127);
							
				jQuery("#schulpartner_buffet").css('line-height', 4);
				jQuery("#schulpartner_buffet").css('top', 224);
				
				if(jQuery(".art-hmenu").width() > 1400)
				{			
					
					jQuery(".schulpartner_alles").css('height', 330);
					jQuery(".schulpartner_alles").css('width', 308);
				
					jQuery(".schulpartner_alles > a").css('height', 60);
					jQuery(".schulpartner_alles > a").css('width', 150);
					jQuery(".schulpartner_alles > a").css('font-size', 13);
				
					jQuery("#schulpartner_sga").css('line-height', 4.5);
				
					jQuery("#schulpartner_elternvereinneu").css('line-height', 4.5);
					jQuery("#schulpartner_elternvereinneu").css('left', 154);
					jQuery("#schulpartner_elternvereinneu").css('top', 66);
				
					jQuery("#schulpartner_sponsoren").css('line-height', 4.5);
					jQuery("#schulpartner_sponsoren").css('top', 132);
				
					jQuery("#schulpartner_links").css('line-height', 4.5);
					jQuery("#schulpartner_links").css('top', 198);
					jQuery("#schulpartner_links").css('left', 154);
				
					jQuery("#schulpartner_buffet").css('line-height', 4.5);
					jQuery("#schulpartner_buffet").css('top', 264);
				
					if(jQuery(".art-hmenu").width() > 1700)
					{
						jQuery(".schulpartner_alles").css('height', 430);
						jQuery(".schulpartner_alles").css('width', 413);
				
						jQuery(".schulpartner_alles > a").css('height', 80);
						jQuery(".schulpartner_alles > a").css('width', 200);
						jQuery(".schulpartner_alles > a").css('font-size', 13);
				
						jQuery("#schulpartner_sga").css('line-height', 6);
				
						jQuery("#schulpartner_elternvereinneu").css('line-height', 6);
						jQuery("#schulpartner_elternvereinneu").css('left', 207);
						jQuery("#schulpartner_elternvereinneu").css('top', 86);
				
						jQuery("#schulpartner_sponsoren").css('line-height', 6);
						jQuery("#schulpartner_sponsoren").css('top', 172);
				
						jQuery("#schulpartner_links").css('line-height', 6);
						jQuery("#schulpartner_links").css('top', 258);
						jQuery("#schulpartner_links").css('left', 207);
						
						jQuery("#schulpartner_buffet").css('line-height', 6);
						jQuery("#schulpartner_buffet").css('top', 344);
					}
				}
				
			}
			else if(jQuery(".art-hmenu").width() < 1020)
			{
				
				jQuery(".schulpartner_alles").css('height', 252);
				jQuery(".schulpartner_alles").css('width', 204);
				
				jQuery(".schulpartner_alles > a").css('height', 45);
				jQuery(".schulpartner_alles > a").css('width', 100);
				jQuery(".schulpartner_alles > a").css('font-size', 12);
				
				jQuery("#schulpartner_sga").css('line-height', 4);
				
				jQuery("#schulpartner_elternvereinneu").css('line-height', 4);
				jQuery("#schulpartner_elternvereinneu").css('left', 102);
				jQuery("#schulpartner_elternvereinneu").css('top', 51);
				
				jQuery("#schulpartner_sponsoren").css('line-height', 4);
				jQuery("#schulpartner_sponsoren").css('top', 102);
				jQuery("#schulpartner_sponsoren").css('font-size', 11);
				
				jQuery("#schulpartner_links").css('line-height', 4);
				jQuery("#schulpartner_links").css('top', 152);
				jQuery("#schulpartner_links").css('left', 102);
			
				jQuery("#schulpartner_buffet").css('line-height', 4);
				jQuery("#schulpartner_buffet").css('top', 204);
				
				if(jQuery(".art-hmenu").width() < 800)
				{
					jQuery(".schulpartner_alles").css('height', 251);
					jQuery(".schulpartner_alles").css('width', 184);
				
					jQuery(".schulpartner_alles > a").css('height', 45);
					jQuery(".schulpartner_alles > a").css('width', 90);
					jQuery(".schulpartner_alles > a").css('font-size', 11);
				
					jQuery("#schulpartner_sga").css('line-height', 4);
				
					jQuery("#schulpartner_elternvereinneu").css('line-height', 4);
					jQuery("#schulpartner_elternvereinneu").css('left', 92);
					jQuery("#schulpartner_elternvereinneu").css('top', 51);
				
					jQuery("#schulpartner_sponsoren").css('line-height', 4);
					jQuery("#schulpartner_sponsoren").css('top', 102);
					jQuery("#schulpartner_sponsoren").css('font-size', 10);
				
					jQuery("#schulpartner_links").css('line-height', 4);
					jQuery("#schulpartner_links").css('top', 152);
					jQuery("#schulpartner_links").css('left', 92);
				
					jQuery("#schulpartner_buffet").css('line-height', 4);
					jQuery("#schulpartner_buffet").css('top', 204);
				
				}
			}
			
			// Untermenüpunkte von Bibliothek anpassen
			if (jQuery(".art-hmenu").width() > 1020) 
			{			
				jQuery(".bibliothek_alles").css('height', 165);
				jQuery(".bibliothek_alles").css('width', 255);
				
				jQuery(".bibliothek_alles > a").css('height', 50);
				jQuery(".bibliothek_alles > a").css('width', 125);
				jQuery(".bibliothek_alles > a").css('font-size', 13);
				
				jQuery("#bibliothek_allgemeine_informationen").css('padding-top', 0);
				
				jQuery("#bibliothek_buchderwoche").css('left', 127);
				jQuery("#bibliothek_buchderwoche").css('top', 56);
				jQuery("#bibliothek_buchderwoche").css('padding-top', 0);
				
				jQuery("#bibliothek_oeffnungszeiten").css('line-height', 4);
				jQuery("#bibliothek_oeffnungszeiten").css('top', 112);
							
				
				if(jQuery(".art-hmenu").width() > 1400)
				{			
					
					jQuery(".bibliothek_alles").css('height', 197);
					jQuery(".bibliothek_alles").css('width', 308);
				
					jQuery(".bibliothek_alles > a").css('height', 60);
					jQuery(".bibliothek_alles > a").css('width', 150);
					jQuery(".bibliothek_alles > a").css('font-size', 13);
				
					jQuery("#bibliothek_allgemeine_informationen").css('height', 52);
					jQuery("#bibliothek_allgemeine_informationen").css('padding-top', 8);
				
					jQuery("#bibliothek_buchderwoche").css('left', 154);
					jQuery("#bibliothek_buchderwoche").css('top', 66);
					jQuery("#bibliothek_buchderwoche").css('height', 52);
					jQuery("#bibliothek_buchderwoche").css('padding-top', 8);
				
					jQuery("#bibliothek_oeffnungszeiten").css('line-height', 4.5);
					jQuery("#bibliothek_oeffnungszeiten").css('top', 132);
				
				
					if(jQuery(".art-hmenu").width() > 1700)
					{
						jQuery(".bibliothek_alles").css('height', 259);
						jQuery(".bibliothek_alles").css('width', 413);
				
						jQuery(".bibliothek_alles > a").css('height', 80);
						jQuery(".bibliothek_alles > a").css('width', 200);
						jQuery(".bibliothek_alles > a").css('font-size', 13);
				
						jQuery("#bibliothek_allgemeine_informationen").css('height', 62);
						jQuery("#bibliothek_allgemeine_informationen").css('padding-top', 18);
				
						jQuery("#bibliothek_buchderwoche").css('left', 207);
						jQuery("#bibliothek_buchderwoche").css('top', 86);
						jQuery("#bibliothek_buchderwoche").css('height', 62);
						jQuery("#bibliothek_buchderwoche").css('padding-top', 18);
				
						jQuery("#bibliothek_oeffnungszeiten").css('line-height', 6);
						jQuery("#bibliothek_oeffnungszeiten").css('top', 172);
					}
				}
				
			}
			else if(jQuery(".art-hmenu").width() < 1020)
			{				
				jQuery(".bibliothek_alles").css('height', 150);
				jQuery(".bibliothek_alles").css('width', 204);
				
				jQuery(".bibliothek_alles > a").css('height', 45);
				jQuery(".bibliothek_alles > a").css('width', 100);
				jQuery(".bibliothek_alles > a").css('font-size', 12);
				
				jQuery("#bibliothek_allgemeine_informationen").css('padding-top', 0);
				
				jQuery("#bibliothek_buchderwoche").css('left', 102);
				jQuery("#bibliothek_buchderwoche").css('top', 51);
				jQuery("#bibliothek_buchderwoche").css('padding-top', 0);
				
				jQuery("#bibliothek_oeffnungszeiten").css('line-height', 4);
				jQuery("#bibliothek_oeffnungszeiten").css('top', 102);
				jQuery("#bibliothek_oeffnungszeiten").css('padding-top', 0);
				
				if(jQuery(".art-hmenu").width() < 800)
				{				
					jQuery(".bibliothek_alles").css('height', 148);
					jQuery(".bibliothek_alles").css('width', 184);
				
					jQuery(".bibliothek_alles > a").css('height', 45);
					jQuery(".bibliothek_alles > a").css('width', 90);
					jQuery(".bibliothek_alles > a").css('font-size', 11);
				
					jQuery("#bibliothek_allgemeine_informationen").css('height', 41);
					jQuery("#bibliothek_allgemeine_informationen").css('padding-top', 4);
				
					jQuery("#bibliothek_buchderwoche").css('left', 92);
					jQuery("#bibliothek_buchderwoche").css('top', 51);
					jQuery("#bibliothek_buchderwoche").css('height', 41);
					jQuery("#bibliothek_buchderwoche").css('padding-top', 4);
				
					jQuery("#bibliothek_oeffnungszeiten").css('line-height', 4);
					jQuery("#bibliothek_oeffnungszeiten").css('top', 102);
				
				}
			}
			
			//Untermenüpunkte von Erfolge anpassen
			if (jQuery(".art-hmenu").width() > 1020) 
			{
				jQuery(".erfolge_alles").css('height', 220);
				jQuery(".erfolge_alles").css('width', 254);
				
				jQuery(".erfolge_alles > a").css('height', 50);
				jQuery(".erfolge_alles > a").css('width', 125);
				jQuery(".erfolge_alles > a").css('font-size', 13);
				
				jQuery("#erfolge_projekte").css('line-height', 4);
				
				jQuery("#erfolge_aktivitaeten").css('left', 127);
				jQuery("#erfolge_aktivitaeten").css('top', 56);
				jQuery("#erfolge_aktivitaeten").css('line-height', 4);
				
				jQuery("#erfolge_studentoftheyear").css('top', 112);
				jQuery("#erfolge_studentoftheyear").css('line-height', 4);
				
				jQuery("#erfolge_creativeaward").css('left', 127);
				jQuery("#erfolge_creativeaward").css('top', 168);
				jQuery("#erfolge_creativeaward").css('line-height', 4);
				
				if(jQuery(".art-hmenu").width() > 1400)
				{						
					jQuery(".erfolge_alles").css('height', 262);
					jQuery(".erfolge_alles").css('width', 308);
				
					jQuery(".erfolge_alles > a").css('height', 60);
					jQuery(".erfolge_alles > a").css('width', 150);
					jQuery(".erfolge_alles > a").css('font-size', 13);
				
					jQuery("#erfolge_projekte").css('line-height', 4.5);
				
					jQuery("#erfolge_aktivitaeten").css('left', 154);
					jQuery("#erfolge_aktivitaeten").css('top', 66);
					jQuery("#erfolge_aktivitaeten").css('line-height', 4.5);
					
					jQuery("#erfolge_studentoftheyear").css('top', 132);
					jQuery("#erfolge_studentoftheyear").css('line-height', 4.5);					
				
					jQuery("#erfolge_creativeaward").css('left', 154);
					jQuery("#erfolge_creativeaward").css('top', 198);
					jQuery("#erfolge_creativeaward").css('line-height', 4.5);
				
					if(jQuery(".art-hmenu").width() > 1700)
					{
						jQuery(".erfolge_alles").css('height', 345);
						jQuery(".erfolge_alles").css('width', 413);
				
						jQuery(".erfolge_alles > a").css('height', 80);
						jQuery(".erfolge_alles > a").css('width', 200);
						jQuery(".erfolge_alles > a").css('font-size', 13);
				
						jQuery("#erfolge_projekte").css('line-height', 6);
				
						jQuery("#erfolge_aktivitaeten").css('left', 207);
						jQuery("#erfolge_aktivitaeten").css('top', 86);
						jQuery("#erfolge_aktivitaeten").css('line-height', 6);
				
						jQuery("#erfolge_studentoftheyear").css('line-height', 6);
						jQuery("#erfolge_studentoftheyear").css('top', 172);
						jQuery("#erfolge_studentoftheyear").css('padding-top', 0);
				
						jQuery("#erfolge_creativeaward").css('left', 207);
						jQuery("#erfolge_creativeaward").css('top', 258);
						jQuery("#erfolge_creativeaward").css('line-height', 6);
				
					}
				}
				
			}
			else if(jQuery(".art-hmenu").width() < 1020)
			{
				
				jQuery(".erfolge_alles").css('height', 200);
				jQuery(".erfolge_alles").css('width', 204);
				
				jQuery(".erfolge_alles > a").css('height', 45);
				jQuery(".erfolge_alles > a").css('width', 100);
				jQuery(".erfolge_alles > a").css('font-size', 12);
				
				jQuery("#erfolge_projekte").css('line-height', 4);
				
				jQuery("#erfolge_aktivitaeten").css('left', 102);
				jQuery("#erfolge_aktivitaeten").css('top', 51);
				jQuery("#erfolge_aktivitaeten").css('line-height', 4);
				
				jQuery("#erfolge_studentoftheyear").css('top', 102);
				jQuery("#erfolge_studentoftheyear").css('line-height', 2);
				jQuery("#erfolge_studentoftheyear").css('padding-top', 0);
				
				jQuery("#erfolge_creativeaward").css('left', 102);
				jQuery("#erfolge_creativeaward").css('top', 152);
				jQuery("#erfolge_creativeaward").css('line-height', 4);
				
				if(jQuery(".art-hmenu").width() < 800)
				{
					jQuery(".erfolge_alles").css('height', 199);
					jQuery(".erfolge_alles").css('width', 184);
				
					jQuery(".erfolge_alles > a").css('height', 45);
					jQuery(".erfolge_alles > a").css('width', 90);
					jQuery(".erfolge_alles > a").css('font-size', 11);
				
					jQuery("#erfolge_projekte").css('line-height', 4);
				
					jQuery("#erfolge_aktivitaeten").css('left', 92);
					jQuery("#erfolge_aktivitaeten").css('top', 51);
					jQuery("#erfolge_aktivitaeten").css('line-height', 4);
				
					jQuery("#erfolge_studentoftheyear").css('top', 102);
					jQuery("#erfolge_studentoftheyear").css('height', 41);
					jQuery("#erfolge_studentoftheyear").css('padding-top', 5);
				
					jQuery("#erfolge_creativeaward").css('left', 92);
					jQuery("#erfolge_creativeaward").css('top', 152);
					jQuery("#erfolge_creativeaward").css('line-height', 4);
				
				}
			}
			
			
			// Untermenüpunkte von Service anpassen
			if (jQuery(".art-hmenu").width() > 1020) 
			{
				jQuery("#service_formulare").replaceWith('<a id="service_formulare" href="index.php/service/formulare-und-downloads">Formulare und Downloads</a>');
				jQuery("#service_massnahmenkatalog").replaceWith('<a id="service_massnahmenkatalog" href="index.php/service/massnahmenkatalog">Maßnahmen - katalog</a>');

				jQuery(".service_alles").css('height', 445);
				jQuery(".service_alles").css('width', 255);
				
				jQuery(".service_alles > a").css('height', 50);
				jQuery(".service_alles > a").css('width', 125);
				jQuery(".service_alles > a").css('font-size', 13);
				
				jQuery("#service_kontakt").css('line-height', 4);
				
				jQuery("#service_termine").css('line-height', 4);
				jQuery("#service_termine").css('left', 127);
				jQuery("#service_termine").css('top', 56);
				
				jQuery("#service_sprechstunden").css('line-height', 4);
				jQuery("#service_sprechstunden").css('top', 112);
				
				jQuery("#service_unterrichtszeiten").css('left', 127);
				jQuery("#service_unterrichtszeiten").css('top', 168);
				jQuery("#service_unterrichtszeiten").css('padding-top', 0);
				
				jQuery("#service_formulare").css('top', 224);
				jQuery("#service_formulare").css('padding-top', 0);
				
				jQuery("#service_hausordnung").css('left', 127);
				jQuery("#service_hausordnung").css('line-height', 4);
				jQuery("#service_hausordnung").css('top', 280);
				
				jQuery("#service_massnahmenkatalog").css('top', 336);
				jQuery("#service_massnahmenkatalog").css('padding-top', 0);
				
				jQuery("#service_impressum").css('left', 127);
				jQuery("#service_impressum").css('line-height', 4);
				jQuery("#service_impressum").css('top', 392);
				
				
				if(jQuery(".art-hmenu").width() > 1400)
				{			
					jQuery("#service_massnahmenkatalog").replaceWith('<a id="service_massnahmenkatalog" href="index.php/service/massnahmenkatalog">Maßnahmenkatalog</a>');
				
					jQuery(".service_alles").css('height', 530);
					jQuery(".service_alles").css('width', 308);
				
					jQuery(".service_alles > a").css('height', 60);
					jQuery(".service_alles > a").css('width', 150);
					jQuery(".service_alles > a").css('font-size', 13);
				
					jQuery("#service_kontakt").css('line-height', 4.5);
				
					jQuery("#service_termine").css('line-height', 4.5);
					jQuery("#service_termine").css('left', 154);
					jQuery("#service_termine").css('top', 66);
				
					jQuery("#service_sprechstunden").css('line-height', 4.5);
					jQuery("#service_sprechstunden").css('top', 132);
				
					jQuery("#service_unterrichtszeiten").css('left', 154);
					jQuery("#service_unterrichtszeiten").css('top', 198);
					jQuery("#service_unterrichtszeiten").css('height', 52);
					jQuery("#service_unterrichtszeiten").css('padding-top', 8);
				
					jQuery("#service_formulare").css('top', 264);
					jQuery("#service_formulare").css('height', 52);
					jQuery("#service_formulare").css('padding-top', 8);
				
					jQuery("#service_hausordnung").css('left', 154);
					jQuery("#service_hausordnung").css('line-height', 4.5);
					jQuery("#service_hausordnung").css('top', 330);

					jQuery("#service_massnahmenkatalog").css('top', 396);
					jQuery("#service_massnahmenkatalog").css('line-height', 4.5);
				
					jQuery("#service_impressum").css('left', 154);
					jQuery("#service_impressum").css('line-height', 4.5);
					jQuery("#service_impressum").css('top', 462);
									
					if(jQuery(".art-hmenu").width() > 1700)
					{
						jQuery("#service_massnahmenkatalog").replaceWith('<a id="service_massnahmenkatalog" href="index.php/service/massnahmenkatalog">Maßnahmenkatalog</a>');
						
						jQuery(".service_alles").css('height', 690);
						jQuery(".service_alles").css('width', 413);
				
						jQuery(".service_alles > a").css('height', 80);
						jQuery(".service_alles > a").css('width', 200);
						jQuery(".service_alles > a").css('font-size', 13);
				
						jQuery("#service_kontakt").css('line-height', 6);
				
						jQuery("#service_termine").css('line-height', 6);
						jQuery("#service_termine").css('left', 207);
						jQuery("#service_termine").css('top', 86);
				
						jQuery("#service_sprechstunden").css('line-height', 6);
						jQuery("#service_sprechstunden").css('top', 172);
				
						jQuery("#service_unterrichtszeiten").css('left', 207);
						jQuery("#service_unterrichtszeiten").css('top', 258);
						jQuery("#service_unterrichtszeiten").css('height', 62);
						jQuery("#service_unterrichtszeiten").css('padding-top', 18);
				
						jQuery("#service_formulare").css('top', 344);
						jQuery("#service_formulare").css('line-height', 6);
				
						jQuery("#service_hausordnung").css('left', 207);
						jQuery("#service_hausordnung").css('line-height', 6);
						jQuery("#service_hausordnung").css('top', 430);
						
						jQuery("#service_massnahmenkatalog").css('line-height', 6);
						jQuery("#service_massnahmenkatalog").css('top', 516);
				
						jQuery("#service_impressum").css('left', 207);
						jQuery("#service_impressum").css('line-height', 6);
						jQuery("#service_impressum").css('top', 602);
						
				
					}
				}
				
			}
			else if(jQuery(".art-hmenu").width() < 1020)
			{
				jQuery("#service_formulare").replaceWith('<a id="service_formulare" href="index.php/service/formulare-und-downloads">Formulare u. Downloads</a>');
				
				jQuery(".service_alles").css('height', 410);
				jQuery(".service_alles").css('width', 204);
				
				jQuery(".service_alles > a").css('height', 45);
				jQuery(".service_alles > a").css('width', 100);
				jQuery(".service_alles > a").css('font-size', 12);
				
				jQuery("#service_kontakt").css('line-height', 4);
				
				jQuery("#service_termine").css('line-height', 4);
				jQuery("#service_termine").css('left', 102);
				jQuery("#service_termine").css('top', 51);
				
				jQuery("#service_sprechstunden").css('line-height', 4);
				jQuery("#service_sprechstunden").css('top', 102);
				jQuery("#service_sprechstunden").css('padding-top', 0);
				
				jQuery("#service_unterrichtszeiten").css('left', 102);
				jQuery("#service_unterrichtszeiten").css('top', 152);
				jQuery("#service_unterrichtszeiten").css('padding-top', 0);
				
				jQuery("#service_formulare").css('top', 204);
				jQuery("#service_formulare").css('padding-top', 0);
				
				jQuery("#service_hausordnung").css('left', 102);
				jQuery("#service_hausordnung").css('line-height', 4);
				jQuery("#service_hausordnung").css('top', 255);
				
				jQuery("#service_massnahmenkatalog").css('top', 307);
				jQuery("#service_massnahmenkatalog").css('padding-top', 0);
				
				jQuery("#service_impressum").css('left', 102);
				jQuery("#service_impressum").css('line-height', 4);
				jQuery("#service_impressum").css('top', 362);
				
				if(jQuery(".art-hmenu").width() < 800)
				{
					jQuery("#service_formulare").replaceWith('<a id="service_formulare" href="index.php/service/formulare-und-downloads">Formulare u. Downloads</a>');
					
					jQuery(".service_alles").css('height', 410);
					jQuery(".service_alles").css('width', 184);
				
					jQuery(".service_alles > a").css('height', 45);
					jQuery(".service_alles > a").css('width', 90);
					jQuery(".service_alles > a").css('font-size', 11);
				
					jQuery("#service_kontakt").css('line-height', 4);
				
					jQuery("#service_termine").css('line-height', 4);
					jQuery("#service_termine").css('left', 92);
					jQuery("#service_termine").css('top', 51);
				
					jQuery("#service_sprechstunden").css('line-height', 4);
					jQuery("#service_sprechstunden").css('top', 102);
				
					jQuery("#service_unterrichtszeiten").css('left', 92);
					jQuery("#service_unterrichtszeiten").css('top', 152);
					jQuery("#service_unterrichtszeiten").css('height', 41);
					jQuery("#service_unterrichtszeiten").css('padding-top', 4);
				
					jQuery("#service_formulare").css('top', 204);
					jQuery("#service_formulare").css('height', 41);
					jQuery("#service_formulare").css('padding-top', 4);
				
					jQuery("#service_hausordnung").css('left', 92);
					jQuery("#service_hausordnung").css('line-height', 4);
					jQuery("#service_hausordnung").css('top', 255);
					
					jQuery("#service_massnahmenkatalog").css('top', 307);
					jQuery("#service_massnahmenkatalog").css('height', 41);
					jQuery("#service_massnahmenkatalog").css('padding-top', 4);
				
					jQuery("#service_impressum").css('left', 92);
					jQuery("#service_impressum").css('line-height', 4);
					jQuery("#service_impressum").css('top', 362);
					
				
				}
			}
			
			// Startseite und Bilder links und rechts anpassen und height von art-post festlegen(scrollen des Textes)
			if (jQuery(".art-hmenu").width() > 1000) 
			{
				jQuery(".art-post").css('height', 590);
				
				jQuery(".alles").css('width', 735);
				jQuery(".alles").css('height', 475);
				jQuery(".alles").css('margin-top', 100);
			
				jQuery("#angebot").css('width', 200);
				jQuery("#angebot").css('height', 125);
				jQuery("#angebot").css('left', 125);
				jQuery("#angebot>span").css('line-height',9);
				
				jQuery("#aktuelles").css('height', 125);
				jQuery("#aktuelles").css('width', 175);
				jQuery("#aktuelles").css('top', 125);
				jQuery("#aktuelles>span").css('line-height',9);
				
				jQuery("#wueu").css('height', 150);
				jQuery("#wueu").css('width', 150);
				jQuery("#wueu").css('top', 125);
				jQuery("#wueu").css('left', 175);
				jQuery("#wueu>span").css('line-height',11);
				
				jQuery("#wsv").css('height', 125);
				jQuery("#wsv").css('width', 175);
				jQuery("#wsv").css('top', 50);
				jQuery("#wsv").css('left', 325);
				jQuery("#wsv>span").css('line-height',9);
				
				jQuery("#erfolge").css('height', 150);
				jQuery("#erfolge").css('width', 175);
				jQuery("#erfolge").css('top', 25);
				jQuery("#erfolge").css('left', 500);
				jQuery("#erfolge>span").css('line-height',11);
				
				jQuery("#service").css('height', 100);
				jQuery("#service").css('width', 200);
				jQuery("#service").css('top', 175);
				jQuery("#service").css('left', 325);
				jQuery("#service>span").css('line-height',7);
				
				jQuery("#schulteam").css('height', 125);
				jQuery("#schulteam").css('width', 175);
				jQuery("#schulteam").css('top', 175);
				jQuery("#schulteam").css('left', 525);
				jQuery("#schulteam>span").css('line-height',9);
				
				jQuery("#bibliothek").css('height', 100);
				jQuery("#bibliothek").css('width', 175);
				jQuery("#bibliothek").css('top', 275);
				jQuery("#bibliothek").css('left', 175);
				jQuery("#bibliothek>span").css('line-height',7);
				
				jQuery("#simongasse").css('height', 100);
				jQuery("#simongasse").css('width', 175);
				jQuery("#simongasse").css('top', 375);
				jQuery("#simongasse").css('left', 175);
				jQuery("#simongasse>span").css('line-height',7);
				
				jQuery("#schulpartner").css('height', 150);
				jQuery("#schulpartner").css('width', 175);
				jQuery("#schulpartner").css('top', 275);
				jQuery("#schulpartner").css('left', 350);
				jQuery("#schulpartner>span").css('line-height',11);
				
				jQuery("#contiuni").css('height', 90);
				jQuery("#contiuni").css('width', 210);
				jQuery("#contiuni").css('top', 300);
				jQuery("#contiuni").css('left', 525);
				jQuery("#contiuni>span").css('line-height',6);
				
				jQuery("#eklabu").css('height', 40);
				jQuery("#eklabu").css('width', 150);
				jQuery("#eklabu").css('top', 250);
				jQuery("#eklabu").css('left', 25);
				jQuery("#eklabu").css('padding-top', 50);
				jQuery("#eklabu").css('padding-bottom', 50);
				
				jQuery(".customlinks>p>img").css('width', 240);
				jQuery(".customrechts>p>img").css('width', 240);
				jQuery(".art-hmenu>li>a").css('font-size', 13);
				
				if(jQuery(".art-hmenu").width() > 1400)
				{
					jQuery(".art-post").css('height', 770);
					
					jQuery(".alles").css('width', 840);
					jQuery(".alles").css('height', 525);
				
					jQuery("#angebot").css('width', 225);
					jQuery("#angebot").css('height', 150);
					jQuery("#angebot").css('left', 150);
					jQuery("#angebot>span").css('line-height',11);
				 
					jQuery("#aktuelles").css('height', 150);
					jQuery("#aktuelles").css('width', 200);
					jQuery("#aktuelles").css('top', 150);
					jQuery("#aktuelles>span").css('line-height',11);
				 
					jQuery("#wueu").css('height', 175);
					jQuery("#wueu").css('width', 175);
					jQuery("#wueu").css('top', 150);
					jQuery("#wueu").css('left', 200);
					jQuery("#wueu>span").css('line-height',13);
				 
					jQuery("#wsv").css('height', 150);
					jQuery("#wsv").css('width', 200);
					jQuery("#wsv").css('top', 50);
					jQuery("#wsv").css('left', 375);
					jQuery("#wsv>span").css('line-height',11);
				
					jQuery("#erfolge").css('height', 175);
					jQuery("#erfolge").css('width', 200);
					jQuery("#erfolge").css('top', 25);
					jQuery("#erfolge").css('left', 575);
					jQuery("#erfolge>span").css('line-height',13);
				
					jQuery("#service").css('height', 125);
					jQuery("#service").css('width', 225);
					jQuery("#service").css('top', 200);
					jQuery("#service").css('left', 375);
					jQuery("#service>span").css('line-height',9);
				
					jQuery("#schulteam").css('height', 150);
					jQuery("#schulteam").css('width', 200);
					jQuery("#schulteam").css('top', 200);
					jQuery("#schulteam").css('left', 600);
					jQuery("#schulteam>span").css('line-height',11);
				
					jQuery("#bibliothek").css('height', 100);
					jQuery("#bibliothek").css('width', 200);
					jQuery("#bibliothek").css('top', 325);
					jQuery("#bibliothek").css('left', 200);
					jQuery("#bibliothek>span").css('line-height',7);
				
					jQuery("#simongasse").css('height', 100);
					jQuery("#simongasse").css('width', 200);
					jQuery("#simongasse").css('top', 425);
					jQuery("#simongasse").css('left', 200);
					jQuery("#simongasse>span").css('line-height',7);
				
					jQuery("#schulpartner").css('height', 175);
					jQuery("#schulpartner").css('width', 200);
					jQuery("#schulpartner").css('top', 325);
					jQuery("#schulpartner").css('left', 400);
					jQuery("#schulpartner>span").css('line-height',13);
				
					jQuery("#contiuni").css('height', 100);
					jQuery("#contiuni").css('width', 240);
					jQuery("#contiuni").css('top', 350);
					jQuery("#contiuni").css('left', 600);
					jQuery("#contiuni>span").css('line-height',7);
				
					jQuery("#eklabu").css('height', 45);
					jQuery("#eklabu").css('width', 175);
					jQuery("#eklabu").css('top', 300);
					jQuery("#eklabu").css('left', 25);
					jQuery("#eklabu").css('padding-top', 50);
					jQuery("#eklabu").css('padding-bottom', 50);
					
					jQuery(".customlinks>p>img").css('width', 320);
					jQuery(".customrechts>p>img").css('width', 320);
					jQuery(".art-hmenu>li>a").css('font-size', 13);
				
				
					if(jQuery(".art-hmenu").width() > 1700)
					{
						jQuery(".art-post").css('height', 980);
					
						jQuery(".alles").css('width', 1075);
						jQuery(".alles").css('height', 725);
				
						jQuery("#angebot").css('width', 325);
						jQuery("#angebot").css('height', 200);
						jQuery("#angebot").css('left', 150);
						jQuery("#angebot>span").css('line-height',15);
				 
						jQuery("#aktuelles").css('height', 200);
						jQuery("#aktuelles").css('width', 250);
						jQuery("#aktuelles").css('top', 200);
						jQuery("#aktuelles>span").css('line-height',15);
					
						jQuery("#wueu").css('height', 225);
						jQuery("#wueu").css('width', 225);
						jQuery("#wueu").css('top', 200);
						jQuery("#wueu").css('left', 250);
						jQuery("#wueu>span").css('line-height',17);
				 
						jQuery("#wsv").css('height', 200);
						jQuery("#wsv").css('width', 250);
						jQuery("#wsv").css('top', 50);
						jQuery("#wsv").css('left', 475);
						jQuery("#wsv>span").css('line-height',15);
				
						jQuery("#erfolge").css('height', 225);
						jQuery("#erfolge").css('width', 250);
						jQuery("#erfolge").css('top', 25);
						jQuery("#erfolge").css('left', 725);
						jQuery("#erfolge>span").css('line-height',16);
				
						jQuery("#service").css('height', 175);
						jQuery("#service").css('width', 300);
						jQuery("#service").css('top', 250);
						jQuery("#service").css('left', 475);
						jQuery("#service>span").css('line-height',13);
				
						jQuery("#schulteam").css('height', 200);
						jQuery("#schulteam").css('width', 250);
						jQuery("#schulteam").css('top', 250);
						jQuery("#schulteam").css('left', 775);
						jQuery("#schulteam>span").css('line-height',15);
				
						jQuery("#bibliothek").css('height', 150);
						jQuery("#bibliothek").css('width', 250);
						jQuery("#bibliothek").css('top', 425);
						jQuery("#bibliothek").css('left', 250);
						jQuery("#bibliothek>span").css('line-height',11);
				
						jQuery("#simongasse").css('height', 150);
						jQuery("#simongasse").css('width', 250);
						jQuery("#simongasse").css('top', 575);
						jQuery("#simongasse").css('left', 250);
						jQuery("#simongasse>span").css('line-height',11);
				
						jQuery("#schulpartner").css('height', 225);
						jQuery("#schulpartner").css('width', 275);
						jQuery("#schulpartner").css('top', 425);
						jQuery("#schulpartner").css('left', 500);
						jQuery("#schulpartner>span").css('line-height',17);
				
						jQuery("#contiuni").css('height', 150);
						jQuery("#contiuni").css('width', 300);
						jQuery("#contiuni").css('top', 450);
						jQuery("#contiuni").css('left', 775);
						jQuery("#contiuni>span").css('line-height',11);
				
						jQuery("#eklabu").css('height', 65);
						jQuery("#eklabu").css('width', 225);
						jQuery("#eklabu").css('top', 400);
						jQuery("#eklabu").css('left', 25);
						jQuery("#eklabu").css('padding-top', 70);
						jQuery("#eklabu").css('padding-bottom', 50);
					
						jQuery(".customlinks>p>img").css('width', 400);
						jQuery(".customrechts>p>img").css('width', 400);
						jQuery(".art-hmenu>li>a").css('font-size', 13);
					}
				}
				
			}
			else if(jQuery(".art-hmenu").width() < 1000)
			{
				jQuery(".art-post").css('height', 500);
				
				jQuery(".alles").css('width', 630);
				jQuery(".alles").css('height', 380);
				jQuery(".alles").css('margin-top', 50);
				
			    jQuery("#angebot").css('width', 175);
				jQuery("#angebot").css('height', 100);
				jQuery("#angebot").css('left', 100);
				jQuery("#angebot>span").css('line-height',7);
				 
				jQuery("#aktuelles").css('height', 100);
				jQuery("#aktuelles").css('width', 150);
				jQuery("#aktuelles").css('top', 100);
				jQuery("#aktuelles>span").css('line-height',7);
				 
				jQuery("#wueu").css('height', 125);
				jQuery("#wueu").css('width', 125);
				jQuery("#wueu").css('top', 100);
				jQuery("#wueu").css('left', 150);
				jQuery("#wueu>span").css('line-height',9);
				 
				jQuery("#wsv").css('height', 100);
				jQuery("#wsv").css('width', 150);
				jQuery("#wsv").css('top', 50);
				jQuery("#wsv").css('left', 275);
				jQuery("#wsv>span").css('line-height',7);
				
				jQuery("#erfolge").css('height', 125);
				jQuery("#erfolge").css('width', 125);
				jQuery("#erfolge").css('top', 25);
				jQuery("#erfolge").css('left', 425);
				jQuery("#erfolge>span").css('line-height',9);
				
				jQuery("#service").css('height', 75);
				jQuery("#service").css('width', 175);
				jQuery("#service").css('top', 150);
				jQuery("#service").css('left', 275);
				jQuery("#service>span").css('line-height',5.5);
				
				jQuery("#schulteam").css('height', 100);
				jQuery("#schulteam").css('width', 125);
				jQuery("#schulteam").css('top', 150);
				jQuery("#schulteam").css('left', 450);
				jQuery("#schulteam>span").css('line-height',7);
				
				jQuery("#bibliothek").css('height', 75);
				jQuery("#bibliothek").css('width', 150);
				jQuery("#bibliothek").css('top', 225);
				jQuery("#bibliothek").css('left', 150);
				jQuery("#bibliothek>span").css('line-height',5.5);
				
				jQuery("#simongasse").css('height', 80);
				jQuery("#simongasse").css('width', 150);
				jQuery("#simongasse").css('top', 300);
				jQuery("#simongasse").css('left', 150);
				jQuery("#simongasse>span").css('line-height',5.5);
				
				jQuery("#schulpartner").css('height', 125);
				jQuery("#schulpartner").css('width', 150);
				jQuery("#schulpartner").css('top', 225);
				jQuery("#schulpartner").css('left', 300);
				jQuery("#schulpartner>span").css('line-height',9);
				
				jQuery("#contiuni").css('height', 65);
				jQuery("#contiuni").css('width', 180);
				jQuery("#contiuni").css('top', 250);
				jQuery("#contiuni").css('left', 450);
				jQuery("#contiuni>span").css('line-height',4.5);
				
				jQuery("#eklabu").css('height', 35);
				jQuery("#eklabu").css('width', 125);
				jQuery("#eklabu").css('top', 200);
				jQuery("#eklabu").css('left', 25);
				jQuery("#eklabu").css('padding-top', 40);
				jQuery("#eklabu").css('padding-bottom', 50);
				
				jQuery(".customlinks>p>img").css('width', 200);
				jQuery(".customrechts>p>img").css('width', 200);
				jQuery(".art-hmenu>li>a").css('font-size', 13);
				
				if(jQuery(".art-hmenu").width() < 800)
				{
					jQuery(".art-post").css('height', 430);
					
					jQuery(".customlinks>p>img").css('width', 170);
					jQuery(".customrechts>p>img").css('width', 170);
					jQuery(".art-hmenu>li>a").css('font-size', 11);
				}
			}
			
			
			//Bilder im Header an die Breite der Menüleiste anpassen und die Höhe an die Breite anpassen
			jQuery("div.random-image>img").width(jQuery(".art-hmenu").width());
			jQuery("div.random-image").css('margin-left', (jQuery(".art-header").width() - (jQuery(".art-hmenu").width()))/2);
			
			
			if (jQuery(".art-hmenu").width() > 1100)
			{
				jQuery("div.random-image>img").css('height', 235);
				
				if (jQuery(".art-hmenu").width() > 1400)
				{
					jQuery("div.random-image>img").css('height', 300);
					
					if (jQuery(".art-hmenu").width() > 1700)
					{
						jQuery("div.random-image>img").css('height', 365);
					}
				}
			}
			
			if(jQuery(".art-hmenu").width() < 1100)
			{
				jQuery("div.random-image>img").css('height', 235);
				
				if(jQuery(".art-hmenu").width() < 1050)
				{
					jQuery("div.random-image>img").css('height', 225);
					
					if(jQuery(".art-hmenu").width() < 980)
					{		
						jQuery("div.random-image>img").css('height', 210);
						
						if(jQuery(".art-hmenu").width() < 900)
						{		
							jQuery("div.random-image>img").css('height', 190);
						
							if(jQuery(".art-hmenu").width() < 800)
							{
								jQuery("div.random-image>img").css('height', 170);
							}
						}
					}
				}
			}
			
			jQuery(".art-header").css('height', jQuery("div.random-image>img").height());
			
			// Wenn Google Calender vorhanden ist (Termine) Höhe von art-post auf auto gesetzt
			if (jQuery("#calender").length > 0)
            {
                jQuery('.art-post').css('height', "auto");
            }
			
			// Wenn Countdown vorhanden ist (Absolventinnen) Höhe von art-post auf auto gesetzt
			if (jQuery(".cdub_main").length > 0)
            {
                jQuery('.art-post').css('height', "auto");
            }
			
			jQuery(".wrappercontuni").css('height', jQuery(".art-post").height());

			if(jQuery(".wrappercontuni").length > 0)
			{
				jQuery('.art-post').css('height', (jQuery(".art-post").height()) + 40);  
			}
			
		}
		
		
		
		onresize = resize;

		jQuery(resize);

		</script>
		
    
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
  echo '<jdoc:include type="message" />';
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

<footer class="art-footer" style="display:none">
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