class HomePage < BasePage
  include Capybara::DSL

  ProductNameInSearch = "//input[@name='catalog_search_text']"
  SearchButton = "Плитка"
  ProductsList = "catalog_group"
  DeleteProduct = "DELETE_0"

  def initialize()

  end

  def getPage
  visit ("/")
  end

  def searchOnHome
  #sendText(ProductNameInSearch, "xpath", "test query")
   # clickElement(SearchButton, "link")
    #selectOption(ProductsList,"Сантехника")
    sleep(10)
    visit("/basket")
   sleep(5)
    setCheckbox(DeleteProduct, "general", "unset")
    sleep(5)
  end



end