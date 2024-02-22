
b = [1,1,2,2,3,3,4,4,5,5]
l = b.length
array =[]
m = 0
while(m<l) do
  if (b[m] == b[m+1])
    array << b[m+1]
  end
  m+=1
end

p array


describe "GET #search" do
    it "valid list of search" do
      query = "test"
      search_data = query.downcase
      get :search, params: {token: @token, query: search_data}, as: :json
      @user_posts = BxBlockPosts::Post.where('LOWER(name) LIKE :search OR LOWER(description) LIKE :search', search: "%#{search_data}%").all
      @user_accounts = AccountBlock::Account.where('LOWER(first_name) LIKE :search OR LOWER(last_name) LIKE :search OR LOWER(user_name) LIKE :search OR LOWER(email) LIKE :search', search: "%#{search_data}%").all
      expect(response).to have_http_status(200)
      response_json = JSON.parse(response.body)
      expect(response_json.present?).to eq(true)
    end
  end
