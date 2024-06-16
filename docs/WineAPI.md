# WineAPI

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDishPairingForWine**](WineAPI.md#getdishpairingforwine) | **GET** /food/wine/dishes | Dish Pairing for Wine
[**getWineDescription**](WineAPI.md#getwinedescription) | **GET** /food/wine/description | Wine Description
[**getWinePairing**](WineAPI.md#getwinepairing) | **GET** /food/wine/pairing | Wine Pairing
[**getWineRecommendation**](WineAPI.md#getwinerecommendation) | **GET** /food/wine/recommendation | Wine Recommendation


# **getDishPairingForWine**
```swift
    open class func getDishPairingForWine(wine: String, completion: @escaping (_ data: GetDishPairingForWine200Response?, _ error: Error?) -> Void)
```

Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spoonacular

let wine = "wine_example" // String | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

// Dish Pairing for Wine
WineAPI.getDishPairingForWine(wine: wine) { (response, error) in
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
 **wine** | **String** | The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

[**GetDishPairingForWine200Response**](GetDishPairingForWine200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWineDescription**
```swift
    open class func getWineDescription(wine: String, completion: @escaping (_ data: GetWineDescription200Response?, _ error: Error?) -> Void)
```

Wine Description

Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spoonacular

let wine = "wine_example" // String | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

// Wine Description
WineAPI.getWineDescription(wine: wine) { (response, error) in
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
 **wine** | **String** | The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

[**GetWineDescription200Response**](GetWineDescription200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWinePairing**
```swift
    open class func getWinePairing(food: String, maxPrice: Double? = nil, completion: @escaping (_ data: GetWinePairing200Response?, _ error: Error?) -> Void)
```

Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spoonacular

let food = "food_example" // String | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
let maxPrice = 987 // Double | The maximum price for the specific wine recommendation in USD. (optional)

// Wine Pairing
WineAPI.getWinePairing(food: food, maxPrice: maxPrice) { (response, error) in
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
 **food** | **String** | The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). | 
 **maxPrice** | **Double** | The maximum price for the specific wine recommendation in USD. | [optional] 

### Return type

[**GetWinePairing200Response**](GetWinePairing200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWineRecommendation**
```swift
    open class func getWineRecommendation(wine: String, maxPrice: Double? = nil, minRating: Double? = nil, number: Double? = nil, completion: @escaping (_ data: GetWineRecommendation200Response?, _ error: Error?) -> Void)
```

Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spoonacular

let wine = "wine_example" // String | The type of wine to get a specific product recommendation for.
let maxPrice = 987 // Double | The maximum price for the specific wine recommendation in USD. (optional)
let minRating = 987 // Double | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. (optional)
let number = 987 // Double | The number of wine recommendations expected (between 1 and 100). (optional) (default to 10)

// Wine Recommendation
WineAPI.getWineRecommendation(wine: wine, maxPrice: maxPrice, minRating: minRating, number: number) { (response, error) in
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
 **wine** | **String** | The type of wine to get a specific product recommendation for. | 
 **maxPrice** | **Double** | The maximum price for the specific wine recommendation in USD. | [optional] 
 **minRating** | **Double** | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional] 
 **number** | **Double** | The number of wine recommendations expected (between 1 and 100). | [optional] [default to 10]

### Return type

[**GetWineRecommendation200Response**](GetWineRecommendation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

