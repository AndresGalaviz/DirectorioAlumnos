class CreateAdminService
  def call
    user = User.find_or_create_by!(email: Rails.application.secrets.admin_email) do |user|
        user.password = Rails.application.secrets.admin_password
        user.first_name = Rails.application.secrets.admin_first_name
        user.last_name = Rails.application.secrets.admin_last_name
        user.contact_number = Rails.application.secrets.admin_contact_number
        user.next_of_kin = Rails.application.secrets.admin_next_of_kin
        user.next_of_kin_number = Rails.application.secrets.admin_next_of_kin_number
        user.password_confirmation = Rails.application.secrets.admin_password
        user.admin!
      end
  end
end
