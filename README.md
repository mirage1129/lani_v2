# Lani

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:8080`](http://localhost:8080) from your browser.

1. Set up automated deployment
	a. Point Google Domain to Cloudflare
	b. Set up Digital Ocean server
		i. Initial server setup
			- https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-16-04
		ii. Install Nginx
			- https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-16-04
		iii. Secure Nginx with SSL certificate
			- https://www.digitalocean.com/community/tutorials/how-to-set-up-let-s-encrypt-with-nginx-server-blocks-on-ubuntu-16-04
		iv. Set up deployment with Distillery & Edeliver
			- https://www.digitalocean.com/community/tutorials/how-to-automate-elixir-phoenix-deployment-with-distillery-and-edeliver-on-ubuntu-16-04
		v. Add pre_erlang_get_and_update_deps function to .deliver/config so Webpack can build assets
			- https://www.digitalocean.com/community/tutorials/how-to-set-up-a-node-js-application-for-production-on-ubuntu-16-04
		v. Add Nodejs and Postgres to server
			- https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-16-04
			- https://www.digitalocean.com/community/tutorials/how-to-set-up-a-node-js-application-for-production-on-ubuntu-16-04
2. Add front-end dependencies
	a. Change CSS to SCSS
		i. https://elixirforum.com/t/phoenix-1-4-webpack-4-and-bulma-bootstrap-4-sass/14354/7
2. Add Bulma/Bulma Extensions/Animate.css
		ii. https://elixirforum.com/t/phoenix-1-4-webpack-4-and-bulma-bootstrap-4-sass/14354/20
3. 
