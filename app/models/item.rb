# frozen_string_literal: true

# Source: https://github.com/rails/rails/blob/7-1-stable/activerecord/lib/rails/generators/active_record/model/templates/model.rb.tt
class ::Item < ApplicationRecord
  belongs_to :track
  validates :name, presence: true
  enum :status, { created: 0, active: 1, archived: 2 }

  attribute :track_id, :uuid_v7
end
