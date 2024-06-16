# ProductsAPI

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocompleteProductSearch**](ProductsAPI.md#autocompleteproductsearch) | **GET** /food/products/suggest | Autocomplete Product Search
[**classifyGroceryProduct**](ProductsAPI.md#classifygroceryproduct) | **POST** /food/products/classify | Classify Grocery Product
[**classifyGroceryProductBulk**](ProductsAPI.md#classifygroceryproductbulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
[**getComparableProducts**](ProductsAPI.md#getcomparableproducts) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
[**getProductInformation**](ProductsAPI.md#getproductinformation) | **GET** /food/products/{id} | Get Product Information
[**productNutritionByIDImage**](ProductsAPI.md#productnutritionbyidimage) | **GET** /food/products/{id}/nutritionWidget.png | Product Nutrition by ID Image
[**productNutritionLabelImage**](ProductsAPI.md#productnutritionlabelimage) | **GET** /food/products/{id}/nutritionLabel.png | Product Nutrition Label Image
[**productNutritionLabelWidget**](ProductsAPI.md#productnutritionlabelwidget) | **GET** /food/products/{id}/nutritionLabel | Product Nutrition Label Widget
[**searchGroceryProducts**](ProductsAPI.md#searchgroceryproducts) | **GET** /food/products/search | Search Grocery Products
[**searchGroceryProductsByUPC**](ProductsAPI.md#searchgroceryproductsbyupc) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
[**visualizeProductNutritionByID**](ProductsAPI.md#visualizeproductnutritionbyid) | **GET** /food/products/{id}/nutritionWidget | Product Nutrition by ID Widget


# **autocompleteProductSearch**
```swift
    open class func autocompleteProductSearch(query: String, number: Int? = nil, completion: @escaping (_ data: AutocompleteProductSearch200Response?, _ error: Error?) -> Void)
```

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPI

let query = "query_example" // String | The (partial) search query.
let number = 987 // Int | The number of results to return (between 1 and 25). (optional)

// Autocomplete Product Search
ProductsAPI.autocompleteProductSearch(query: query, number: number) { (response, error) in
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
 **number** | **Int** | The number of results to return (between 1 and 25). | [optional] 

### Return type

[**AutocompleteProductSearch200Response**](AutocompleteProductSearch200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classifyGroceryProduct**
```swift
    open class func classifyGroceryProduct(classifyGroceryProductRequest: ClassifyGroceryProductRequest, locale: Locale_classifyGroceryProduct? = nil, completion: @escaping (_ data: ClassifyGroceryProduct200Response?, _ error: Error?) -> Void)
```

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPI

let classifyGroceryProductRequest = classifyGroceryProduct_request(title: "title_example", upc: "upc_example", pluCode: "pluCode_example") // ClassifyGroceryProductRequest | 
let locale = "locale_example" // String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional)

// Classify Grocery Product
ProductsAPI.classifyGroceryProduct(classifyGroceryProductRequest: classifyGroceryProductRequest, locale: locale) { (response, error) in
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
 **classifyGroceryProductRequest** | [**ClassifyGroceryProductRequest**](ClassifyGroceryProductRequest.md) |  | 
 **locale** | **String** | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

[**ClassifyGroceryProduct200Response**](ClassifyGroceryProduct200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classifyGroceryProductBulk**
```swift
    open class func classifyGroceryProductBulk(classifyGroceryProductBulkRequestInner: Set<ClassifyGroceryProductBulkRequestInner>, locale: String? = nil, completion: @escaping (_ data: Set<ClassifyGroceryProductBulk200ResponseInner>?, _ error: Error?) -> Void)
```

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPI

let classifyGroceryProductBulkRequestInner = [classifyGroceryProductBulk_request_inner(title: "title_example", upc: "upc_example", pluCode: "pluCode_example")] // Set<ClassifyGroceryProductBulkRequestInner> | 
let locale = "locale_example" // String | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional)

// Classify Grocery Product Bulk
ProductsAPI.classifyGroceryProductBulk(classifyGroceryProductBulkRequestInner: classifyGroceryProductBulkRequestInner, locale: locale) { (response, error) in
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
 **classifyGroceryProductBulkRequestInner** | [**Set&lt;ClassifyGroceryProductBulkRequestInner&gt;**](ClassifyGroceryProductBulkRequestInner.md) |  | 
 **locale** | **String** | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

[**Set<ClassifyGroceryProductBulk200ResponseInner>**](ClassifyGroceryProductBulk200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComparableProducts**
```swift
    open class func getComparableProducts(upc: Double, completion: @escaping (_ data: GetComparableProducts200Response?, _ error: Error?) -> Void)
```

Get Comparable Products

Find comparable products to the given one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPI

let upc = 987 // Double | The UPC of the product for which you want to find comparable products.

// Get Comparable Products
ProductsAPI.getComparableProducts(upc: upc) { (response, error) in
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
 **upc** | **Double** | The UPC of the product for which you want to find comparable products. | 

### Return type

[**GetComparableProducts200Response**](GetComparableProducts200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductInformation**
```swift
    open class func getProductInformation(id: Int, completion: @escaping (_ data: GetProductInformation200Response?, _ error: Error?) -> Void)
```

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPI

let id = 987 // Int | The item's id.

// Get Product Information
ProductsAPI.getProductInformation(id: id) { (response, error) in
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

[**GetProductInformation200Response**](GetProductInformation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productNutritionByIDImage**
```swift
    open class func productNutritionByIDImage(id: Double, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Product Nutrition by ID Image

Visualize a product's nutritional information as an image.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPI

let id = 987 // Double | The id of the product.

// Product Nutrition by ID Image
ProductsAPI.productNutritionByIDImage(id: id) { (response, error) in
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
 **id** | **Double** | The id of the product. | 

### Return type

**AnyCodable**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productNutritionLabelImage**
```swift
    open class func productNutritionLabelImage(id: Double, showOptionalNutrients: Bool? = nil, showZeroValues: Bool? = nil, showIngredients: Bool? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Product Nutrition Label Image

Get a product's nutrition label as an image.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPI

let id = 987 // Double | The product id.
let showOptionalNutrients = false // Bool | Whether to show optional nutrients. (optional)
let showZeroValues = false // Bool | Whether to show zero values. (optional)
let showIngredients = false // Bool | Whether to show a list of ingredients. (optional)

// Product Nutrition Label Image
ProductsAPI.productNutritionLabelImage(id: id, showOptionalNutrients: showOptionalNutrients, showZeroValues: showZeroValues, showIngredients: showIngredients) { (response, error) in
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
 **id** | **Double** | The product id. | 
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

# **productNutritionLabelWidget**
```swift
    open class func productNutritionLabelWidget(id: Double, defaultCss: Bool? = nil, showOptionalNutrients: Bool? = nil, showZeroValues: Bool? = nil, showIngredients: Bool? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Product Nutrition Label Widget

Get a product's nutrition label as an HTML widget.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPI

let id = 987 // Double | The product id.
let defaultCss = false // Bool | Whether the default CSS should be added to the response. (optional) (default to true)
let showOptionalNutrients = false // Bool | Whether to show optional nutrients. (optional)
let showZeroValues = false // Bool | Whether to show zero values. (optional)
let showIngredients = false // Bool | Whether to show a list of ingredients. (optional)

// Product Nutrition Label Widget
ProductsAPI.productNutritionLabelWidget(id: id, defaultCss: defaultCss, showOptionalNutrients: showOptionalNutrients, showZeroValues: showZeroValues, showIngredients: showIngredients) { (response, error) in
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
 **id** | **Double** | The product id. | 
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

# **searchGroceryProducts**
```swift
    open class func searchGroceryProducts(query: String? = nil, minCalories: Double? = nil, maxCalories: Double? = nil, minCarbs: Double? = nil, maxCarbs: Double? = nil, minProtein: Double? = nil, maxProtein: Double? = nil, minFat: Double? = nil, maxFat: Double? = nil, addProductInformation: Bool? = nil, offset: Int? = nil, number: Int? = nil, completion: @escaping (_ data: SearchGroceryProducts200Response?, _ error: Error?) -> Void)
```

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPI

let query = "query_example" // String | The (natural language) search query. (optional)
let minCalories = 987 // Double | The minimum amount of calories the product must have. (optional)
let maxCalories = 987 // Double | The maximum amount of calories the product can have. (optional)
let minCarbs = 987 // Double | The minimum amount of carbohydrates in grams the product must have. (optional)
let maxCarbs = 987 // Double | The maximum amount of carbohydrates in grams the product can have. (optional)
let minProtein = 987 // Double | The minimum amount of protein in grams the product must have. (optional)
let maxProtein = 987 // Double | The maximum amount of protein in grams the product can have. (optional)
let minFat = 987 // Double | The minimum amount of fat in grams the product must have. (optional)
let maxFat = 987 // Double | The maximum amount of fat in grams the product can have. (optional)
let addProductInformation = true // Bool | If set to true, you get more information about the products returned. (optional)
let offset = 987 // Int | The number of results to skip (between 0 and 900). (optional)
let number = 987 // Int | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)

// Search Grocery Products
ProductsAPI.searchGroceryProducts(query: query, minCalories: minCalories, maxCalories: maxCalories, minCarbs: minCarbs, maxCarbs: maxCarbs, minProtein: minProtein, maxProtein: maxProtein, minFat: minFat, maxFat: maxFat, addProductInformation: addProductInformation, offset: offset, number: number) { (response, error) in
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
 **minCalories** | **Double** | The minimum amount of calories the product must have. | [optional] 
 **maxCalories** | **Double** | The maximum amount of calories the product can have. | [optional] 
 **minCarbs** | **Double** | The minimum amount of carbohydrates in grams the product must have. | [optional] 
 **maxCarbs** | **Double** | The maximum amount of carbohydrates in grams the product can have. | [optional] 
 **minProtein** | **Double** | The minimum amount of protein in grams the product must have. | [optional] 
 **maxProtein** | **Double** | The maximum amount of protein in grams the product can have. | [optional] 
 **minFat** | **Double** | The minimum amount of fat in grams the product must have. | [optional] 
 **maxFat** | **Double** | The maximum amount of fat in grams the product can have. | [optional] 
 **addProductInformation** | **Bool** | If set to true, you get more information about the products returned. | [optional] 
 **offset** | **Int** | The number of results to skip (between 0 and 900). | [optional] 
 **number** | **Int** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**SearchGroceryProducts200Response**](SearchGroceryProducts200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGroceryProductsByUPC**
```swift
    open class func searchGroceryProductsByUPC(upc: Double, completion: @escaping (_ data: SearchGroceryProductsByUPC200Response?, _ error: Error?) -> Void)
```

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPI

let upc = 987 // Double | The product's UPC.

// Search Grocery Products by UPC
ProductsAPI.searchGroceryProductsByUPC(upc: upc) { (response, error) in
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
 **upc** | **Double** | The product&#39;s UPC. | 

### Return type

[**SearchGroceryProductsByUPC200Response**](SearchGroceryProductsByUPC200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeProductNutritionByID**
```swift
    open class func visualizeProductNutritionByID(id: Int, defaultCss: Bool? = nil, accept: Accept_visualizeProductNutritionByID? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Product Nutrition by ID Widget

Visualize a product's nutritional information as HTML including CSS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPI

let id = 987 // Int | The item's id.
let defaultCss = false // Bool | Whether the default CSS should be added to the response. (optional) (default to true)
let accept = "accept_example" // String | Accept header. (optional)

// Product Nutrition by ID Widget
ProductsAPI.visualizeProductNutritionByID(id: id, defaultCss: defaultCss, accept: accept) { (response, error) in
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

