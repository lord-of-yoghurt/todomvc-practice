module ItemsHelper
  def li_class_for_items(item)
    "completed" if item.complete?
  end
end
