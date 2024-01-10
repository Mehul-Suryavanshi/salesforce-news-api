public class NewsApiCallout {

    public static void doTopHeadlinesCallout(){
        
        //if(requestWrapper == null){
        //    return;
        //}
        String apikey = 'a91099f87bf54b14a4ce98751e075b5e';
        NewsApiTopHeadlinesRequestWrapper requestWrapper = new NewsApiTopHeadlinesRequestWrapper();
        requestWrapper.q = 'q=bitcoin';
        requestWrapper.language = 'language=en';
        requestWrapper.country = 'country=in';
        
        String authorizationHeader = 'Bearer ' + apikey;
        String endpoint = 'https://newsapi.org/v2/top-headlines?' + requestWrapper.q + '&' + requestWrapper.language + '&' + requestWrapper.country;
        HttpRequest req = new HttpRequest();
     	req.setEndpoint(endpoint);
     	req.setMethod('GET');
        req.setHeader('Authorization',authorizationHeader);
        
        Http http = new Http();
        HttpResponse response = http.send(req);
        System.debug(response?.getBody());
        
    }
}