Dado('que tem o JSON') do
    $uri_base = "http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup"
  end
  
  Quando('consultar pela chave') do
    $response = HTTParty.get($uri_base)
  end
  
  Entao('retornar a chave consultada') do

    #validar o retorno 200 e a mensagem de Ok
    expect($response.code).to eq (200)
    log "Response code: #{$response.code}"
    expect($response.message).to eq ("Ok")
    log "Response Message: #{$response.message}"

    #log "response body #{$response.body}"
    #log "response code #{$response.code}"
    #log "response message :#{response.message}"
    #log "response headers :#{response.headers}"

    #Imprimir a chave "typeOfEstablishment"
    log "TypeOfEstablishment  : #{$response["typeOfEstablishment"]}"
    log "Key                  : #{$response["key"]}"
    log "Name                 : #{$response["name"]}"
    log "Label                : #{$response["label"]}"
        
  end