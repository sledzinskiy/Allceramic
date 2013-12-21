class BasePage

  def sendText(locator, type, text)
    case type
      when "general"
        fill_in locator, :with => text
      when "xpath"
        el = find(:xpath, locator)
        if (el == Capybara::ElementNotFound)
          raise "There is no such #{type} #{locator}"
        else
          el.set(text)
        end
    end
  end

  def clickElement (locator, type)
    case type
      when "button"
        click_button(locator)
      when "link"
        click_link(locator)
      when "object"
        el = find(:xpath, locator)
        if (el.class == Capybara::ElementNotFound)
          raise "There is no such #{type} #{locator}"
        else
          el.click
        end
    end
  end

  def selectOption (field, opt)
    select(opt, :from => field)
  end

  def setCheckbox(locator, type, operation)
    case type
      when "general"
        field = locator
        if (operation == "set")
          check(field)
        else
          uncheck(field)
        end
      when "xpath"
        field = find(:xpath, locator)
        if (field == Capybara::ElementNotFound)
          raise "There is no such #{locator}"
        end
        if (operation == "set")
          field.set(true)
        else
          field.set(false)
        end
    end
    end




  def waitUntil (locator)

  end
end