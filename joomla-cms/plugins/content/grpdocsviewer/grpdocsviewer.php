<?php
/**
 * @version 1.3.1 - GroupDocs Viewer Pulgin
 * @Id		$Id: grpdocsviewer.php 16 2012-08-07 19:47:35Z groupdocsteam $
 * @package plugins
 * @copyright Copyright (C) 2012 GroupDocs. All rights reserved.
 * @license - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */

// no direct access
defined( '_JEXEC' ) or die() ;

jimport( 'joomla.plugin.plugin' ) ;
jimport( 'joomla.html.parameter' ) ;

class plgContentGrpdocsViewer extends JPlugin {
	
	function onContentPrepare($context, &$article, &$params, $limitstart ) {
		// simple performance check to determine whether bot should process further
		if( stristr( $article->text, '{GroupDocs' ) === false ) {
			return true ;
		}
		
		// define the regular expression for the bot
		$regex = '#{GroupDocs(.*?)}#si' ;
		
		
		// find all instances of plugin and put in $matches
		preg_match_all( $regex, $article->text, $matches ) ;
		
		// Number of plugins
		$count = count( $matches[0] ) ;
		
		// plugin only processes if there are any instances of the plugin in the text
		if( $count ) {
			
			$this->plgContentProcessGroupdocsViewer( $article, $matches, $count, $regex, $params ) ;
		}
	
	}
	
	function plgContentProcessGroupdocsViewer( &$row, &$matches, $count, $regex, &$botParams ) {
		//var_dump($matches);
		for( $i = 0 ; $i < $count ; $i ++ ) {
			if( @$matches[1][$i] ) {
				$inline_params = $matches[1][$i] ;

				// get GUID
				$guid_matches = array() ;
				preg_match( '#guid="(.*?)"#si', $inline_params, $guid_matches ) ;
				if( isset( $guid_matches[1] ) ) {
					$guid = $guid_matches[1];
				} else{
					$guid = '';
				}
				
				// get height
				$height_matches = array() ;
				preg_match( '#height="(.*?)"#si', $inline_params, $height_matches ) ;
				if( isset( $height_matches[1] ) ) {
					$height = $height_matches[1];
				} else{
					$height = '';
				}
				
				// get width
				$width_matches = array() ;
				preg_match( '#width="(.*?)"#si', $inline_params, $width_matches ) ;
				if( isset( $width_matches[1] ) ) {
					$width = $width_matches[1];
				} else{
					$width = '';
				}
			}	
			
			$text = '<iframe ' . 'src="http://apps.groupdocs.com/document-viewer/embed/' . $guid . '&referer=joomla-viewer/1.3.1" width="' . $width . '" height="' . $height . '"></iframe>';
			$row->text = str_replace( $matches[0][$i], $text, $row->text ) ;
		}
	
	}
}
