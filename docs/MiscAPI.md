# MiscAPI

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detectFoodInText**](MiscAPI.md#detectfoodintext) | **POST** /food/detect | Detect Food in Text
[**getARandomFoodJoke**](MiscAPI.md#getarandomfoodjoke) | **GET** /food/jokes/random | Random Food Joke
[**getConversationSuggests**](MiscAPI.md#getconversationsuggests) | **GET** /food/converse/suggest | Conversation Suggests
[**getRandomFoodTrivia**](MiscAPI.md#getrandomfoodtrivia) | **GET** /food/trivia/random | Random Food Trivia
[**imageAnalysisByURL**](MiscAPI.md#imageanalysisbyurl) | **GET** /food/images/analyze | Image Analysis by URL
[**imageClassificationByURL**](MiscAPI.md#imageclassificationbyurl) | **GET** /food/images/classify | Image Classification by URL
[**searchAllFood**](MiscAPI.md#searchallfood) | **GET** /food/search | Search All Food
[**searchCustomFoods**](MiscAPI.md#searchcustomfoods) | **GET** /food/customFoods/search | Search Custom Foods
[**searchFoodVideos**](MiscAPI.md#searchfoodvideos) | **GET** /food/videos/search | Search Food Videos
[**searchSiteContent**](MiscAPI.md#searchsitecontent) | **GET** /food/site/search | Search Site Content
[**talkToChatbot**](MiscAPI.md#talktochatbot) | **GET** /food/converse | Talk to Chatbot


# **detectFoodInText**
```swift
    open class func detectFoodInText(contentType: ContentType_detectFoodInText? = nil, completion: @escaping (_ data: DetectFoodInText200Response?, _ error: Error?) -> Void)
```

Detect Food in Text

Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let contentType = "contentType_example" // String | The content type. (optional)

// Detect Food in Text
MiscAPI.detectFoodInText(contentType: contentType) { (response, error) in
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

### Return type

[**DetectFoodInText200Response**](DetectFoodInText200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getARandomFoodJoke**
```swift
    open class func getARandomFoodJoke(completion: @escaping (_ data: GetARandomFoodJoke200Response?, _ error: Error?) -> Void)
```

Random Food Joke

Get a random joke that is related to food. Caution: this is an endpoint for adults!

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient


// Random Food Joke
MiscAPI.getARandomFoodJoke() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**GetARandomFoodJoke200Response**](GetARandomFoodJoke200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConversationSuggests**
```swift
    open class func getConversationSuggests(query: String, number: Double? = nil, completion: @escaping (_ data: GetConversationSuggests200Response?, _ error: Error?) -> Void)
```

Conversation Suggests

This endpoint returns suggestions for things the user can say or ask the chatbot.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let query = "query_example" // String | A (partial) query from the user. The endpoint will return if it matches topics it can talk about.
let number = 987 // Double | The number of suggestions to return (between 1 and 25). (optional)

// Conversation Suggests
MiscAPI.getConversationSuggests(query: query, number: number) { (response, error) in
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
 **query** | **String** | A (partial) query from the user. The endpoint will return if it matches topics it can talk about. | 
 **number** | **Double** | The number of suggestions to return (between 1 and 25). | [optional] 

### Return type

[**GetConversationSuggests200Response**](GetConversationSuggests200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRandomFoodTrivia**
```swift
    open class func getRandomFoodTrivia(completion: @escaping (_ data: GetRandomFoodTrivia200Response?, _ error: Error?) -> Void)
```

Random Food Trivia

Returns random food trivia.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient


// Random Food Trivia
MiscAPI.getRandomFoodTrivia() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**GetRandomFoodTrivia200Response**](GetRandomFoodTrivia200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageAnalysisByURL**
```swift
    open class func imageAnalysisByURL(imageUrl: String, completion: @escaping (_ data: ImageAnalysisByURL200Response?, _ error: Error?) -> Void)
```

Image Analysis by URL

Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let imageUrl = "imageUrl_example" // String | The URL of the image to be analyzed.

// Image Analysis by URL
MiscAPI.imageAnalysisByURL(imageUrl: imageUrl) { (response, error) in
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
 **imageUrl** | **String** | The URL of the image to be analyzed. | 

### Return type

[**ImageAnalysisByURL200Response**](ImageAnalysisByURL200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageClassificationByURL**
```swift
    open class func imageClassificationByURL(imageUrl: String, completion: @escaping (_ data: ImageClassificationByURL200Response?, _ error: Error?) -> Void)
```

Image Classification by URL

Classify a food image.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let imageUrl = "imageUrl_example" // String | The URL of the image to be classified.

// Image Classification by URL
MiscAPI.imageClassificationByURL(imageUrl: imageUrl) { (response, error) in
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
 **imageUrl** | **String** | The URL of the image to be classified. | 

### Return type

[**ImageClassificationByURL200Response**](ImageClassificationByURL200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAllFood**
```swift
    open class func searchAllFood(query: String, offset: Int? = nil, number: Int? = nil, completion: @escaping (_ data: SearchAllFood200Response?, _ error: Error?) -> Void)
```

Search All Food

Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let query = "query_example" // String | The search query.
let offset = 987 // Int | The number of results to skip (between 0 and 900). (optional)
let number = 987 // Int | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)

// Search All Food
MiscAPI.searchAllFood(query: query, offset: offset, number: number) { (response, error) in
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
 **query** | **String** | The search query. | 
 **offset** | **Int** | The number of results to skip (between 0 and 900). | [optional] 
 **number** | **Int** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**SearchAllFood200Response**](SearchAllFood200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCustomFoods**
```swift
    open class func searchCustomFoods(username: String, hash: String, query: String? = nil, offset: Int? = nil, number: Int? = nil, completion: @escaping (_ data: SearchCustomFoods200Response?, _ error: Error?) -> Void)
```

Search Custom Foods

Search custom foods in a user's account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let username = "username_example" // String | The username.
let hash = "hash_example" // String | The private hash for the username.
let query = "query_example" // String | The (natural language) search query. (optional)
let offset = 987 // Int | The number of results to skip (between 0 and 900). (optional)
let number = 987 // Int | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)

// Search Custom Foods
MiscAPI.searchCustomFoods(username: username, hash: hash, query: query, offset: offset, number: number) { (response, error) in
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
 **query** | **String** | The (natural language) search query. | [optional] 
 **offset** | **Int** | The number of results to skip (between 0 and 900). | [optional] 
 **number** | **Int** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**SearchCustomFoods200Response**](SearchCustomFoods200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchFoodVideos**
```swift
    open class func searchFoodVideos(query: String? = nil, type: String? = nil, cuisine: String? = nil, diet: String? = nil, includeIngredients: String? = nil, excludeIngredients: String? = nil, minLength: Double? = nil, maxLength: Double? = nil, offset: Int? = nil, number: Int? = nil, completion: @escaping (_ data: SearchFoodVideos200Response?, _ error: Error?) -> Void)
```

Search Food Videos

Find recipe and other food related videos.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let query = "query_example" // String | The (natural language) search query. (optional)
let type = "type_example" // String | The type of the recipes. See a full list of supported meal types. (optional)
let cuisine = "cuisine_example" // String | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. (optional)
let diet = "diet_example" // String | The diet for which the recipes must be suitable. See a full list of supported diets. (optional)
let includeIngredients = "includeIngredients_example" // String | A comma-separated list of ingredients that the recipes should contain. (optional)
let excludeIngredients = "excludeIngredients_example" // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional)
let minLength = 987 // Double | Minimum video length in seconds. (optional)
let maxLength = 987 // Double | Maximum video length in seconds. (optional)
let offset = 987 // Int | The number of results to skip (between 0 and 900). (optional)
let number = 987 // Int | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)

// Search Food Videos
MiscAPI.searchFoodVideos(query: query, type: type, cuisine: cuisine, diet: diet, includeIngredients: includeIngredients, excludeIngredients: excludeIngredients, minLength: minLength, maxLength: maxLength, offset: offset, number: number) { (response, error) in
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
 **type** | **String** | The type of the recipes. See a full list of supported meal types. | [optional] 
 **cuisine** | **String** | The cuisine(s) of the recipes. One or more, comma separated. See a full list of supported cuisines. | [optional] 
 **diet** | **String** | The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] 
 **includeIngredients** | **String** | A comma-separated list of ingredients that the recipes should contain. | [optional] 
 **excludeIngredients** | **String** | A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **minLength** | **Double** | Minimum video length in seconds. | [optional] 
 **maxLength** | **Double** | Maximum video length in seconds. | [optional] 
 **offset** | **Int** | The number of results to skip (between 0 and 900). | [optional] 
 **number** | **Int** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**SearchFoodVideos200Response**](SearchFoodVideos200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchSiteContent**
```swift
    open class func searchSiteContent(query: String, completion: @escaping (_ data: SearchSiteContent200Response?, _ error: Error?) -> Void)
```

Search Site Content

Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let query = "query_example" // String | The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content.

// Search Site Content
MiscAPI.searchSiteContent(query: query) { (response, error) in
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
 **query** | **String** | The query to search for. You can also use partial queries such as \&quot;spagh\&quot; to already find spaghetti recipes, articles, grocery products, and other content. | 

### Return type

[**SearchSiteContent200Response**](SearchSiteContent200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **talkToChatbot**
```swift
    open class func talkToChatbot(text: String, contextId: String? = nil, completion: @escaping (_ data: TalkToChatbot200Response?, _ error: Error?) -> Void)
```

Talk to Chatbot

This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let text = "text_example" // String | The request / question / answer from the user to the chatbot.
let contextId = "contextId_example" // String | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. (optional)

// Talk to Chatbot
MiscAPI.talkToChatbot(text: text, contextId: contextId) { (response, error) in
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
 **text** | **String** | The request / question / answer from the user to the chatbot. | 
 **contextId** | **String** | An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. | [optional] 

### Return type

[**TalkToChatbot200Response**](TalkToChatbot200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

