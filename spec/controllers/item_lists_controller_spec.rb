require 'rails_helper' 

describe ItemListsController, type: :controller do
    describe 'GET #new' do
        it "renders the :new template" do
            get :new
            expect(response).to render_template :new
        end 
    end 

    describe 'GET #edit' do
        it "assigns the requested item_list to @item_list" do

            @user = FactoryBot.create(:user)
            item_list = create(:item_list, user_id: @user.id) 

            get :edit, params: { id: item_list }
            expect(assigns(:item_list)).to eq item_list
        end

        it "renders the :edit template" do

            @user = FactoryBot.create(:user)
            item_list = create(:item_list, user_id: @user.id) 

            get :edit, params: { id: item_list } 
            expect(response).to render_template :edit
        end
    end

end