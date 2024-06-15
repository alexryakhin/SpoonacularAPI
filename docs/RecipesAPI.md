# RecipesAPI

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**analyzeARecipeSearchQuery**](RecipesAPI.md#analyzearecipesearchquery) | **GET** /recipes/queries/analyze | Analyze a Recipe Search Query
[**analyzeRecipeInstructions**](RecipesAPI.md#analyzerecipeinstructions) | **POST** /recipes/analyzeInstructions | Analyze Recipe Instructions
[**autocompleteRecipeSearch**](RecipesAPI.md#autocompleterecipesearch) | **GET** /recipes/autocomplete | Autocomplete Recipe Search
[**classifyCuisine**](RecipesAPI.md#classifycuisine) | **POST** /recipes/cuisine | Classify Cuisine
[**computeGlycemicLoad**](RecipesAPI.md#computeglycemicload) | **POST** /food/ingredients/glycemicLoad | Compute Glycemic Load
[**convertAmounts**](RecipesAPI.md#convertamounts) | **GET** /recipes/convert | Convert Amounts
[**createRecipeCard**](RecipesAPI.md#createrecipecard) | **POST** /recipes/visualizeRecipe | Create Recipe Card
[**equipmentByIDImage**](RecipesAPI.md#equipmentbyidimage) | **GET** /recipes/{id}/equipmentWidget.png | Equipment by ID Image
[**extractRecipeFromWebsite**](RecipesAPI.md#extractrecipefromwebsite) | **GET** /recipes/extract | Extract Recipe from Website
[**getAnalyzedRecipeInstructions**](RecipesAPI.md#getanalyzedrecipeinstructions) | **GET** /recipes/{id}/analyzedInstructions | Get Analyzed Recipe Instructions
[**getRandomRecipes**](RecipesAPI.md#getrandomrecipes) | **GET** /recipes/random | Get Random Recipes
[**getRecipeEquipmentByID**](RecipesAPI.md#getrecipeequipmentbyid) | **GET** /recipes/{id}/equipmentWidget.json | Equipment by ID
[**getRecipeInformation**](RecipesAPI.md#getrecipeinformation) | **GET** /recipes/{id}/information | Get Recipe Information
[**getRecipeInformationBulk**](RecipesAPI.md#getrecipeinformationbulk) | **GET** /recipes/informationBulk | Get Recipe Information Bulk
[**getRecipeIngredientsByID**](RecipesAPI.md#getrecipeingredientsbyid) | **GET** /recipes/{id}/ingredientWidget.json | Ingredients by ID
[**getRecipeNutritionWidgetByID**](RecipesAPI.md#getrecipenutritionwidgetbyid) | **GET** /recipes/{id}/nutritionWidget.json | Nutrition by ID
[**getRecipePriceBreakdownByID**](RecipesAPI.md#getrecipepricebreakdownbyid) | **GET** /recipes/{id}/priceBreakdownWidget.json | Price Breakdown by ID
[**getRecipeTasteByID**](RecipesAPI.md#getrecipetastebyid) | **GET** /recipes/{id}/tasteWidget.json | Taste by ID
[**getSimilarRecipes**](RecipesAPI.md#getsimilarrecipes) | **GET** /recipes/{id}/similar | Get Similar Recipes
[**guessNutritionByDishName**](RecipesAPI.md#guessnutritionbydishname) | **GET** /recipes/guessNutrition | Guess Nutrition by Dish Name
[**ingredientsByIDImage**](RecipesAPI.md#ingredientsbyidimage) | **GET** /recipes/{id}/ingredientWidget.png | Ingredients by ID Image
[**parseIngredients**](RecipesAPI.md#parseingredients) | **POST** /recipes/parseIngredients | Parse Ingredients
[**priceBreakdownByIDImage**](RecipesAPI.md#pricebreakdownbyidimage) | **GET** /recipes/{id}/priceBreakdownWidget.png | Price Breakdown by ID Image
[**quickAnswer**](RecipesAPI.md#quickanswer) | **GET** /recipes/quickAnswer | Quick Answer
[**recipeNutritionByIDImage**](RecipesAPI.md#recipenutritionbyidimage) | **GET** /recipes/{id}/nutritionWidget.png | Recipe Nutrition by ID Image
[**recipeNutritionLabelImage**](RecipesAPI.md#recipenutritionlabelimage) | **GET** /recipes/{id}/nutritionLabel.png | Recipe Nutrition Label Image
[**recipeNutritionLabelWidget**](RecipesAPI.md#recipenutritionlabelwidget) | **GET** /recipes/{id}/nutritionLabel | Recipe Nutrition Label Widget
[**recipeTasteByIDImage**](RecipesAPI.md#recipetastebyidimage) | **GET** /recipes/{id}/tasteWidget.png | Recipe Taste by ID Image
[**searchRecipes**](RecipesAPI.md#searchrecipes) | **GET** /recipes/complexSearch | Search Recipes
[**searchRecipesByIngredients**](RecipesAPI.md#searchrecipesbyingredients) | **GET** /recipes/findByIngredients | Search Recipes by Ingredients
[**searchRecipesByNutrients**](RecipesAPI.md#searchrecipesbynutrients) | **GET** /recipes/findByNutrients | Search Recipes by Nutrients
[**summarizeRecipe**](RecipesAPI.md#summarizerecipe) | **GET** /recipes/{id}/summary | Summarize Recipe
[**visualizeEquipment**](RecipesAPI.md#visualizeequipment) | **POST** /recipes/visualizeEquipment | Equipment Widget
[**visualizePriceBreakdown**](RecipesAPI.md#visualizepricebreakdown) | **POST** /recipes/visualizePriceEstimator | Price Breakdown Widget
[**visualizeRecipeEquipmentByID**](RecipesAPI.md#visualizerecipeequipmentbyid) | **GET** /recipes/{id}/equipmentWidget | Equipment by ID Widget
[**visualizeRecipeIngredientsByID**](RecipesAPI.md#visualizerecipeingredientsbyid) | **GET** /recipes/{id}/ingredientWidget | Ingredients by ID Widget
[**visualizeRecipeNutrition**](RecipesAPI.md#visualizerecipenutrition) | **POST** /recipes/visualizeNutrition | Recipe Nutrition Widget
[**visualizeRecipeNutritionByID**](RecipesAPI.md#visualizerecipenutritionbyid) | **GET** /recipes/{id}/nutritionWidget | Recipe Nutrition by ID Widget
[**visualizeRecipePriceBreakdownByID**](RecipesAPI.md#visualizerecipepricebreakdownbyid) | **GET** /recipes/{id}/priceBreakdownWidget | Price Breakdown by ID Widget
[**visualizeRecipeTaste**](RecipesAPI.md#visualizerecipetaste) | **POST** /recipes/visualizeTaste | Recipe Taste Widget
[**visualizeRecipeTasteByID**](RecipesAPI.md#visualizerecipetastebyid) | **GET** /recipes/{id}/tasteWidget | Recipe Taste by ID Widget


# **analyzeARecipeSearchQuery**
```swift
    open class func analyzeARecipeSearchQuery(q: String, completion: @escaping (_ data: AnalyzeARecipeSearchQuery200Response?, _ error: Error?) -> Void)
```

Analyze a Recipe Search Query

Parse a recipe search query to find out its intention.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let q = "q_example" // String | The recipe search query.

// Analyze a Recipe Search Query
RecipesAPI.analyzeARecipeSearchQuery(q: q) { (response, error) in
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
 **q** | **String** | The recipe search query. | 

### Return type

[**AnalyzeARecipeSearchQuery200Response**](AnalyzeARecipeSearchQuery200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **analyzeRecipeInstructions**
```swift
    open class func analyzeRecipeInstructions(contentType: ContentType_analyzeRecipeInstructions? = nil, completion: @escaping (_ data: AnalyzeRecipeInstructions200Response?, _ error: Error?) -> Void)
```

Analyze Recipe Instructions

This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let contentType = "contentType_example" // String | The content type. (optional)

// Analyze Recipe Instructions
RecipesAPI.analyzeRecipeInstructions(contentType: contentType) { (response, error) in
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

[**AnalyzeRecipeInstructions200Response**](AnalyzeRecipeInstructions200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autocompleteRecipeSearch**
```swift
    open class func autocompleteRecipeSearch(query: String? = nil, number: Int? = nil, completion: @escaping (_ data: Set<AutocompleteRecipeSearch200ResponseInner>?, _ error: Error?) -> Void)
```

Autocomplete Recipe Search

Autocomplete a partial input to suggest possible recipe names.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let query = "query_example" // String | The (natural language) search query. (optional)
let number = 987 // Int | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)

// Autocomplete Recipe Search
RecipesAPI.autocompleteRecipeSearch(query: query, number: number) { (response, error) in
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

### Return type

[**Set<AutocompleteRecipeSearch200ResponseInner>**](AutocompleteRecipeSearch200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classifyCuisine**
```swift
    open class func classifyCuisine(contentType: ContentType_classifyCuisine? = nil, completion: @escaping (_ data: ClassifyCuisine200Response?, _ error: Error?) -> Void)
```

Classify Cuisine

Classify the recipe's cuisine.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let contentType = "contentType_example" // String | The content type. (optional)

// Classify Cuisine
RecipesAPI.classifyCuisine(contentType: contentType) { (response, error) in
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

[**ClassifyCuisine200Response**](ClassifyCuisine200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **computeGlycemicLoad**
```swift
    open class func computeGlycemicLoad(computeGlycemicLoadRequest: ComputeGlycemicLoadRequest, language: Language_computeGlycemicLoad? = nil, completion: @escaping (_ data: ComputeGlycemicLoad200Response?, _ error: Error?) -> Void)
```

Compute Glycemic Load

Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let computeGlycemicLoadRequest = computeGlycemicLoad_request(ingredients: ["ingredients_example"]) // ComputeGlycemicLoadRequest | 
let language = "language_example" // String | The language of the input. Either 'en' or 'de'. (optional)

// Compute Glycemic Load
RecipesAPI.computeGlycemicLoad(computeGlycemicLoadRequest: computeGlycemicLoadRequest, language: language) { (response, error) in
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
 **computeGlycemicLoadRequest** | [**ComputeGlycemicLoadRequest**](ComputeGlycemicLoadRequest.md) |  | 
 **language** | **String** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

[**ComputeGlycemicLoad200Response**](ComputeGlycemicLoad200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertAmounts**
```swift
    open class func convertAmounts(ingredientName: String, sourceAmount: Double, sourceUnit: String, targetUnit: String, completion: @escaping (_ data: ConvertAmounts200Response?, _ error: Error?) -> Void)
```

Convert Amounts

Convert amounts like \"2 cups of flour to grams\".

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let ingredientName = "ingredientName_example" // String | The ingredient which you want to convert.
let sourceAmount = 987 // Double | The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\".
let sourceUnit = "sourceUnit_example" // String | The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"
let targetUnit = "targetUnit_example" // String | The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\"

// Convert Amounts
RecipesAPI.convertAmounts(ingredientName: ingredientName, sourceAmount: sourceAmount, sourceUnit: sourceUnit, targetUnit: targetUnit) { (response, error) in
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
 **ingredientName** | **String** | The ingredient which you want to convert. | 
 **sourceAmount** | **Double** | The amount from which you want to convert, e.g. the 2.5 in \&quot;2.5 cups of flour to grams\&quot;. | 
 **sourceUnit** | **String** | The unit from which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | 
 **targetUnit** | **String** | The unit to which you want to convert, e.g. the grams in \&quot;2.5 cups of flour to grams\&quot;. You can also use \&quot;piece\&quot;, e.g. \&quot;3.4 oz tomatoes to piece\&quot; | 

### Return type

[**ConvertAmounts200Response**](ConvertAmounts200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRecipeCard**
```swift
    open class func createRecipeCard(contentType: ContentType_createRecipeCard? = nil, completion: @escaping (_ data: CreateRecipeCard200Response?, _ error: Error?) -> Void)
```

Create Recipe Card

Generate a recipe card for a recipe.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let contentType = "contentType_example" // String | The content type. (optional)

// Create Recipe Card
RecipesAPI.createRecipeCard(contentType: contentType) { (response, error) in
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

[**CreateRecipeCard200Response**](CreateRecipeCard200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **equipmentByIDImage**
```swift
    open class func equipmentByIDImage(id: Double, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Equipment by ID Image

Visualize a recipe's equipment list as an image.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Double | The recipe id.

// Equipment by ID Image
RecipesAPI.equipmentByIDImage(id: id) { (response, error) in
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

### Return type

**AnyCodable**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extractRecipeFromWebsite**
```swift
    open class func extractRecipeFromWebsite(url: String, forceExtraction: Bool? = nil, analyze: Bool? = nil, includeNutrition: Bool? = nil, includeTaste: Bool? = nil, completion: @escaping (_ data: GetRecipeInformation200Response?, _ error: Error?) -> Void)
```

Extract Recipe from Website

This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let url = "url_example" // String | The URL of the recipe page.
let forceExtraction = true // Bool | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. (optional)
let analyze = false // Bool | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. (optional)
let includeNutrition = true // Bool | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional) (default to false)
let includeTaste = false // Bool | Whether taste data should be added to correctly parsed ingredients. (optional) (default to false)

// Extract Recipe from Website
RecipesAPI.extractRecipeFromWebsite(url: url, forceExtraction: forceExtraction, analyze: analyze, includeNutrition: includeNutrition, includeTaste: includeTaste) { (response, error) in
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
 **url** | **String** | The URL of the recipe page. | 
 **forceExtraction** | **Bool** | If true, the extraction will be triggered whether we already know the recipe or not. Use this only if information is missing as this operation is slower. | [optional] 
 **analyze** | **Bool** | If true, the recipe will be analyzed and classified resolving in more data such as cuisines, dish types, and more. | [optional] 
 **includeNutrition** | **Bool** | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]
 **includeTaste** | **Bool** | Whether taste data should be added to correctly parsed ingredients. | [optional] [default to false]

### Return type

[**GetRecipeInformation200Response**](GetRecipeInformation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAnalyzedRecipeInstructions**
```swift
    open class func getAnalyzedRecipeInstructions(id: Int, stepBreakdown: Bool? = nil, completion: @escaping (_ data: GetAnalyzedRecipeInstructions200Response?, _ error: Error?) -> Void)
```

Get Analyzed Recipe Instructions

Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Int | The item's id.
let stepBreakdown = true // Bool | Whether to break down the recipe steps even more. (optional)

// Get Analyzed Recipe Instructions
RecipesAPI.getAnalyzedRecipeInstructions(id: id, stepBreakdown: stepBreakdown) { (response, error) in
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
 **stepBreakdown** | **Bool** | Whether to break down the recipe steps even more. | [optional] 

### Return type

[**GetAnalyzedRecipeInstructions200Response**](GetAnalyzedRecipeInstructions200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRandomRecipes**
```swift
    open class func getRandomRecipes(limitLicense: Bool? = nil, tags: String? = nil, number: Int? = nil, completion: @escaping (_ data: GetRandomRecipes200Response?, _ error: Error?) -> Void)
```

Get Random Recipes

Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let limitLicense = true // Bool | Whether the recipes should have an open license that allows display with proper attribution. (optional) (default to true)
let tags = "tags_example" // String | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. (optional)
let number = 987 // Int | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)

// Get Random Recipes
RecipesAPI.getRandomRecipes(limitLicense: limitLicense, tags: tags, number: number) { (response, error) in
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
 **limitLicense** | **Bool** | Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]
 **tags** | **String** | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] 
 **number** | **Int** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**GetRandomRecipes200Response**](GetRandomRecipes200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeEquipmentByID**
```swift
    open class func getRecipeEquipmentByID(id: Int, completion: @escaping (_ data: GetRecipeEquipmentByID200Response?, _ error: Error?) -> Void)
```

Equipment by ID

Get a recipe's equipment list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Int | The item's id.

// Equipment by ID
RecipesAPI.getRecipeEquipmentByID(id: id) { (response, error) in
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

[**GetRecipeEquipmentByID200Response**](GetRecipeEquipmentByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeInformation**
```swift
    open class func getRecipeInformation(id: Int, includeNutrition: Bool? = nil, completion: @escaping (_ data: GetRecipeInformation200Response?, _ error: Error?) -> Void)
```

Get Recipe Information

Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Int | The item's id.
let includeNutrition = true // Bool | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional) (default to false)

// Get Recipe Information
RecipesAPI.getRecipeInformation(id: id, includeNutrition: includeNutrition) { (response, error) in
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
 **includeNutrition** | **Bool** | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]

### Return type

[**GetRecipeInformation200Response**](GetRecipeInformation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeInformationBulk**
```swift
    open class func getRecipeInformationBulk(ids: String, includeNutrition: Bool? = nil, completion: @escaping (_ data: Set<GetRecipeInformationBulk200ResponseInner>?, _ error: Error?) -> Void)
```

Get Recipe Information Bulk

Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let ids = "ids_example" // String | A comma-separated list of recipe ids.
let includeNutrition = true // Bool | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional) (default to false)

// Get Recipe Information Bulk
RecipesAPI.getRecipeInformationBulk(ids: ids, includeNutrition: includeNutrition) { (response, error) in
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
 **ids** | **String** | A comma-separated list of recipe ids. | 
 **includeNutrition** | **Bool** | Include nutrition data in the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. | [optional] [default to false]

### Return type

[**Set<GetRecipeInformationBulk200ResponseInner>**](GetRecipeInformationBulk200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeIngredientsByID**
```swift
    open class func getRecipeIngredientsByID(id: Int, completion: @escaping (_ data: GetRecipeIngredientsByID200Response?, _ error: Error?) -> Void)
```

Ingredients by ID

Get a recipe's ingredient list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Int | The item's id.

// Ingredients by ID
RecipesAPI.getRecipeIngredientsByID(id: id) { (response, error) in
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

[**GetRecipeIngredientsByID200Response**](GetRecipeIngredientsByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeNutritionWidgetByID**
```swift
    open class func getRecipeNutritionWidgetByID(id: Int, completion: @escaping (_ data: GetRecipeNutritionWidgetByID200Response?, _ error: Error?) -> Void)
```

Nutrition by ID

Get a recipe's nutrition data.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Int | The item's id.

// Nutrition by ID
RecipesAPI.getRecipeNutritionWidgetByID(id: id) { (response, error) in
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

[**GetRecipeNutritionWidgetByID200Response**](GetRecipeNutritionWidgetByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipePriceBreakdownByID**
```swift
    open class func getRecipePriceBreakdownByID(id: Int, completion: @escaping (_ data: GetRecipePriceBreakdownByID200Response?, _ error: Error?) -> Void)
```

Price Breakdown by ID

Get a recipe's price breakdown data.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Int | The item's id.

// Price Breakdown by ID
RecipesAPI.getRecipePriceBreakdownByID(id: id) { (response, error) in
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

[**GetRecipePriceBreakdownByID200Response**](GetRecipePriceBreakdownByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipeTasteByID**
```swift
    open class func getRecipeTasteByID(id: Int, normalize: Bool? = nil, completion: @escaping (_ data: GetRecipeTasteByID200Response?, _ error: Error?) -> Void)
```

Taste by ID

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Int | The item's id.
let normalize = true // Bool | Normalize to the strongest taste. (optional) (default to true)

// Taste by ID
RecipesAPI.getRecipeTasteByID(id: id, normalize: normalize) { (response, error) in
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
 **normalize** | **Bool** | Normalize to the strongest taste. | [optional] [default to true]

### Return type

[**GetRecipeTasteByID200Response**](GetRecipeTasteByID200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSimilarRecipes**
```swift
    open class func getSimilarRecipes(id: Int, number: Int? = nil, limitLicense: Bool? = nil, completion: @escaping (_ data: Set<GetSimilarRecipes200ResponseInner>?, _ error: Error?) -> Void)
```

Get Similar Recipes

Find recipes which are similar to the given one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Int | The item's id.
let number = 987 // Int | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)
let limitLicense = true // Bool | Whether the recipes should have an open license that allows display with proper attribution. (optional) (default to true)

// Get Similar Recipes
RecipesAPI.getSimilarRecipes(id: id, number: number, limitLicense: limitLicense) { (response, error) in
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
 **number** | **Int** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **limitLicense** | **Bool** | Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]

### Return type

[**Set<GetSimilarRecipes200ResponseInner>**](GetSimilarRecipes200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **guessNutritionByDishName**
```swift
    open class func guessNutritionByDishName(title: String, completion: @escaping (_ data: GuessNutritionByDishName200Response?, _ error: Error?) -> Void)
```

Guess Nutrition by Dish Name

Estimate the macronutrients of a dish based on its title.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let title = "title_example" // String | The title of the dish.

// Guess Nutrition by Dish Name
RecipesAPI.guessNutritionByDishName(title: title) { (response, error) in
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
 **title** | **String** | The title of the dish. | 

### Return type

[**GuessNutritionByDishName200Response**](GuessNutritionByDishName200Response.md)

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
import SpoonacularAPIClient

let id = 987 // Double | The recipe id.
let measure = "measure_example" // String | Whether the the measures should be 'us' or 'metric'. (optional)

// Ingredients by ID Image
RecipesAPI.ingredientsByIDImage(id: id, measure: measure) { (response, error) in
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

# **parseIngredients**
```swift
    open class func parseIngredients(contentType: ContentType_parseIngredients? = nil, language: Language_parseIngredients? = nil, completion: @escaping (_ data: Set<ParseIngredients200ResponseInner>?, _ error: Error?) -> Void)
```

Parse Ingredients

Extract an ingredient from plain text.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let contentType = "contentType_example" // String | The content type. (optional)
let language = "language_example" // String | The language of the input. Either 'en' or 'de'. (optional)

// Parse Ingredients
RecipesAPI.parseIngredients(contentType: contentType, language: language) { (response, error) in
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

### Return type

[**Set<ParseIngredients200ResponseInner>**](ParseIngredients200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **priceBreakdownByIDImage**
```swift
    open class func priceBreakdownByIDImage(id: Double, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Price Breakdown by ID Image

Visualize a recipe's price breakdown.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Double | The recipe id.

// Price Breakdown by ID Image
RecipesAPI.priceBreakdownByIDImage(id: id) { (response, error) in
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

### Return type

**AnyCodable**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **quickAnswer**
```swift
    open class func quickAnswer(q: String, completion: @escaping (_ data: QuickAnswer200Response?, _ error: Error?) -> Void)
```

Quick Answer

Answer a nutrition related natural language question.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let q = "q_example" // String | The nutrition related question.

// Quick Answer
RecipesAPI.quickAnswer(q: q) { (response, error) in
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
 **q** | **String** | The nutrition related question. | 

### Return type

[**QuickAnswer200Response**](QuickAnswer200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipeNutritionByIDImage**
```swift
    open class func recipeNutritionByIDImage(id: Double, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Recipe Nutrition by ID Image

Visualize a recipe's nutritional information as an image.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Double | The recipe id.

// Recipe Nutrition by ID Image
RecipesAPI.recipeNutritionByIDImage(id: id) { (response, error) in
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

### Return type

**AnyCodable**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipeNutritionLabelImage**
```swift
    open class func recipeNutritionLabelImage(id: Double, showOptionalNutrients: Bool? = nil, showZeroValues: Bool? = nil, showIngredients: Bool? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Recipe Nutrition Label Image

Get a recipe's nutrition label as an image.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Double | The recipe id.
let showOptionalNutrients = false // Bool | Whether to show optional nutrients. (optional)
let showZeroValues = false // Bool | Whether to show zero values. (optional)
let showIngredients = false // Bool | Whether to show a list of ingredients. (optional)

// Recipe Nutrition Label Image
RecipesAPI.recipeNutritionLabelImage(id: id, showOptionalNutrients: showOptionalNutrients, showZeroValues: showZeroValues, showIngredients: showIngredients) { (response, error) in
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

# **recipeNutritionLabelWidget**
```swift
    open class func recipeNutritionLabelWidget(id: Double, defaultCss: Bool? = nil, showOptionalNutrients: Bool? = nil, showZeroValues: Bool? = nil, showIngredients: Bool? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Recipe Nutrition Label Widget

Get a recipe's nutrition label as an HTML widget.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Double | The recipe id.
let defaultCss = false // Bool | Whether the default CSS should be added to the response. (optional) (default to true)
let showOptionalNutrients = false // Bool | Whether to show optional nutrients. (optional)
let showZeroValues = false // Bool | Whether to show zero values. (optional)
let showIngredients = false // Bool | Whether to show a list of ingredients. (optional)

// Recipe Nutrition Label Widget
RecipesAPI.recipeNutritionLabelWidget(id: id, defaultCss: defaultCss, showOptionalNutrients: showOptionalNutrients, showZeroValues: showZeroValues, showIngredients: showIngredients) { (response, error) in
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

# **recipeTasteByIDImage**
```swift
    open class func recipeTasteByIDImage(id: Double, normalize: Bool? = nil, rgb: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Recipe Taste by ID Image

Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Double | The recipe id.
let normalize = false // Bool | Normalize to the strongest taste. (optional)
let rgb = "rgb_example" // String | Red, green, blue values for the chart color. (optional)

// Recipe Taste by ID Image
RecipesAPI.recipeTasteByIDImage(id: id, normalize: normalize, rgb: rgb) { (response, error) in
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
 **normalize** | **Bool** | Normalize to the strongest taste. | [optional] 
 **rgb** | **String** | Red, green, blue values for the chart color. | [optional] 

### Return type

**AnyCodable**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRecipes**
```swift
    open class func searchRecipes(query: String? = nil, cuisine: String? = nil, excludeCuisine: String? = nil, diet: String? = nil, intolerances: String? = nil, equipment: String? = nil, includeIngredients: String? = nil, excludeIngredients: String? = nil, type: String? = nil, instructionsRequired: Bool? = nil, fillIngredients: Bool? = nil, addRecipeInformation: Bool? = nil, addRecipeNutrition: Bool? = nil, author: String? = nil, tags: String? = nil, recipeBoxId: Double? = nil, titleMatch: String? = nil, maxReadyTime: Double? = nil, ignorePantry: Bool? = nil, sort: String? = nil, sortDirection: String? = nil, minCarbs: Double? = nil, maxCarbs: Double? = nil, minProtein: Double? = nil, maxProtein: Double? = nil, minCalories: Double? = nil, maxCalories: Double? = nil, minFat: Double? = nil, maxFat: Double? = nil, minAlcohol: Double? = nil, maxAlcohol: Double? = nil, minCaffeine: Double? = nil, maxCaffeine: Double? = nil, minCopper: Double? = nil, maxCopper: Double? = nil, minCalcium: Double? = nil, maxCalcium: Double? = nil, minCholine: Double? = nil, maxCholine: Double? = nil, minCholesterol: Double? = nil, maxCholesterol: Double? = nil, minFluoride: Double? = nil, maxFluoride: Double? = nil, minSaturatedFat: Double? = nil, maxSaturatedFat: Double? = nil, minVitaminA: Double? = nil, maxVitaminA: Double? = nil, minVitaminC: Double? = nil, maxVitaminC: Double? = nil, minVitaminD: Double? = nil, maxVitaminD: Double? = nil, minVitaminE: Double? = nil, maxVitaminE: Double? = nil, minVitaminK: Double? = nil, maxVitaminK: Double? = nil, minVitaminB1: Double? = nil, maxVitaminB1: Double? = nil, minVitaminB2: Double? = nil, maxVitaminB2: Double? = nil, minVitaminB5: Double? = nil, maxVitaminB5: Double? = nil, minVitaminB3: Double? = nil, maxVitaminB3: Double? = nil, minVitaminB6: Double? = nil, maxVitaminB6: Double? = nil, minVitaminB12: Double? = nil, maxVitaminB12: Double? = nil, minFiber: Double? = nil, maxFiber: Double? = nil, minFolate: Double? = nil, maxFolate: Double? = nil, minFolicAcid: Double? = nil, maxFolicAcid: Double? = nil, minIodine: Double? = nil, maxIodine: Double? = nil, minIron: Double? = nil, maxIron: Double? = nil, minMagnesium: Double? = nil, maxMagnesium: Double? = nil, minManganese: Double? = nil, maxManganese: Double? = nil, minPhosphorus: Double? = nil, maxPhosphorus: Double? = nil, minPotassium: Double? = nil, maxPotassium: Double? = nil, minSelenium: Double? = nil, maxSelenium: Double? = nil, minSodium: Double? = nil, maxSodium: Double? = nil, minSugar: Double? = nil, maxSugar: Double? = nil, minZinc: Double? = nil, maxZinc: Double? = nil, offset: Int? = nil, number: Int? = nil, limitLicense: Bool? = nil, completion: @escaping (_ data: SearchRecipes200Response?, _ error: Error?) -> Void)
```

Search Recipes

Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let query = "query_example" // String | The (natural language) search query. (optional)
let cuisine = "cuisine_example" // String | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as 'OR'). See a full list of supported cuisines. (optional)
let excludeCuisine = "excludeCuisine_example" // String | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as 'AND'). See a full list of supported cuisines. (optional)
let diet = "diet_example" // String | The diet for which the recipes must be suitable. See a full list of supported diets. (optional)
let intolerances = "intolerances_example" // String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. (optional)
let equipment = "equipment_example" // String | The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\". (optional)
let includeIngredients = "includeIngredients_example" // String | A comma-separated list of ingredients that should/must be used in the recipes. (optional)
let excludeIngredients = "excludeIngredients_example" // String | A comma-separated list of ingredients or ingredient types that the recipes must not contain. (optional)
let type = "type_example" // String | The type of recipe. See a full list of supported meal types. (optional)
let instructionsRequired = true // Bool | Whether the recipes must have instructions. (optional)
let fillIngredients = false // Bool | Add information about the ingredients and whether they are used or missing in relation to the query. (optional)
let addRecipeInformation = false // Bool | If set to true, you get more information about the recipes returned. (optional)
let addRecipeNutrition = false // Bool | If set to true, you get nutritional information about each recipes returned. (optional)
let author = "author_example" // String | The username of the recipe author. (optional)
let tags = "tags_example" // String | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. (optional)
let recipeBoxId = 987 // Double | The id of the recipe box to which the search should be limited to. (optional)
let titleMatch = "titleMatch_example" // String | Enter text that must be found in the title of the recipes. (optional)
let maxReadyTime = 987 // Double | The maximum time in minutes it should take to prepare and cook the recipe. (optional)
let ignorePantry = false // Bool | Whether to ignore typical pantry items, such as water, salt, flour, etc. (optional) (default to false)
let sort = "sort_example" // String | The strategy to sort recipes by. See a full list of supported sorting options. (optional)
let sortDirection = "sortDirection_example" // String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). (optional)
let minCarbs = 987 // Double | The minimum amount of carbohydrates in grams the recipe must have. (optional)
let maxCarbs = 987 // Double | The maximum amount of carbohydrates in grams the recipe can have. (optional)
let minProtein = 987 // Double | The minimum amount of protein in grams the recipe must have. (optional)
let maxProtein = 987 // Double | The maximum amount of protein in grams the recipe can have. (optional)
let minCalories = 987 // Double | The minimum amount of calories the recipe must have. (optional)
let maxCalories = 987 // Double | The maximum amount of calories the recipe can have. (optional)
let minFat = 987 // Double | The minimum amount of fat in grams the recipe must have. (optional)
let maxFat = 987 // Double | The maximum amount of fat in grams the recipe can have. (optional)
let minAlcohol = 987 // Double | The minimum amount of alcohol in grams the recipe must have. (optional)
let maxAlcohol = 987 // Double | The maximum amount of alcohol in grams the recipe can have. (optional)
let minCaffeine = 987 // Double | The minimum amount of caffeine in milligrams the recipe must have. (optional)
let maxCaffeine = 987 // Double | The maximum amount of caffeine in milligrams the recipe can have. (optional)
let minCopper = 987 // Double | The minimum amount of copper in milligrams the recipe must have. (optional)
let maxCopper = 987 // Double | The maximum amount of copper in milligrams the recipe can have. (optional)
let minCalcium = 987 // Double | The minimum amount of calcium in milligrams the recipe must have. (optional)
let maxCalcium = 987 // Double | The maximum amount of calcium in milligrams the recipe can have. (optional)
let minCholine = 987 // Double | The minimum amount of choline in milligrams the recipe must have. (optional)
let maxCholine = 987 // Double | The maximum amount of choline in milligrams the recipe can have. (optional)
let minCholesterol = 987 // Double | The minimum amount of cholesterol in milligrams the recipe must have. (optional)
let maxCholesterol = 987 // Double | The maximum amount of cholesterol in milligrams the recipe can have. (optional)
let minFluoride = 987 // Double | The minimum amount of fluoride in milligrams the recipe must have. (optional)
let maxFluoride = 987 // Double | The maximum amount of fluoride in milligrams the recipe can have. (optional)
let minSaturatedFat = 987 // Double | The minimum amount of saturated fat in grams the recipe must have. (optional)
let maxSaturatedFat = 987 // Double | The maximum amount of saturated fat in grams the recipe can have. (optional)
let minVitaminA = 987 // Double | The minimum amount of Vitamin A in IU the recipe must have. (optional)
let maxVitaminA = 987 // Double | The maximum amount of Vitamin A in IU the recipe can have. (optional)
let minVitaminC = 987 // Double | The minimum amount of Vitamin C milligrams the recipe must have. (optional)
let maxVitaminC = 987 // Double | The maximum amount of Vitamin C in milligrams the recipe can have. (optional)
let minVitaminD = 987 // Double | The minimum amount of Vitamin D in micrograms the recipe must have. (optional)
let maxVitaminD = 987 // Double | The maximum amount of Vitamin D in micrograms the recipe can have. (optional)
let minVitaminE = 987 // Double | The minimum amount of Vitamin E in milligrams the recipe must have. (optional)
let maxVitaminE = 987 // Double | The maximum amount of Vitamin E in milligrams the recipe can have. (optional)
let minVitaminK = 987 // Double | The minimum amount of Vitamin K in micrograms the recipe must have. (optional)
let maxVitaminK = 987 // Double | The maximum amount of Vitamin K in micrograms the recipe can have. (optional)
let minVitaminB1 = 987 // Double | The minimum amount of Vitamin B1 in milligrams the recipe must have. (optional)
let maxVitaminB1 = 987 // Double | The maximum amount of Vitamin B1 in milligrams the recipe can have. (optional)
let minVitaminB2 = 987 // Double | The minimum amount of Vitamin B2 in milligrams the recipe must have. (optional)
let maxVitaminB2 = 987 // Double | The maximum amount of Vitamin B2 in milligrams the recipe can have. (optional)
let minVitaminB5 = 987 // Double | The minimum amount of Vitamin B5 in milligrams the recipe must have. (optional)
let maxVitaminB5 = 987 // Double | The maximum amount of Vitamin B5 in milligrams the recipe can have. (optional)
let minVitaminB3 = 987 // Double | The minimum amount of Vitamin B3 in milligrams the recipe must have. (optional)
let maxVitaminB3 = 987 // Double | The maximum amount of Vitamin B3 in milligrams the recipe can have. (optional)
let minVitaminB6 = 987 // Double | The minimum amount of Vitamin B6 in milligrams the recipe must have. (optional)
let maxVitaminB6 = 987 // Double | The maximum amount of Vitamin B6 in milligrams the recipe can have. (optional)
let minVitaminB12 = 987 // Double | The minimum amount of Vitamin B12 in micrograms the recipe must have. (optional)
let maxVitaminB12 = 987 // Double | The maximum amount of Vitamin B12 in micrograms the recipe can have. (optional)
let minFiber = 987 // Double | The minimum amount of fiber in grams the recipe must have. (optional)
let maxFiber = 987 // Double | The maximum amount of fiber in grams the recipe can have. (optional)
let minFolate = 987 // Double | The minimum amount of folate in micrograms the recipe must have. (optional)
let maxFolate = 987 // Double | The maximum amount of folate in micrograms the recipe can have. (optional)
let minFolicAcid = 987 // Double | The minimum amount of folic acid in micrograms the recipe must have. (optional)
let maxFolicAcid = 987 // Double | The maximum amount of folic acid in micrograms the recipe can have. (optional)
let minIodine = 987 // Double | The minimum amount of iodine in micrograms the recipe must have. (optional)
let maxIodine = 987 // Double | The maximum amount of iodine in micrograms the recipe can have. (optional)
let minIron = 987 // Double | The minimum amount of iron in milligrams the recipe must have. (optional)
let maxIron = 987 // Double | The maximum amount of iron in milligrams the recipe can have. (optional)
let minMagnesium = 987 // Double | The minimum amount of magnesium in milligrams the recipe must have. (optional)
let maxMagnesium = 987 // Double | The maximum amount of magnesium in milligrams the recipe can have. (optional)
let minManganese = 987 // Double | The minimum amount of manganese in milligrams the recipe must have. (optional)
let maxManganese = 987 // Double | The maximum amount of manganese in milligrams the recipe can have. (optional)
let minPhosphorus = 987 // Double | The minimum amount of phosphorus in milligrams the recipe must have. (optional)
let maxPhosphorus = 987 // Double | The maximum amount of phosphorus in milligrams the recipe can have. (optional)
let minPotassium = 987 // Double | The minimum amount of potassium in milligrams the recipe must have. (optional)
let maxPotassium = 987 // Double | The maximum amount of potassium in milligrams the recipe can have. (optional)
let minSelenium = 987 // Double | The minimum amount of selenium in micrograms the recipe must have. (optional)
let maxSelenium = 987 // Double | The maximum amount of selenium in micrograms the recipe can have. (optional)
let minSodium = 987 // Double | The minimum amount of sodium in milligrams the recipe must have. (optional)
let maxSodium = 987 // Double | The maximum amount of sodium in milligrams the recipe can have. (optional)
let minSugar = 987 // Double | The minimum amount of sugar in grams the recipe must have. (optional)
let maxSugar = 987 // Double | The maximum amount of sugar in grams the recipe can have. (optional)
let minZinc = 987 // Double | The minimum amount of zinc in milligrams the recipe must have. (optional)
let maxZinc = 987 // Double | The maximum amount of zinc in milligrams the recipe can have. (optional)
let offset = 987 // Int | The number of results to skip (between 0 and 900). (optional)
let number = 987 // Int | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)
let limitLicense = true // Bool | Whether the recipes should have an open license that allows display with proper attribution. (optional) (default to true)

// Search Recipes
RecipesAPI.searchRecipes(query: query, cuisine: cuisine, excludeCuisine: excludeCuisine, diet: diet, intolerances: intolerances, equipment: equipment, includeIngredients: includeIngredients, excludeIngredients: excludeIngredients, type: type, instructionsRequired: instructionsRequired, fillIngredients: fillIngredients, addRecipeInformation: addRecipeInformation, addRecipeNutrition: addRecipeNutrition, author: author, tags: tags, recipeBoxId: recipeBoxId, titleMatch: titleMatch, maxReadyTime: maxReadyTime, ignorePantry: ignorePantry, sort: sort, sortDirection: sortDirection, minCarbs: minCarbs, maxCarbs: maxCarbs, minProtein: minProtein, maxProtein: maxProtein, minCalories: minCalories, maxCalories: maxCalories, minFat: minFat, maxFat: maxFat, minAlcohol: minAlcohol, maxAlcohol: maxAlcohol, minCaffeine: minCaffeine, maxCaffeine: maxCaffeine, minCopper: minCopper, maxCopper: maxCopper, minCalcium: minCalcium, maxCalcium: maxCalcium, minCholine: minCholine, maxCholine: maxCholine, minCholesterol: minCholesterol, maxCholesterol: maxCholesterol, minFluoride: minFluoride, maxFluoride: maxFluoride, minSaturatedFat: minSaturatedFat, maxSaturatedFat: maxSaturatedFat, minVitaminA: minVitaminA, maxVitaminA: maxVitaminA, minVitaminC: minVitaminC, maxVitaminC: maxVitaminC, minVitaminD: minVitaminD, maxVitaminD: maxVitaminD, minVitaminE: minVitaminE, maxVitaminE: maxVitaminE, minVitaminK: minVitaminK, maxVitaminK: maxVitaminK, minVitaminB1: minVitaminB1, maxVitaminB1: maxVitaminB1, minVitaminB2: minVitaminB2, maxVitaminB2: maxVitaminB2, minVitaminB5: minVitaminB5, maxVitaminB5: maxVitaminB5, minVitaminB3: minVitaminB3, maxVitaminB3: maxVitaminB3, minVitaminB6: minVitaminB6, maxVitaminB6: maxVitaminB6, minVitaminB12: minVitaminB12, maxVitaminB12: maxVitaminB12, minFiber: minFiber, maxFiber: maxFiber, minFolate: minFolate, maxFolate: maxFolate, minFolicAcid: minFolicAcid, maxFolicAcid: maxFolicAcid, minIodine: minIodine, maxIodine: maxIodine, minIron: minIron, maxIron: maxIron, minMagnesium: minMagnesium, maxMagnesium: maxMagnesium, minManganese: minManganese, maxManganese: maxManganese, minPhosphorus: minPhosphorus, maxPhosphorus: maxPhosphorus, minPotassium: minPotassium, maxPotassium: maxPotassium, minSelenium: minSelenium, maxSelenium: maxSelenium, minSodium: minSodium, maxSodium: maxSodium, minSugar: minSugar, maxSugar: maxSugar, minZinc: minZinc, maxZinc: maxZinc, offset: offset, number: number, limitLicense: limitLicense) { (response, error) in
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
 **cuisine** | **String** | The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as &#39;OR&#39;). See a full list of supported cuisines. | [optional] 
 **excludeCuisine** | **String** | The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as &#39;AND&#39;). See a full list of supported cuisines. | [optional] 
 **diet** | **String** | The diet for which the recipes must be suitable. See a full list of supported diets. | [optional] 
 **intolerances** | **String** | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances. | [optional] 
 **equipment** | **String** | The equipment required. Multiple values will be interpreted as &#39;or&#39;. For example, value could be \&quot;blender, frying pan, bowl\&quot;. | [optional] 
 **includeIngredients** | **String** | A comma-separated list of ingredients that should/must be used in the recipes. | [optional] 
 **excludeIngredients** | **String** | A comma-separated list of ingredients or ingredient types that the recipes must not contain. | [optional] 
 **type** | **String** | The type of recipe. See a full list of supported meal types. | [optional] 
 **instructionsRequired** | **Bool** | Whether the recipes must have instructions. | [optional] 
 **fillIngredients** | **Bool** | Add information about the ingredients and whether they are used or missing in relation to the query. | [optional] 
 **addRecipeInformation** | **Bool** | If set to true, you get more information about the recipes returned. | [optional] 
 **addRecipeNutrition** | **Bool** | If set to true, you get nutritional information about each recipes returned. | [optional] 
 **author** | **String** | The username of the recipe author. | [optional] 
 **tags** | **String** | The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must have. | [optional] 
 **recipeBoxId** | **Double** | The id of the recipe box to which the search should be limited to. | [optional] 
 **titleMatch** | **String** | Enter text that must be found in the title of the recipes. | [optional] 
 **maxReadyTime** | **Double** | The maximum time in minutes it should take to prepare and cook the recipe. | [optional] 
 **ignorePantry** | **Bool** | Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false]
 **sort** | **String** | The strategy to sort recipes by. See a full list of supported sorting options. | [optional] 
 **sortDirection** | **String** | The direction in which to sort. Must be either &#39;asc&#39; (ascending) or &#39;desc&#39; (descending). | [optional] 
 **minCarbs** | **Double** | The minimum amount of carbohydrates in grams the recipe must have. | [optional] 
 **maxCarbs** | **Double** | The maximum amount of carbohydrates in grams the recipe can have. | [optional] 
 **minProtein** | **Double** | The minimum amount of protein in grams the recipe must have. | [optional] 
 **maxProtein** | **Double** | The maximum amount of protein in grams the recipe can have. | [optional] 
 **minCalories** | **Double** | The minimum amount of calories the recipe must have. | [optional] 
 **maxCalories** | **Double** | The maximum amount of calories the recipe can have. | [optional] 
 **minFat** | **Double** | The minimum amount of fat in grams the recipe must have. | [optional] 
 **maxFat** | **Double** | The maximum amount of fat in grams the recipe can have. | [optional] 
 **minAlcohol** | **Double** | The minimum amount of alcohol in grams the recipe must have. | [optional] 
 **maxAlcohol** | **Double** | The maximum amount of alcohol in grams the recipe can have. | [optional] 
 **minCaffeine** | **Double** | The minimum amount of caffeine in milligrams the recipe must have. | [optional] 
 **maxCaffeine** | **Double** | The maximum amount of caffeine in milligrams the recipe can have. | [optional] 
 **minCopper** | **Double** | The minimum amount of copper in milligrams the recipe must have. | [optional] 
 **maxCopper** | **Double** | The maximum amount of copper in milligrams the recipe can have. | [optional] 
 **minCalcium** | **Double** | The minimum amount of calcium in milligrams the recipe must have. | [optional] 
 **maxCalcium** | **Double** | The maximum amount of calcium in milligrams the recipe can have. | [optional] 
 **minCholine** | **Double** | The minimum amount of choline in milligrams the recipe must have. | [optional] 
 **maxCholine** | **Double** | The maximum amount of choline in milligrams the recipe can have. | [optional] 
 **minCholesterol** | **Double** | The minimum amount of cholesterol in milligrams the recipe must have. | [optional] 
 **maxCholesterol** | **Double** | The maximum amount of cholesterol in milligrams the recipe can have. | [optional] 
 **minFluoride** | **Double** | The minimum amount of fluoride in milligrams the recipe must have. | [optional] 
 **maxFluoride** | **Double** | The maximum amount of fluoride in milligrams the recipe can have. | [optional] 
 **minSaturatedFat** | **Double** | The minimum amount of saturated fat in grams the recipe must have. | [optional] 
 **maxSaturatedFat** | **Double** | The maximum amount of saturated fat in grams the recipe can have. | [optional] 
 **minVitaminA** | **Double** | The minimum amount of Vitamin A in IU the recipe must have. | [optional] 
 **maxVitaminA** | **Double** | The maximum amount of Vitamin A in IU the recipe can have. | [optional] 
 **minVitaminC** | **Double** | The minimum amount of Vitamin C milligrams the recipe must have. | [optional] 
 **maxVitaminC** | **Double** | The maximum amount of Vitamin C in milligrams the recipe can have. | [optional] 
 **minVitaminD** | **Double** | The minimum amount of Vitamin D in micrograms the recipe must have. | [optional] 
 **maxVitaminD** | **Double** | The maximum amount of Vitamin D in micrograms the recipe can have. | [optional] 
 **minVitaminE** | **Double** | The minimum amount of Vitamin E in milligrams the recipe must have. | [optional] 
 **maxVitaminE** | **Double** | The maximum amount of Vitamin E in milligrams the recipe can have. | [optional] 
 **minVitaminK** | **Double** | The minimum amount of Vitamin K in micrograms the recipe must have. | [optional] 
 **maxVitaminK** | **Double** | The maximum amount of Vitamin K in micrograms the recipe can have. | [optional] 
 **minVitaminB1** | **Double** | The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **maxVitaminB1** | **Double** | The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional] 
 **minVitaminB2** | **Double** | The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **maxVitaminB2** | **Double** | The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional] 
 **minVitaminB5** | **Double** | The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional] 
 **maxVitaminB5** | **Double** | The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional] 
 **minVitaminB3** | **Double** | The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional] 
 **maxVitaminB3** | **Double** | The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional] 
 **minVitaminB6** | **Double** | The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional] 
 **maxVitaminB6** | **Double** | The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional] 
 **minVitaminB12** | **Double** | The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **maxVitaminB12** | **Double** | The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional] 
 **minFiber** | **Double** | The minimum amount of fiber in grams the recipe must have. | [optional] 
 **maxFiber** | **Double** | The maximum amount of fiber in grams the recipe can have. | [optional] 
 **minFolate** | **Double** | The minimum amount of folate in micrograms the recipe must have. | [optional] 
 **maxFolate** | **Double** | The maximum amount of folate in micrograms the recipe can have. | [optional] 
 **minFolicAcid** | **Double** | The minimum amount of folic acid in micrograms the recipe must have. | [optional] 
 **maxFolicAcid** | **Double** | The maximum amount of folic acid in micrograms the recipe can have. | [optional] 
 **minIodine** | **Double** | The minimum amount of iodine in micrograms the recipe must have. | [optional] 
 **maxIodine** | **Double** | The maximum amount of iodine in micrograms the recipe can have. | [optional] 
 **minIron** | **Double** | The minimum amount of iron in milligrams the recipe must have. | [optional] 
 **maxIron** | **Double** | The maximum amount of iron in milligrams the recipe can have. | [optional] 
 **minMagnesium** | **Double** | The minimum amount of magnesium in milligrams the recipe must have. | [optional] 
 **maxMagnesium** | **Double** | The maximum amount of magnesium in milligrams the recipe can have. | [optional] 
 **minManganese** | **Double** | The minimum amount of manganese in milligrams the recipe must have. | [optional] 
 **maxManganese** | **Double** | The maximum amount of manganese in milligrams the recipe can have. | [optional] 
 **minPhosphorus** | **Double** | The minimum amount of phosphorus in milligrams the recipe must have. | [optional] 
 **maxPhosphorus** | **Double** | The maximum amount of phosphorus in milligrams the recipe can have. | [optional] 
 **minPotassium** | **Double** | The minimum amount of potassium in milligrams the recipe must have. | [optional] 
 **maxPotassium** | **Double** | The maximum amount of potassium in milligrams the recipe can have. | [optional] 
 **minSelenium** | **Double** | The minimum amount of selenium in micrograms the recipe must have. | [optional] 
 **maxSelenium** | **Double** | The maximum amount of selenium in micrograms the recipe can have. | [optional] 
 **minSodium** | **Double** | The minimum amount of sodium in milligrams the recipe must have. | [optional] 
 **maxSodium** | **Double** | The maximum amount of sodium in milligrams the recipe can have. | [optional] 
 **minSugar** | **Double** | The minimum amount of sugar in grams the recipe must have. | [optional] 
 **maxSugar** | **Double** | The maximum amount of sugar in grams the recipe can have. | [optional] 
 **minZinc** | **Double** | The minimum amount of zinc in milligrams the recipe must have. | [optional] 
 **maxZinc** | **Double** | The maximum amount of zinc in milligrams the recipe can have. | [optional] 
 **offset** | **Int** | The number of results to skip (between 0 and 900). | [optional] 
 **number** | **Int** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **limitLicense** | **Bool** | Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]

### Return type

[**SearchRecipes200Response**](SearchRecipes200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRecipesByIngredients**
```swift
    open class func searchRecipesByIngredients(ingredients: String? = nil, number: Int? = nil, limitLicense: Bool? = nil, ranking: Double? = nil, ignorePantry: Bool? = nil, completion: @escaping (_ data: Set<SearchRecipesByIngredients200ResponseInner>?, _ error: Error?) -> Void)
```

Search Recipes by Ingredients

 Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let ingredients = "ingredients_example" // String | A comma-separated list of ingredients that the recipes should contain. (optional)
let number = 987 // Int | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)
let limitLicense = true // Bool | Whether the recipes should have an open license that allows display with proper attribution. (optional) (default to true)
let ranking = 987 // Double | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. (optional)
let ignorePantry = false // Bool | Whether to ignore typical pantry items, such as water, salt, flour, etc. (optional) (default to false)

// Search Recipes by Ingredients
RecipesAPI.searchRecipesByIngredients(ingredients: ingredients, number: number, limitLicense: limitLicense, ranking: ranking, ignorePantry: ignorePantry) { (response, error) in
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
 **ingredients** | **String** | A comma-separated list of ingredients that the recipes should contain. | [optional] 
 **number** | **Int** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **limitLicense** | **Bool** | Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]
 **ranking** | **Double** | Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. | [optional] 
 **ignorePantry** | **Bool** | Whether to ignore typical pantry items, such as water, salt, flour, etc. | [optional] [default to false]

### Return type

[**Set<SearchRecipesByIngredients200ResponseInner>**](SearchRecipesByIngredients200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRecipesByNutrients**
```swift
    open class func searchRecipesByNutrients(minCarbs: Double? = nil, maxCarbs: Double? = nil, minProtein: Double? = nil, maxProtein: Double? = nil, minCalories: Double? = nil, maxCalories: Double? = nil, minFat: Double? = nil, maxFat: Double? = nil, minAlcohol: Double? = nil, maxAlcohol: Double? = nil, minCaffeine: Double? = nil, maxCaffeine: Double? = nil, minCopper: Double? = nil, maxCopper: Double? = nil, minCalcium: Double? = nil, maxCalcium: Double? = nil, minCholine: Double? = nil, maxCholine: Double? = nil, minCholesterol: Double? = nil, maxCholesterol: Double? = nil, minFluoride: Double? = nil, maxFluoride: Double? = nil, minSaturatedFat: Double? = nil, maxSaturatedFat: Double? = nil, minVitaminA: Double? = nil, maxVitaminA: Double? = nil, minVitaminC: Double? = nil, maxVitaminC: Double? = nil, minVitaminD: Double? = nil, maxVitaminD: Double? = nil, minVitaminE: Double? = nil, maxVitaminE: Double? = nil, minVitaminK: Double? = nil, maxVitaminK: Double? = nil, minVitaminB1: Double? = nil, maxVitaminB1: Double? = nil, minVitaminB2: Double? = nil, maxVitaminB2: Double? = nil, minVitaminB5: Double? = nil, maxVitaminB5: Double? = nil, minVitaminB3: Double? = nil, maxVitaminB3: Double? = nil, minVitaminB6: Double? = nil, maxVitaminB6: Double? = nil, minVitaminB12: Double? = nil, maxVitaminB12: Double? = nil, minFiber: Double? = nil, maxFiber: Double? = nil, minFolate: Double? = nil, maxFolate: Double? = nil, minFolicAcid: Double? = nil, maxFolicAcid: Double? = nil, minIodine: Double? = nil, maxIodine: Double? = nil, minIron: Double? = nil, maxIron: Double? = nil, minMagnesium: Double? = nil, maxMagnesium: Double? = nil, minManganese: Double? = nil, maxManganese: Double? = nil, minPhosphorus: Double? = nil, maxPhosphorus: Double? = nil, minPotassium: Double? = nil, maxPotassium: Double? = nil, minSelenium: Double? = nil, maxSelenium: Double? = nil, minSodium: Double? = nil, maxSodium: Double? = nil, minSugar: Double? = nil, maxSugar: Double? = nil, minZinc: Double? = nil, maxZinc: Double? = nil, offset: Int? = nil, number: Int? = nil, random: Bool? = nil, limitLicense: Bool? = nil, completion: @escaping (_ data: Set<SearchRecipesByNutrients200ResponseInner>?, _ error: Error?) -> Void)
```

Search Recipes by Nutrients

Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let minCarbs = 987 // Double | The minimum amount of carbohydrates in grams the recipe must have. (optional)
let maxCarbs = 987 // Double | The maximum amount of carbohydrates in grams the recipe can have. (optional)
let minProtein = 987 // Double | The minimum amount of protein in grams the recipe must have. (optional)
let maxProtein = 987 // Double | The maximum amount of protein in grams the recipe can have. (optional)
let minCalories = 987 // Double | The minimum amount of calories the recipe must have. (optional)
let maxCalories = 987 // Double | The maximum amount of calories the recipe can have. (optional)
let minFat = 987 // Double | The minimum amount of fat in grams the recipe must have. (optional)
let maxFat = 987 // Double | The maximum amount of fat in grams the recipe can have. (optional)
let minAlcohol = 987 // Double | The minimum amount of alcohol in grams the recipe must have. (optional)
let maxAlcohol = 987 // Double | The maximum amount of alcohol in grams the recipe can have. (optional)
let minCaffeine = 987 // Double | The minimum amount of caffeine in milligrams the recipe must have. (optional)
let maxCaffeine = 987 // Double | The maximum amount of caffeine in milligrams the recipe can have. (optional)
let minCopper = 987 // Double | The minimum amount of copper in milligrams the recipe must have. (optional)
let maxCopper = 987 // Double | The maximum amount of copper in milligrams the recipe can have. (optional)
let minCalcium = 987 // Double | The minimum amount of calcium in milligrams the recipe must have. (optional)
let maxCalcium = 987 // Double | The maximum amount of calcium in milligrams the recipe can have. (optional)
let minCholine = 987 // Double | The minimum amount of choline in milligrams the recipe must have. (optional)
let maxCholine = 987 // Double | The maximum amount of choline in milligrams the recipe can have. (optional)
let minCholesterol = 987 // Double | The minimum amount of cholesterol in milligrams the recipe must have. (optional)
let maxCholesterol = 987 // Double | The maximum amount of cholesterol in milligrams the recipe can have. (optional)
let minFluoride = 987 // Double | The minimum amount of fluoride in milligrams the recipe must have. (optional)
let maxFluoride = 987 // Double | The maximum amount of fluoride in milligrams the recipe can have. (optional)
let minSaturatedFat = 987 // Double | The minimum amount of saturated fat in grams the recipe must have. (optional)
let maxSaturatedFat = 987 // Double | The maximum amount of saturated fat in grams the recipe can have. (optional)
let minVitaminA = 987 // Double | The minimum amount of Vitamin A in IU the recipe must have. (optional)
let maxVitaminA = 987 // Double | The maximum amount of Vitamin A in IU the recipe can have. (optional)
let minVitaminC = 987 // Double | The minimum amount of Vitamin C in milligrams the recipe must have. (optional)
let maxVitaminC = 987 // Double | The maximum amount of Vitamin C in milligrams the recipe can have. (optional)
let minVitaminD = 987 // Double | The minimum amount of Vitamin D in micrograms the recipe must have. (optional)
let maxVitaminD = 987 // Double | The maximum amount of Vitamin D in micrograms the recipe can have. (optional)
let minVitaminE = 987 // Double | The minimum amount of Vitamin E in milligrams the recipe must have. (optional)
let maxVitaminE = 987 // Double | The maximum amount of Vitamin E in milligrams the recipe can have. (optional)
let minVitaminK = 987 // Double | The minimum amount of Vitamin K in micrograms the recipe must have. (optional)
let maxVitaminK = 987 // Double | The maximum amount of Vitamin K in micrograms the recipe can have. (optional)
let minVitaminB1 = 987 // Double | The minimum amount of Vitamin B1 in milligrams the recipe must have. (optional)
let maxVitaminB1 = 987 // Double | The maximum amount of Vitamin B1 in milligrams the recipe can have. (optional)
let minVitaminB2 = 987 // Double | The minimum amount of Vitamin B2 in milligrams the recipe must have. (optional)
let maxVitaminB2 = 987 // Double | The maximum amount of Vitamin B2 in milligrams the recipe can have. (optional)
let minVitaminB5 = 987 // Double | The minimum amount of Vitamin B5 in milligrams the recipe must have. (optional)
let maxVitaminB5 = 987 // Double | The maximum amount of Vitamin B5 in milligrams the recipe can have. (optional)
let minVitaminB3 = 987 // Double | The minimum amount of Vitamin B3 in milligrams the recipe must have. (optional)
let maxVitaminB3 = 987 // Double | The maximum amount of Vitamin B3 in milligrams the recipe can have. (optional)
let minVitaminB6 = 987 // Double | The minimum amount of Vitamin B6 in milligrams the recipe must have. (optional)
let maxVitaminB6 = 987 // Double | The maximum amount of Vitamin B6 in milligrams the recipe can have. (optional)
let minVitaminB12 = 987 // Double | The minimum amount of Vitamin B12 in micrograms the recipe must have. (optional)
let maxVitaminB12 = 987 // Double | The maximum amount of Vitamin B12 in micrograms the recipe can have. (optional)
let minFiber = 987 // Double | The minimum amount of fiber in grams the recipe must have. (optional)
let maxFiber = 987 // Double | The maximum amount of fiber in grams the recipe can have. (optional)
let minFolate = 987 // Double | The minimum amount of folate in micrograms the recipe must have. (optional)
let maxFolate = 987 // Double | The maximum amount of folate in micrograms the recipe can have. (optional)
let minFolicAcid = 987 // Double | The minimum amount of folic acid in micrograms the recipe must have. (optional)
let maxFolicAcid = 987 // Double | The maximum amount of folic acid in micrograms the recipe can have. (optional)
let minIodine = 987 // Double | The minimum amount of iodine in micrograms the recipe must have. (optional)
let maxIodine = 987 // Double | The maximum amount of iodine in micrograms the recipe can have. (optional)
let minIron = 987 // Double | The minimum amount of iron in milligrams the recipe must have. (optional)
let maxIron = 987 // Double | The maximum amount of iron in milligrams the recipe can have. (optional)
let minMagnesium = 987 // Double | The minimum amount of magnesium in milligrams the recipe must have. (optional)
let maxMagnesium = 987 // Double | The maximum amount of magnesium in milligrams the recipe can have. (optional)
let minManganese = 987 // Double | The minimum amount of manganese in milligrams the recipe must have. (optional)
let maxManganese = 987 // Double | The maximum amount of manganese in milligrams the recipe can have. (optional)
let minPhosphorus = 987 // Double | The minimum amount of phosphorus in milligrams the recipe must have. (optional)
let maxPhosphorus = 987 // Double | The maximum amount of phosphorus in milligrams the recipe can have. (optional)
let minPotassium = 987 // Double | The minimum amount of potassium in milligrams the recipe must have. (optional)
let maxPotassium = 987 // Double | The maximum amount of potassium in milligrams the recipe can have. (optional)
let minSelenium = 987 // Double | The minimum amount of selenium in micrograms the recipe must have. (optional)
let maxSelenium = 987 // Double | The maximum amount of selenium in micrograms the recipe can have. (optional)
let minSodium = 987 // Double | The minimum amount of sodium in milligrams the recipe must have. (optional)
let maxSodium = 987 // Double | The maximum amount of sodium in milligrams the recipe can have. (optional)
let minSugar = 987 // Double | The minimum amount of sugar in grams the recipe must have. (optional)
let maxSugar = 987 // Double | The maximum amount of sugar in grams the recipe can have. (optional)
let minZinc = 987 // Double | The minimum amount of zinc in milligrams the recipe must have. (optional)
let maxZinc = 987 // Double | The maximum amount of zinc in milligrams the recipe can have. (optional)
let offset = 987 // Int | The number of results to skip (between 0 and 900). (optional)
let number = 987 // Int | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)
let random = false // Bool | If true, every request will give you a random set of recipes within the requested limits. (optional)
let limitLicense = true // Bool | Whether the recipes should have an open license that allows display with proper attribution. (optional) (default to true)

// Search Recipes by Nutrients
RecipesAPI.searchRecipesByNutrients(minCarbs: minCarbs, maxCarbs: maxCarbs, minProtein: minProtein, maxProtein: maxProtein, minCalories: minCalories, maxCalories: maxCalories, minFat: minFat, maxFat: maxFat, minAlcohol: minAlcohol, maxAlcohol: maxAlcohol, minCaffeine: minCaffeine, maxCaffeine: maxCaffeine, minCopper: minCopper, maxCopper: maxCopper, minCalcium: minCalcium, maxCalcium: maxCalcium, minCholine: minCholine, maxCholine: maxCholine, minCholesterol: minCholesterol, maxCholesterol: maxCholesterol, minFluoride: minFluoride, maxFluoride: maxFluoride, minSaturatedFat: minSaturatedFat, maxSaturatedFat: maxSaturatedFat, minVitaminA: minVitaminA, maxVitaminA: maxVitaminA, minVitaminC: minVitaminC, maxVitaminC: maxVitaminC, minVitaminD: minVitaminD, maxVitaminD: maxVitaminD, minVitaminE: minVitaminE, maxVitaminE: maxVitaminE, minVitaminK: minVitaminK, maxVitaminK: maxVitaminK, minVitaminB1: minVitaminB1, maxVitaminB1: maxVitaminB1, minVitaminB2: minVitaminB2, maxVitaminB2: maxVitaminB2, minVitaminB5: minVitaminB5, maxVitaminB5: maxVitaminB5, minVitaminB3: minVitaminB3, maxVitaminB3: maxVitaminB3, minVitaminB6: minVitaminB6, maxVitaminB6: maxVitaminB6, minVitaminB12: minVitaminB12, maxVitaminB12: maxVitaminB12, minFiber: minFiber, maxFiber: maxFiber, minFolate: minFolate, maxFolate: maxFolate, minFolicAcid: minFolicAcid, maxFolicAcid: maxFolicAcid, minIodine: minIodine, maxIodine: maxIodine, minIron: minIron, maxIron: maxIron, minMagnesium: minMagnesium, maxMagnesium: maxMagnesium, minManganese: minManganese, maxManganese: maxManganese, minPhosphorus: minPhosphorus, maxPhosphorus: maxPhosphorus, minPotassium: minPotassium, maxPotassium: maxPotassium, minSelenium: minSelenium, maxSelenium: maxSelenium, minSodium: minSodium, maxSodium: maxSodium, minSugar: minSugar, maxSugar: maxSugar, minZinc: minZinc, maxZinc: maxZinc, offset: offset, number: number, random: random, limitLicense: limitLicense) { (response, error) in
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
 **minCarbs** | **Double** | The minimum amount of carbohydrates in grams the recipe must have. | [optional] 
 **maxCarbs** | **Double** | The maximum amount of carbohydrates in grams the recipe can have. | [optional] 
 **minProtein** | **Double** | The minimum amount of protein in grams the recipe must have. | [optional] 
 **maxProtein** | **Double** | The maximum amount of protein in grams the recipe can have. | [optional] 
 **minCalories** | **Double** | The minimum amount of calories the recipe must have. | [optional] 
 **maxCalories** | **Double** | The maximum amount of calories the recipe can have. | [optional] 
 **minFat** | **Double** | The minimum amount of fat in grams the recipe must have. | [optional] 
 **maxFat** | **Double** | The maximum amount of fat in grams the recipe can have. | [optional] 
 **minAlcohol** | **Double** | The minimum amount of alcohol in grams the recipe must have. | [optional] 
 **maxAlcohol** | **Double** | The maximum amount of alcohol in grams the recipe can have. | [optional] 
 **minCaffeine** | **Double** | The minimum amount of caffeine in milligrams the recipe must have. | [optional] 
 **maxCaffeine** | **Double** | The maximum amount of caffeine in milligrams the recipe can have. | [optional] 
 **minCopper** | **Double** | The minimum amount of copper in milligrams the recipe must have. | [optional] 
 **maxCopper** | **Double** | The maximum amount of copper in milligrams the recipe can have. | [optional] 
 **minCalcium** | **Double** | The minimum amount of calcium in milligrams the recipe must have. | [optional] 
 **maxCalcium** | **Double** | The maximum amount of calcium in milligrams the recipe can have. | [optional] 
 **minCholine** | **Double** | The minimum amount of choline in milligrams the recipe must have. | [optional] 
 **maxCholine** | **Double** | The maximum amount of choline in milligrams the recipe can have. | [optional] 
 **minCholesterol** | **Double** | The minimum amount of cholesterol in milligrams the recipe must have. | [optional] 
 **maxCholesterol** | **Double** | The maximum amount of cholesterol in milligrams the recipe can have. | [optional] 
 **minFluoride** | **Double** | The minimum amount of fluoride in milligrams the recipe must have. | [optional] 
 **maxFluoride** | **Double** | The maximum amount of fluoride in milligrams the recipe can have. | [optional] 
 **minSaturatedFat** | **Double** | The minimum amount of saturated fat in grams the recipe must have. | [optional] 
 **maxSaturatedFat** | **Double** | The maximum amount of saturated fat in grams the recipe can have. | [optional] 
 **minVitaminA** | **Double** | The minimum amount of Vitamin A in IU the recipe must have. | [optional] 
 **maxVitaminA** | **Double** | The maximum amount of Vitamin A in IU the recipe can have. | [optional] 
 **minVitaminC** | **Double** | The minimum amount of Vitamin C in milligrams the recipe must have. | [optional] 
 **maxVitaminC** | **Double** | The maximum amount of Vitamin C in milligrams the recipe can have. | [optional] 
 **minVitaminD** | **Double** | The minimum amount of Vitamin D in micrograms the recipe must have. | [optional] 
 **maxVitaminD** | **Double** | The maximum amount of Vitamin D in micrograms the recipe can have. | [optional] 
 **minVitaminE** | **Double** | The minimum amount of Vitamin E in milligrams the recipe must have. | [optional] 
 **maxVitaminE** | **Double** | The maximum amount of Vitamin E in milligrams the recipe can have. | [optional] 
 **minVitaminK** | **Double** | The minimum amount of Vitamin K in micrograms the recipe must have. | [optional] 
 **maxVitaminK** | **Double** | The maximum amount of Vitamin K in micrograms the recipe can have. | [optional] 
 **minVitaminB1** | **Double** | The minimum amount of Vitamin B1 in milligrams the recipe must have. | [optional] 
 **maxVitaminB1** | **Double** | The maximum amount of Vitamin B1 in milligrams the recipe can have. | [optional] 
 **minVitaminB2** | **Double** | The minimum amount of Vitamin B2 in milligrams the recipe must have. | [optional] 
 **maxVitaminB2** | **Double** | The maximum amount of Vitamin B2 in milligrams the recipe can have. | [optional] 
 **minVitaminB5** | **Double** | The minimum amount of Vitamin B5 in milligrams the recipe must have. | [optional] 
 **maxVitaminB5** | **Double** | The maximum amount of Vitamin B5 in milligrams the recipe can have. | [optional] 
 **minVitaminB3** | **Double** | The minimum amount of Vitamin B3 in milligrams the recipe must have. | [optional] 
 **maxVitaminB3** | **Double** | The maximum amount of Vitamin B3 in milligrams the recipe can have. | [optional] 
 **minVitaminB6** | **Double** | The minimum amount of Vitamin B6 in milligrams the recipe must have. | [optional] 
 **maxVitaminB6** | **Double** | The maximum amount of Vitamin B6 in milligrams the recipe can have. | [optional] 
 **minVitaminB12** | **Double** | The minimum amount of Vitamin B12 in micrograms the recipe must have. | [optional] 
 **maxVitaminB12** | **Double** | The maximum amount of Vitamin B12 in micrograms the recipe can have. | [optional] 
 **minFiber** | **Double** | The minimum amount of fiber in grams the recipe must have. | [optional] 
 **maxFiber** | **Double** | The maximum amount of fiber in grams the recipe can have. | [optional] 
 **minFolate** | **Double** | The minimum amount of folate in micrograms the recipe must have. | [optional] 
 **maxFolate** | **Double** | The maximum amount of folate in micrograms the recipe can have. | [optional] 
 **minFolicAcid** | **Double** | The minimum amount of folic acid in micrograms the recipe must have. | [optional] 
 **maxFolicAcid** | **Double** | The maximum amount of folic acid in micrograms the recipe can have. | [optional] 
 **minIodine** | **Double** | The minimum amount of iodine in micrograms the recipe must have. | [optional] 
 **maxIodine** | **Double** | The maximum amount of iodine in micrograms the recipe can have. | [optional] 
 **minIron** | **Double** | The minimum amount of iron in milligrams the recipe must have. | [optional] 
 **maxIron** | **Double** | The maximum amount of iron in milligrams the recipe can have. | [optional] 
 **minMagnesium** | **Double** | The minimum amount of magnesium in milligrams the recipe must have. | [optional] 
 **maxMagnesium** | **Double** | The maximum amount of magnesium in milligrams the recipe can have. | [optional] 
 **minManganese** | **Double** | The minimum amount of manganese in milligrams the recipe must have. | [optional] 
 **maxManganese** | **Double** | The maximum amount of manganese in milligrams the recipe can have. | [optional] 
 **minPhosphorus** | **Double** | The minimum amount of phosphorus in milligrams the recipe must have. | [optional] 
 **maxPhosphorus** | **Double** | The maximum amount of phosphorus in milligrams the recipe can have. | [optional] 
 **minPotassium** | **Double** | The minimum amount of potassium in milligrams the recipe must have. | [optional] 
 **maxPotassium** | **Double** | The maximum amount of potassium in milligrams the recipe can have. | [optional] 
 **minSelenium** | **Double** | The minimum amount of selenium in micrograms the recipe must have. | [optional] 
 **maxSelenium** | **Double** | The maximum amount of selenium in micrograms the recipe can have. | [optional] 
 **minSodium** | **Double** | The minimum amount of sodium in milligrams the recipe must have. | [optional] 
 **maxSodium** | **Double** | The maximum amount of sodium in milligrams the recipe can have. | [optional] 
 **minSugar** | **Double** | The minimum amount of sugar in grams the recipe must have. | [optional] 
 **maxSugar** | **Double** | The maximum amount of sugar in grams the recipe can have. | [optional] 
 **minZinc** | **Double** | The minimum amount of zinc in milligrams the recipe must have. | [optional] 
 **maxZinc** | **Double** | The maximum amount of zinc in milligrams the recipe can have. | [optional] 
 **offset** | **Int** | The number of results to skip (between 0 and 900). | [optional] 
 **number** | **Int** | The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]
 **random** | **Bool** | If true, every request will give you a random set of recipes within the requested limits. | [optional] 
 **limitLicense** | **Bool** | Whether the recipes should have an open license that allows display with proper attribution. | [optional] [default to true]

### Return type

[**Set<SearchRecipesByNutrients200ResponseInner>**](SearchRecipesByNutrients200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **summarizeRecipe**
```swift
    open class func summarizeRecipe(id: Int, completion: @escaping (_ data: SummarizeRecipe200Response?, _ error: Error?) -> Void)
```

Summarize Recipe

Automatically generate a short description that summarizes key information about the recipe.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Int | The item's id.

// Summarize Recipe
RecipesAPI.summarizeRecipe(id: id) { (response, error) in
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

[**SummarizeRecipe200Response**](SummarizeRecipe200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeEquipment**
```swift
    open class func visualizeEquipment(contentType: ContentType_visualizeEquipment? = nil, accept: Accept_visualizeEquipment? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Equipment Widget

Visualize the equipment used to make a recipe.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let contentType = "contentType_example" // String | The content type. (optional)
let accept = "accept_example" // String | Accept header. (optional)

// Equipment Widget
RecipesAPI.visualizeEquipment(contentType: contentType, accept: accept) { (response, error) in
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
 **accept** | **String** | Accept header. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizePriceBreakdown**
```swift
    open class func visualizePriceBreakdown(contentType: ContentType_visualizePriceBreakdown? = nil, accept: Accept_visualizePriceBreakdown? = nil, language: Language_visualizePriceBreakdown? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Price Breakdown Widget

Visualize the price breakdown of a recipe.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let contentType = "contentType_example" // String | The content type. (optional)
let accept = "accept_example" // String | Accept header. (optional)
let language = "language_example" // String | The language of the input. Either 'en' or 'de'. (optional)

// Price Breakdown Widget
RecipesAPI.visualizePriceBreakdown(contentType: contentType, accept: accept, language: language) { (response, error) in
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
 **accept** | **String** | Accept header. | [optional] 
 **language** | **String** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeEquipmentByID**
```swift
    open class func visualizeRecipeEquipmentByID(id: Int, defaultCss: Bool? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Equipment by ID Widget

Visualize a recipe's equipment list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Int | The item's id.
let defaultCss = false // Bool | Whether the default CSS should be added to the response. (optional) (default to true)

// Equipment by ID Widget
RecipesAPI.visualizeRecipeEquipmentByID(id: id, defaultCss: defaultCss) { (response, error) in
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

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeIngredientsByID**
```swift
    open class func visualizeRecipeIngredientsByID(id: Int, defaultCss: Bool? = nil, measure: Measure_visualizeRecipeIngredientsByID? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Ingredients by ID Widget

Visualize a recipe's ingredient list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Int | The item's id.
let defaultCss = false // Bool | Whether the default CSS should be added to the response. (optional) (default to true)
let measure = "measure_example" // String | Whether the the measures should be 'us' or 'metric'. (optional)

// Ingredients by ID Widget
RecipesAPI.visualizeRecipeIngredientsByID(id: id, defaultCss: defaultCss, measure: measure) { (response, error) in
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
 **measure** | **String** | Whether the the measures should be &#39;us&#39; or &#39;metric&#39;. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeNutrition**
```swift
    open class func visualizeRecipeNutrition(contentType: ContentType_visualizeRecipeNutrition? = nil, accept: Accept_visualizeRecipeNutrition? = nil, language: Language_visualizeRecipeNutrition? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Recipe Nutrition Widget

Visualize a recipe's nutritional information as HTML including CSS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let contentType = "contentType_example" // String | The content type. (optional)
let accept = "accept_example" // String | Accept header. (optional)
let language = "language_example" // String | The language of the input. Either 'en' or 'de'. (optional)

// Recipe Nutrition Widget
RecipesAPI.visualizeRecipeNutrition(contentType: contentType, accept: accept, language: language) { (response, error) in
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
 **accept** | **String** | Accept header. | [optional] 
 **language** | **String** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeNutritionByID**
```swift
    open class func visualizeRecipeNutritionByID(id: Int, defaultCss: Bool? = nil, accept: Accept_visualizeRecipeNutritionByID? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Recipe Nutrition by ID Widget

Visualize a recipe's nutritional information as HTML including CSS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Int | The item's id.
let defaultCss = false // Bool | Whether the default CSS should be added to the response. (optional) (default to true)
let accept = "accept_example" // String | Accept header. (optional)

// Recipe Nutrition by ID Widget
RecipesAPI.visualizeRecipeNutritionByID(id: id, defaultCss: defaultCss, accept: accept) { (response, error) in
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

# **visualizeRecipePriceBreakdownByID**
```swift
    open class func visualizeRecipePriceBreakdownByID(id: Int, defaultCss: Bool? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Price Breakdown by ID Widget

Visualize a recipe's price breakdown.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Int | The item's id.
let defaultCss = false // Bool | Whether the default CSS should be added to the response. (optional) (default to true)

// Price Breakdown by ID Widget
RecipesAPI.visualizeRecipePriceBreakdownByID(id: id, defaultCss: defaultCss) { (response, error) in
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

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeTaste**
```swift
    open class func visualizeRecipeTaste(language: Language_visualizeRecipeTaste? = nil, contentType: ContentType_visualizeRecipeTaste? = nil, accept: Accept_visualizeRecipeTaste? = nil, normalize: Bool? = nil, rgb: String? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Recipe Taste Widget

Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let language = "language_example" // String | The language of the input. Either 'en' or 'de'. (optional)
let contentType = "contentType_example" // String | The content type. (optional)
let accept = "accept_example" // String | Accept header. (optional)
let normalize = true // Bool | Whether to normalize to the strongest taste. (optional)
let rgb = "rgb_example" // String | Red, green, blue values for the chart color. (optional)

// Recipe Taste Widget
RecipesAPI.visualizeRecipeTaste(language: language, contentType: contentType, accept: accept, normalize: normalize, rgb: rgb) { (response, error) in
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
 **language** | **String** | The language of the input. Either &#39;en&#39; or &#39;de&#39;. | [optional] 
 **contentType** | **String** | The content type. | [optional] 
 **accept** | **String** | Accept header. | [optional] 
 **normalize** | **Bool** | Whether to normalize to the strongest taste. | [optional] 
 **rgb** | **String** | Red, green, blue values for the chart color. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualizeRecipeTasteByID**
```swift
    open class func visualizeRecipeTasteByID(id: Int, normalize: Bool? = nil, rgb: String? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Recipe Taste by ID Widget

Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SpoonacularAPIClient

let id = 987 // Int | The item's id.
let normalize = true // Bool | Whether to normalize to the strongest taste. (optional) (default to true)
let rgb = "rgb_example" // String | Red, green, blue values for the chart color. (optional)

// Recipe Taste by ID Widget
RecipesAPI.visualizeRecipeTasteByID(id: id, normalize: normalize, rgb: rgb) { (response, error) in
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
 **normalize** | **Bool** | Whether to normalize to the strongest taste. | [optional] [default to true]
 **rgb** | **String** | Red, green, blue values for the chart color. | [optional] 

### Return type

**String**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

