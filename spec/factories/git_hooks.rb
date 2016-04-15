# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :git_hook do
    force_push_regex 'feature\/.*'
    deny_delete_tag false
    delete_branch_regex 'bug\/.*'
    project

    trait :commit_message do
      commit_message_regex "(f|F)ixes #\d+.*"
    end

    trait :author_email do
      author_email_regex '.*@veryspecificedomain.com'
    end

    factory :git_hook_sample do
      is_sample true
    end
  end
end
