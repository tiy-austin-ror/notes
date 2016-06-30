require 'minitest/autorun'
require 'minitest/pride'

module T
  def T.empty_request(hsh = {})
    {
      method: 'GET',
      route: '',
      paths: [],
      query: '',
      format: '',
      raw_request: {},
      params: {},
    }.merge(hsh)
  end
end


