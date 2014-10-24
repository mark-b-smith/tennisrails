json.array!(@matches) do |match|
  json.extract! match, :id, :t11, :t12, :t1s, :t21, :t22, :t2s, :match_date, :doubles
  json.url match_url(match, format: :json)
end
