json.extract! user, :id, :full_name, :email, :number_of_books, :author, :title, :brief_prolong, :created_at, :updated_at
json.url user_url(user, format: :json)
