<?php
/**
 * @Copyright
 *
 * @package    CountDown-Up Big Module for Joomla 3
 * @author     Viktor Vogel {@link http://joomla-extensions.kubik-rubik.de/}
 * @version    Version: 3-2 - 2013-12-20
 * @link       Project Site {@link http://joomla-extensions.kubik-rubik.de/cdub-countdown-up-big}
 *
 * @license    GNU/GPL
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
defined('_JEXEC') or die('Restricted access');
echo '<!-- CDUB - CountDown-Up Big - Kubik-Rubik Joomla! Extensions - Viktor Vogel -->';
?>
<div class="cdub_main <?php echo $moduleclass_sfx ?>">
    <div class="cdub_color<?php echo $module_id; ?>">
        <?php if($ev_displaytitle AND !empty($ev_title)) : ?>
            <h2 class="cdub_color<?php echo $module_id; ?>"><?php echo $ev_title ?></h2>
        <?php endif; ?>
        <?php if($ev_displaydate) : ?>
            <span><?php echo $eventdate ?></span>
        <?php endif; ?>
        <?php if(($ev_displaydate) AND ($ev_dhourshow)) : ?>
            -
        <?php endif; ?>
        <?php if($ev_dhourshow) : ?>
            <span><?php echo $ev_hour.':'.$ev_minute; ?> <?php echo $oclock; ?></span>
        <?php endif; ?>
        <?php if(!empty($ev_text)) : ?>
            <?php if(($ev_displaydate) OR ($ev_dhourshow)) : ?>
                <br/><br/>
            <?php endif; ?>
            <span><?php echo $ev_text ?></span>
        <?php endif; ?>
        <?php if($dynamic == 1) : ?>
            <?php if($up == 0) : ?>
                <span id="bigbefore<?php echo $module_id; ?>">
                    <?php if($ev_ddaysleft) : ?>
                        <?php if(($ev_displaydate) OR ($ev_dhourshow) OR ($ev_text)) : ?>
                            <br/><br/>
                        <?php endif; ?>
                        <span class="cdub_bold"><?php echo JText::_('MOD_COUNT_DOWN_BIG_STILL'); ?></span>
                    <?php endif; ?>
                    <?php if(($ev_displaydate) OR ($ev_dhourshow) OR ($ev_text) OR ($ev_ddaysleft)) : ?>
                        <br/><br/>
                    <?php endif; ?>
                    <span id="bigtime<?php echo $module_id; ?>"></span>
                </span>
                <span id="bigafter<?php echo $module_id; ?>" class="cdub_none">
                <?php if(($ev_displaydate OR $ev_dhourshow OR $ev_text) AND $showexpired) : ?>
                    <br/><br/>
                <?php endif; ?>
                <?php if($showexpired): ?>
                    <span class="cdub_bold"><?php echo JText::_('MOD_COUNT_DOWN_BIG_COUNTDOWNEXPIRED'); ?></span>
                <?php endif; ?>
                <?php if($ev_displayurl_end) : ?>
                    <br/><br/>
                    <span>Link:<br/>
                        <a target="<?php echo $newwindow_end ?>" title="<?php echo $ev_urltitle_end ?>" href="<?php echo $ev_url_end ?>"><strong><?php echo $ev_urltitle_end ?></strong></a>
                    </span>
                <?php endif; ?></span>
            <?php else : ?>
            <span id="bigafter<?php echo $module_id; ?>" class="cdub_none">
                <?php if(($ev_displaydate OR $ev_dhourshow OR $ev_text) AND $showexpired) : ?>
                    <br/><br/>
                <?php endif; ?>
                <?php if($showexpired): ?>
                    <span class="cdub_bold"><?php echo JText::_('MOD_COUNT_DOWN_BIG_COUNTDOWNEXPIRED'); ?></span>
                <?php endif; ?>
                <?php if($ev_displayurl_end) : ?>
                    <br/><br/>
                    <span>Link:<br/>
                        <a target="<?php echo $newwindow_end ?>" title="<?php echo $ev_urltitle_end ?>" href="<?php echo $ev_url_end ?>"><strong><?php echo $ev_urltitle_end ?></strong></a>
                    </span>
                <?php endif; ?>
                <?php if($countup): ?>
                    <?php if($ev_ddaysleft) : ?>
                        <br/><br/><span class="cdub_bold"><?php echo JText::_('MOD_COUNT_DOWN_BIG_SINCE'); ?></span>
                    <?php endif; ?>
                        <br/><br/><span id="bigtime_up<?php echo $module_id; ?>"></span></span>
                <?php endif; ?>
            <?php endif; ?>
        <?php else : ?>
            <?php if($up == 1) : ?>
                <?php if(($ev_displaydate OR $ev_dhourshow OR $ev_text) AND $showexpired) : ?>
                    <br/><br/>
                <?php endif; ?>
                <?php if($showexpired): ?>
                    <span class="cdub_bold"><?php echo JText::_('MOD_COUNT_DOWN_BIG_COUNTDOWNEXPIRED'); ?></span>
                <?php endif; ?>
                <?php if($ev_displayurl_end) : ?>
                    <br/><br/>
                    <span>Link:<br/>
                        <a target="<?php echo $newwindow_end ?>" title="<?php echo $ev_urltitle_end ?>" href="<?php echo $ev_url_end ?>"><strong><?php echo $ev_urltitle_end ?></strong></a>
                    </span>
                <?php endif; ?>
            <?php endif; ?>
            <?php if($ev_ddaysleft) : ?>
                <?php if($up == 0) : ?>
                    <?php if(($ev_displaydate) OR ($ev_dhourshow) OR ($ev_text)) : ?>
                        <br/><br/>
                    <?php endif; ?>
                    <span class="cdub_bold"><?php echo JText::_('MOD_COUNT_DOWN_BIG_STILL'); ?></span>
                <?php elseif($up == 1 AND $countup): ?>
                    <br/><br/><span class="cdub_bold"><?php echo JText::_('MOD_COUNT_DOWN_BIG_SINCE'); ?></span>
                <?php endif; ?>
            <?php endif; ?>
            <?php if(($up == 0) OR ($countup AND $up == 1)) : ?>
                <?php if($days_left > 0) : ?>
                    <?php if(($ev_displaydate) OR ($ev_dhourshow) OR ($ev_text) OR ($ev_ddaysleft) OR ($up == 1)) : ?>
                        <br/><br/>
                    <?php endif; ?>
                    <span class="cdub_font"><?php echo $days_left.' '.$days_switch; ?></span>
                <?php endif; ?>
                <?php if($ev_displayday == 0) : ?>
                    <?php if($days_left > 0) : ?>
                        <br/><br/>
                        <span class="cdub_font2">
                            <?php echo $hours_left ?> <?php echo JText::_('MOD_COUNT_DOWN_BIG_HOURSHORT'); ?> : <?php echo $minutes_left ?> <?php echo JText::_('MOD_COUNT_DOWN_BIG_MINUTESHORT'); ?> : <?php echo $seconds_left ?> <?php echo JText::_('MOD_COUNT_DOWN_BIG_SECONDSHORT'); ?>
                        </span>
                    <?php else : ?>
                        <?php if(($ev_displaydate) OR ($ev_dhourshow) OR ($ev_text) OR ($up == 1)) : ?>
                            <br/><br/>
                        <?php endif; ?>
                        <span
                            class="cdub_font3">
                                <?php echo $hours_left ?> <?php echo JText::_('MOD_COUNT_DOWN_BIG_HOURSHORT'); ?> : <?php echo $minutes_left ?> <?php echo JText::_('MOD_COUNT_DOWN_BIG_MINUTESHORT'); ?> : <?php echo $seconds_left ?> <?php echo JText::_('MOD_COUNT_DOWN_BIG_SECONDSHORT'); ?>
                        </span>
                    <?php endif; ?>
                <?php endif; ?>
            <?php endif; ?>
        <?php endif; ?>
        <?php if($ev_displayurl) : ?>
            <?php if(($up == 0) OR ($up == 1 AND $ev_dlink_countup)) : ?>
                <br/><br/>
                <span>Link:<br/>
                    <a target="<?php echo $newwindow ?>" title="<?php echo $ev_urltitle ?>" href="<?php echo $ev_url ?>"><strong><?php echo $ev_urltitle ?></strong></a>
                </span>
            <?php endif; ?>
        <?php endif; ?>
        <?php if($poweredby == "yes") : ?>
            <br/><br/>
            <span class="small">
                <a href="http://joomla-extensions.kubik-rubik.de/" target="_blank" title="CDUB - CountDown-Up Big - Kubik-Rubik Joomla! Extensions">Kubik-Rubik Joomla! Extensions</a>
            </span>
        <?php endif; ?>
    </div>
</div>