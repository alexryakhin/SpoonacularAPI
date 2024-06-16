# MenuItemsAPI

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocompleteMenuItemSearch**](MenuItemsAPI.md#autocompletemenuitemsearch) | **GET** /food/menuItems/suggest | Autocomplete Menu Item Search
[**getMenuItemInformation**](MenuItemsAPI.md#getmenuiteminformation) | **GET** /food/menuItems/{id} | Get Menu Item Information
[**menuItemNutritionByIDImage**](MenuItemsAPI.md#menuitemnutritionbyidimage) | **GET** /food/menuItems/{id}/nutritionWidget.png | Menu Item Nutrition by ID Image
[**menuItemNutritionLabelImage**](MenuItemsAPI.md#menuitemnutritionlabelimage) | **GET** /food/menuItems/{id}/nutritionLabel.png | Menu Item Nutrition Label Image
[**menuItemNutritionLabelWidget**](MenuItemsAPI.md#menuitemnutritionlabelwidget) | **GET** /food/menuItems/{id}/nutritionLabel | Menu Item Nutrition Label Widget
[**searchMenuItems**](MenuItemsAPI.md#searchmenuitems) | **GET** /food/menuItems/search | Search Menu Items
[**visualizeMenuItemNutritionByID**](MenuItemsAPI.md#visualizemenuitemnutritionbyid) | **GET** /food/menuItems/{id}/nutritionWidget | Menu Item Nutrition by ID Widget


# **autocompleteMenuItemSearch**
```swift
    open class func autocompleteMenuItemSearch(query: String, number: Double? = nil, completion: @escaping (_ data: AutocompleteMenuItemSearch200Response?, _ error: Error?) -> Void)
```

Autocomplete Menu Item Search

Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPI

let query = "query_example" // String | The (partial) search query.
let number = 987 // Double | The number of results to return (between 1 and 25). (optional)

// Autocomplete Menu Item Search
MenuItemsAPI.autocompleteMenuItemSearch(query: query, number: number) { (response, error) in
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
 **query** | **String** | The (partial) search query. | 
 **number** | **Double** | The number of results to return (between 1 and 25). | [optional] 

### Return type

[**AutocompleteMenuItemSearch200Response**](AutocompleteMenuItemSearch200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMenuItemInformation**
```swift
    open class func getMenuItemInformation(id: Int, completion: @escaping (_ data: GetMenuItemInformation200Response?, _ error: Error?) -> Void)
```

Get Menu Item Information

Use a menu item id to get all available information about a menu item, such as nutrition.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPI

let id = 987 // Int | The item's id.

// Get Menu Item Information
MenuItemsAPI.getMenuItemInformation(id: id) { (response, error) in
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
 **id** | **Int** | The item&#39;s id. | 

### Return type

[**GetMenuItemInformation200Response**](GetMenuItemInformation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **menuItemNutritionByIDImage**
```swift
    open class func menuItemNutritionByIDImage(id: Double, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Menu Item Nutrition by ID Image

Visualize a menu item's nutritional information as HTML including CSS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPI

let id = 987 // Double | The menu item id.

// Menu Item Nutrition by ID Image
MenuItemsAPI.menuItemNutritionByIDImage(id: id) { (response, error) in
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
 **id** | **Double** | The menu item id. | 

### Return type

**AnyCodable**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **menuItemNutritionLabelImage**
```swift
    open class func menuItemNutritionLabelImage(id: Double, showOptionalNutrients: Bool? = nil, showZeroValues: Bool? = nil, showIngredients: Bool? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Menu Item Nutrition Label Image

Visualize a menu item's nutritional label information as an image.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPI

let id = 987 // Double | The menu item id.
let showOptionalNutrients = false // Bool | Whether to show optional nutrients. (optional)
let showZeroValues = false // Bool | Whether to show zero values. (optional)
let showIngredients = false // Bool | Whether to show a list of ingredients. (optional)

// Menu Item Nutrition Label Image
MenuItemsAPI.menuItemNutritionLabelImage(id: id, showOptionalNutrients: showOptionalNutrients, showZeroValues: showZeroValues, showIngredients: showIngredients) { (response, error) in
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
 **id** | **Double** | The menu item id. | 
 **showOptionalNutrients** | **Bool** | Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **Bool** | Whether to show zero values. | [optional] 
 **showIngredients** | **Bool** | Whether to show a list of ingredients. | [optional] 

### Return type

**AnyCodable**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **menuItemNutritionLabelWidget**
```swift
    open class func menuItemNutritionLabelWidget(id: Double, defaultCss: Bool? = nil, showOptionalNutrients: Bool? = nil, showZeroValues: Bool? = nil, showIngredients: Bool? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Menu Item Nutrition Label Widget

Visualize a menu item's nutritional label information as HTML including CSS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPI

let id = 987 // Double | The menu item id.
let defaultCss = false // Bool | Whether the default CSS should be added to the response. (optional) (default to true)
let showOptionalNutrients = false // Bool | Whether to show optional nutrients. (optional)
let showZeroValues = false // Bool | Whether to show zero values. (optional)
let showIngredients = false // Bool | Whether to show a list of ingredients. (optional)

// Menu Item Nutrition Label Widget
MenuItemsAPI.menuItemNutritionLabelWidget(id: id, defaultCss: defaultCss, showOptionalNutrients: showOptionalNutrients, showZeroValues: showZeroValues, showIngredients: showIngredients) { (response, error) in
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
 **id** | **Double** | The menu item id. | 
 **defaultCss** | **Bool** | Whether the default CSS should be added to the response. | [optional] [default to true]
 **showOptionalNutrients** | **Bool** | Whether to show optional nutrients. | [optional] 
 **showZeroValues** | **Bool** | Whether to show zero values. | [optional] 
 **showIngredients** | **Bool** | Whether to show a list of ingredients. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchMenuItems**
```swift
    open class func searchMenuItems(query: String? = nil, minCalories: Double? = nil, maxCalories: Double? = nil, minCarbs: Double? = nil, maxCarbs: Double? = nil, minProtein: Double? = nil, maxProtein: Double? = nil, minFat: Double? = nil, maxFat: Double? = nil, addMenuItemInformation: Bool? = nil, offset: Int? = nil, number: Int? = nil, completion: @escaping (_ data: SearchMenuItems200Response?, _ error: Error?) -> Void)
```

Search Menu Items

Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPI

let query = "query_example" // String | The (natural language) search query. (optional)
let minCalories = 987 // Double | The minimum amount of calories the menu item must have. (optional)
let maxCalories = 987 // Double | The maximum amount of calories the menu item can have. (optional)
let minCarbs = 987 // Double | The minimum amount of carbohydrates in grams the menu item must have. (optional)
let maxCarbs = 987 // Double | The maximum amount of carbohydrates in grams the menu item can have. (optional)
let minProtein = 987 // Double | The minimum amount of protein in grams the menu item must have. (optional)
let maxProtein = 987 // Double | The maximum amount of protein in grams the menu item can have. (optional)
let minFat = 987 // Double | The minimum amount of fat in grams the menu item must have. (optional)
let maxFat = 987 // Double | The maximum amount of fat in grams the menu item can have. (optional)
let addMenuItemInformation = true // Bool | If set to true, you get more information about the menu items returned. (optional)
let offset = 987 // Int | The number of results to skip (between 0 and 900). (optional)
let number = 987 // Int | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)

// Search Menu Items
MenuItemsAPI.searchMenuItems(query: query, minCalories: minCalories, maxCalories: maxCalories, minCarbs: minCarbs, maxCarbs: maxCarbs, minProtein: minProtein, maxProtein: maxProtein, minFat: minFat, maxFat: maxFat, addMenuItemInformation: addMenuItemInformation, offset: offset, number: number) { (response, error) in
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
 **query** | **String** | The (natural language) search query. | [optional] 
 **minCalories** | **Double** | The minimum amount of calories the menu item must have. | [optional] 
 **maxCalories** | **Double** | The maximum amount of calories the menu item can have. | [optional] 
 **minCarbs** | **Double** | The minimum amount of carbohydrates in grams the menu item must have. | [optional] 
 **maxCarbs** | **Double** | The maximum amount of carbohydrates in grams the menu item can have. | [optional] 
 **minProtein** | **Double** | The minimum amount of protein in grams the menu item must have. | [optional] 
 **maxProtein** | **Double** | The maximum amount of protein in grams the menu item can have. | [optional] 
 **minFat** | **Double** | The minimum amount of fat in grams the menu item must have. | [optional] 
 **maxFat** | **Double** | The maximum amount of fat in grams the menu item can have. | [optional] 
 **addMenuItemInformation** | **Bool** | If set to true, you get more information about the menu items returned. | [optional] 
 **offset** | **Int** | The number of results to skip (between 0 and 900). | [optional] 
 **number** | **Int** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**SearchMenuItems200Response**](SearchMenuItems200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeMenuItemNutritionByID**
```swift
    open class func visualizeMenuItemNutritionByID(id: Int, defaultCss: Bool? = nil, accept: Accept_visualizeMenuItemNutritionByID? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Menu Item Nutrition by ID Widget

Visualize a menu item's nutritional information as HTML including CSS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPI

let id = 987 // Int | The item's id.
let defaultCss = false // Bool | Whether the default CSS should be added to the response. (optional) (default to true)
let accept = "accept_example" // String | Accept header. (optional)

// Menu Item Nutrition by ID Widget
MenuItemsAPI.visualizeMenuItemNutritionByID(id: id, defaultCss: defaultCss, accept: accept) { (response, error) in
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
 **id** | **Int** | The item&#39;s id. | 
 **defaultCss** | **Bool** | Whether the default CSS should be added to the response. | [optional] [default to true]
 **accept** | **String** | Accept header. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

