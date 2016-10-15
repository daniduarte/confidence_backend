class RegistrationsController < Devise::RegistrationsController
  def get_meli_auth_url    
    meli = Meli.new(1213949921402143, 'VT2tlhth0TLDe99pojRvhtb4szSSVhhq')
    auth_url = meli.auth_url(params[:callbackUrl].gsub("'", '').to_s, 'CL')
    render json: { url: auth_url }
  end

  def connect_with_meli
    meli = Meli.new(1213949921402143, 'VT2tlhth0TLDe99pojRvhtb4szSSVhhq')
    meli.authorize(params['code'], CALLBACK_URI)
    render json: 'test'
  end
end 

# get '/authorize' do
#     content_type :text
#     settings.meli.authorize(params["code"], CALLBACK_URI) if params["code"]
#     #Don't Forget to Save this data!
#     "SUCESS! Token: #{settings.meli.access_token} RefresToken: #{settings.meli.refresh_token}"
# end

# get '/login' do
#     "<a href='#{settings.meli.auth_url(CALLBACK_AUTHORIZE)}'>Login</a>"
# end