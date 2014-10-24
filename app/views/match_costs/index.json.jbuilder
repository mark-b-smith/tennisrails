json.array!(@match_costs) do |match_cost|
  json.extract! match_cost, :id, :cost_code, :mID
  json.url match_cost_url(match_cost, format: :json)
end
