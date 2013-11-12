 <?php   
 $caption1 = $this->params->get("caption1", "Lorem ipsum dolor sit amet.");   
 $caption2 = $this->params->get("caption2", "Whenever i look into your eyes..");  
 $caption3 = $this->params->get("caption3", "You are always on my mind...");	
 $image1	=	htmlspecialchars($this->params->get('image1'));
 $image2	=	htmlspecialchars($this->params->get('image2'));
 $image3	=	htmlspecialchars($this->params->get('image3'));
 $slidedisable	= $this->params->get("slidedisable");
 
?>
 
 
 <div class="pagewidth"> 
 <div id="wrapper-slide">	   	  
    <div id="slide">		  
        <div id="slider" class="nivoSlider"> 		
 	        <img src="<?php echo $this->baseurl ?>/<?php echo htmlspecialchars($image1); ?>" alt="image1" title="<?php echo $caption1 ?>" />	
            <img src="<?php echo $this->baseurl ?>/<?php echo htmlspecialchars($image2); ?>" alt="image2" title="<?php echo $caption2 ?>" />
            <img src="<?php echo $this->baseurl ?>/<?php echo htmlspecialchars($image3); ?>" alt="image3" title="<?php echo $caption3 ?>" />
        </div>	  
	</div>    
</div> 
</div>	

																