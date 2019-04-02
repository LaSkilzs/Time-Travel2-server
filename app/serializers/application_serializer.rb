class ApplicationSerializer < ActiveModel::Serializer
  attributes :id, :citizenship, :parent_union, :parent_trade, :entreprenuership, :work_with_others, :monotous_task, :work_life_balance, :work_environment, :too_many_hours, :app_score
end
