class UpdateStateOperation
  def call(vacancy:, key:)
    case key.to_sym
    when Vacancy::STATE_PUBLISHED
      vacancy.publish!
    when Vacancy::STATE_ARCHIVED
      vacancy.archive!
    end
  end
end
