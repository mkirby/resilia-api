# clear out the old database entries
Notification.destroy_all
User.destroy_all

User.create(name: "Matthew Kirby")
User.create(name: "Dinesh Nadar")
User.create(name: "Taihua Rubin")
User.create(name: "Jane Doe")
User.create(name: "John Doe")
User.create(name: "Miss No-Notifications")

# to scale user notifications create a user notification join table
Notification.create(subject: "Welcome to Resilia Academy", message: " Start your journey with 1-1 Setting up Tax Exempt Status", user_id: 1)
Notification.create(subject: "Welcome to Resilia Academy", message: " Start your journey with 1-1 Setting up Tax Exempt Status", user_id: 2)
Notification.create(subject: "Welcome to Resilia Academy", message: " Start your journey with 1-1 Setting up Tax Exempt Status", user_id: 4)
Notification.create(subject: "Complete Your Profile", message: "Having a complete profile allows Microgrant partners to view you!", user_id: 1)
Notification.create(subject: "Complete Your Profile", message: "Having a complete profile allows Microgrant partners to view you!", user_id: 2)
Notification.create(subject: "Complete Your Profile", message: "Having a complete profile allows Microgrant partners to view you!", user_id: 3)
Notification.create(subject: "Complete Your Profile", message: "Having a complete profile allows Microgrant partners to view you!", user_id: 5)
Notification.create(subject: "Schedule A Free Consultation With Our Nonprofit Experts", message: "Resilia’s Nonprofit Formation service helps new and existing organizations file for tax exempt status, and provide the tools to remain compliant afterward.", user_id: 1)
Notification.create(subject: "Schedule A Free Consultation With Our Nonprofit Experts", message: "Resilia’s Nonprofit Formation service helps new and existing organizations file for tax exempt status, and provide the tools to remain compliant afterward.", user_id: 2)
Notification.create(subject: "Schedule A Free Consultation With Our Nonprofit Experts", message: "Resilia’s Nonprofit Formation service helps new and existing organizations file for tax exempt status, and provide the tools to remain compliant afterward.", user_id: 3)
Notification.create(subject: "Schedule A Free Consultation With Our Nonprofit Experts", message: "Resilia’s Nonprofit Formation service helps new and existing organizations file for tax exempt status, and provide the tools to remain compliant afterward.", user_id: 4)
Notification.create(subject: "Schedule A Free Consultation With Our Nonprofit Experts", message: "Resilia’s Nonprofit Formation service helps new and existing organizations file for tax exempt status, and provide the tools to remain compliant afterward.", user_id: 5)
Notification.create(subject: "Meet your Account Manager", message: "Sarah's been a Resilia Nonprofit expert for 3 years and ... read more", user_id: 1)
Notification.create(subject: "Meet your Account Manager", message: "Billy's been a Resilia Nonprofit expert for 2 years and ... read more", user_id: 3)
Notification.create(subject: "Meet your Account Manager", message: "Raffi's been a Resilia Nonprofit expert for 5 years and ... read more", user_id: 4)
Notification.create(subject: "Update Requested On Your 501(c)3 Paperwork", message: "An update is requested on your 501(c)3 paperwork. Go to the Document Portal", user_id: 1)
Notification.create(subject: "Update Requested On Your 501(c)3 Paperwork", message: "An update is requested on your 501(c)3 paperwork. Go to the Document Portal", user_id: 5)