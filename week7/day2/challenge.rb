input = "[FooBar Inc] Acme LLC (John Doe, Jane Pool, Sr.) Manager;[FooBar Inc] Holiday III Inc(Cindy Smith, John Lock) Advisor;"


def parse_data(str)
  entries = str.split(';')

  entries.map do |entry|
    target_company, rest = entry.split(']')
    target_b, people_and_role = rest.split('(')
    people, role = people_and_role.split(')')

    {
      target_company: target_company.delete('['),
      company_b: target_b.strip,
      people: people.split(',').map(&:strip),
      role: role.strip
    }
  end
end


puts parse_data(input).inspect
