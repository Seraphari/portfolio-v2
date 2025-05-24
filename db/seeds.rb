# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database"
Project.destroy_all

puts "Creating Projects"
project1 = Project.create!(
  project_title: "Lorem ipsum",
  project_summary: "Pellentesque feugiat leo id convallis tristique. Donec convallis tellus nec mi dignissim, ac laoreet nunc porta.",
  project_client: "Ut purus turpis",
  project_role:"Duis consectetur",
  starting_date: "Jan-2020",
  ending_date: "Jan-2024"
)

ProjectBusiness.create!(
  project_id: project1.id,
  biz_intro: "Sed lectus erat, lacinia eget pharetra non, tempor et tortor.",
  biz_summary_1: "Fusce vitae luctus quam.",
  biz_summary_2: "Proin pulvinar pretium mi ac pharetra.",
  biz_summary_3: "Sed dapibus molestie metus, eu gravida ante tempor non. Vestibulum ut tellus libero.",
  biz_summary_4: "ras hendrerit porta lorem id commodo. Sed nisi augue, mattis eu nisi vehicula, ullamcorper convallis dolor.",
  biz_summary_5: "Phasellus semper ipsum vel tempus pretium.",
  problem_statement: "Ut orci sem, pharetra eget libero quis, rhoncus rhoncus massa.",
  recommended_solutions: "Vivamus blandit nulla quis libero consequat malesuada.",
  stakeholder_engagement: "Aenean varius blandit purus, ut posuere eros gravida at."
)

ProjectTechnology.create!(
  project_id: project1.id,
  tech_intro: "Integer pharetra neque a tellus auctor pharetra.",
  tech_summary_1: "Quisque condimentum suscipit posuere.",
  tech_summary_2: "Nulla sit amet dui et lectus dapibus facilisis quis a nulla.",
  tech_summary_3: "Auris at aliquam velit. Aenean a tincidunt mi, in lobortis nibh. In ultrices et nunc a blandit.",
  tech_summary_4: "Mauris enim nunc, porta sit amet ultrices id, dictum vel sapien.",
  tech_summary_5: "Sed vitae augue eget justo condimentum posuere.",
  system_architecture: "In et neque interdum, auctor quam at, ultrices erat.",
  development_approach: "Proin pulvinar pretium mi ac pharetra."
)
ProjectDesign.create!(
  project_id: project1.id,
  design_summary_1: "Aliquam orci sapien, commodo sit amet suscipit eget, suscipit a justo.",
  design_summary_2: "Ut volutpat viverra tellus eu sodales.",
  design_summary_3: "Nulla vulputate, turpis in tincidunt sodales, nunc nisi fermentum ante, eget lacinia sapien ipsum ut dolor.",
  design_principles: "Integer ut libero cursus, laoreet nisl dapibus, scelerisque orci.",
  user_experience_design: "Mauris at mauris vehicula velit rhoncus dictum.",
  user_interface: "Integer quam tortor, tincidunt at porta eget, sollicitudin at ex."
)

puts "Created Project 1 - Lorem ipsum, with the children tables."

project2 = Project.create!(
  project_title: "Mauris at pretium risus",
  project_summary: "Sed dignissim eros in arcu bibendum, quis consequat neque posuere. Duis tempus eu turpis sed lacinia. Proin eu pulvinar mauris, vitae congue mi.",
  project_client: "Integer ut magna",
  project_role: "Etiam consectetur",
  starting_date: "Jan-2024",
  ending_date: "Jan-2025"
)

ProjectBusiness.create!(
  project_id: project2.id,
  biz_intro: "Phasellus et consectetur felis.",
  biz_summary_1: "Nullam tempor felis vel mauris pellentesque, sed efficitur sapien tempus. ",
  biz_summary_2: "Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.",
  biz_summary_3: "Mauris fringilla ante sit amet diam aliquam interdum. Nunc arcu mi, scelerisque sed tristique et, varius at arcu.",
  biz_summary_4: "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed fringilla sollicitudin mollis.",
  problem_statement: "Mauris interdum condimentum est quis consectetur. ",
  recommended_solutions: "Aenean interdum sapien ultricies volutpat pellentesque.",
  stakeholder_engagement: "Vivamus faucibus arcu tellus, at gravida purus scelerisque ac."
)

ProjectTechnology.create!(
  project_id: project2.id,
  tech_intro: "Cras tempus augue turpis.",
  tech_summary_1: "Fusce id arcu pulvinar, luctus felis ac, molestie neque.",
  tech_summary_2: "Etiam tincidunt mollis ex.",
  tech_summary_3: "Duis ultrices ligula pharetra enim elementum, vitae pellentesque urna aliquam.",
  tech_summary_4: "Nam viverra id ligula sit amet bibendum.",
  tech_summary_5: "Vivamus pellentesque velit eu pulvinar accumsan.",
  system_architecture: "Nulla augue quam, posuere sed orci in, auctor vestibulum orci.",
  development_approach: "Maecenas luctus dolor id tellus facilisis fringilla."
)

ProjectDesign.create!(
  project_id: project2.id,
  design_summary_1: "Fusce id arcu pulvinar, luctus felis ac, molestie neque.",
  design_summary_2: "Etiam tincidunt mollis ex.",
  design_summary_3: "Nulla augue quam, posuere sed orci in, auctor vestibulum orci.",
  design_summary_4: "Duis sem nisl, vestibulum sit amet faucibus in, mattis eu lorem.",
  design_summary_5: "Phasellus dictum, dui sit amet lacinia commodo, nibh massa iaculis quam, at finibus leo metus vel quam.",
  design_principles: "Nullam tempor felis vel mauris pellentesque, sed efficitur sapien tempus. ",
  user_experience_design: "Maecenas luctus dolor id tellus facilisis fringilla.",
  user_interface: "Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos."
)

puts "Created Project 2 = Mauris at pretium risus, with the children tables."

puts "Done! Created #{Project.count} projects."
