<?php
/**
 * @version 1.3.1 - GroupDocs Viewer Pulgin
 * @package plugins
 * @copyright Copyright (C) 2012 GroupDocs. All rights reserved.
 * @license - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */
// Set flag that this is a parent file
define( '_JEXEC', 1 );

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

define( 'DS', DIRECTORY_SEPARATOR );
define('JPATH_BASE', dirname(__FILE__).DS.'..'.DS.'..'.DS.'..' );

require_once ( JPATH_BASE .DS.'includes'.DS.'defines.php' );
require_once ( JPATH_BASE .DS.'includes'.DS.'framework.php' );

		
JDEBUG ? $_PROFILER->mark( 'afterLoad' ) : null;

 // CREATE THE APPLICATION
$app = JRequest::getString('app', 'site');

$app = $app == 'site' ? 'site' : ($app == 'administrator' ? 'administrator' : 'site');
$app_path = $app == 'site' ? '../../..' : '../../../administrator';

$mainframe =& JFactory::getApplication($app);
$doc =& JFactory::getDocument();

/** @var jlanguage $lang */
$lang =& JFactory::getLanguage();
$lang->load('plg_editors-xtd_grpdocsviewer', realpath(JPATH_BASE.DS.'administrator'));

jimport( 'joomla.filesystem.path' ) ;
jimport( 'joomla.html.parameter' ) ;

jimport( 'joomla.plugin.plugin' ) ;
jimport( 'joomla.plugin.helper' ) ;
$plugin = JPluginHelper::getPlugin( 'editors-xtd', 'grpdocsviewer' ) ;
 
if (empty( $plugin ->params )) {$plugin= new stdClass; $plugin->params = ''; }

$pluginParams = new JRegistry( $plugin->params ) ;
$login = $pluginParams->get('groupdocs_client_login');
$password = $pluginParams->get('groupdocs_client_password');
if (empty ($login) or empty ($login)){
    echo "<div id='enpty_felds' style='display:none'>Warning!  Login and Password  fields in 'Editor Button - GroupDocs Veiwer' module were not configured, so you should provide API Keys (Client Id and Private Key) manually in this popup and press Reload link. Or please go to  'Editor Button - GroupDocs Viewer' module configuration and configure it with your correct login credentials, so API Keys will be retrieved automatically.</div>";
    $disabled = "disabled";
}else{
include_once(dirname(__FILE__) . '/tree_viewer/lib/groupdocs-php/ApiClient.php');
include_once(dirname(__FILE__) . '/tree_viewer/lib/groupdocs-php/StorageApi.php');
include_once(dirname(__FILE__) . '/tree_viewer/lib/groupdocs-php/GroupDocsRequestSigner.php');
include_once(dirname(__FILE__) . '/tree_viewer/lib/groupdocs-php/FileStream.php');
$basePath = 'https://api.groupdocs.com/v2.0';
//Create signer object
$signer = new GroupDocsRequestSigner("123");
//Create apiClient object
$apiClient = new ApiClient($signer);
//Creaet Shared object
$shared = new SharedApi($apiClient);
//Set base path
$shared->setBasePath($basePath);
//Set empty variable for result
$result = "";
//Login and get user data
$userData = $shared->LoginUser($login, $password);
//Check status
if ($userData->status == "Ok") {
    //If status Ok get all user data
    $result = $userData->result->user;
    $privateKey = $result->pkey;
    $userId = $result->guid;
} else {
    echo "<div id='incorrect_felds' style='display:none'>You provided incorrect login or password. Please check the configuration</div>";
    $disabled = "disabled";
}}
//$userId = $pluginParams->get('groupdocs_client_id');
//$privateKey = $pluginParams->get('groupdocs_api_key');

if (isset($_GET['page']) && $_GET['page'] == 'tree') {
	include_once(dirname(__FILE__) . '/tree_viewer/treeviewer.php');
	exit();
}

if(!empty($_POST) or !empty($_FILES)) {
	$file = $_FILES['file'];
	$error_text = true; // Show text or number
	define("UPLOAD_ERR_EMPTY",5);
	if ($file['size'] == 0 && $file['error'] == 0){
		$file['error'] = 5;
	}
	$upload_errors = array(
		UPLOAD_ERR_OK        => "No errors.",
		UPLOAD_ERR_INI_SIZE    => "Larger than upload_max_filesize.",
		UPLOAD_ERR_FORM_SIZE    => "Larger than form MAX_FILE_SIZE.",
		UPLOAD_ERR_PARTIAL    => "Partial upload.",
		UPLOAD_ERR_NO_FILE        => "No file.",
		UPLOAD_ERR_NO_TMP_DIR    => "No temporary directory.",
		UPLOAD_ERR_CANT_WRITE    => "Can't write to disk.",
		UPLOAD_ERR_EXTENSION     => "File upload stopped by extension.",
		UPLOAD_ERR_EMPTY        => "File is empty." // add this to avoid an offset
	);
	// error: report what PHP says went wrong
	$err = ($error_text) ? $upload_errors[$file['error']] : $file['error'] ;

	if  ($file['error'] !== 0) {
		echo "<div class='red'>" . $err . "</div>";
	} else {
		include_once(dirname(__FILE__) . '/tree_viewer/lib/groupdocs-php/ApiClient.php');
		include_once(dirname(__FILE__) . '/tree_viewer/lib/groupdocs-php/StorageApi.php');
		include_once(dirname(__FILE__) . '/tree_viewer/lib/groupdocs-php/GroupDocsRequestSigner.php');

		$tmp_name = $_FILES["file"]["tmp_name"];
		$name = $_FILES["file"]["name"];
	 
		$private_key = trim($_POST['pkey']); 
		$user_id = trim($_POST['uid']);


		$fs = FileStream::fromFile($tmp_name);
		$signer = new GroupDocsRequestSigner($private_key);
		$ApiClient = new ApiClient($signer);
		$ApiStorage = new StorageApi($ApiClient);

		try{
			$result = $ApiStorage->Upload($user_id, $name, 'uploaded',null, $fs);
            $url = "http://apps.groupdocs.com/document-viewer/embed/{$result->result->guid}";
            $url = $signer->signUrl($url);
            $signature = explode("=", $url);
		} catch (Exception $e) {
			echo $e->getMessage();
			exit();
		}

		echo"<script>
		  window.parent.jInsertEditorText('{GroupDocs guid=\"" . @$result->result->guid . "?signature=" . $signature[1] . "\" width=\"" . intval($_POST['width']) . "\" height=\"" . intval($_POST['height']) . "\"}', 'jform_articletext');
		  window.parent.SqueezeBox.close();
		</script>";
        die;
	}
}

if (!empty($_POST) or !empty($_POST['docid'])) {
    $guid = $_POST['docid'];
    $private_key = trim($_POST['pkey']);
    $user_id = trim($_POST['uid']);
    
	include_once(dirname(__FILE__) . '/tree_viewer/lib/groupdocs-php/APIClient.php');
    include_once(dirname(__FILE__) . '/tree_viewer/lib/groupdocs-php/StorageApi.php');
    include_once(dirname(__FILE__) . '/tree_viewer/lib/groupdocs-php/GroupDocsRequestSigner.php');
	
    $signer = new GroupDocsRequestSigner($private_key);
    $ApiClient = new APIClient($signer);
    $ApiStorage = new StorageApi($ApiClient);

    try {

        $url = "http://apps.groupdocs.com/document-viewer/embed/{$guid}";
        $url = $signer->signUrl($url);
        $signature = explode("=", $url);

    } catch (Exception $e) {
        echo $e->getMessage();
        exit();
    }

    echo "<script>
		  window.parent.jInsertEditorText('{GroupDocs guid=\"" . @$guid . "?signature=" . $signature[1] . "\" width=\"" . intval($_POST['width']) . "\" height=\"" . intval($_POST['height']) . "\"}', 'jform_articletext');
		  window.parent.SqueezeBox.close();
		</script>";
    die;
}

 ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	
	<script type="text/javascript" src="tree_viewer/js/jquery-1.5.min.js"></script>
	<script type="text/javascript" src="tree_viewer/lib/jquery_file_tree/jquery.file_tree.js"></script>
	<script type="text/javascript" src="tree_viewer/js/tree_viewer_page.js"></script>
	
	<link href="tree_viewer/lib/jquery_file_tree/jquery.file_tree.css" type="text/css" rel="stylesheet" />
	
	<link href="grpdocsviewer.css" type="text/css" rel="stylesheet" />
	<script src="grpdocsviewer.js" type="text/javascript" ></script>
</head>
<body>
<form action='' method='post' enctype='multipart/form-data'>
<h2>GroupDocs Embedder</h2>

<div>
<table>
<tr>
	<td>Client ID</td>
	<td><input id="userId" name='uid' type='text' value='<?php echo $userId; ?>'></td>
</tr>
<tr>
	<td>Private Key</td>
	<td><input id="privateKey" name='pkey' type='text' value='<?php echo $privateKey; ?>'></td>
</tr>
<tr>
	<td>Height</td>
	<td><input id='height' name='height' value='600' size='5' type='text' style='text-align:right'>px</td>
</tr>
<tr>
	<td>Width</td>
	<td><input id='width' name='width' value='500' size='5' type='text' style='text-align:right'>px</td>
</tr>
</table>
</div>

<div class="section">
<ul class="tabs">
	<li class="current">Browse &amp; Embed</li>
	<li>Upload &amp; Embed</li>
	<li>Embed by ID</li>
</ul>
<div>
<span id="groupdocs_keys_error" style="display:none">WARNING: There is no user id and/or private key
			please enter them on GroupDocs Options page
			or fill marked fields and press <a href="#" onclick='loadFileTree();return false'>reload</a>
</span>
</div>
<div class="box visible">
	<div id="groupdocsBrowser">
		<div id="groupdocsBrowserInner" >
		</div>
	</div>
</div>

<div class="box">

    Upload file to GroupDocs 
    <input name='file' type='file'>
    <br />
    <input id='upload' value='Upload & Embed!' type='submit' style="display: block" >

</div>

<div class="box">

Paste GUID here
<input id='docid' name='docid' type='text'> <br>
<input id='embed' value='Embed!' type='submit' style="display: block" >

</div>
</div><!-- .section -->

	
</form>
</body>
</html>
