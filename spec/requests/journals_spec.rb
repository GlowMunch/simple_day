 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/journals", type: :request do
  # Journal. As you add validations to Journal, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Journal.create! valid_attributes
      get journals_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      journal = Journal.create! valid_attributes
      get journal_url(journal)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_journal_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      journal = Journal.create! valid_attributes
      get edit_journal_url(journal)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Journal" do
        expect {
          post journals_url, params: { journal: valid_attributes }
        }.to change(Journal, :count).by(1)
      end

      it "redirects to the created journal" do
        post journals_url, params: { journal: valid_attributes }
        expect(response).to redirect_to(journal_url(Journal.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Journal" do
        expect {
          post journals_url, params: { journal: invalid_attributes }
        }.to change(Journal, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post journals_url, params: { journal: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested journal" do
        journal = Journal.create! valid_attributes
        patch journal_url(journal), params: { journal: new_attributes }
        journal.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the journal" do
        journal = Journal.create! valid_attributes
        patch journal_url(journal), params: { journal: new_attributes }
        journal.reload
        expect(response).to redirect_to(journal_url(journal))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        journal = Journal.create! valid_attributes
        patch journal_url(journal), params: { journal: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested journal" do
      journal = Journal.create! valid_attributes
      expect {
        delete journal_url(journal)
      }.to change(Journal, :count).by(-1)
    end

    it "redirects to the journals list" do
      journal = Journal.create! valid_attributes
      delete journal_url(journal)
      expect(response).to redirect_to(journals_url)
    end
  end
end
