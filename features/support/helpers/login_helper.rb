module Login

  def access_login_page
    visit "/"
  end

  def login_page_fill_email
    fill_in "email", :with => "keong1@mailinator.com"
  end

  def login_page_fill_password
    fill_in "password", :with => "654321"
  end

  def login_page_click_login
    find('.btn.btn-primary.btn-block.has-spinner').click
  end

  def access_dashboard_page
    page.should have_content('Dashboard')
    top_loading_bar
    sleep 3
  end
end