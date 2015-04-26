require 'rails helper'

Rspec.describe CardsController, type: :controller do 
	let (:valid_attributes) {
		{
	title: "card",
    body: "paragraph",
    project_id: "1",
    position: "place_in_sort"
	}
  }
	let(:invalid_attributes) {
    @invalid_attributes = {
      username: nil
    }
  }


	describe "PUTS update" do
		describe with valid params do
		it "updates the requested card" do
        	put :update, {id: card.to_param, card: attributes_for(card: :title, :body)}, valid_session
        	expect(card.title.body).to eq("card")
			end

		it "updates the requested card as @card" do
			 put :update, {id: card.to_param, card: attributes_for(card: :title, :body)}, valid_session
        		expect(assigns(:card)).to eq(card)
        	end

       	it "redirects to the card" do
        	put :update, {id: card.to_param, card: attributes_for(card: :title, :body)}, valid_session
        	expect(response).to redirect_to(card)
        end
	end

		describe with invalid params do
			it "assigns the card as @card" do
			card = Card.create! valid_attributes
        	put :update, {id: card.to_param, card: attributes_for(card: :title, :body)}, valid_session
        	expect(assigns(:card)).to eq(card)
			end

			it "re-renders the'edit" template do
				card = Card.create! valid_attributes
				put :update, {id: card.to_param, card: attributes_for(card: :title, :body)}, valid_session
				expect(response).to render_template("edit")
			end
		end
	end


	describe "POST create" do
		describe "with valid params" do

		it "creates a new card" do
			expect {
				post :create, {card: valid_attributes, valid_session
				}.to change(Card :count).by (1)		
		end

		it "assigns a new card as @card" do
			post :create, {card: valid attributes}, valid_session
			expect(assigns(:card)).to be_a(Card)
			expect(assigns(:card)).to be_persisted
		end

		it "redirects to the created card" do 
			post :create, {card: valid attributes}, valid_session
			 expect(response).to redirect_to(Card.last)

		end
	end
end


	describe "DELETE destroy" do
		it "destroys the requested card" do
		end
	end

	describe "GET sort" do
		it "sorts all cards" do
			get :sort
			expect(response).to   []
		end
	end

end
	

