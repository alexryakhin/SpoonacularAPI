//
// DefaultAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class DefaultAPI {

    /**
     Analyze Recipe
     
     - parameter analyzeRecipeRequest: (body) Example request body. 
     - parameter language: (query) The input language, either \&quot;en\&quot; or \&quot;de\&quot;. (optional)
     - parameter includeNutrition: (query) Whether nutrition data should be added to correctly parsed ingredients. (optional)
     - parameter includeTaste: (query) Whether taste data should be added to correctly parsed ingredients. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func analyzeRecipe(analyzeRecipeRequest: AnalyzeRecipeRequest, language: String? = nil, includeNutrition: Bool? = nil, includeTaste: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return analyzeRecipeWithRequestBuilder(analyzeRecipeRequest: analyzeRecipeRequest, language: language, includeNutrition: includeNutrition, includeTaste: includeTaste).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Analyze Recipe
     - POST /recipes/analyze
     - This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: apiKeyScheme
     - externalDocs: class ExternalDocumentation {
    description: Read entire docs
    url: https://spoonacular.com/food-api/docs#Analyze-Recipe
}
     - parameter analyzeRecipeRequest: (body) Example request body. 
     - parameter language: (query) The input language, either \&quot;en\&quot; or \&quot;de\&quot;. (optional)
     - parameter includeNutrition: (query) Whether nutrition data should be added to correctly parsed ingredients. (optional)
     - parameter includeTaste: (query) Whether taste data should be added to correctly parsed ingredients. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func analyzeRecipeWithRequestBuilder(analyzeRecipeRequest: AnalyzeRecipeRequest, language: String? = nil, includeNutrition: Bool? = nil, includeTaste: Bool? = nil) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/recipes/analyze"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: analyzeRecipeRequest)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "language": (wrappedValue: language?.encodeToJSON(), isExplode: false),
            "includeNutrition": (wrappedValue: includeNutrition?.encodeToJSON(), isExplode: false),
            "includeTaste": (wrappedValue: includeTaste?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create Recipe Card
     
     - parameter id: (path) The recipe id. 
     - parameter mask: (query) The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;). (optional)
     - parameter backgroundImage: (query) The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;). (optional)
     - parameter backgroundColor: (query) The background color for the recipe card as a hex-string. (optional)
     - parameter fontColor: (query) The font color for the recipe card as a hex-string. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createRecipeCardGet(id: Double, mask: String? = nil, backgroundImage: String? = nil, backgroundColor: String? = nil, fontColor: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return createRecipeCardGetWithRequestBuilder(id: id, mask: mask, backgroundImage: backgroundImage, backgroundColor: backgroundColor, fontColor: fontColor).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Recipe Card
     - GET /recipes/{id}/card
     - Generate a recipe card for a recipe.
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: apiKeyScheme
     - externalDocs: class ExternalDocumentation {
    description: Read entire docs
    url: https://spoonacular.com/food-api/docs#Create-Recipe-Card
}
     - parameter id: (path) The recipe id. 
     - parameter mask: (query) The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;). (optional)
     - parameter backgroundImage: (query) The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;). (optional)
     - parameter backgroundColor: (query) The background color for the recipe card as a hex-string. (optional)
     - parameter fontColor: (query) The font color for the recipe card as a hex-string. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func createRecipeCardGetWithRequestBuilder(id: Double, mask: String? = nil, backgroundImage: String? = nil, backgroundColor: String? = nil, fontColor: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/recipes/{id}/card"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "mask": (wrappedValue: mask?.encodeToJSON(), isExplode: false),
            "backgroundImage": (wrappedValue: backgroundImage?.encodeToJSON(), isExplode: false),
            "backgroundColor": (wrappedValue: backgroundColor?.encodeToJSON(), isExplode: false),
            "fontColor": (wrappedValue: fontColor?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Search Restaurants
     
     - parameter query: (query) The search query. (optional)
     - parameter lat: (query) The latitude of the user&#39;s location. (optional)
     - parameter lng: (query) The longitude of the user&#39;s location.\&quot;. (optional)
     - parameter distance: (query) The distance around the location in miles. (optional)
     - parameter budget: (query) The user&#39;s budget for a meal in USD. (optional)
     - parameter cuisine: (query) The cuisine of the restaurant. (optional)
     - parameter minRating: (query) The minimum rating of the restaurant between 0 and 5. (optional)
     - parameter isOpen: (query) Whether the restaurant must be open at the time of search. (optional)
     - parameter sort: (query) How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;. (optional)
     - parameter page: (query) The page number of results. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func searchRestaurants(query: String? = nil, lat: Double? = nil, lng: Double? = nil, distance: Double? = nil, budget: Double? = nil, cuisine: String? = nil, minRating: Double? = nil, isOpen: Bool? = nil, sort: String? = nil, page: Double? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: SearchRestaurants200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return searchRestaurantsWithRequestBuilder(query: query, lat: lat, lng: lng, distance: distance, budget: budget, cuisine: cuisine, minRating: minRating, isOpen: isOpen, sort: sort, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Search Restaurants
     - GET /food/restaurants/search
     - Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: apiKeyScheme
     - externalDocs: class ExternalDocumentation {
    description: Read entire docs
    url: https://spoonacular.com/food-api/docs#Search-Restaurants
}
     - parameter query: (query) The search query. (optional)
     - parameter lat: (query) The latitude of the user&#39;s location. (optional)
     - parameter lng: (query) The longitude of the user&#39;s location.\&quot;. (optional)
     - parameter distance: (query) The distance around the location in miles. (optional)
     - parameter budget: (query) The user&#39;s budget for a meal in USD. (optional)
     - parameter cuisine: (query) The cuisine of the restaurant. (optional)
     - parameter minRating: (query) The minimum rating of the restaurant between 0 and 5. (optional)
     - parameter isOpen: (query) Whether the restaurant must be open at the time of search. (optional)
     - parameter sort: (query) How to sort the results, one of the following &#39;cheapest&#39;, &#39;fastest&#39;, &#39;rating&#39;, &#39;distance&#39; or the default &#39;relevance&#39;. (optional)
     - parameter page: (query) The page number of results. (optional)
     - returns: RequestBuilder<SearchRestaurants200Response> 
     */
    open class func searchRestaurantsWithRequestBuilder(query: String? = nil, lat: Double? = nil, lng: Double? = nil, distance: Double? = nil, budget: Double? = nil, cuisine: String? = nil, minRating: Double? = nil, isOpen: Bool? = nil, sort: String? = nil, page: Double? = nil) -> RequestBuilder<SearchRestaurants200Response> {
        let localVariablePath = "/food/restaurants/search"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "query": (wrappedValue: query?.encodeToJSON(), isExplode: false),
            "lat": (wrappedValue: lat?.encodeToJSON(), isExplode: false),
            "lng": (wrappedValue: lng?.encodeToJSON(), isExplode: false),
            "distance": (wrappedValue: distance?.encodeToJSON(), isExplode: false),
            "budget": (wrappedValue: budget?.encodeToJSON(), isExplode: false),
            "cuisine": (wrappedValue: cuisine?.encodeToJSON(), isExplode: false),
            "min-rating": (wrappedValue: minRating?.encodeToJSON(), isExplode: false),
            "is-open": (wrappedValue: isOpen?.encodeToJSON(), isExplode: false),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: false),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SearchRestaurants200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
