require "rails_helper"

RSpec.describe Api::V1::UsersController, type: :controller do
  describe "GET #index" do
    before do
      @alice = create(:user)
      @bob = create(:user)
      get :index
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "returns json param" do
      json = JSON.parse(response.body)
      expect(json["status"]).to eq(true)
      expect(json["users"].length).to eq(2)
      json["users"].each do |user|
        expect(user["name"]).to match(/name-[0-9]+/i)
        expect(user["email"]).to match URI::MailTo::EMAIL_REGEXP
      end
    end
  end

  describe "POST #create" do
    it "return status true" do
      post :create, body: { user: { name: "user",
                                    email: "user@mail.com",
                                    password: "password",
                                    password_confirmation: "password" } }.to_json
      json = JSON.parse(response.body)
      expect(json["status"]).to eq(true)
      expect(json["id"]).to be_a_kind_of(Integer)
    end

    it "return status false without name" do
      post :create, body: { user: { name: "",
                                    email: "user@mail.com",
                                    password: "password",
                                    password_confirmation: "password" } }.to_json
      json = JSON.parse(response.body)
      expect(json["status"]).to eq(false)
    end

    it "return status false without email" do
      post :create, body: { user: { name: "user",
                                    email: "",
                                    password: "password",
                                    password_confirmation: "password" } }.to_json
      json = JSON.parse(response.body)
      expect(json["status"]).to eq(false)
    end
    it "return status false with not valid email" do
      post :create, body: { user: { name: "user",
                                    email: "aaa@l@mail",
                                    password: "password",
                                    password_confirmation: "password" } }.to_json
      json = JSON.parse(response.body)
      expect(json["status"]).to eq(false)
    end
    it "return status false with short password" do
      post :create, body: { user: { name: "user",
                                    email: "aaa@l@mail",
                                    password: "pass",
                                    password_confirmation: "pass" } }.to_json
      json = JSON.parse(response.body)
      expect(json["status"]).to eq(false)
    end
    it "return status false with not valid confirm" do
      post :create, body: { user: { name: "user",
                                    email: "aaa@l@mail",
                                    password: "password",
                                    password_confirmation: "passw0rd" } }.to_json
      json = JSON.parse(response.body)
      expect(json["status"]).to eq(false)
    end
  end
end
