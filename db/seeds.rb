# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# truncate all tables
ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  next if table == 'schema_migrations'
  ActiveRecord::Base.connection.execute("TRUNCATE #{table} CASCADE")
end

# create profile
profile = Profile.create({
    first_name: 'Nathan', 
    last_name: 'dolzonek', 
    email: 'natedolz@gmail.com',
    phone: '256.337.5880',
    address: '701 Dorothy Ford LN Apt 327',
    city: 'Huntsville',
    state: 'AL',
    zip: '35801'
})

profile_line = ProfileLine.create({
    profile_id: profile.id,
    line: 'Web Developer'
})

# create education
Education.create({
    graduation: Time.new(2014,12,18),
    name: 'University of Alabama in Birmingham',
    description: 'BS in Computer and Information Sciences',
    profile_id: profile.id
})

# create jobs
spur = Job.create({
    start: Time.new(2019,02,01),
    end: nil,
    name: 'Spur',
    role: 'Full Stack Engineer',
    profile_id: profile.id     
})

JobLine.create([
    {
        job_id: spur.id,
        line: 'Full stack engineer designing and implementing solutions in Laravel and Vue.'
    },
    {
        job_id: spur.id,
        line: 'Helped found and build a modern frontend component library in Vue allowing for easy creation of new web pages.'        
    },
    {
        job_id: spur.id,
        line: 'Architected new backend feature areas for use by a RESTful api'
    },
    {
        job_id: spur.id,
        line: 'Released several new successful features to customers in a short span of time'        
    },
    {
        job_id: spur.id,
        line: 'Created a new Alpha/Beta release process ensuring a proper feedback cycle for new features.'
    },
    {
        job_id: spur.id,
        line: 'Lead developer on a team responsible for researching and implementing complex solutions to business problems.'
    }
])

hexagon_1 = Job.create({
    start: Time.new(2015,02,01),
    end: Time.new(2017,07,01),
    name: 'Hexagon PPM',
    role: 'Software Analyst',
    profile_id: profile.id     
})

JobLine.create([
    {
        job_id: hexagon_1.id,
        line: 'Member of a team working closely with clients to provide specific custom and configurable solutions.'
    },
    {
        job_id: hexagon_1.id,
        line: 'Designed new architecture and ux to implement a customizable rules framework for client use.'
    }
])

hexagon_2 = Job.create({
    start: Time.new(2017,07,01),    
    end: Time.new(2019,02,01),
    name: 'Hexagon PPM',
    role: 'Software Programmer',
    profile_id: profile.id
})

JobLine.create([
    {
        job_id: hexagon_2.id,
        line: 'Full stack developer designing fully fleshed out features from backend to frontend.'        
    },
    {
        job_id: hexagon_2.id,
        line: 'Leading developer on an effort to create a new modern React.js web client.'        
    },
    {
        job_id: hexagon_2.id,
        line: 'Created and enforced a normalized redux state shape for use by the React.js web cleint.'
    },
    {
        job_id: hexagon_2.id,
        line: 'Maintained, improved and designed microservice infrastructures in nodejs and .NET core'        
    },
    {
        job_id: hexagon_2.id,
        line: 'Founding member of a center of excellence for coding standards ensuring proper coding styles and guidelines product wide.'        
    },
    {
        job_id: hexagon_2.id,
        line: 'Designed and implemented a data access layer to interact with a Neo4j graph database.'        
    },
    {
        job_id: hexagon_2.id,
        line: 'Designed RESTful apis using expressJS in node and .NET core for use by a stand alone client and other data collection tools'        
    }
])

# create skills
Skill.create([
    {
        profile_id: profile.id,
        skill_enum: 'language',
        description: 'C#'
    },
    {
        profile_id: profile.id,
        skill_enum: 'language',
        description: 'C++'
    },
    {
        profile_id: profile.id,
        skill_enum: 'language',
        description: 'Ruby'
    },
    {
        profile_id: profile.id,
        skill_enum: 'language',
        description: 'Python'
    },
    {
        profile_id: profile.id,
        skill_enum: 'language',
        description: 'Erlang'
    },
    {
        profile_id: profile.id,
        skill_enum: 'language',
        description: 'Javascript'
    },
    {
        profile_id: profile.id,
        skill_enum: 'language',
        description: 'php'
    },
    {
        profile_id: profile.id,
        skill_enum: 'language',
        description: 'Typescript'
    },
    {
        profile_id: profile.id,
        skill_enum: 'language',
        description: 'Java'
    },
    {
        profile_id: profile.id,
        skill_enum: 'language',
        description: 'F#'
    },
    {
        profile_id: profile.id,
        skill_enum: 'framework',
        description: 'React'
    },
    {
        profile_id: profile.id,
        skill_enum: 'framework',
        description: 'Vue'
    },
    {
        profile_id: profile.id,
        skill_enum: 'framework',
        description: 'Net core'
    },
    {
        profile_id: profile.id,
        skill_enum: 'framework',
        description: 'Laravel'
    },
    {
        profile_id: profile.id,
        skill_enum: 'framework',
        description: 'Rails'
    },
    {
        profile_id: profile.id,
        skill_enum: 'framework',
        description: 'expressJS'
    },    
    {
        profile_id: profile.id,
        skill_enum: 'technology',
        description: 'postgresql'
    },
    {
        profile_id: profile.id,
        skill_enum: 'technology',
        description: 'sql server'
    },
    {
        profile_id: profile.id,
        skill_enum: 'technology',
        description: 'mongoDB'
    },
    {
        profile_id: profile.id,
        skill_enum: 'technology',
        description: 'neo4j'
    },
    {
        profile_id: profile.id,
        skill_enum: 'technology',
        description: 'couchDB'
    },
    {
        profile_id: profile.id,
        skill_enum: 'technology',
        description: 'Docker'
    },
    {
        profile_id: profile.id,
        skill_enum: 'technology',
        description: 'Azure Cloud'
    },
    {
        profile_id: profile.id,
        skill_enum: 'skill',
        description: 'UX'
    },
    {
        profile_id: profile.id,
        skill_enum: 'skill',
        description: 'microservices'
    },
    {
        profile_id: profile.id,
        skill_enum: 'skill',
        description: 'RESTful apis'
    },
    {
        profile_id: profile.id,
        skill_enum: 'skill',
        description: 'full stack development'
    },
    {
        profile_id: profile.id,
        skill_enum: 'skill',
        description: 'relational databases'
    },
    {
        profile_id: profile.id,
        skill_enum: 'skill',
        description: 'no-sql databases'
    },
    {
        profile_id: profile.id,
        skill_enum: 'skill',
        description: 'RESTful apis'
    },
    {
        profile_id: profile.id,
        skill_enum: 'skill',
        description: 'devops'
    },
])