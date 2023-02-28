class ProjectsController < ApplicationController
  class MenusController < ApplicationController
    before_action :set_menu, only: %i[show edit update destroy]

    def index
      @menus = Menu.all
    end

    def show; end

    def new
      @menu = Menu.new
    end

    def create
      @menu = Menu.new(menu_params)
      @menu.save!
      redirect_to menu_path(@menu)
    end

    def edit; end

    def update
      @menu.update!(menu_params)
      redirect_to menu_path(@menu)
    end

    def destroy
      @menu.destroy!
      redirect_to menus_path, status: :see_other
    end

    private

    def set_menu
      @menu = Menu.find(params[:id])
    end

    def menu_params
      params.require(:menu).permit(:content, :title, :price)
    end
  end

end
<%@menus.each do |menu| %>
  <%= menu.created_at %>
  <br>
  <%= menu.title %>
  <%= menu.content %>
  <%= menu.price %>
  <br>
<% end %>

<%= menu.title.last %>
<%= menu.content.last %>
<%= menu.price.last %>

####################################################
#### MENUS
puts "Creating Starters"
starter1 = Menu.create(
  content: "A description of the starter 1 with some details.",
  title: "Name of the starter 1",
  price: 8,
  type: "starter"
)
starter1.save!

starter2 = Menu.create(
  content: "A description of the starter 2 with some details.",
  title: "Name of the starter 2",
  price: 9,
  type: "starter"
)
starter2.save!

puts "Creating Main Meals"
meals1 = Menu.create(
  content: "A description of the Meal 1 with some details.",
  title: "Name of the Meal 1",
  price: 17,
  type: "Meal"
)
meals1.save!

meals2 = Menu.create(
  content: "A description of the Meal 2 with some details.",
  title: "Name of the Meal 2",
  price: 19,
  type: "Meal"
)
meals2.save!

meals3 = Menu.create(
  content: "A description of the Meal 3 with some details.",
  title: "Name of the Meal 3",
  price: 18,
  type: "Meal"
)
meals3.save!

puts "Creating Desserts"
dessert1 = Menu.create(
  content: "A description of the Dessert 1 with some details.",
  title: "Name of the Dessert 1",
  price: 17,
  type: "Dessert"
)
dessert1.save!

dessert2 = Menu.create(
  content: "A description of the Dessert 2 with some details.",
  title: "Name of the Dessert 2",
  price: 19,
  type: "Dessert"
)
dessert2.save!
