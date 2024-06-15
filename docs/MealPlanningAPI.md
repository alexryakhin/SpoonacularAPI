# MealPlanningAPI

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMealPlanTemplate**](MealPlanningAPI.md#addmealplantemplate) | **POST** /mealplanner/{username}/templates | Add Meal Plan Template
[**addToMealPlan**](MealPlanningAPI.md#addtomealplan) | **POST** /mealplanner/{username}/items | Add to Meal Plan
[**addToShoppingList**](MealPlanningAPI.md#addtoshoppinglist) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List
[**clearMealPlanDay**](MealPlanningAPI.md#clearmealplanday) | **DELETE** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
[**connectUser**](MealPlanningAPI.md#connectuser) | **POST** /users/connect | Connect User
[**deleteFromMealPlan**](MealPlanningAPI.md#deletefrommealplan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan
[**deleteFromShoppingList**](MealPlanningAPI.md#deletefromshoppinglist) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
[**deleteMealPlanTemplate**](MealPlanningAPI.md#deletemealplantemplate) | **DELETE** /mealplanner/{username}/templates/{id} | Delete Meal Plan Template
[**generateMealPlan**](MealPlanningAPI.md#generatemealplan) | **GET** /mealplanner/generate | Generate Meal Plan
[**generateShoppingList**](MealPlanningAPI.md#generateshoppinglist) | **POST** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List
[**getMealPlanTemplate**](MealPlanningAPI.md#getmealplantemplate) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
[**getMealPlanTemplates**](MealPlanningAPI.md#getmealplantemplates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates
[**getMealPlanWeek**](MealPlanningAPI.md#getmealplanweek) | **GET** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week
[**getShoppingList**](MealPlanningAPI.md#getshoppinglist) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List


# **addMealPlanTemplate**
```swift
    open class func addMealPlanTemplate(username: String, hash: String, addToMealPlanRequest: AddToMealPlanRequest, completion: @escaping (_ data: AddMealPlanTemplate200Response?, _ error: Error?) -> Void)
```

Add Meal Plan Template

Add a meal plan template for a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let username = "username_example" // String | The username.
let hash = "hash_example" // String | The private hash for the username.
let addToMealPlanRequest = addToMealPlan_request(username: "username_example", hash: "hash_example") // AddToMealPlanRequest | 

// Add Meal Plan Template
MealPlanningAPI.addMealPlanTemplate(username: username, hash: hash, addToMealPlanRequest: addToMealPlanRequest) { (response, error) in
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
 **username** | **String** | The username. | 
 **hash** | **String** | The private hash for the username. | 
 **addToMealPlanRequest** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md) |  | 

### Return type

[**AddMealPlanTemplate200Response**](AddMealPlanTemplate200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addToMealPlan**
```swift
    open class func addToMealPlan(username: String, hash: String, addToMealPlanRequest: AddToMealPlanRequest, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Add to Meal Plan

Add an item to the user's meal plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let username = "username_example" // String | The username.
let hash = "hash_example" // String | The private hash for the username.
let addToMealPlanRequest = addToMealPlan_request(username: "username_example", hash: "hash_example") // AddToMealPlanRequest | 

// Add to Meal Plan
MealPlanningAPI.addToMealPlan(username: username, hash: hash, addToMealPlanRequest: addToMealPlanRequest) { (response, error) in
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
 **username** | **String** | The username. | 
 **hash** | **String** | The private hash for the username. | 
 **addToMealPlanRequest** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md) |  | 

### Return type

**AnyCodable**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addToShoppingList**
```swift
    open class func addToShoppingList(username: String, hash: String, addToMealPlanRequest: AddToMealPlanRequest, completion: @escaping (_ data: GenerateShoppingList200Response?, _ error: Error?) -> Void)
```

Add to Shopping List

Add an item to the current shopping list of a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let username = "username_example" // String | The username.
let hash = "hash_example" // String | The private hash for the username.
let addToMealPlanRequest = addToMealPlan_request(username: "username_example", hash: "hash_example") // AddToMealPlanRequest | 

// Add to Shopping List
MealPlanningAPI.addToShoppingList(username: username, hash: hash, addToMealPlanRequest: addToMealPlanRequest) { (response, error) in
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
 **username** | **String** | The username. | 
 **hash** | **String** | The private hash for the username. | 
 **addToMealPlanRequest** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md) |  | 

### Return type

[**GenerateShoppingList200Response**](GenerateShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clearMealPlanDay**
```swift
    open class func clearMealPlanDay(username: String, date: String, hash: String, clearMealPlanDayRequest: ClearMealPlanDayRequest, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let username = "username_example" // String | The username.
let date = "date_example" // String | The date in the format yyyy-mm-dd.
let hash = "hash_example" // String | The private hash for the username.
let clearMealPlanDayRequest = clearMealPlanDay_request(username: "username_example", date: "date_example", hash: "hash_example") // ClearMealPlanDayRequest | 

// Clear Meal Plan Day
MealPlanningAPI.clearMealPlanDay(username: username, date: date, hash: hash, clearMealPlanDayRequest: clearMealPlanDayRequest) { (response, error) in
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
 **username** | **String** | The username. | 
 **date** | **String** | The date in the format yyyy-mm-dd. | 
 **hash** | **String** | The private hash for the username. | 
 **clearMealPlanDayRequest** | [**ClearMealPlanDayRequest**](ClearMealPlanDayRequest.md) |  | 

### Return type

**AnyCodable**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connectUser**
```swift
    open class func connectUser(body: AnyCodable, completion: @escaping (_ data: ConnectUser200Response?, _ error: Error?) -> Void)
```

Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = "TODO" // AnyCodable | 

// Connect User
MealPlanningAPI.connectUser(body: body) { (response, error) in
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
 **body** | **AnyCodable** |  | 

### Return type

[**ConnectUser200Response**](ConnectUser200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFromMealPlan**
```swift
    open class func deleteFromMealPlan(username: String, id: Double, hash: String, deleteFromMealPlanRequest: DeleteFromMealPlanRequest, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Delete from Meal Plan

Delete an item from the user's meal plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let username = "username_example" // String | The username.
let id = 987 // Double | The shopping list item id.
let hash = "hash_example" // String | The private hash for the username.
let deleteFromMealPlanRequest = deleteFromMealPlan_request(username: "username_example", id: 123, hash: "hash_example") // DeleteFromMealPlanRequest | 

// Delete from Meal Plan
MealPlanningAPI.deleteFromMealPlan(username: username, id: id, hash: hash, deleteFromMealPlanRequest: deleteFromMealPlanRequest) { (response, error) in
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
 **username** | **String** | The username. | 
 **id** | **Double** | The shopping list item id. | 
 **hash** | **String** | The private hash for the username. | 
 **deleteFromMealPlanRequest** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md) |  | 

### Return type

**AnyCodable**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFromShoppingList**
```swift
    open class func deleteFromShoppingList(username: String, id: Int, hash: String, deleteFromMealPlanRequest: DeleteFromMealPlanRequest, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let username = "username_example" // String | The username.
let id = 987 // Int | The item's id.
let hash = "hash_example" // String | The private hash for the username.
let deleteFromMealPlanRequest = deleteFromMealPlan_request(username: "username_example", id: 123, hash: "hash_example") // DeleteFromMealPlanRequest | 

// Delete from Shopping List
MealPlanningAPI.deleteFromShoppingList(username: username, id: id, hash: hash, deleteFromMealPlanRequest: deleteFromMealPlanRequest) { (response, error) in
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
 **username** | **String** | The username. | 
 **id** | **Int** | The item&#39;s id. | 
 **hash** | **String** | The private hash for the username. | 
 **deleteFromMealPlanRequest** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md) |  | 

### Return type

**AnyCodable**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMealPlanTemplate**
```swift
    open class func deleteMealPlanTemplate(username: String, id: Int, hash: String, deleteFromMealPlanRequest: DeleteFromMealPlanRequest, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Delete Meal Plan Template

Delete a meal plan template for a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let username = "username_example" // String | The username.
let id = 987 // Int | The item's id.
let hash = "hash_example" // String | The private hash for the username.
let deleteFromMealPlanRequest = deleteFromMealPlan_request(username: "username_example", id: 123, hash: "hash_example") // DeleteFromMealPlanRequest | 

// Delete Meal Plan Template
MealPlanningAPI.deleteMealPlanTemplate(username: username, id: id, hash: hash, deleteFromMealPlanRequest: deleteFromMealPlanRequest) { (response, error) in
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
 **username** | **String** | The username. | 
 **id** | **Int** | The item&#39;s id. | 
 **hash** | **String** | The private hash for the username. | 
 **deleteFromMealPlanRequest** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md) |  | 

### Return type

**AnyCodable**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateMealPlan**
```swift
    open class func generateMealPlan(timeFrame: String? = nil, targetCalories: Double? = nil, diet: String? = nil, exclude: String? = nil, completion: @escaping (_ data: GenerateMealPlan200Response?, _ error: Error?) -> Void)
```

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let timeFrame = "timeFrame_example" // String | Either for one \"day\" or an entire \"week\". (optional)
let targetCalories = 987 // Double | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. (optional)
let diet = "diet_example" // String | Enter a diet that the meal plan has to adhere to. See a full list of supported diets. (optional)
let exclude = "exclude_example" // String | A comma-separated list of allergens or ingredients that must be excluded. (optional)

// Generate Meal Plan
MealPlanningAPI.generateMealPlan(timeFrame: timeFrame, targetCalories: targetCalories, diet: diet, exclude: exclude) { (response, error) in
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
 **timeFrame** | **String** | Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional] 
 **targetCalories** | **Double** | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional] 
 **diet** | **String** | Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional] 
 **exclude** | **String** | A comma-separated list of allergens or ingredients that must be excluded. | [optional] 

### Return type

[**GenerateMealPlan200Response**](GenerateMealPlan200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateShoppingList**
```swift
    open class func generateShoppingList(username: String, startDate: String, endDate: String, hash: String, generateShoppingListRequest: GenerateShoppingListRequest, completion: @escaping (_ data: GenerateShoppingList200Response?, _ error: Error?) -> Void)
```

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let username = "username_example" // String | The username.
let startDate = "startDate_example" // String | The start date in the format yyyy-mm-dd.
let endDate = "endDate_example" // String | The end date in the format yyyy-mm-dd.
let hash = "hash_example" // String | The private hash for the username.
let generateShoppingListRequest = generateShoppingList_request(username: "username_example", startDate: "startDate_example", endDate: "endDate_example", hash: "hash_example") // GenerateShoppingListRequest | 

// Generate Shopping List
MealPlanningAPI.generateShoppingList(username: username, startDate: startDate, endDate: endDate, hash: hash, generateShoppingListRequest: generateShoppingListRequest) { (response, error) in
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
 **username** | **String** | The username. | 
 **startDate** | **String** | The start date in the format yyyy-mm-dd. | 
 **endDate** | **String** | The end date in the format yyyy-mm-dd. | 
 **hash** | **String** | The private hash for the username. | 
 **generateShoppingListRequest** | [**GenerateShoppingListRequest**](GenerateShoppingListRequest.md) |  | 

### Return type

[**GenerateShoppingList200Response**](GenerateShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMealPlanTemplate**
```swift
    open class func getMealPlanTemplate(username: String, id: Int, hash: String, completion: @escaping (_ data: GetMealPlanTemplate200Response?, _ error: Error?) -> Void)
```

Get Meal Plan Template

Get information about a meal plan template.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let username = "username_example" // String | The username.
let id = 987 // Int | The item's id.
let hash = "hash_example" // String | The private hash for the username.

// Get Meal Plan Template
MealPlanningAPI.getMealPlanTemplate(username: username, id: id, hash: hash) { (response, error) in
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
 **username** | **String** | The username. | 
 **id** | **Int** | The item&#39;s id. | 
 **hash** | **String** | The private hash for the username. | 

### Return type

[**GetMealPlanTemplate200Response**](GetMealPlanTemplate200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMealPlanTemplates**
```swift
    open class func getMealPlanTemplates(username: String, hash: String, completion: @escaping (_ data: GetMealPlanTemplates200Response?, _ error: Error?) -> Void)
```

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let username = "username_example" // String | The username.
let hash = "hash_example" // String | The private hash for the username.

// Get Meal Plan Templates
MealPlanningAPI.getMealPlanTemplates(username: username, hash: hash) { (response, error) in
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
 **username** | **String** | The username. | 
 **hash** | **String** | The private hash for the username. | 

### Return type

[**GetMealPlanTemplates200Response**](GetMealPlanTemplates200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMealPlanWeek**
```swift
    open class func getMealPlanWeek(username: String, startDate: String, hash: String, completion: @escaping (_ data: GetMealPlanWeek200Response?, _ error: Error?) -> Void)
```

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let username = "username_example" // String | The username.
let startDate = "startDate_example" // String | The start date of the meal planned week in the format yyyy-mm-dd.
let hash = "hash_example" // String | The private hash for the username.

// Get Meal Plan Week
MealPlanningAPI.getMealPlanWeek(username: username, startDate: startDate, hash: hash) { (response, error) in
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
 **username** | **String** | The username. | 
 **startDate** | **String** | The start date of the meal planned week in the format yyyy-mm-dd. | 
 **hash** | **String** | The private hash for the username. | 

### Return type

[**GetMealPlanWeek200Response**](GetMealPlanWeek200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShoppingList**
```swift
    open class func getShoppingList(username: String, hash: String, completion: @escaping (_ data: GetShoppingList200Response?, _ error: Error?) -> Void)
```

Get Shopping List

Get the current shopping list for the given user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let username = "username_example" // String | The username.
let hash = "hash_example" // String | The private hash for the username.

// Get Shopping List
MealPlanningAPI.getShoppingList(username: username, hash: hash) { (response, error) in
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
 **username** | **String** | The username. | 
 **hash** | **String** | The private hash for the username. | 

### Return type

[**GetShoppingList200Response**](GetShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

