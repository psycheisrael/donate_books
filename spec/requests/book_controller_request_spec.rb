require 'rails_helper'
RSpec.describe "BooksControllers", type: :request do
  describe "get books_path" do
    it "renders the index view" do
      FactoryBot.create_list(:book, 10)
      get books_path
      expect(response.status).to eq(200)
    end
  end
  describe "get book_path" do
    it "renders the :show template" do
      book = FactoryBot.create(:book)
      get book_path(id: book.id)
      expect(response.status).to eq(200)
    end
    #it "redirects to the index path if the user id is invalid" do
    #  get userrs_path(id: 5000) #an ID that doesn't exist
    #  expect(response).to redirect_to books_path
  #end
  end
  describe "get new_books_path" do
    it "renders the :new template" do
      #order = FactoryBot.create(:order)
      get new_book_path
      expect(response.status).to eq(200)
    end
  end
  describe "get edit_books_path" do
    it "renders the :edit template" do
      book = FactoryBot.create(:book)
      get book_path(id: book.id)
      expect(response.status).to eq(200)
    end
  end
  describe "post books_path with valid data" do
    it "saves a new entry and redirects to the show path for the entry" do
      book_attributes = FactoryBot.attributes_for(:book)
      expect { post books_path, params: {book: book_attributes}
    }.to change(Book, :count)
      expect(response).to redirect_to book_path(id: Book.last.id)
    end
  end
  describe "post books_path with invalid data" do
    it "does not save a new entry or redirect" do
      book_attributes = FactoryBot.attributes_for(:book)
      book_attributes.delete(:author)
      expect { post books_path, params: {book: book_attributes}
    }.to_not change(Book, :count)
      expect(response.status).to eq(200)
    end
  end
  describe "put book_path with valid data" do
    it "updates an entry and redirects to the show path for the book" do
      book = FactoryBot.create(:book)
      put book_path(id: book.id), params: {book: {copies_available: 4}}
      book.reload
      expect(book.copies_available).to eq(4)
      expect(response.status).to redirect_to book_path(id: book.id)
    end
  end
  describe "put book_path with invalid data" do
    it "does not update the user record or redirect" do
      book = FactoryBot.create(:book)
      put book_path(id: book.id), params: {book: {author: ""}}
      book.reload
      expect(book.author).to_not eq("")
      expect(response.status).to eq(200)
    end
  end
  describe "delete a book record" do
    it "deletes a book record" do
      book = FactoryBot.create(:book)
      expect { delete book_path(id: book.id)
      }.to change(Book, :count)
      expect(response.status).to redirect_to books_path
    end
  end
end
