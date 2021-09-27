Dado('que tem o JSON') do
    $uri_base = "http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup"
  end
  
  Quando('consultar pela chave') do
    $response = HTTParty.get($uri_base)
  end
  
  Entao('retornar a chave consultada') do
    #log "response body #{$response.body}"
    #log "response code #{$response.code}"
    #log "response message :#{response.message}"
    #log "response headers :#{response.headers}"

   
        
  end