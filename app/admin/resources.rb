ActiveAdmin.register Resource do

  filter :email

  index do
    column "Name" do |resource|
      "#{resource.first_name}, #{resource.last_name}"
    end
    column "Focus Factor", :focus_factor
    column "e-mail", :email

    default_actions
  end

  form do |f|
    f.inputs do
      f.input :first_name, :required => true
      f.input :last_name, :required => true
      f.input :focus_factor, :required => true
      f.input :email, :required => true

      f.buttons
    end
  end

end