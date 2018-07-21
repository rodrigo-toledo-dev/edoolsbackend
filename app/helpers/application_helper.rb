module ApplicationHelper
  def current_class?(test_path)
    return 'active' if test_path.include?(params[:controller])
    ''
  end
end
