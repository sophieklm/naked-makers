class HomeController < ApplicationController
  def index
  end

  def location_language_data
    respond_to do |format|
      format.json {
        render :json => create_location_language_hash(LocationLanguage, :location_id)
      }
    end
  end

  private

  def create_location_language_hash(model, group_by)
    data = []
    @locations = Location.all
    group_count(model, group_by).each do |key, value|
      name = @locations.find_by(id: key).city
      data << { name: name, children: create_language_hash(key) }
    end
    return data
  end

  def create_language_hash(location_id)
    languages = []
    @languages = Language.all
    group_count(LocationLanguage.where(location_id: location_id), :language_id).each do |key, value|
      key = @languages.find_by(id: key).name
      languages << { name: key, count: value }
    end
    return languages
  end

  def group_count(model, group_by)
    all_items = model.all
    return all_items.group(group_by).count
  end

end
