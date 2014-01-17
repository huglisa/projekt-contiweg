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
jimport('joomla.filesystem.folder');
if(class_exists('imageData') != true)
{
	class imageData
	{
		public $path;
		public $numberFolder = 0;
		public $descriptions = NULL;
		public function setPath($path,$numberFolder = 1)
		{
			$this->path = $path;
			$this->numberFolder = $numberFolder;
		}
		public function setDescriptions($descriptions)
		{
			$this->descriptions = $descriptions;
		}
		public function getArrayImageLinks()
		{
			$pathRoot= JPath::clean(JPATH_ROOT.DIRECTORY_SEPARATOR.'images/');
			sort($this->path);
			for($p = 0; $p < $this->numberFolder; $p++)
			{
				$ListImage[$p] = JFolder::files($pathRoot.$this->path[$p],$filter = '.');
				sort($ListImage[$p]);
			}
			$tmpListImage = array();
			for($p = 0; $p < $this->numberFolder; $p++)
			{
				$imgInFolder=0;	
				$tmpListImage[$p] = array();		
				for($n = 0;$n < sizeof($ListImage[$p]); $n++)
				{
					$tmp = $ListImage[$p][$n];
					$pattern = '/[^A-Za-z0-9._\\-+\s]/';
					$tmpname = explode('.', $tmp);
					$ext = end($tmpname);
					if(strtolower($ext) == 'png' || strtolower($ext) == 'jpeg' || strtolower($ext) == 'jpg' || strtolower($ext) == 'gif' || strtolower($ext) == 'bmp')
					{
						if(preg_match($pattern, $tmp));
						else 
							$tmpListImage[$p][$imgInFolder++] = $ListImage[$p][$n];
					}		
				}
			}
			return $tmpListImage;
		}
		public function getArrayImageInfo($descriptons)
		{
			if($descriptons == NULL)
				return;
			else{
				$tmpArrayDescription = explode('$',$descriptons);
				$tmpArray = array();
				for($n = 0; $n < sizeof($tmpArrayDescription) ; $n++)
				{
					$tmp = explode('=>',$tmpArrayDescription[$n]);
					if(sizeof($tmp) >= 2)
						$tmpArray["$tmp[0]"] = $tmp[1];
					else
						$tmpArray["$tmp[0]"] = NULL;
				}
				ksort($tmpArray);
				return $tmpArray;
			}	
		}
	}
}
?>