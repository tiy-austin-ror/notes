class Parser
  def parse(url)
    response = {}

    uri, params = url.split('?')

    protocol, remaining_url = uri.split(':')

    domain_pieces = remaining_url.split('.')

    tld_and_resources = domain_pieces.pop
    domain = domain_pieces.pop
    subdomain = domain_pieces.pop

    uri_fragments = tld_and_resources.split('/')

    tld = uri_fragments.shift
    resource = uri_fragments.shift
    id = uri_fragments.shift
    action = uri_fragments.shift

    response[:protocol] = protocol

    if subdomain
      response[:subdomain] = subdomain.delete('/')
    end

    response[:domain_name] = domain.delete('/')
    response[:tld] = tld

    response[:resource] = resource if resource
    response[:id] = id if id
    response[:action] = action if action

    if params
      split_params = params.split("&")
                           .map { |param| param.split("=") }
                           .map { |param| [param.first.to_sym, param.last] }
      params_hash = Hash[split_params]
      response[:params] = params_hash
    end


    response
  end
end
