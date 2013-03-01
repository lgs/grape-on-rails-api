class API < Grape::API
  
  version 'v1', :using => :path
  format :json
  
  resource 'categories' do
    # http://localhost:3000/v1/categories/
    get "/" do
      Category.all.map{|c|c}
    end
  end
end

