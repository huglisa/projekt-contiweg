<?php
/**
 *  Copyright 2012 GroupDocs.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

/**
 *
 * NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
 */
class SystemApi {

	private $basePath = "https://api.groupdocs.com/v2.0";

	function __construct($apiClient) {
	  $this->apiClient = $apiClient;
	}

	public static function newInstance($apiClient) {
	  return new self($apiClient);
	}

    public function setBasePath($basePath) {
	  $this->basePath = $basePath;
	}
	  
	public function getBasePath() {
	  $this->basePath;
	}

  /**
	 * SimulateAssessForPricingPlan
	 * Simulate Assess For Pricing Plan
   * userId, string: User GUID (required)
   * discountCode, string: Discount Code (optional)
   * planId, string: Subscription Plan Id (optional)
   * @return GetInvoicesResponse
	 */

   public function SimulateAssessForPricingPlan($userId, $discountCode=null, $planId=null) {
      if( $userId === null || $discountCode === null || $planId === null ) {
        throw new ApiException("missing required parameters", 400);
      }
      //parse inputs
  	  $resourcePath = str_replace("*", "", "/system/{userId}/plans/{planId}/discounts/{discountCode}");
  	  $resourcePath = str_replace("{format}", "json", $resourcePath);
  	  $method = "GET";
      $queryParams = array();
      $headerParams = array();

      if($userId !== null) {
  			$resourcePath = str_replace("{" . "userId" . "}",
  			                            $userId, $resourcePath);
  		}
  		if($discountCode !== null) {
  			$resourcePath = str_replace("{" . "discountCode" . "}",
  			                            $discountCode, $resourcePath);
  		}
  		if($planId !== null) {
  			$resourcePath = str_replace("{" . "planId" . "}",
  			                            $planId, $resourcePath);
  		}
  		//make the API Call
      if (! isset($body)) {
        $body = null;
      }
      $response = $this->apiClient->callAPI($this->basePath, $resourcePath, $method,
  		                                      $queryParams, $body, $headerParams);
      if(! $response){
        return null;
      }

  	  $responseObject = $this->apiClient->deserialize($response,
  		                                                'GetInvoicesResponse');
  	  return $responseObject;
      }
  /**
	 * GetUserPlan
	 * Get user plan
   * callerId, string: User GUID (required)
   * @return GetPlanResponse
	 */

   public function GetUserPlan($callerId) {
      if( $callerId === null ) {
        throw new ApiException("missing required parameters", 400);
      }
      //parse inputs
  	  $resourcePath = str_replace("*", "", "/system/{callerId}/plan");
  	  $resourcePath = str_replace("{format}", "json", $resourcePath);
  	  $method = "GET";
      $queryParams = array();
      $headerParams = array();

      if($callerId !== null) {
  			$resourcePath = str_replace("{" . "callerId" . "}",
  			                            $callerId, $resourcePath);
  		}
  		//make the API Call
      if (! isset($body)) {
        $body = null;
      }
      $response = $this->apiClient->callAPI($this->basePath, $resourcePath, $method,
  		                                      $queryParams, $body, $headerParams);
      if(! $response){
        return null;
      }

  	  $responseObject = $this->apiClient->deserialize($response,
  		                                                'GetPlanResponse');
  	  return $responseObject;
      }
  /**
	 * GetUserSubscriptionPlan
	 * Get user plan
   * callerId, string: User GUID (required)
   * @return GetUserSubscriptionPlanResponse
	 */

   public function GetUserSubscriptionPlan($callerId) {
      if( $callerId === null ) {
        throw new ApiException("missing required parameters", 400);
      }
      //parse inputs
  	  $resourcePath = str_replace("*", "", "/system/{callerId}/subscription");
  	  $resourcePath = str_replace("{format}", "json", $resourcePath);
  	  $method = "GET";
      $queryParams = array();
      $headerParams = array();

      if($callerId !== null) {
  			$resourcePath = str_replace("{" . "callerId" . "}",
  			                            $callerId, $resourcePath);
  		}
  		//make the API Call
      if (! isset($body)) {
        $body = null;
      }
      $response = $this->apiClient->callAPI($this->basePath, $resourcePath, $method,
  		                                      $queryParams, $body, $headerParams);
      if(! $response){
        return null;
      }

  	  $responseObject = $this->apiClient->deserialize($response,
  		                                                'GetUserSubscriptionPlanResponse');
  	  return $responseObject;
      }
  /**
	 * GetSubscriptionPlans
	 * Get subscription plans
   * callerId, string: User GUID (required)
   * family, string: Product Family Name (required)
   * @return GetSubscriptionPlansResponse
	 */

   public function GetSubscriptionPlans($callerId, $family) {
      if( $callerId === null || $family === null ) {
        throw new ApiException("missing required parameters", 400);
      }
      //parse inputs
  	  $resourcePath = str_replace("*", "", "/system/{callerId}/plans/{family}?invalidate={invalidate}");
  	  $resourcePath = str_replace("{format}", "json", $resourcePath);
  	  $method = "GET";
      $queryParams = array();
      $headerParams = array();

      if($callerId !== null) {
  			$resourcePath = str_replace("{" . "callerId" . "}",
  			                            $callerId, $resourcePath);
  		}
  		if($family !== null) {
  			$resourcePath = str_replace("{" . "family" . "}",
  			                            $family, $resourcePath);
  		}
  		//make the API Call
      if (! isset($body)) {
        $body = null;
      }
      $response = $this->apiClient->callAPI($this->basePath, $resourcePath, $method,
  		                                      $queryParams, $body, $headerParams);
      if(! $response){
        return null;
      }

  	  $responseObject = $this->apiClient->deserialize($response,
  		                                                'GetSubscriptionPlansResponse');
  	  return $responseObject;
      }
  /**
	 * SetSubscriptionPlan
	 * Set subscription plan user plan
   * userId, string: User GUID (required)
   * productId, string: Product ID (required)
   * body, SubscriptionPlanInfo: Subscription Plan (required)
   * @return SetUserSubscriptionPlanResponse
	 */

   public function SetSubscriptionPlan($userId, $productId, $body) {
      if( $userId === null || $productId === null || $body === null ) {
        throw new ApiException("missing required parameters", 400);
      }
      //parse inputs
  	  $resourcePath = str_replace("*", "", "/system/{userId}/subscriptions/{productId}");
  	  $resourcePath = str_replace("{format}", "json", $resourcePath);
  	  $method = "PUT";
      $queryParams = array();
      $headerParams = array();

      if($userId !== null) {
  			$resourcePath = str_replace("{" . "userId" . "}",
  			                            $userId, $resourcePath);
  		}
  		if($productId !== null) {
  			$resourcePath = str_replace("{" . "productId" . "}",
  			                            $productId, $resourcePath);
  		}
  		//make the API Call
      if (! isset($body)) {
        $body = null;
      }
      $response = $this->apiClient->callAPI($this->basePath, $resourcePath, $method,
  		                                      $queryParams, $body, $headerParams);
      if(! $response){
        return null;
      }

  	  $responseObject = $this->apiClient->deserialize($response,
  		                                                'SetUserSubscriptionPlanResponse');
  	  return $responseObject;
      }
  /**
	 * UpdateSubscriptionPlan
	 * Update subscription plan user plan
   * userId, string: User GUID (required)
   * productId, string: Product ID (required)
   * body, UpdateSubscriptionPlanInfo: Subscripition Plan Update parameters (required)
   * @return SetUserSubscriptionPlanResponse
	 */

   public function UpdateSubscriptionPlan($userId, $productId, $body) {
      if( $userId === null || $productId === null || $body === null ) {
        throw new ApiException("missing required parameters", 400);
      }
      //parse inputs
  	  $resourcePath = str_replace("*", "", "/system/{userId}/subscriptions/{productId}");
  	  $resourcePath = str_replace("{format}", "json", $resourcePath);
  	  $method = "POST";
      $queryParams = array();
      $headerParams = array();

      if($userId !== null) {
  			$resourcePath = str_replace("{" . "userId" . "}",
  			                            $userId, $resourcePath);
  		}
  		if($productId !== null) {
  			$resourcePath = str_replace("{" . "productId" . "}",
  			                            $productId, $resourcePath);
  		}
  		//make the API Call
      if (! isset($body)) {
        $body = null;
      }
      $response = $this->apiClient->callAPI($this->basePath, $resourcePath, $method,
  		                                      $queryParams, $body, $headerParams);
      if(! $response){
        return null;
      }

  	  $responseObject = $this->apiClient->deserialize($response,
  		                                                'SetUserSubscriptionPlanResponse');
  	  return $responseObject;
      }
  /**
	 * GetCountries
	 * Get countries
   * callerId, string: User GUID (required)
   * @return GetCountriesResponse
	 */

   public function GetCountries($callerId) {
      if( $callerId === null ) {
        throw new ApiException("missing required parameters", 400);
      }
      //parse inputs
  	  $resourcePath = str_replace("*", "", "/system/{callerId}/countries");
  	  $resourcePath = str_replace("{format}", "json", $resourcePath);
  	  $method = "GET";
      $queryParams = array();
      $headerParams = array();

      if($callerId !== null) {
  			$resourcePath = str_replace("{" . "callerId" . "}",
  			                            $callerId, $resourcePath);
  		}
  		//make the API Call
      if (! isset($body)) {
        $body = null;
      }
      $response = $this->apiClient->callAPI($this->basePath, $resourcePath, $method,
  		                                      $queryParams, $body, $headerParams);
      if(! $response){
        return null;
      }

  	  $responseObject = $this->apiClient->deserialize($response,
  		                                                'GetCountriesResponse');
  	  return $responseObject;
      }
  /**
	 * GetStates
	 * Get states
   * callerId, string: User GUID (required)
   * countryName, string: Country Name (required)
   * @return GetStatesResponse
	 */

   public function GetStates($callerId, $countryName) {
      if( $callerId === null || $countryName === null ) {
        throw new ApiException("missing required parameters", 400);
      }
      //parse inputs
  	  $resourcePath = str_replace("*", "", "/system/{callerId}/countries/{countryName}/states");
  	  $resourcePath = str_replace("{format}", "json", $resourcePath);
  	  $method = "GET";
      $queryParams = array();
      $headerParams = array();

      if($callerId !== null) {
  			$resourcePath = str_replace("{" . "callerId" . "}",
  			                            $callerId, $resourcePath);
  		}
  		if($countryName !== null) {
  			$resourcePath = str_replace("{" . "countryName" . "}",
  			                            $countryName, $resourcePath);
  		}
  		//make the API Call
      if (! isset($body)) {
        $body = null;
      }
      $response = $this->apiClient->callAPI($this->basePath, $resourcePath, $method,
  		                                      $queryParams, $body, $headerParams);
      if(! $response){
        return null;
      }

  	  $responseObject = $this->apiClient->deserialize($response,
  		                                                'GetStatesResponse');
  	  return $responseObject;
      }
  /**
	 * SetBillingAddress
	 * Set user billing address
   * userId, string: User GUID (required)
   * body, BillingAddressInfo: Billing Address (required)
   * @return GetBillingAddressResponse
	 */

   public function SetBillingAddress($userId, $body) {
      if( $userId === null || $body === null ) {
        throw new ApiException("missing required parameters", 400);
      }
      //parse inputs
  	  $resourcePath = str_replace("*", "", "/system/{userId}/billingaddress");
  	  $resourcePath = str_replace("{format}", "json", $resourcePath);
  	  $method = "PUT";
      $queryParams = array();
      $headerParams = array();

      if($userId !== null) {
  			$resourcePath = str_replace("{" . "userId" . "}",
  			                            $userId, $resourcePath);
  		}
  		//make the API Call
      if (! isset($body)) {
        $body = null;
      }
      $response = $this->apiClient->callAPI($this->basePath, $resourcePath, $method,
  		                                      $queryParams, $body, $headerParams);
      if(! $response){
        return null;
      }

  	  $responseObject = $this->apiClient->deserialize($response,
  		                                                'GetBillingAddressResponse');
  	  return $responseObject;
      }
  /**
	 * GetInvoices
	 * Get invoices
   * callerId, string: User GUID (required)
   * pageNumber, string: Show records for page number (optional)
   * pageSize, int: Show records count (optional)
   * @return GetInvoicesResponse
	 */

   public function GetInvoices($callerId, $pageNumber=null, $pageSize=null) {
      if( $callerId === null ) {
        throw new ApiException("missing required parameters", 400);
      }
      //parse inputs
  	  $resourcePath = str_replace("*", "", "/system/{callerId}/invoices?pageNumber={pageNumber}&pageSize={pageSize}");
  	  $pos = strpos($resourcePath, "?");
	  if($pos !== false){
  	  	$resourcePath = substr($resourcePath, 0, $pos);
	  }
	  $resourcePath = str_replace("{format}", "json", $resourcePath);
  	  $method = "GET";
      $queryParams = array();
      $headerParams = array();

      if($pageNumber !== null) {
  		  $queryParams['pageNumber'] = $this->apiClient->toPathValue($pageNumber);
  		}
  		if($pageSize !== null) {
  		  $queryParams['pageSize'] = $this->apiClient->toPathValue($pageSize);
  		}
  		if($callerId !== null) {
  			$resourcePath = str_replace("{" . "callerId" . "}",
  			                            $callerId, $resourcePath);
  		}
  		//make the API Call
      if (! isset($body)) {
        $body = null;
      }
      $response = $this->apiClient->callAPI($this->basePath, $resourcePath, $method,
  		                                      $queryParams, $body, $headerParams);
      if(! $response){
        return null;
      }

  	  $responseObject = $this->apiClient->deserialize($response,
  		                                                'GetInvoicesResponse');
  	  return $responseObject;
      }
  /**
	 * GetSubscriptionPlanUsage
	 * Get subscription plans
   * userId, string: User GUID (required)
   * @return GetSubscriptionPlanUsageResponse
	 */

   public function GetSubscriptionPlanUsage($userId) {
      if( $userId === null ) {
        throw new ApiException("missing required parameters", 400);
      }
      //parse inputs
  	  $resourcePath = str_replace("*", "", "/system/{userId}/usage");
  	  $resourcePath = str_replace("{format}", "json", $resourcePath);
  	  $method = "GET";
      $queryParams = array();
      $headerParams = array();

      if($userId !== null) {
  			$resourcePath = str_replace("{" . "userId" . "}",
  			                            $userId, $resourcePath);
  		}
  		//make the API Call
      if (! isset($body)) {
        $body = null;
      }
      $response = $this->apiClient->callAPI($this->basePath, $resourcePath, $method,
  		                                      $queryParams, $body, $headerParams);
      if(! $response){
        return null;
      }

  	  $responseObject = $this->apiClient->deserialize($response,
  		                                                'GetSubscriptionPlanUsageResponse');
  	  return $responseObject;
      }
  /**
	 * GetPurchseWizardInfo
	 * Returns purchase wizard info from billing provider
   * userId, string: User global unique identifier (required)
   * @return GetPurchaseWizardResponse
	 */

   public function GetPurchseWizardInfo($userId) {
      if( $userId === null ) {
        throw new ApiException("missing required parameters", 400);
      }
      //parse inputs
  	  $resourcePath = str_replace("*", "", "/system/{userId}/purchase/wizard");
  	  $resourcePath = str_replace("{format}", "json", $resourcePath);
  	  $method = "GET";
      $queryParams = array();
      $headerParams = array();

      if($userId !== null) {
  			$resourcePath = str_replace("{" . "userId" . "}",
  			                            $userId, $resourcePath);
  		}
  		//make the API Call
      if (! isset($body)) {
        $body = null;
      }
      $response = $this->apiClient->callAPI($this->basePath, $resourcePath, $method,
  		                                      $queryParams, $body, $headerParams);
      if(! $response){
        return null;
      }

  	  $responseObject = $this->apiClient->deserialize($response,
  		                                                'GetPurchaseWizardResponse');
  	  return $responseObject;
      }
  /**
	 * GetTermSuggestions
	 * Returns suggestions for a specified term
   * userId, string: User global unique identifier (required)
   * term, string: A term to return suggestions for (required)
   * @return GetTermSuggestionsResponse
	 */

   public function GetTermSuggestions($userId, $term) {
      if( $userId === null || $term === null ) {
        throw new ApiException("missing required parameters", 400);
      }
      //parse inputs
  	  $resourcePath = str_replace("*", "", "/system/{userId}/terms/{term}/suggestions");
  	  $resourcePath = str_replace("{format}", "json", $resourcePath);
  	  $method = "GET";
      $queryParams = array();
      $headerParams = array();

      if($userId !== null) {
  			$resourcePath = str_replace("{" . "userId" . "}",
  			                            $userId, $resourcePath);
  		}
  		if($term !== null) {
  			$resourcePath = str_replace("{" . "term" . "}",
  			                            $term, $resourcePath);
  		}
  		//make the API Call
      if (! isset($body)) {
        $body = null;
      }
      $response = $this->apiClient->callAPI($this->basePath, $resourcePath, $method,
  		                                      $queryParams, $body, $headerParams);
      if(! $response){
        return null;
      }

  	  $responseObject = $this->apiClient->deserialize($response,
  		                                                'GetTermSuggestionsResponse');
  	  return $responseObject;
      }
  
}
