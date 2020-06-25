Profile.create(
  title: 'name',
  value: 'Charlie Campbell'
)

Profile.create(
  title: 'position',
  value: 'Software Engineer'
)

Highlight.create(
  title: 'Software Engineer',
  organisation: 'UKCloud',
  start_date: Time.now - 1.years,
  end_date: Time.now,
  description: 'This is a description all about how I am a software engineering student
                at ukcloud. It is a pretty good job but it can get a bit bad in the summer
                when it is ridiculously hot like it is when I am writing this.'
)

Highlight.create(
  title: 'Software Engineering',
  organisation: 'Bournemouth University',
  start_date: Time.now - 4.years,
  end_date: Time.now - 1.years,
  description: 'This is a description all about how I am a software engineering student
                at ukcloud. It is a pretty good job but it can get a bit bad in the summer
                when it is ridiculously hot like it is when I am writing this.'
)