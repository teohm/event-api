attributes :id, :title, :description, :start, :end, :location

child :creator do
  extends 'users/base'
end