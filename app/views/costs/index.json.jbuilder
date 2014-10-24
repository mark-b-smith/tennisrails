json.array!(@costs) do |cost|
  json.extract! cost, :id, :cost, :asOf, :active
  json.url cost_url(cost, format: :json)
end
