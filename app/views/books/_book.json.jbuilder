json.extract! book, :id, :availability, :author, :genre, :title, :copies_available, :created_at, :updated_at
json.url book_url(book, format: :json)
