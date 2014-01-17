<?php
/**
 * @version		$Id: mod_avatar_helper.php 5 2012-04-06 20:10:35Z mozart $
 * @copyright	JoomAvatar.com
 * @author		Tran Nam Chung
 * @mail		chungnt@joomavatar.com
 * @link		http://joomavatar.com
 * @license		License GNU General Public License version 2 or later
 */
defined( '_JEXEC' ) or die( 'Restricted access' );
if(class_exists('AMSize') != true)
{
	class AMSize
	{
		//get module width
		public static function getWidth($params)
		{
				return $params->get('width');
		}
		//get module height
		public static function getHeight($params)
		{
				return $params->get('height');
		}
		//get module copyright
		public static function getCopyRight($params)
		{
				return $params->get('copyright',FALSE);
		}
		//get module class suffix
		public static function getClassSuffix($params)
		{
				return $params->get('moduleclass_sfx');
		}
	}
}
if(class_exists('AMSlide') != true)
{
	class AMSlide
	{
		//get count of items slide
		public static function getItemCount($params)
		{
				return $params->get('itemcount',7);
		}
		//get slile auto
		public static function getAutoPlay($params)
		{
				return $params->get('autoplay');
		}
		//get sliding time
		public static function getSlideTime($params)
		{
				return $params->get('slideTime');
		}
		//get effect of transition
		public static function getTransition($params)
		{
				return $params->get('transition');
		}
		//get path of folder
		public static function getFolders($params)
		{
				return $params->get('folder');
		}
		public static function getDescription($params)
		{
			return $params->get('description');
		}
		public static function getImageLink($params)
		{
			return $params->get('imageLink');
		}
	}
}
if(class_exists('AMJquery') != true)
{
	class AMJquery
	{
		//get count of items slide
		public static function getJqueryVer($params)
		{
				return $params->get('jquery','latest');
		}
	}
}
?>