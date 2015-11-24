# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create({
  email: "teixeir3@gmail.com",
  password: ENV["DEVELOPER_PASSWORD"],
  first_name: "Douglas",
  last_name: "Teixeira",
  is_admin: true,
  is_active: true,
  title: "Web Developer",
  bio:,
  phone: "9088720937"
})
# Article.create_all([
#   {
#     title: "H&S Enterprises buys former Warren Lumber site for $1.7 million",
#     description: "The former Phillipsburg site of Warren Lumber sold this afternoon for $1.7 million during an auction for the property \n
#
# Ken Shaffer and his daughter Alicia Casey of H&S Enterprises purchased the 14-acre site at 15 Sawmill St. to expand their trucking and warehouse business with sites on Strykers Road in Phillipsburg and in Columbia, N.J. They were the sole bidders.",
#     url: nil,
#     user: user,
#     display: true
#   }, {
#     title: "Somerset Unitarians settle into Somerville church -The Courier News",
#     description: "SOMERVILLE — Members of the Unitarian Universalist Congregation of Somerset Hills are looking forward to unpacking for good in their newly purchased church at 123 Cliff St. in Somerville.",
#     url: "http://www.nj.com/messenger-gazette/index.ssf/2010/07/unitarians_settle_into_somerville_church.html",
#     user: user,
#     display: true
#   }, {
#     title: "New First Day of School for Children with Autism – The Bernardsville News",
#     description: "Children's eyes widened on Monday morning as the took in an unfamiliar schoolday sight; sunlight streaming through floor-to-ceiling windows, airy classrooms and a spacious lunchroom. After years in a cramped church basement, Somerset Hills Learning Institute, a specialized facility for...",
#     url: "http://www.nj.com/messenger-gazette/index.ssf/2010/07/unitarians_settle_into_somerville_church.html",
#     user: user,
#     display: true
#   }, {
#     title: "Cancer Center Unveils a Safe Place for Patients – Courier News",
#     description: "About 250 patients, civic groups and community organizations gathered Monday to view what will soon become a compassionate haven for cancer patients and their caregivers. During a ribbon-cutting ceremony, board members of The Wellness Community of Central New Jersey unveiled the new 2,800...",
#     url: "http://www.somerset-hills.org/",
#     user: user,
#     display: true
#   }, {
#     title: "A Tangible Gift to Cancer Patients – New York Times",
#     description: "The plumber did it for his brother, who died eight years ago at age 41. The general contractor was thinking of a fraternity brother, who died 25 years ago at only 20. One of the electricians lost a brother last year, and another lost his father earlier this month. “Cancer – the Big C,” said Patrick Schaible, a plumbing contractor...",
#     url: "www.thewellnesscommunity.org/cnj/ ",
#     user: user,
#     display: true
#   },
# ])