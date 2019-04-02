require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  context 'user controller CRUD routes' do
    describe 'GET #index' do
      it 'populates an array of users'
      it 'renders json'
      it 'renders the :index view'
    end
    describe 'GET #show' do
      it 'assigns the requested contact to @contact'
      it 'renders json'
      it 'renders the :show template'
    end
    describe 'GET #new' do
      it 'assigns a new Contact to @contact'
      it 'renders json'
      it 'renders the :new template'
    end
    describe 'POST #create' do
      context 'with valid attributes' do
      it 'saves the new contact in the database'
      it 'renders json'
      it 'redirects to the home page'
    end
  
    context 'without valid attributes' do
      it 'does not save the new contact in the database'
      it 'renders the correct json response'
      it 're-renders the :new template'
    end
  end
    describe 'PATCH #edit' do
      context 'with valid attributes' do
      it 'updates the user in the database'
      it 'renders json'
      it 'redirects to the show page'
      it 'renders the :edit template'
    end
  
    context 'without valid attributes' do
      it 'does not update the user in the database'
      it 'renders the correct json response'
      it 're-renders the :edit template'
    end
  end
 
    describe 'DELETE #destroy' do
      it 'removes user from the database'
      it 'renders json success message'
      it 'redirects to the index page'
    end

  end
end
