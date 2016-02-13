require 'csv'

CSV.foreach('db/fixtures/production/csv/user.csv', headers: true) do |user|
  User.create(
    name: user[0],
    email: user[1],
    password: user[2],
    user_number: user[3],
    authority_type: user[4],
    sex: user[5],
    job_type: user[6],
    confirmed_at: Date.current
  )
end
