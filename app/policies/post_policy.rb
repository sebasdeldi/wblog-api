class PostPolicy
  def initialize(user, record)
    @user = user
    @record = record
  end

  def show?
    (@record.user == @user) || (@record.status == 'free_access')
  end
end
