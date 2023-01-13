feeding_america = Organization.create(name: 'Feeding America')
salvation_army = Organization.create(name: 'Salvation Army')
red_cross = Organization.create(name: 'American National Red Cross')

Donation.create(amount: 100.00, date: "10/12/21", pending: false)
Donation.create(amount: 500.00, date: "10/15/21", pending: true)
Donation.create(amount: 20.00, date: "10/01/21", pending: false)

Donation.create(amount: 200.00, date: "10/31/21", pending: false)


ryan = Donor.create(name: "Ryan")
Donor.create(name: "Sean")
Donor.create(name: "Ann")
Donor.create(name: "Olivia")

Donation.create(amount: 200.00, date: "10/31/21", pending: false, donor: ryan)
Donation.create(amount: 200.00, date: "10/31/21", pending: false, donor_id: ryan.id)
