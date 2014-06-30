module GibbonExample
  class Newsletter
    def self.subscribe(list_id: list_id, email: email)
      new(list_id)
    end

    def initialize(list_id, api_client: Gibbon::API)
      @list_id = list_id
      @api_client = api_client.new
    end

    def subscribe(email)
      api_client.lists.subscribe({ id: list_id, email: { email: email }, :double_optin => false })
    end

    def api_client
      @api_client
    end

    def list_id
      @list_id
    end
  end
end
