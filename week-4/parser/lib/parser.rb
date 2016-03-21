class Parser
  def initialize(url_string)
    @url_string = url_string
  end

  def request
    url_hash = {}
    protocol, uri = @url_string.split('://')

    url_hash.store(:protocol, protocol)
    url_hash.store(:host, uri.split('/').first)


    # google.com

    host_info, *resource_fragments = uri.split('/')

    domain_tld_and_resource_fragments = host_info.split('.')

    tld = domain_tld_and_resource_fragments.pop
    domain_name = domain_tld_and_resource_fragments.pop

    subdomains = []
    until domain_tld_and_resource_fragments.empty?
      subdomains << domain_tld_and_resource_fragments.pop
    end

    unless resource_fragments.empty?
      resource, id = resource_fragments
      url_hash.store(:resource, resource) unless resource.nil?
      url_hash.store(:id, id) unless id.nil?
    end

    url_hash.store(:subdomain, subdomains.join('.')) unless subdomains.empty?
    url_hash.store(:domain_name, domain_name)
    url_hash.store(:tld, tld)

    return url_hash
  end
end
