extends 'list_info/base'
object @list_info

child @list => :items do
  attributes :rsvp
  glue :user do
    extends 'users/base'
  end
end