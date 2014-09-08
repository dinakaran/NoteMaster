class NotePolicy < ApplicationPolicy
  def update?
    if record.user == user
      true
    else
      false
    end
  end
  def destroy?
    update?
  end
end
