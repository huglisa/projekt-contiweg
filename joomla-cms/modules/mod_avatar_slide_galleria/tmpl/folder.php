<?php 
/**
 * @version		$Id: helper.php 5 2012-04-06 20:10:35Z mozart $
 * @copyright	JoomAvatar.com
 * @author		Tran Nam Chung
 * @mail		chungnt@joomavatar.com
 * @link		http://joomavatar.com
 * @license		License GNU General Public License version 2 or later
 */
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
?>
	<div id="avatar_galleria_<?php echo $id?>" class="galleria-<?php echo $theme?>" style="display: block;margin: auto;width:<?php echo $sliderWidth;?>;">
		<?php
			$count = 0;
			for($p = 0 ; $p < sizeof($path) ; $p++)
			{			
				for($n = 0 ; $n < sizeof($tmpListImage[$p]) && $n< $itemCount ; $n++, $count++)
				{
					$tmp = $tmpListImage[$p][$n];
					echo "<a href='".JURI::base()."images/".$path[$p]."/".$tmp."'>";
					echo "<img alt='' style='display:none;' ";
					
					if(file_exists(JPATH_ROOT."/images/".$path[$p]."/thumb/".$tmp))
							echo "src='".JURI::base()."images/".$path[$p]."/thumb/".$tmp."'";
					else
						echo "src='".JURI::base()."images/".$path[$p]."/".$tmp."'";
					if ($showFileName == "true")
					{
						echo 'data-title="'.htmlspecialchars($tmp).'"';
					}
					if ($tmpListDesc != NULL || $tmpListTitle != NULL || $tmpListLink != NULL) 
					{
						$position = $count+1;
						if(isset($tmpListDesc["$position"]) || isset($tmpListTitle["$position"]) || isset($tmpListLink["$position"]))
						{
							if(isset($tmpListTitle["$position"]) && $showFileName == "false")
							{
								echo 'data-title="'.htmlspecialchars($tmpListTitle["$position"]).'" ';
							}
							if(isset($tmpListDesc["$position"]))
							{
								echo 'data-description="'.htmlspecialchars($tmpListDesc["$position"]).'" ';
							}
							if(isset($tmpListLink["$position"]))
							{
								echo 'data-link="'.htmlspecialchars($tmpListLink["$position"]).'" ';
							}
						}
					}
					echo "/></a>";
				}
			}    		
		?>
	</div>