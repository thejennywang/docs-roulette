class HelpscoutArticleFetcher

  BASE_URI = 'https://docsapi.helpscout.net/v1/'
  HELPSCOUT_API_KEY = Rails.application.secrets.helpscout_api_key

  def articles
    collection_ids.flat_map do |collection_id|
      get_all_articles_for(collection_id)
    end
  end

  def get_all_articles_for(collection_id)
    current_page = 1
    total_pages = 100

    articles = []
    while current_page < total_pages
      puts current_page
      body = get("collections/#{collection_id}/articles?page=#{current_page}&pageSize=100")['articles']
      total_pages = body['pages']
      current_page = current_page +  1 
      articles = articles + body['items']
    end

    articles
  end
  
  def collection_ids
    get('collections')['collections']['items'].map{|x| x['id']}
  end
  
  def get(path)
    body = conn.get(BASE_URI + path).body
    JSON.parse(body)
  end

  def conn
    conn = Faraday.new(:url => BASE_URI) do |faraday|
      faraday.basic_auth  HELPSCOUT_API_KEY, 'dummy'
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end
  end
end