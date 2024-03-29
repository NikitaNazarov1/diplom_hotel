require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe Admin::RoomsController do

  let!(:category) { create(:room_category) }
  let(:valid_attributes) { attributes_for(:room) }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RoomsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  before do
    sign_in create(:admin)
  end

  describe 'GET index' do
    it 'assigns all rooms as @rooms' do
      room = create(:room, category: category)
      get :index, {room_category_id: category}, valid_session
      expect(assigns(:rooms)).to eq([room])
    end
  end

  describe 'GET new' do
    it 'assigns a new rooms form as @rooms_form' do
      get :new, {room_category_id: category.id}, valid_session
      expect(assigns(:rooms_form)).to be_a(RoomsForm)
    end
  end

  describe 'DELETE destroy_multiple' do
    before { request.env['HTTP_REFERER'] = 'where_i_came_from' }
    let!(:room) { create(:room, category: category)}

    it 'destroys the requested rooms' do
      expect {
        delete :destroy_multiple, {room_category_id: category, rooms_for_destroy: [room.id]}, valid_session
      }.to change(Room, :count).by(-1)
    end

    it 'redirects back' do
      delete :destroy_multiple, {room_category_id: category, rooms_for_destroy: [room.id]}, valid_session
      expect(response).to redirect_to('where_i_came_from')
    end
  end

end
