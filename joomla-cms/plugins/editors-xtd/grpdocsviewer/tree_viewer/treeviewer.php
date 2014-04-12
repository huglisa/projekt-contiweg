<?php
/**
 * @version 1.3 - GroupDocs Viewer Pulgin
 * @package plugins
 * @copyright Copyright (C) 2012 GroupDocs. All rights reserved.
 * @license - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */
 // no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

if( empty($_GET['private_key']) || empty($_GET['user_id']) ) {
	echo "ERROR: No private key and/or user id";
	exit();
}

	include_once(dirname(__FILE__) . '/lib/groupdocs-php/ApiClient.php');
    include_once(dirname(__FILE__) . '/lib/groupdocs-php/StorageApi.php');
    include_once(dirname(__FILE__) . '/lib/groupdocs-php/GroupDocsRequestSigner.php');

    $path = urldecode($_POST['dir']);

    if ($path == NULL || $path == "/") {
        $path = "";
    } 

    $private_key = $_GET['private_key'];
    $user_id = $_GET['user_id'];
    
    $signer = new GroupDocsRequestSigner($private_key);
    $ApiClient = new ApiClient($signer);
    $ApiStorage = new StorageApi($ApiClient);
	
	$cur_path = substr($path, 0, strlen($path)-1);
  
    try {
		$result = $ApiStorage->ListEntities($user_id, $cur_path);
		
		$files = $result->result->files;
		$folders = $result->result->folders;
    } catch (Exception $e) {
		echo $e->getMessage();
	}

    print("<ul class=\"jqueryFileTree\" style=\"display: ;\">");
    if(!empty($folders)){
		foreach ($folders as $item) {
				print("<li class=\"directory collapsed\"><a href=\"#\" rel=\"" .
						  $path . $item->name . "/\">" . $item->name . "</a></li>");
		}
	}
	if(!empty($files)){
		foreach ($files as $item) {
				$href = $item->guid;
                $url = "https://apps.groupdocs.com/document-viewer/embed/{$href}";
                $url = $signer->signUrl($url);
                $signature = explode("=", $url);
                print("<li class=\"file ext_" . strtolower($item->file_type) . "\"><a class='iframe' href='" . $href . "' rel=\"" .
                    $item->guid . "?signature=" . $signature[1] . "\">" . $item->name . "</a></li>");
		}
	}
    print("</ul>");
?>