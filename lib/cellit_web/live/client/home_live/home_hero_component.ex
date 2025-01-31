defmodule CellitWeb.HomeHeroComponent do
  use CellitWeb, :live_component
  # use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <section class="relative overflow-hidden bg-primary py-20 min-h-screen">
        <div class="container mx-auto px-4">
          <div class="grid gap-8 md:grid-cols-2 md:items-center">
            <div class="space-y-6">
              <h1 class="text-4xl text-white font-bold md:text-6xl">
                Summer Sale <span class="block text-[#fcbf49]">Up to 50% Off</span>
              </h1>
              <p class="text-lg text-gray-300">
                Discover amazing deals on the latest tech gadgets and accessories.
              </p>
              <%= link to: "/shop", class: "inline-block group relative overflow-hidden rounded-full bg-cta px-8 py-6 text-white hover:bg-cta/90" do %>
                Shop Now
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="ml-2 h-4 w-4 inline-block transition-transform group-hover:translate-x-1"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M9 5l7 7-7 7"
                  />
                </svg>
              <% end %>
            </div>
            <div class="relative">
              <div class="relative z-10 aspect-square overflow-hidden rounded-2xl">
                <img
                  src={Routes.static_path(@socket, "/images/green-headphones.jpeg")}
                  class="h-full w-full object-cover"
                />
              </div>
                <div class="absolute -bottom-20 -left-10 md:-botton-6 md:-left-6 h-48 w-48 rounded-full bg-highlight/20" />
                <div class="absolute -right-6 -top-6 h-32 w-32 rounded-full bg-prices/20" />
            </div>
          </div>
        </div>
    </section>
    """
  end
end
