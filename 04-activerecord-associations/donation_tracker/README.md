# Active Record Associations

### Lecture Take Aways

- Active Record Associations: One to Many
- Has many, belongs to
- Active Record Associations: Many to Many
- Has many, through
- Join models
- Custom instance and class methods 

### Lecture Deliverables

- Create a new class Donor and donors table
- A donor will have a name attribute
- Set up associations between Donor, Donations, and Organization
- Modify the Donations table to reflect the newly defined associations with a foreign key column.

### Association Macros 

# methods that we add to the model, tell these methods is what object to set the type of association to 
# this is going to generate a collection f instance methods we can then use to communicate with the db 

- has_many : parent, one to many, noo foreign key in db table 
- belongs_to : child, one to one
- has many, through : many to many relationship, one object has many of another object bc a has many relationship has been established

### Domain modeling

Donor
- name : string
- has_many :donations
- has_many :organizations, through: :donations

Donations
- amount : integer 
- date : string
- pending : boolean 
- belongs_to :donor
- belongs_to :organization 

Organization
- name : string 
- address : text
- has_many :donations
- has_many :donors, through: :donations 
