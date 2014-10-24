json.array!(@terms) do |term|
  json.extract! term, :id, :title, :sDate, :eDate
  json.url term_url(term, format: :json)
end
