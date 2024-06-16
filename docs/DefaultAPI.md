# DefaultAPI

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyzeRecipe**](DefaultAPI.md#analyzerecipe) | **POST** /recipes/analyze | Analyze Recipe
[**createRecipeCardGet**](DefaultAPI.md#createrecipecardget) | **GET** /recipes/{id}/card | Create Recipe Card
[**searchRestaurants**](DefaultAPI.md#searchrestaurants) | **GET** /food/restaurants/search | Search Restaurants


# **analyzeRecipe**
```swift
    open class func analyzeRecipe(analyzeRecipeRequest: AnalyzeRecipeRequest, language: String? = nil, includeNutrition: Bool? = nil, includeTaste: Bool? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Analyze Recipe

This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spoonacular

let analyzeRecipeRequest = analyzeRecipe_request(language: "language_example", includeNutrition: false, includeTaste: false) // AnalyzeRecipeRequest | Example request body.
let language = "language_example" // String | The input language, either \"en\" or \"de\". (optional)
let includeNutrition = false // Bool | Whether nutrition data should be added to correctly parsed ingredients. (optional)
let includeTaste = false // Bool | Whether taste data should be added to correctly parsed ingredients. (optional)

// Analyze Recipe
DefaultAPI.analyzeRecipe(analyzeRecipeRequest: analyzeRecipeRequest, language: language, includeNutrition: includeNutrition, includeTaste: includeTaste) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analyzeRecipeRequest** | [**AnalyzeRecipeRequest**](AnalyzeRecipeRequest.md) | Example request body. | 
 **language** | **String** | The input language, either \&quot;en\&quot; or \&quot;de\&quot;. | [optional] 
 **includeNutrition** | **Bool** | Whether nutrition data should be added to correctly parsed ingredients. | [optional] 
 **includeTaste** | **Bool** | Whether taste data should be added to correctly parsed ingredients. | [optional] 

### Return type

**AnyCodable**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRecipeCardGet**
```swift
    open class func createRecipeCardGet(id: Double, mask: String? = nil, backgroundImage: String? = nil, backgroundColor: String? = nil, fontColor: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Create Recipe Card

Generate a recipe card for a recipe.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spoonacular

let id = 987 // Double | The recipe id.
let mask = "mask_example" // String | The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\"). (optional)
let backgroundImage = "backgroundImage_example" // String | The background image (\"none\",\"background1\", or \"background2\"). (optional)
let backgroundColor = "backgroundColor_example" // String | The background color for the recipe card as a hex-string. (optional)
let fontColor = "fontColor_example" // String | The font color for the recipe card as a hex-string. (optional)

// Create Recipe Card
DefaultAPI.createRecipeCardGet(id: id, mask: mask, backgroundImage: backgroundImage, backgroundColor: backgroundColor, fontColor: fontColor) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Double** | The recipe id. | 
 **mask** | **String** | The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;). | [optional] 
 **backgroundImage** | **String** | The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;). | [optional] 
 **backgroundColor** | **String** | The background color for the recipe card as a hex-string. | [optional] 
 **fontColor** | **String** | The font color for the recipe card as a hex-string. | [optional] 

### Return type

**AnyCodable**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRestaurants**
```swift
    open class func searchRestaurants(query: String? = nil, lat: Double? = nil, lng: Double? = nil, distance: Double? = nil, budget: Double? = nil, cuisine: String? = nil, minRating: Double? = nil, isOpen: Bool? = nil, sort: String? = nil, page: Double? = nil, completion: @escaping (_ data: SearchRestaurants200Response?, _ error: Error?) -> Void)
```

Search Restaurants

Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spoonacular

let query = "query_example" // String | The search query. (optional)
let lat = 987 // Double | The latitude of the user's location. (optional)
let lng = 987 // Double | The longitude of the user's location.\". (optional)
let distance = 987 // Double | The distance around the location in miles. (optional)
let budget = 987 // Double | The user's budget for a meal in USD. (optional)
let cuisine = "cuisine_example" // String | The cuisine of the restaurant. (optional)
let minRating = 987 // Double | The minimum rating of the restaurant between 0 and 5. (optional)
let isOpen = true // Bool | Whether the restaurant must be open at the time of search. (optional)
let sort = "sort_example" // String | How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'. (optional)
let page = 987 // Double | The page number of results. (optional)

// Search Restaurants
DefaultAPI.searchRestaurants(query: query, lat: lat, lng: lng, distance: distance, budget: budget, cuisine: cuisine, minRating: minRating, isOpen: isOpen, sort: sort, page: page) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String** | The search query. | [optional] 
 **lat** | **Double** | The latitude of the user&#39;s location. | [optional] 
 **lng** | **Double** | The longitude of the user&#39;s location.\&quot;. | [optional] 
 **distance** | **Double** | The distance around the location in miles. | [optional] 
 **budget** | **Double** | The user&#39;s budget for a meal in USD. | [optional] 
 **cuisine** | **String** | The cuisine of the restaurant. | [optional] 
 **minRating** | **Double** | The minimum rating of the restaurant between 0 and 5. | [optional] 
 **isOpen** | **Bool** | Whether the restaurant must be open at the time of search. | [optional] 
 **sort** | **String** | How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;. | [optional] 
 **page** | **Double** | The page number of results. | [optional] 

### Return type

[**SearchRestaurants200Response**](SearchRestaurants200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

