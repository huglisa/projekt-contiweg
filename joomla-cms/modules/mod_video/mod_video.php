<?php
  /**
   *Magic Simple Video Player
   *This program is free software: you can redistribute it and/or modify it under the terms
   *of the GNU General Public License as published by the Free Software Foundation,
   *either version 3 of the License, or (at your option) any later version.
   *
   *This program is distributed in the hope that it will be useful,
   *but WITHOUT ANY WARRANTY; without even the implied warranty of
   *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   *GNU General Public License for more details.
   *
   *You should have received a copy of the GNU General Public License
   *along with this program.  If not, see <http://www.gnu.org/licenses/>.
   *
   *@author Magic Point
   *@copyright (C) 2008 - 2011 Magic Point
   *@link http://www.magicpoint.org Official website
   **/
  defined('_JEXEC') or die('Restricted access!');
  $vscript = $params->get('vscript');
  $videowidth = 324;
  $videoheight = 340;
  
  $video01 = $params->get('video01');
  $videotitle01 = $params->get('videotitle01');
  $videoimage01 = $params->get('videoimage01');
  $videosource01 = $params->get('videosource01');
  
  //Debug Mode
  $debugMode = $params->get('debugMode');;
  if($debugMode==0) error_reporting(0); // Turn off all error reporting
  
  //head start
  global $mainframe;
  $videoreal = JURI::base();
  $document = &JFactory::getDocument();
  
  //head start
switch ($vscript) {
    case 'mod1':
        $jsswf_url = $RURL . "modules/mod_video/swfobject.js";
        $document->addScript($jsswf_url);
        break;
    case 'mod2':
        $jsswf_url = 'http://ajax.googleapis.com/ajax/libs/swfobject/2.1/swfobject.js';
        $document->addScript($jsswf_url);
        break;
    case 'mod3':
        $loadswf = '';
        break;
    case 'mod4':
        $compat = 'yes';
        break;
}
  
  //create XML
  $xmlfile = JPATH_BASE . "/modules/mod_video/video.xml";
  if (is_file($xmlfile)){
   unlink($xmlfile);
  }
  touch($xmlfile) or die("Unable to create: " . $xmlfile);
  $playlist = '<?xml version="1.0" encoding="utf-8"?>' . "\n";
  $playlist .= '<playlist>';
  
  		if ($video01 == '1') {$video01 = 'on';
			$playlist .= '<video title="' . $videotitle01 . '" image="' . $videoimage01 . '" source="' . $videosource01 . '"></video>';
		} //if ($video01 == '2')
		
	$playlist .= '</playlist>';

  $handle = fopen($xmlfile, 'r+b') or die("Could not open file: " . $xmlfile . "\n");
  fwrite($handle, $playlist) or die("Could not write to file: " . $xmlfile . "\n");
  fclose($handle);
  chmod($xmlfile, 0777);
  
  
  $videooutput = '<video class="videos" height="500" src="' . $videosource01 . '" type="video/mp4"' . 'poster="' . $videoimage01 . '" controls></video>';
  
    echo $videooutput ;  

 ?>