class MicroSerializer < ActiveModel::Serializer
  attributes :id, :severity, :location, :aggressor, :date
end
