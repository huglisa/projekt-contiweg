<?php
/**
 * @version		$Id: grpdocsviewer.php 17 2012-08-07 19:48:47Z groupdocsteam $
 * @package		plugins
 * @copyright	Copyright (C) 2011-2012 soeren. All rights reserved.
 * @license - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 * Joomla! is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 */

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport( 'joomla.plugin.plugin' );

/**
 * Editor Google Drive embed button
 *
 * @author soeren
 * @package Editors-xtd
 */
class plgButtonGrpdocsViewer extends JPlugin
{
	/**
	 * Constructor
	 *
	 * For php4 compatability we must not use the __constructor as a constructor for plugins
	 * because func_get_args ( void ) returns a copy of all passed arguments NOT references.
	 * This causes problems with cross-referencing necessary for the observer design pattern.
	 *
	 * @param 	object $subject The object to observe
	 * @param 	array  $config  An array that holds the plugin configuration
	 * @since 1.5
	 */
	public function __construct(& $subject, $config)
	{
		parent::__construct($subject, $config);
		$this->loadLanguage();
	}

	/**
	 * GoogleDriveEmbed button
	 * @return array A two element array of ( imageName, textToInsert )
	 */
	function onDisplay($name)
	{
		$app = JFactory::getApplication();
		$doc 		=& JFactory::getDocument();
		$appname = $app->getName();
		$apppath = $appname == 'site' ? '' : '../';
		$link = $apppath . 'plugins/editors-xtd/grpdocsviewer/grpdocsviewer-dialog.php?app='.$appname.'&amp;e_name='.$name;

		JHTML::_('behavior.modal');
		$doc->addStyleDeclaration('
	.icon-gd_viewerButton {
background:transparent url('.JURI::base() .$apppath. 'plugins/editors-xtd/grpdocsviewer/grpdocsviewer.png) no-repeat scroll 100% 0pt;
}');

		$button = new JObject();
		$button->set('modal', true);
		$button->set('link', $link);
        $button->set('class', 'btn');
		$button->set('text','GD Viewer');
		$button->set('name', 'gd_viewerButton');
		$button->set('options', "{handler: 'iframe', size: {x: 550, y: 420}}");

		return $button;
	}
}
