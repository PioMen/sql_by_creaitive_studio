from faker import Faker
fake = Faker()
Faker.seed(4321)

user = [
    #id
    #status,
    fake.name().split(' ')[0],
    fake.name().split(' ')[1],
    #sex,
    fake.date_between(start_date='-71y', end_date='today'),
    fake.date_between(start_date='-5y', end_date='today'),
    #newsletter consent
    fake.
]

for n in range(0,10):
    print(fake.profile(), end='\n\n\n')