class MicroAggressionSerializer < ActiveModel::Serializer
  attributes :id, :location, :description, :aggressor, :severity, :date
end
