# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


<!DOCTYPE html>
<html>
  <head>
    <title>Bookers2</title>
    <%= csrf_meta_tags %>
    <%= csp_meta_tag %>

    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
  </head>
  
<header>
  <body class="d-flex flex-column vh-100">
  <% if user_signed_in? %>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand" href="/"><span>Bookers</span></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav ml-auto">
          <li><%= link_to "Home", destroy_user_session_path, method: :delete %></li>
          <li><%= link_to "Users", destroy_user_session_path, method: :delete %></li>
          <li><%= link_to "Books", destroy_user_session_path, method: :delete %></li>
          <li><%= link_to "logout", destroy_user_session_path, method: :delete %></li>
        </ul>
      </div>
    </div>
  </nav>

  <li>
    
  </li>
  <li>
    
  </li>
  <li>
    
  </li>
  <li>
    
  </li>

  <% else %>
  
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand" href="/"><span>Bookers</span></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav ml-auto">
          <li><a class="fas fa-home nav-link text-light" href="/"> Home</a></li>
          <li><a class="fas fa-link nav-link text-light" href="/homes/about"> About</a></li>
          <li><a class="fas fa-user-plus nav-link text-light" href="/users/sign_up"> sign up</a></li>
          <li><a class="fas fa-sign-in-alt nav-link text-light" href="/users/sign_in"> login</a></li>
        </ul>
      </div>
    </div>
  </nav>
</header>

    <% end %>



    <%= yield %>
    
    <footer>
  <div class="container mt-5">
  	<div class="row">
    	<div class="mx-auto">
    		<p>CopyRight Infratop.inc</p>
    	</div>
    </div>
  </div>
</footer>

  </body>
</html>

<% if user_signed_in? %>
  <li>
    <%= link_to "Home", destroy_user_session_path, method: :delete %>
  </li>
  <li>
    <%= link_to "Users", destroy_user_session_path, method: :delete %>
  </li>
  <li>
    <%= link_to "Books", destroy_user_session_path, method: :delete %>
  </li>
  <li>
    <%= link_to "logout", destroy_user_session_path, method: :delete %>
  </li>

  <% else %>
      <li>
        <%= link_to "Home", "/" %>
      </li>
      <li>
        <%= link_to "About", "/homes/about" %>
      </li>
      <li>
        <%= link_to "sign up", new_user_registration_path %>
      </li>
      <li>
        <%= link_to "login", new_user_session_path %>
      </li>
    <% end %>
    
    <ul class="navbar-nav ml-auto">
          <li><a class="fas fa-home nav-link text-light" href="/users/45637"> Home</a></li>
          <li><a class="fas fa-users nav-link text-light" href="/users"> Users</a></li>
          <li><a class="fas fa-book-open nav-link text-light" href="/books"> Books</a></li>
          <li><a class="fas fa-sign-out-alt nav-link text-light" rel="nofollow" data-method="delete" href="/users/sign_out"> logout</a></li>
        </ul>
        
        
        
        <div class="container">
  <div class="row">
    <div class="col-sm-12 col-md-8 col-lg-5 px-5 px-sm-0 mx-auto">
     <p id="notice"></p>
      <div class="form-group">
       <h2>User info</h2>
        <%= form_with model:@user, local:true do |f| %>
      </div>
      <div class="form-group">
       <label for="inputName">Name</label></br>
       <%= f.text_field :name, autofocus: true, id:"inputName"%>
      </div>
      <div class="form-group">
       <label for="user_image">Image</label></br>
       <%= f.attachment_field :profile_image, placeholder: "プロフィール画像" %>
      </div>
      <div class="form-group">
       <label for="user_introduction">introduction</label></br>
       <%= f.text_area :introduction ,class: 'orm-control introduction'%>
      </div>
      <div class="form-group">
        <%= f.submit "Update User" ,class:'btn btn-secondary'%>
      </div>
<% end %>
     </div>
   </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm-12 col-md-8 col-lg-5 px-5 px-sm-0 mx-auto">
      
<div class="form-group">
<h2>User info</h2>
<%= form_with model:@user, local:true do |f| %>
<div>
<div class="form-group">
  <label for="inputName">Name</label>
  <%= f.text_field :name, autofocus: true, id:"inputName"%>
 
  <label for="inputImage">Image</label>
  <%= f.attachment_field :profile_image, placeholder: "プロフィール画像" %>
  <label for="inputImage">introduction</label>
  <%= f.text_area :introduction %>

  <%= f.submit "Update User" %>
<% end %>
