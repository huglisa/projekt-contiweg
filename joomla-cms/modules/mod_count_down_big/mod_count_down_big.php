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

require_once(dirname(__FILE__).'/helper.php');

$ev_displaytitle = $params->get('ev_displaytitle');
$ev_displaydate = $params->get('ev_displaydate');
$ev_ddaysleft = $params->get('ev_ddaysleft');
$ev_displayday = $params->get('ev_displayday');
$ev_dhourshow = $params->get('ev_dhourshow');
$ev_displayurl = $params->get('ev_displayurl');
$ev_urltitle = $params->get('ev_urltitle');
$ev_url = $params->get('ev_url');
$ev_displayurl_end = $params->get('ev_displayurl_end');
$ev_urltitle_end = $params->get('ev_urltitle_end');
$ev_url_end = $params->get('ev_url_end');
$newwindow_end = $params->def('newwindow_end', 1);
$newwindow = $params->def('newwindow', 1);
$poweredby = $params->def('poweredby', 1);
$countup = $params->def('countup', 1);
$dynamic = $params->def('dynamic', 1);
$color = $params->get('color');
$ev_dlink_countup = $params->get('ev_dlink_countup');
$showexpired = $params->get('showexpired');
$moduleclass_sfx = $params->get('moduleclass_sfx', '');

// Get the ID of the module
$module_id = $module->id;

// Create new countdown object
$start = new ModCountDownBigHelper();

// CSS file in the head section
$document = JFactory::getDocument();
$document->addStyleSheet('modules/mod_count_down_big/count_down_big.css');
$css = '.cdub_color'.$module_id.'{color:'.$color.';}'."\n";
$document->addStyleDeclaration($css);

// Get next or last event - Array with all needed information
$date_array = $start->dateArray($params);

// Get time to event and countdown status
list($days_left, $hours_left, $minutes_left, $seconds_left, $up) = $start->countdown($date_array[0]);
list($eventdate, $oclock) = $start->dateformat($params, $date_array[1], $date_array[2], $date_array[3], $date_array[4]);

$days_switch = $start->daysname($days_left, $up);

// Set variables of event for template
$eventup = $date_array[0];
$ev_hour = $date_array[4];
$ev_minute = $date_array[5];

if(isset($date_array[6]))
{
    $ev_title = $date_array[6];
}
else
{
    $ev_title = false;
}

if(isset($date_array[7]))
{
    $ev_text = $date_array[7];
}
else
{
    $ev_text = false;
}

// Load template for the output
$path = JModuleHelper::getLayoutPath('mod_count_down_big', 'default');

if(file_exists($path))
{
    require($path);
}

// Load JS code for dynamic counter
if($dynamic == 1)
{
    $start->countdowndyn($eventup, $module_id);
}
