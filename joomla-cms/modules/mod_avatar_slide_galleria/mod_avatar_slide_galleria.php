<?php
/**
 * @version		$Id: helper.php 5 2012-04-06 20:10:35Z mozart $
 * @copyright	JoomAvatar.com
 * @author		Tran Nam Chung
 * @mail		chungtn@joomavatar.com
 * @link		http://joomavatar.com
 * @license		License GNU General Public License version 2 or later
 */
defined( '_JEXEC' ) or die( 'Restricted access' );
// Include the syndicate functions only once
require_once( dirname(__FILE__).DIRECTORY_SEPARATOR.'helper.php' );
require_once( dirname(__FILE__).DIRECTORY_SEPARATOR.'classes'.DIRECTORY_SEPARATOR.'avatar.helper.php' );
require_once( dirname(__FILE__).DIRECTORY_SEPARATOR.'classes'.DIRECTORY_SEPARATOR.'avatar.image.php' );

$sliderWidth = AMSize::getWidth($params);
$sliderHeight = AMSize::getHeight($params);
$cr = AMSize::getCopyRight($params);
$itemCount = AMSlide::getItemCount($params);
$imgTransition = AMSlide::getTransition($params);
$autoPlay = AMSlide::getAutoPlay($params);
$slidingTime = AMSlide::getSlideTime($params);
$descriptions = AMSlide::getDescription($params);
$jquery = AMJquery::getJqueryVer($params);
$imagesLink = AMSlide::getImageLink($params);
$titles = mod_avatar_slide_galleriaHelper::gettitle($params);

$source = mod_avatar_slide_galleriaHelper::getSource($params);
$theme = "classic";
$responsive = mod_avatar_slide_galleriaHelper::getresponsive($params);
$lightBox = mod_avatar_slide_galleriaHelper::getlightBox($params);
$imageQuality = mod_avatar_slide_galleriaHelper::getimageQuality($params);
$transitionSpeed = mod_avatar_slide_galleriaHelper::gettransitionSpeed($params);
$imgCrop = mod_avatar_slide_galleriaHelper::getimgCrop($params);
$imgPan = mod_avatar_slide_galleriaHelper::getimgPan($params);
$imgPanSmoothness = mod_avatar_slide_galleriaHelper::getimgPanSmoothness($params);
$showImageNav = mod_avatar_slide_galleriaHelper::getshowImageNav($params);
$swipe = mod_avatar_slide_galleriaHelper::getswipe($params);
$thumbnails = mod_avatar_slide_galleriaHelper::getthumbnails($params);
$showCounter = mod_avatar_slide_galleriaHelper::getshowCounter($params);
$showFileName = mod_avatar_slide_galleriaHelper::getshowFileName($params);
$bgoptions = mod_avatar_slide_galleriaHelper::getbgoption($params);
if($bgoptions == 'color')
	$bgColor = mod_avatar_slide_galleriaHelper::getbgColor($params);
else
	$bgColor = $bgoptions;
$showInfo = mod_avatar_slide_galleriaHelper::getshowInfo($params);
$fullscreenCrop = mod_avatar_slide_galleriaHelper::getfullscreenCrop($params);
$dataSort = mod_avatar_slide_galleriaHelper::getdataSort($params);
$fullscreenTransition = mod_avatar_slide_galleriaHelper::getfullscreenTransition($params);
$titleColor = mod_avatar_slide_galleriaHelper::gettitleColor($params);
$desColor = mod_avatar_slide_galleriaHelper::getdesColor($params);
$progress = mod_avatar_slide_galleriaHelper::getprogress($params);
$infoColor = mod_avatar_slide_galleriaHelper::getinfoColor($params);
$fullscreenBtn = mod_avatar_slide_galleriaHelper::getfullscreenBtn($params);
$id="module";
$document = JFactory::getDocument();
switch ($jquery) {
	case 'unload':	
		break;
	case 'latest':
		$document->addScript('http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js');
		$document->addScriptDeclaration('jQuery.noConflict();');
		break;
	default:
		$document->addScript('http://ajax.googleapis.com/ajax/libs/jquery/'.$jquery.'/jquery.min.js');
		$document->addScriptDeclaration('jQuery.noConflict();');
		break;
}
$document->addStyleSheet(JURI::base().'modules/mod_avatar_slide_galleria/assets/css/galleria.'.$theme.'.css');
if (!file_exists(JPATH_ROOT .DIRECTORY_SEPARATOR. 'plugins' .DIRECTORY_SEPARATOR.'content'.DIRECTORY_SEPARATOR. 'avatar_slide_galleria'.DIRECTORY_SEPARATOR.'assets'.DIRECTORY_SEPARATOR.'js'.DIRECTORY_SEPARATOR.'galleria-1.2.9.min.js')) {
	$document->addScript(JURI::base().'modules/mod_avatar_slide_galleria/assets/js/galleria-1.2.9.min.js');
} else { 	
	$document->addScript(JURI::base().'plugins/content/avatar_slide_galleria/assets/js/galleria-1.2.9.min.js');			
}
switch ($source) {
	case 'folder':
		$path = AMSlide::getFolders($params);
		$tmp = new imageData();
		$tmp->setPath($path);
		$tmpListImage = $tmp->getArrayImageLinks();
		$tmpListDesc = $tmp->getArrayImageInfo($descriptions);
		$tmpListTitle = $tmp->getArrayImageInfo($titles);
		$tmpListLink = $tmp->getArrayImageInfo($imagesLink);
		require( JModuleHelper::getLayoutPath( 'mod_avatar_slide_galleria' , 'folder') );
		break;
	case 'picasa':
		$searchBy = "search";
		$stringSearch = mod_avatar_slide_galleriaHelper::getstringPicasa($params);
		require( JModuleHelper::getLayoutPath( 'mod_avatar_slide_galleria','picasa' ) );
		break;
	case 'flickr':
		$searchBy = "search";
		$flickrSort = mod_avatar_slide_galleriaHelper::getflickrSort($params);
		$stringSearch = mod_avatar_slide_galleriaHelper::getstringFlickr($params);
		require( JModuleHelper::getLayoutPath( 'mod_avatar_slide_galleria', 'flickr' ) );
		break;
}
?>
<script type="text/javascript">
jQuery.noConflict();
(function($) 
{ 
		$(document).ready( function()
		{	
			$('#avatar_galleria_<?php echo $id;?> .fullscreen').css("background","<?php echo $bgColor;?>");
			Galleria.loadTheme('<?php echo JURI::base()."modules/mod_avatar_slide_galleria/assets/js/galleria.".$theme.".js"?>');	
			Galleria.JURI = "<?php echo JURI::base(); ?>modules/mod_avatar_slide_galleria/assets/images/loader.gif";
			<?php
			if($source == 'picasa')$document->addScript(JURI::base().'modules/mod_avatar_slide_galleria/assets/js/galleria.picasa.js');
			if($source == 'flickr')$document->addScript(JURI::base().'modules/mod_avatar_slide_galleria/assets/js/galleria.flickr.js');
			?>
			//Initialize Galleria
			Galleria.run('#avatar_galleria_<?php echo $id;?>',{
				height			:<?php echo $sliderHeight?>,
				lightbox		: <?php echo $lightBox;?>,
				responsive		: <?php echo $responsive;?>,
				transition		:'<?php echo $imgTransition;?>',
				fullscreenTransition:'<?php echo $fullscreenTransition;?>',
				transitionSpeed	: <?php echo $transitionSpeed;?>,
				imageCrop		: <?php if($imgCrop == "true" || $imgCrop == "false") echo $imgCrop; else echo "'".$imgCrop."'";?>,
				fullscreenCrop  : <?php if($fullscreenCrop == "true" || $fullscreenCrop == "false") echo $fullscreenCrop; else echo "'".$fullscreenCrop."'";?>,
				imagePan		: <?php echo $imgPan;?>,
				imagePanSmoothness	: <?php echo $imgPanSmoothness;?>,
				showCounter		: <?php echo $showCounter;?>,
				showImagenav	: <?php echo $showImageNav;?>,
				swipe			: <?php echo $swipe;?>,
				showInfo		: <?php echo $showInfo;?>,
				_showFullscreen : <?php echo $fullscreenBtn;?>,
				_showProgress	: <?php echo $progress;?>,
				<?php if($infoColor == 'color')
				{
					echo "titleColor	: '".$titleColor."',";
					echo "desColor		: '".$desColor."',";
					echo "bgColor		: '".$bgColor."',";
				}
				?>
				thumbnails		: <?php if($thumbnails == 'true' || $thumbnails == 'false') echo $thumbnails; else echo "'$thumbnails'";?>,
				dataSort		: <?php if($dataSort == 'false') echo $dataSort; else echo"'$dataSort'";?>
				<?php 
					if($autoPlay == "true") echo ", autoplay:".$slidingTime;
					if($source == "flickr" || $source == "picasa")
					{
						echo ", ".$source.":'".$searchBy.":".$stringSearch."',".$source."Options: {max:".$itemCount.",";
				    	if($source == 'flickr') {echo "sort:'".$flickrSort."',";}
				    	echo "imageSize	: '".$imageQuality."'}";
					}
			    ?>
			});	
		});
})(jQuery);
</script>
<div class="avatar-copyright" style="width:100%;margin: 5px;text-align: center;display : <?php if (strtolower($cr) == 'false') echo 'none'; else echo 'block';?> ;">
&copy; JoomAvatar.com
	<a target="_blank" href="http://joomavatar.com" title="Joomla Template &amp; Extension">Joomla Extension</a>-
	<a target="_blank" href="http://joomavatar.com" title="Joomla Template &amp; Extension">Joomla Template</a>
</div>