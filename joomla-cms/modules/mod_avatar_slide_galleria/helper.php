<?php
/**
 * @version		$Id: helper.php 5 2012-04-06 20:10:35Z mozart $
 * @copyright	JoomAvatar.com
 * @author		Tran Nam Chung
 * @mail		chungnt@joomavatar.com
 * @link		http://joomavatar.com
 * @license		License GNU General Public License version 2 or later
 */
defined( '_JEXEC' ) or die( 'Restricted access' );
class mod_avatar_slide_galleriaHelper
{ 
    public static function getSource($params){return $params->get('Source');}
	public static function getflickrSearchBy($params){return $params->get('flickrSearchBy');}
	public static function getpicasaSearchBy($params){return $params->get('picasaSearchBy');}
	public static function getstringFlickr($params){return $params->get('stringFlickr');}
	public static function getstringPicasa($params){return $params->get('stringPicasa');}
	public static function getTheme($params){return $params->get('theme');}
	public static function getresponsive($params){return $params->get('responsive');}
	public static function getlightBox($params){return $params->get('lightBox');}
	public static function getflickrSort($params){return $params->get('flickrSort');}
	public static function getimageQuality($params){return $params->get('imageQuality');}
	public static function gettransitionSpeed($params){return $params->get('transitionSpeed');}
	public static function getimgCrop($params){return $params->get('imgCrop');}
	public static function getimgPan($params){return $params->get('imgPan');}
	public static function getimgPanSmoothness($params){return $params->get('imgPanSmoothness');}
	public static function getshowCounter($params){return $params->get('showCounter');}
	public static function getshowImageNav($params){return $params->get('showImageNav');}
	public static function getswipe($params){return $params->get('swipe');}
	public static function getthumbnails($params){return $params->get('thumbnails');}
	public static function gettitle($params){return $params->get('title');}
	public static function getbgColor($params){return $params->get('bgColor');}
	public static function getbgoption($params){return $params->get('background');}
	public static function getshowInfo($params){return $params->get('showInfo');}
	public static function getshowFileName($params){return $params->get('showFileName');}
	public static function getfullscreenCrop($params){return $params->get('fullsreenCrop');}
	public static function getdataSort($params){return $params->get('dataSort');}
	public static function getfullscreenTransition($params){return $params->get('fullscreenTransition');}
	public static function getfullscreenBtn($params){return $params->get('fullscreenBtn');}
	public static function getprogress($params){return $params->get('progress');}
	public static function getinfoColor($params){return $params->get('infoColor');}
	public static function gettitleColor($params){return $params->get('titleColor');}
	public static function getdesColor($params){return $params->get('desColor');}
	//function get($params){return $params->get('responsive');}
}
?>