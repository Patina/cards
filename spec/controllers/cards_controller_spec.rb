require 'rails helper'

Rspec.describe CardsController, type: :controller do 
	let(:valid_session) { {project_id: 1} }


	describe "PUTS update" do
		it "updates the requested card" do
        	put :update, {project_id: card.to_param, card: attributes_for(card: :title, :body)}, valid_session
        	expect(card.name.title).to eq("card")
			end

		it "updates the requested card as @card" do
			 put :update, {project_id: card.to_param, card: attributes_for(card: :title, :body)}, valid_session
        		expect(assigns(:card)).to eq(card)
        	end

       	it "redirects to the card" do
        	put :update, {project_id: card.to_param, card: attributes_for(card: :title, :body)}, valid_session
        	expect(response).to redirect_to(card)
        end
      end


	end

	describe "POST create" do
		it "creates a new Card" do
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
	
