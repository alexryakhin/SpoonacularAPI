# IngredientsAPI

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocompleteIngredientSearch**](IngredientsAPI.md#autocompleteingredientsearch) | **GET** /food/ingredients/autocomplete | Autocomplete Ingredient Search
[**computeIngredientAmount**](IngredientsAPI.md#computeingredientamount) | **GET** /food/ingredients/{id}/amount | Compute Ingredient Amount
[**getIngredientInformation**](IngredientsAPI.md#getingredientinformation) | **GET** /food/ingredients/{id}/information | Get Ingredient Information
[**getIngredientSubstitutes**](IngredientsAPI.md#getingredientsubstitutes) | **GET** /food/ingredients/substitutes | Get Ingredient Substitutes
[**getIngredientSubstitutesByID**](IngredientsAPI.md#getingredientsubstitutesbyid) | **GET** /food/ingredients/{id}/substitutes | Get Ingredient Substitutes by ID
[**ingredientSearch**](IngredientsAPI.md#ingredientsearch) | **GET** /food/ingredients/search | Ingredient Search
[**ingredientsByIDImage**](IngredientsAPI.md#ingredientsbyidimage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
[**mapIngredientsToGroceryProducts**](IngredientsAPI.md#mapingredientstogroceryproducts) | **POST** /food/ingredients/map | Map Ingredients to Grocery Products
[**visualizeIngredients**](IngredientsAPI.md#visualizeingredients) | **POST** /recipes/visualizeIngredients | Ingredients Widget


# **autocompleteIngredientSearch**
```swift
    open class func autocompleteIngredientSearch(query: String? = nil, number: Int? = nil, metaInformation: Bool? = nil, intolerances: String? = nil, language: Language_autocompleteIngredientSearch? = nil, completion: @escaping (_ data: Set<AutocompleteIngredientSearch200ResponseInner>?, _ error: Error?) -> Void)
```

Autocomplete Ingredient Search

Autocomplete the entry of an ingredient.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spoonacular

let query = "query_example" // String | The (natural language) search query. (optional)
let number = 987 // Int | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)
let metaInformation = false // Bool | Whether to return more meta information about the ingredients. (optional)
let intolerances = "intolerances_example" // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional)
let language = "language_example" // String | The language of the input. Either 'en' or 'de'. (optional)

// Autocomplete Ingredient Search
IngredientsAPI.autocompleteIngredientSearch(query: query, number: number, metaInformation: metaInformation, intolerances: intolerances, language: language) { (response, error) in
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
 **number** | **Int** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **metaInformation** | **Bool** | Whether to return more meta information about the ingredients. | [optional] 
 **intolerances** | **String** | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 
 **language** | **String** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

[**Set<AutocompleteIngredientSearch200ResponseInner>**](AutocompleteIngredientSearch200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **computeIngredientAmount**
```swift
    open class func computeIngredientAmount(id: Double, nutrient: String, target: Double, unit: String? = nil, completion: @escaping (_ data: ComputeIngredientAmount200Response?, _ error: Error?) -> Void)
```

Compute Ingredient Amount

Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spoonacular

let id = 987 // Double | The id of the ingredient you want the amount for.
let nutrient = "nutrient_example" // String | The target nutrient. See a list of supported nutrients.
let target = 987 // Double | The target number of the given nutrient.
let unit = "unit_example" // String | The target unit. (optional)

// Compute Ingredient Amount
IngredientsAPI.computeIngredientAmount(id: id, nutrient: nutrient, target: target, unit: unit) { (response, error) in
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
 **id** | **Double** | The id of the ingredient you want the amount for. | 
 **nutrient** | **String** | The target nutrient. See a list of supported nutrients. | 
 **target** | **Double** | The target number of the given nutrient. | 
 **unit** | **String** | The target unit. | [optional] 

### Return type

[**ComputeIngredientAmount200Response**](ComputeIngredientAmount200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIngredientInformation**
```swift
    open class func getIngredientInformation(id: Int, amount: Double? = nil, unit: String? = nil, completion: @escaping (_ data: GetIngredientInformation200Response?, _ error: Error?) -> Void)
```

Get Ingredient Information

Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spoonacular

let id = 987 // Int | The item's id.
let amount = 987 // Double | The amount of this ingredient. (optional)
let unit = "unit_example" // String | The unit for the given amount. (optional)

// Get Ingredient Information
IngredientsAPI.getIngredientInformation(id: id, amount: amount, unit: unit) { (response, error) in
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
 **amount** | **Double** | The amount of this ingredient. | [optional] 
 **unit** | **String** | The unit for the given amount. | [optional] 

### Return type

[**GetIngredientInformation200Response**](GetIngredientInformation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIngredientSubstitutes**
```swift
    open class func getIngredientSubstitutes(ingredientName: String, completion: @escaping (_ data: GetIngredientSubstitutes200Response?, _ error: Error?) -> Void)
```

Get Ingredient Substitutes

Search for substitutes for a given ingredient.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spoonacular

let ingredientName = "ingredientName_example" // String | The name of the ingredient you want to replace.

// Get Ingredient Substitutes
IngredientsAPI.getIngredientSubstitutes(ingredientName: ingredientName) { (response, error) in
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
 **ingredientName** | **String** | The name of the ingredient you want to replace. | 

### Return type

[**GetIngredientSubstitutes200Response**](GetIngredientSubstitutes200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIngredientSubstitutesByID**
```swift
    open class func getIngredientSubstitutesByID(id: Int, completion: @escaping (_ data: GetIngredientSubstitutes200Response?, _ error: Error?) -> Void)
```

Get Ingredient Substitutes by ID

Search for substitutes for a given ingredient.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spoonacular

let id = 987 // Int | The item's id.

// Get Ingredient Substitutes by ID
IngredientsAPI.getIngredientSubstitutesByID(id: id) { (response, error) in
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

[**GetIngredientSubstitutes200Response**](GetIngredientSubstitutes200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ingredientSearch**
```swift
    open class func ingredientSearch(query: String? = nil, addChildren: Bool? = nil, minProteinPercent: Double? = nil, maxProteinPercent: Double? = nil, minFatPercent: Double? = nil, maxFatPercent: Double? = nil, minCarbsPercent: Double? = nil, maxCarbsPercent: Double? = nil, metaInformation: Bool? = nil, intolerances: String? = nil, sort: String? = nil, sortDirection: String? = nil, offset: Int? = nil, number: Int? = nil, language: Language_ingredientSearch? = nil, completion: @escaping (_ data: IngredientSearch200Response?, _ error: Error?) -> Void)
```

Ingredient Search

Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spoonacular

let query = "query_example" // String | The (natural language) search query. (optional)
let addChildren = true // Bool | Whether to add children of found foods. (optional)
let minProteinPercent = 987 // Double | The minimum percentage of protein the food must have (between 0 and 100). (optional)
let maxProteinPercent = 987 // Double | The maximum percentage of protein the food can have (between 0 and 100). (optional)
let minFatPercent = 987 // Double | The minimum percentage of fat the food must have (between 0 and 100). (optional)
let maxFatPercent = 987 // Double | The maximum percentage of fat the food can have (between 0 and 100). (optional)
let minCarbsPercent = 987 // Double | The minimum percentage of carbs the food must have (between 0 and 100). (optional)
let maxCarbsPercent = 987 // Double | The maximum percentage of carbs the food can have (between 0 and 100). (optional)
let metaInformation = false // Bool | Whether to return more meta information about the ingredients. (optional)
let intolerances = "intolerances_example" // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional)
let sort = "sort_example" // String | The strategy to sort recipes by. See a full list of supported sorting options. (optional)
let sortDirection = "sortDirection_example" // String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). (optional)
let offset = 987 // Int | The number of results to skip (between 0 and 900). (optional)
let number = 987 // Int | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)
let language = "language_example" // String | The language of the input. Either 'en' or 'de'. (optional)

// Ingredient Search
IngredientsAPI.ingredientSearch(query: query, addChildren: addChildren, minProteinPercent: minProteinPercent, maxProteinPercent: maxProteinPercent, minFatPercent: minFatPercent, maxFatPercent: maxFatPercent, minCarbsPercent: minCarbsPercent, maxCarbsPercent: maxCarbsPercent, metaInformation: metaInformation, intolerances: intolerances, sort: sort, sortDirection: sortDirection, offset: offset, number: number, language: language) { (response, error) in
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
 **addChildren** | **Bool** | Whether to add children of found foods. | [optional] 
 **minProteinPercent** | **Double** | The minimum percentage of protein the food must have (between 0 and 100). | [optional] 
 **maxProteinPercent** | **Double** | The maximum percentage of protein the food can have (between 0 and 100). | [optional] 
 **minFatPercent** | **Double** | The minimum percentage of fat the food must have (between 0 and 100). | [optional] 
 **maxFatPercent** | **Double** | The maximum percentage of fat the food can have (between 0 and 100). | [optional] 
 **minCarbsPercent** | **Double** | The minimum percentage of carbs the food must have (between 0 and 100). | [optional] 
 **maxCarbsPercent** | **Double** | The maximum percentage of carbs the food can have (between 0 and 100). | [optional] 
 **metaInformation** | **Bool** | Whether to return more meta information about the ingredients. | [optional] 
 **intolerances** | **String** | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 
 **sort** | **String** | The strategy to sort recipes by. See a full list of supported sorting options. | [optional] 
 **sortDirection** | **String** | The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] 
 **offset** | **Int** | The number of results to skip (between 0 and 900). | [optional] 
 **number** | **Int** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **language** | **String** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

[**IngredientSearch200Response**](IngredientSearch200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ingredientsByIDImage**
```swift
    open class func ingredientsByIDImage(id: Double, measure: Measure_ingredientsByIDImage? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Ingredients by ID Image

Visualize a recipe's ingredient list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spoonacular

let id = 987 // Double | The recipe id.
let measure = "measure_example" // String | Whether the the measures should be 'us' or 'metric'. (optional)

// Ingredients by ID Image
IngredientsAPI.ingredientsByIDImage(id: id, measure: measure) { (response, error) in
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
 **measure** | **String** | Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] 

### Return type

**AnyCodable**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mapIngredientsToGroceryProducts**
```swift
    open class func mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest: MapIngredientsToGroceryProductsRequest, completion: @escaping (_ data: Set<MapIngredientsToGroceryProducts200ResponseInner>?, _ error: Error?) -> Void)
```

Map Ingredients to Grocery Products

Map a set of ingredients to products you can buy in the grocery store.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spoonacular

let mapIngredientsToGroceryProductsRequest = mapIngredientsToGroceryProducts_request(ingredients: ["ingredients_example"], servings: 123) // MapIngredientsToGroceryProductsRequest | 

// Map Ingredients to Grocery Products
IngredientsAPI.mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest: mapIngredientsToGroceryProductsRequest) { (response, error) in
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
 **mapIngredientsToGroceryProductsRequest** | [**MapIngredientsToGroceryProductsRequest**](MapIngredientsToGroceryProductsRequest.md) |  | 

### Return type

[**Set<MapIngredientsToGroceryProducts200ResponseInner>**](MapIngredientsToGroceryProducts200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeIngredients**
```swift
    open class func visualizeIngredients(contentType: ContentType_visualizeIngredients? = nil, language: Language_visualizeIngredients? = nil, accept: Accept_visualizeIngredients? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Ingredients Widget

Visualize ingredients of a recipe. You can play around with that endpoint!

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Spoonacular

let contentType = "contentType_example" // String | The content type. (optional)
let language = "language_example" // String | The language of the input. Either 'en' or 'de'. (optional)
let accept = "accept_example" // String | Accept header. (optional)

// Ingredients Widget
IngredientsAPI.visualizeIngredients(contentType: contentType, language: language, accept: accept) { (response, error) in
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
 **contentType** | **String** | The content type. | [optional] 
 **language** | **String** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 
 **accept** | **String** | Accept header. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

