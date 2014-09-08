class NotePolicy < ApplicationPolicy

  def show?
    if ((record.shares.pluck(:owner_id).includes? user.id) || (record.shares.pluck(:receiver_id).includes? user.id))
     true
    else
     false
    end
  end

  def update?
    if record.user == user
      true
    else
      false
    end
  end
  def edit?
     update?
  end

  def destroy?
    update?
  end
end
