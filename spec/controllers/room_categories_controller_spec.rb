require 'spec_helper'

describe RoomCategoriesController do

  describe 'GET index' do
    it 'assigns all room_categories as @room_categories' do
      room_category = create(:room_category)
      get :index
      expect(assigns(:room_categories)).to eq([room_category])
    end
  end

end
