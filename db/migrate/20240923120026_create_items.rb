# Source: https://github.com/rails/rails/blob/v7.1.2/activerecord/lib/rails/generators/active_record/migration/templates/create_table_migration.rb.tt
#
# This template comes from your local project under lib/rails/generators/active_record/migration/templates/create_table_migration.rb.tt.
# It is based on Rails 7.1. If your Rails version diverges, please note that the generator is outdated, and changes might be made.
#
class CreateItems < ActiveRecord::Migration[7.2]
  def change
    create_table :items, id: false do |t|
      t.binary :id, limit: 16, null: false, index: { unique: true }, primary_key: true
      t.string :name
      t.references :track, foreign_key: true, index: true, type: :binary, limit: 16, null: false
      t.integer :status

      t.timestamps
    end
  end
end
