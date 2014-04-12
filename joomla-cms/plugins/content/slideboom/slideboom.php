<?php
/**
* @version		$Id: slideboom.php 1.1.0 2011-03-01 10:30:00 $
* @package		Joomla
* @copyright	Copyright (C) 2011 N. van der Neut. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* Joomla! is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
*
* See LICENSE.php for copyright notices and details.
*
* Release notes 1.1.0 - 20110301
* - Changed to latest Slideboom embedded code (IE8 compatible) - Thanks to Tim Davis
* - Removed autostart and repeat options because these options are deprecated in
*   the FREE subscription of slideboom.com
*/

// No direct access
defined('_JEXEC') or die;

jimport('joomla.plugin.plugin');

/**
 * Example Content Plugin
 *
 * @package		Joomla
 * @subpackage	Content
 * @since		1.5
 */
class plgContentSlideboom extends JPlugin
{
	
	/**
	 * Prepare content method
	 *
	 * Method is called by the view
	 *
	 * @param	string	Context of the content being passed to the plugin.
	 * @param	object	Content object.  $article->text is also available
	 * @param	object	Content params
	 * @param	int		'Page' number
	 * @since	1.6
	 */
	public function onContentPrepare($context, &$article, &$params, $limitstart) {
		return $this->onPrepareContent( $article, $params, $limitstart);
	}

	function onPrepareContent( &$article, &$params, $page=0 ) {
		$mos_tex_entrytext = $article->text;
		$mos_tex_matches = array();
		$regex = '#{slideboom}(.*?){/slideboom}#s';
		if (preg_match_all($regex, $mos_tex_entrytext, $mos_tex_matches, PREG_PATTERN_ORDER) > 0) {
			foreach ($mos_tex_matches[0] as $mos_tex_match) {
				$showbottext = $this->plgSlideBoomReplacer($mos_tex_match, $params);
				$mos_tex_entrytext = str_replace($mos_tex_match, $showbottext, $mos_tex_entrytext);
			}
			$article->text = $mos_tex_entrytext;
		}
		return true;
	}
	
	/*
	* Replace one match with slideboom.com embed presentation html code
	*/
	function plgSlideBoomReplacer($tex_match, &$params)
	{
		// Get plugin parameters
		$w = $this->params->def('width', '425');
		$h = $this->params->def('height', '370');
		$a = $this->params->def('align', 'left');
		$c = $this->params->def('bgcolor', 'ffffff');
		$q = $this->params->def('quality', 'high');
		$f = $this->params->def('fullscreen', '1');
		$id= 0;

		// Cleanup parameters from tag and parse the values to actual variables
		$cleanup = array('{slideboom}', '[', 'slideboom', ' ', 'amp;', '#', ']','{/slideboom}');
		parse_str(str_replace($cleanup, '', $tex_match));
		$c = '#'.$c;
	
		// Validation of all parameters used in content tag and
		// of plugin parameters to catch user errors
		if (!preg_match('/^[0-9]{4,}/', $id))
			return '';

		if (!is_numeric($w)) {
			$w = $this->params->def('width', '425');
			if (!is_int($w)) $w = $this->params->def('width', '425');
		}
	
		if (!is_numeric($h)) {
			$h = $this->params->def('height', '370');
			if (!is_int($h)) $h = $this->params->def('height', '370');
		}
	
		// Deprecated in slideboom.com FREE subscription
		// if ($s != '0' && $s != '1') $s = $this->params->def('autostart', '0');
		// if ($r != '0' && $r != '1') $r = $this->params->def('repeat', '0');
	
		if (strcmp($a, 'left') != 0 && strcmp($a, 'right') != 0) 
			$a = $this->params->def('align', 'left');
	
		if (!is_hexcolor($c)) {
			$c = $this->params->def('bgcolor', 'ffffff');
			if ($c[0] != '#') $c = '#'.$c;
			if (!is_hexcolor($c)) $c = '#ffffff';
		}
	
		if (strcmp($q, 'high') != 0 && strcmp($q, 'low') != 0) 
			$q = $this->params->def('quality', 'high');
	
		if ($f != '0' && $f != '1') 
			$f = $this->params->def('fullscreen', '1');
	
		if ($f == '0') 
			$str_f = 'false'; 
		else 
			$str_f = 'true';
	
		$res = '<div align="'. $a.'"><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="'.$w.'" height="'.$h.'" id="onlinePlayer'.$id.'"><param name="movie" value="http://www.slideboom.com/player/player.swf?id_resource='.$id.'" /><param name="allowScriptAccess" value="always" /><param name="quality" value="'.$q.'" /><param name="bgcolor" value="'.$c.'" /><param name="allowFullScreen" value="'.$str_f.'" /><param name="flashVars" value="mode=0&amp;idResource='.$id.'&amp;siteUrl=http://www.slideboom.com&amp;embed=1&amp;autoOpenShareScreen=1" /><param name="wmode" value="opaque" /><embed src="http://www.slideboom.com/player/player.swf?id_resource='.$id.'" quality="'.$q.'" bgcolor="'.$c.'" width="'.$w.'" height="'.$h.'" name="onlinePlayer'.$id.'" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" allowFullScreen="'.$str_f.'" flashVars="mode=0&amp;idResource='.$id.'&amp;siteUrl=http://www.slideboom.com&amp;embed=1&amp;autoOpenShareScreen=1"></embed></object></div>';
	
		return $res;
	}

}

/***
* Returns true if $string is a valid hexadecimal color code
*/
function is_hexcolor($string) {
	return preg_match('/#[0-9a-fA-F]{6}/', $string);
}
