# RailsAdmin config file. Generated on August 28, 2012 13:50
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|

  # If your default_local is different from :en, uncomment the following 2 lines and set your default locale here:
  # require 'i18n'
  # I18n.default_locale = :de

  config.current_user_method { current_user } # auto-generated

  # If you want to track changes on your models:
  # config.audit_with :history, User

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, User

  # Set the admin name here (optional second array element will appear in a beautiful RailsAdmin red ©)
  config.main_app_name = ['Text Mmmo', 'Admin']
  # or for a dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }


  #  ==> Global show view settings
  # Display empty fields in show views
  # config.compact_show_view = false

  #  ==> Global list view settings
  # Number of default rows per-page:
  # config.default_items_per_page = 20

  #  ==> Included models
  # Add all excluded models here:
  # config.excluded_models = [Armor, ArmorItem, ArmorMaterial, ArmorTier, Bonus, Character, Enchant, Order, StatSet, User]

  # Add models here if you want to go 'whitelist mode':
  # config.included_models = [Armor, ArmorItem, ArmorMaterial, ArmorTier, Bonus, Character, Enchant, Order, StatSet, User]

  # Application wide tried label methods for models' instances
  # config.label_methods << :description # Default is [:name, :title]

  #  ==> Global models configuration
  # config.models do
  #   # Configuration here will affect all included models in all scopes, handle with care!
  #
  #   list do
  #     # Configuration here will affect all included models in list sections (same for show, export, edit, update, create)
  #
  #     fields_of_type :date do
  #       # Configuration here will affect all date fields, in the list section, for all included models. See README for a comprehensive type list.
  #     end
  #   end
  # end
  #
  #  ==> Model specific configuration
  # Keep in mind that *all* configuration blocks are optional.
  # RailsAdmin will try his best to provide the best defaults for each section, for each field.
  # Try to override as few things as possible, in the most generic way. Try to avoid setting labels for models and attributes, use ActiveRecord I18n API instead.
  # Less code is better code!
  # config.model MyModel do
  #   # Cross-section field configuration
  #   object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #   label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #   label_plural 'My models'      # Same, plural
  #   weight -1                     # Navigation priority. Bigger is higher.
  #   parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #   navigation_label              # Sets dropdown entry's name in navigation. Only for parents!
  #   # Section specific configuration:
  #   list do
  #     filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #     items_per_page 100    # Override default_items_per_page
  #     sort_by :id           # Sort column (default is primary key)
  #     sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     # Here goes the fields configuration for the list view
  #   end
  # end

  # Your model's configuration, to help you get started:

  # All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible. (visible(true))

  # config.model Armor do
  #   # Found associations:
  #     configure :character, :belongs_to_association 
  #     configure :head, :belongs_to_association 
  #     configure :shoulder, :belongs_to_association 
  #     configure :chest, :belongs_to_association 
  #     configure :back, :belongs_to_association 
  #     configure :waist, :belongs_to_association 
  #     configure :legs, :belongs_to_association 
  #     configure :feet, :belongs_to_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :character_id, :integer         # Hidden 
  #     configure :head_id, :integer         # Hidden 
  #     configure :shoulder_id, :integer         # Hidden 
  #     configure :chest_id, :integer         # Hidden 
  #     configure :back_id, :integer         # Hidden 
  #     configure :waist_id, :integer         # Hidden 
  #     configure :legs_id, :integer         # Hidden 
  #     configure :feet_id, :integer         # Hidden 
  #     configure :hands_id, :integer 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :finger_id, :integer   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model ArmorItem do
  #   # Found associations:
  #     configure :armor_tier, :belongs_to_association 
  #     configure :enchant, :belongs_to_association 
  #     configure :bonus, :belongs_to_association 
  #     configure :armor, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :armor_tier_id, :string         # Hidden 
  #     configure :enchant_id, :string         # Hidden 
  #     configure :bonus_id, :string         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :name, :string 
  #     configure :stat_set_id, :integer   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model ArmorMaterial do
  #   # Found associations:
  #     configure :armor_tiers, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model ArmorTier do
  #   # Found associations:
  #     configure :armor_material, :belongs_to_association 
  #     configure :stat_set, :belongs_to_association 
  #     configure :armor_items, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :level, :integer 
  #     configure :deviation, :integer 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :armor_material_id, :integer         # Hidden 
  #     configure :stat_set_id, :integer         # Hidden   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Bonus do
  #   # Found associations:
  #     configure :armor_items, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Character do
  #   # Found associations:
  #     configure :user, :belongs_to_association 
  #     configure :order, :belongs_to_association 
  #     configure :armor, :has_one_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :level, :string 
  #     configure :health, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :user_id, :integer         # Hidden 
  #     configure :name, :string 
  #     configure :order_id, :integer         # Hidden 
  #     configure :active, :boolean   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Enchant do
  #   # Found associations:
  #     configure :stat_set, :belongs_to_association 
  #     configure :armor_items, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :stat_set_id, :integer         # Hidden   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Order do
  #   # Found associations:
  #     configure :characters, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :agility, :float 
  #     configure :intellect, :float 
  #     configure :stamina, :float 
  #     configure :strength, :float 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model StatSet do
  #   # Found associations:
  #     configure :enchants, :has_many_association 
  #     configure :bonuses, :has_many_association 
  #     configure :armor_items, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :agility, :integer 
  #     configure :intellect, :integer 
  #     configure :strength, :integer 
  #     configure :stamina, :integer 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model User do
  #   # Found associations:
  #     configure :characters, :has_many_association   #   # Found columns:
  #     configure :id, :integer 
  #     configure :email, :string 
  #     configure :password, :password         # Hidden 
  #     configure :password_confirmation, :password         # Hidden 
  #     configure :reset_password_token, :string         # Hidden 
  #     configure :reset_password_sent_at, :datetime 
  #     configure :remember_created_at, :datetime 
  #     configure :sign_in_count, :integer 
  #     configure :current_sign_in_at, :datetime 
  #     configure :last_sign_in_at, :datetime 
  #     configure :current_sign_in_ip, :string 
  #     configure :last_sign_in_ip, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
end
