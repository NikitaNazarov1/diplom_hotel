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

describe Admin::AccommodationsController do

  before do
    sign_in create(:user, role: :receptionist)
  end

  # This should return the minimal set of attributes required to create a valid
  # Accommodation. As you add validations to Accommodation, be sure to
  # adjust the attributes here as well.
  let!(:category) { create(:room_category_with_rooms) }
  let!(:reservation) { create(:reservation, room_category: category) }
  let(:accommodation_attributes) { {} }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AccommodationsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET index' do
    it 'assigns all accommodations as @accommodations' do
      accommodation = create(:accommodation)
      get :index, {}, valid_session
      expect(assigns(:accommodations)).to eq([accommodation])
    end
  end

  describe 'GET show' do
    it 'assigns the requested accommodation as @accommodation' do
      accommodation = create(:accommodation)
      get :show, {id: accommodation.to_param}, valid_session
      expect(assigns(:accommodation)).to eq(accommodation)
    end
  end

  describe 'GET new' do
    describe 'with reservation' do
      it 'assigns a new accommodation as @accommodation' do
        get :new, {reservation_id: reservation.id}, valid_session
        expect(assigns(:accommodation)).to be_a_new(Accommodation)
      end
    end

    describe 'without reservation' do
      it 'assigns a new accommodation as @accommodation' do
        get :new, {}, valid_session
        expect(assigns(:accommodation)).to be_a_new(Accommodation)
      end
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      describe 'from reservation' do
        let(:valid_attributes) { {
            accommodation: accommodation_attributes.merge(
                reservation_id: reservation.id,
                client_attributes: {
                    birthday: '1990-10-25',
                    passport_attributes: attributes_for(:passport)
                }
            )
        } }

        it 'creates a new Accommodation' do
          expect {
            post :create, valid_attributes, valid_session
          }.to change(Accommodation, :count).by(1)
        end

        it 'assigns a newly created accommodation as @accommodation' do
          post :create, valid_attributes, valid_session
          expect(assigns(:accommodation)).to be_a(Accommodation)
          expect(assigns(:accommodation)).to be_persisted
        end

        it 'get client from reservation and updates his attributes' do
          post :create, valid_attributes, valid_session
          client = assigns(:accommodation).client
          expect(client).to eq reservation.client
          expect(client.birthday).to eq Date.parse('1990-10-25')
        end
      end

      describe 'without reservation' do
        let(:valid_attributes) { {
            accommodation: attributes_for(:accommodation,
                                          client_attributes: attributes_for(:client_for_accommodation),
                                          placements_attributes: [attributes_for(:placement, room_category_id: category.id)])
        } }
        it 'creates a new Accommodation' do
          expect {
            post :create, valid_attributes, valid_session
          }.to change(Accommodation, :count).by(1)
        end

        it 'assigns a newly created accommodation as @accommodation' do
          post :create, valid_attributes, valid_session
          expect(assigns(:accommodation)).to be_a(Accommodation)
          expect(assigns(:accommodation)).to be_persisted
        end

        it 'redirects to the created accommodation' do
          post :create, valid_attributes, valid_session
          expect(response).to redirect_to([:admin, Accommodation.last])
        end
      end
    end

    describe 'with invalid params' do
      describe 'from reservation' do
        let(:invalid_attributes) { {
            accommodation: {
                reservation_id: reservation.id
            }
        } }

        it "re-renders the 'new_from_reservation' template" do
          # Trigger the behavior that occurs when invalid params are submitted
          post :create, invalid_attributes, valid_session
          expect(response).to render_template('new_from_reservation')
        end
      end

      describe 'without reservation' do
        let(:invalid_attributes) { {accommodation: {fail: false}} }

        it 'assigns a newly created but unsaved accommodation as @accommodation' do
          # Trigger the behavior that occurs when invalid params are submitted
          post :create, invalid_attributes, valid_session
          expect(assigns(:accommodation)).to be_a_new(Accommodation)
        end

        it "re-renders the 'new' template" do
          # Trigger the behavior that occurs when invalid params are submitted
          post :create, invalid_attributes, valid_session
          expect(response).to render_template('new')
        end
      end
    end
  end

  describe 'PATCH finish' do
    it 'finishes the requested accommodation' do
      accommodation = create(:accommodation)
      expect {
        patch :finish, {:id => accommodation.to_param}, valid_session
      }.to change(Accommodation, :count).by(-1)
    end

    it 'redirects to the reservations list' do
      accommodation = create(:accommodation)
      patch :finish, {:id => accommodation.to_param}, valid_session
      expect(response).to redirect_to(admin_accommodations_url)
    end
  end

end
