class PlySerializer < ActiveModel::Serializer
  attributes :id, :game_id, :move_index, :color, :move, :time_remaining
end
