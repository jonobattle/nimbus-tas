# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Site.create(name: "Toowoomba Art Society", pages: [
    Page.new(name: "About Us", slug: "about-us", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: false, pages: [
        Page.new(name: "History of the Toowoomba Art Society", slug: "history", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true),
        Page.new(name: "Committee Members", slug: "committee-members", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true),
        Page.new(name: "Hours of Opening", slug: "hours-of-opening", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true),
        Page.new(name: "Annual Subscription Rates", slug: "annual-subscription-rates", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true)
    ]),
    Page.new(name: "Exhibitions", slug: "exhibitions", template: "columns-4-8", rank: 400, is_enabled: true, is_navigable: false, pages: [
        Page.new(name: "Current", slug: "current", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true),
        Page.new(name: "Upcoming", slug: "upcoming", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true),
        Page.new(name: "Past", slug: "past", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true),
        Page.new(name: "Information", slug: "information", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true),

    ]),
    Page.new(name: "News", slug: "news", template: "columns-4-8", rank: 300, is_enabled: true, is_navigable: false, pages: [
        Page.new(name: "Monthly Newsletter", slug: "monthly-newsletter", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true),
        Page.new(name: "Current News", slug: "current-news", template: "columns-4-8", rank: 200, is_enabled: true, is_navigable: true, pages: [
            Page.new(name: "First News Item", slug: "first-news-item", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true, extras: [
                Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "Here is a quick blurb to describe the news item"),
            ]),
            Page.new(name: "Second News Item", slug: "second-news-item", template: "columns-4-8", rank: 200, is_enabled: true, is_navigable: true, extras: [
                Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "Here is a quick blurb to describe the news item"),
            ]),
            Page.new(name: "Third News Item", slug: "third-news-item", template: "columns-4-8", rank: 300, is_enabled: true, is_navigable: true, extras: [
                Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "Here is a quick blurb to describe the news item"),
            ]),
        ]),
        Page.new(name: "Special Events", slug: "special-events", template: "columns-4-8", rank: 300, is_enabled: true, is_navigable: true),
    ]),
    Page.new(name: "Weekly Activities", slug: "weekly-activities", template: "columns-4-8", rank: 400, is_enabled: true, is_navigable: false, pages: [
        Page.new(name: "Weekly Schedule", slug: "weekly-schedule", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true),
        Page.new(name: "Printmakers Schedule", slug: "printmakers-schedule", template: "columns-4-8", rank: 200, is_enabled: true, is_navigable: true)
    ]),
    Page.new(name: "Artists Gallery", slug: "artists-gallery", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true),
    Page.new(name: "Childrens Art", slug: "childrens-art", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: false, pages: [
        Page.new(name: "Gallery", slug: "gallery", template: "columns-4-8", rank: 200, is_enabled: true, is_navigable: true),
        Page.new(name: "Activities Schedule", slug: "activities-schedule", template: "columns-4-8", rank: 200, is_enabled: true, is_navigable: true)
    ]),
    Page.new(name: "Contact Us", slug: "contact-us", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true)
])





#
#
#
#Site.create(name: "Goodline", desicription: "Brand new site for Goodline", pages: [
#    Page.new(name: "About", slug: "about", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: false, pages: [
#        Page.new(name: "About Goodline", slug: "goodline", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true,
#          body: "<p>Goodline is a locally owned and based company established in 1999 by John Kennedy for the provision of construction and maintenance services to support the mining industry.</p>
#                 <p>Goodline's success and reputation has been built on a track record that exceeds all safety, quality and performance targets as well as a history of delivering projects within deadlines.  This reputation - supported by word of mouth by key industry leaders throughout Australia - has provided widespread endorsement of our work.</p>
#                 <p>Today Goodline employs in excess of 1,000 staff and contractors and provides project and maintenance services to Australia's most influential resource companies.</p>
#                 <p>The key milestones and achievements in Goodline's history:</p>"),
#        Page.new(name: "Mission & Values", slug: "mission-and-values", template: "columns-4-8", rank: 200, is_enabled: true, is_navigable: true,
#          body: "<h3>Our Mission</h3>
#                 <ul>
#                    <li>Creating an incident free workplace combined with the best practice processes, methods and systems to become the contractor of choice in the markets in which we operate.</li>
#                    <li>Providing a workplace with a culture and attitude to take on any challenge.</li>
#                    <li>Fostering a network of relationships between Goodline's most important people (our clients and our employees) to drive growth, innovation and market leading service delivery.</li>
#                 </ul>
#                 <h3>Our Values</h3>
#                 <p>Goodline's staff and management exert a significance focus in being advocates of Goodline's core values - this is why the values are referred to at Goodline as <b>HI FOCUS</b>. Focus on these values continues to deliver superior results in client satisfaction, staff engagement, safety performance and innovation.</p>
#                 <p>These values are explained more in Goodline's Code of Conduct, called <b>The Goodline Way</b>.</p>"),
#        Page.new(name: "Management Team", slug: "management-team", template: "columns-4-8", rank: 300, is_enabled: true, is_navigable: true,
#          body: "<p>Info to come</p>")
#    ]),
#
#    Page.new(name: "Services", slug: "services", template: "columns-4-8", rank: 200, is_enabled: true, is_navigable: false, pages: [
#        Page.new(name: "Modular Movements", slug: "modular-movements", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true,
#                 body: "<p>Content to come</p>"),
#        Page.new(name: "Civil", slug: "civil", template: "columns-4-8", rank: 200, is_enabled: true, is_navigable: true,
#                 body: "<p>Goodline's team of civil specialists have delivered major civil works for our resource clients as well as small civil works in creating beautiful homes and gardens. At Goodline - no job is too big or too small.</p>
#                        <h3>Commercial</h3>
#                        <p>Tilt panels | Load bearing walls | Non load bearing walls | Suspended slabs | Concrete dolphin | Concrete pylon | Road construction | Bridge construction | Insitu-concrete: reinforced, prestressed | Pre-cast concrete | Structural concrete: footings, Slabs and walls | Site preparation | Bulk earthworks | Major concrete works.</p>
#                        <h3>Concreting</h3>
#                        <p>Residential concrete Slabs: house, shed, carport, open | Retainer walls | Load bearing walls | Non load bearing walls | Suspended slabs | Driveways | Paths | Boat ramps | Tilt panels | Exposed, stencil, cover-crete, broomed, chopper, hand trowel.</p>
#                        <h3>Landscaping</h3>
#                        <p>Retainer walls | Tree lopping | Tree planting | Commercial maintenance | Commercial landscaping | Paving walkways | Driveways | Barbeque areas | Patios.</p>"),
#
#        Page.new(name: "Electrical", slug: "electrical", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true,
#                 body: "<p>Goodline's team of electrical specialists are experienced enough to tackle and commercial or non-commercial electrical project. Our services range from design and installation to all forms of repair, inspection, testing and maintenance. No job is too big or too small.</p>
#                        <h3>Commercial</h3><p>Cable installations | Switchgear and control systems | Power systems | Commissioning services | Design assistance | Lighting systems | Office refurbishment | 24 hr breakdown call out | Switch and control rooms | Phone and data installations | Commercial kitchen equipment |Refrigeration |Glycol system | Air conditioning | Matv systems | Safety inspections | Periodic test and tagging | High and low voltage cable | Cable ladders and trays | Instrumentation and tubing | Earthing and lightning protection | Transformers and ring main units.</p>
#                        <h3>Non-Commercial</h3><p>Design assistance | New installations | Extensions | Renovations | 24 hr breakdown call out |Phone and data installations | Safety switches | Safety inspections | Air conditioning | TV point and antennas.</p>"),
#
#        Page.new(name: "Fabrication", slug: "fabrication", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true,
#                 body: "<p>Boilermaking, welding and steel fabrication using TIG, MIG, stick and stainless steel.</p>
#                        <p>Machining, fitting and turning | Line boring | Plant maintenance | Structural fabrication & steel erection | Rigging and crane hire | Scaffolding | Labour hire | Shutdown maintenance | Project management | Mechanical design</p>"),
#
#        Page.new(name: "Plumbing", slug: "plumbing", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true,
#                 body: "<p>Water mains | Sewer mains | Manholes | Pump stations | Septic systems | Stormwater and interceptors | Gasfitting | Backflow protection | HDPE welding: poly pipe welders | Irrigation and pumping | Hot water systems | Thermostatic mixing valves | Treatment plants | Water tanks and bores | Roofing, guttering, wall sheeting and flashings | Sheetmetal work | Drain cleaning.</p>"),
#
#        Page.new(name: "Carpentry", slug: "carpentry", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true,
#                 body: "<p>Goodline's team of carpenters provide the skills and experience to support individuals and major project teams to render top quality deliverables - no matter what the size or scale of the project is.</p>
#                       <p>Design & construct new houses / units | Extensions | Cabinet making | Covered areas sail, shade cloth, metal | Demountables | Kit homes | Removal of asbestos building materials | Residential / commercial sheds, factories, shops, offices | Industrial workshops | Renovations.</p>"),
#
#        Page.new(name: "Vehicle Maintenance", slug: "vehicle-maintenance", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true,
#                 body: "<p>Goodline's team of mechanics are skilled in the maintenance and repair of a broad range of plant and equipment.  From motor vehicles to...</p>"),
#    ]),
#
#    Page.new(name: "Sustainability", slug: "sustainability", template: "columns-4-8", rank: 300, is_enabled: true, is_navigable: false, pages: [
#        Page.new(name: "Health & Safety", slug: "health-and-safety", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true,
#                 body: "<p>At Goodline our number one priority is safety. The ongoing safety of our staff, contractors, clients as well as the public receives our absolute commitment. Goodline investigates each incident to articulate the root cause and immediately implement preventative measures to ensure that reoccurrence is eliminated - this drives our target of being incident free.</p>
#                        <p>Goodline continually reviews all policies, processes and procedures in its OH&S practices with the view achieving and setting best practice safety standards and performance. Goodline's continued focus and commitment to safety has resulted in a consistent performance well ahead of industry standards.</p>
#                        <p>Safety forms part of Goodline's <b>HI-FOCUS</b> values - therefore it is well embedded in the culture of all our people.</p>"),
#
#        Page.new(name: "Quality Assurance", slug: "quality-assurance", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true,
#                 body: "<p>At Goodline we are committed to delivering quality in everything that we do. Our AS/ISO 9001 certified accreditation (first granted in 2004) supports this ongoing commitment to our valued clients.</p><p>At Goodline we strive to maintain and where possible continually improve the quality of our deliverables. Goodline's approach to quality is guided by our Quality Management System which is endorsed and empowered by our people, thus forging quality into our attitude and work ethic.</p>"),
#
#        Page.new(name: "Environment", slug: "environment", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true,
#                 body: "<p>Goodline is committed to a continually reducing its environmental footprint - with a vision of having a completely neutral impact on the environment. Goodline's commitment to the preservation of the environment is evident by our:</p>
#                        <ul>
#                        <li>Performance and reduction in our environmental footprint to date,</li>
#                        <li>Certified Environmental Management System AS/ISO 14001 (first awarded in 2004), and</li>
#                        <li>Planned reductions in environmental impacts.</li>
#                        </ul>"),
#
#        Page.new(name: "Community", slug: "community", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true,
#                 body: "<p>Goodline, through experience has seen the benefits of investing in communities. Such investments are integral in the wellbeing and happiness of our present and future human resources.</p>
#                        <p>Our greatest investment so far would be in education through our projects at the Weipa campus of the Western Cape College; these include landscaped gardens in the junior school, kitchen facilities in the special needs area and our biggest project, the shaded structure over the basketball courts.</p>
#                        <p>Goodline supports and sponsors all community events and organisations including the Weipa fishing challenge, Weipa Bull Ride, Weipa Fun Day, Croc Festival and organisations such as Weipa VMRS, Weipa SES, Weipa Dance Academy and more. We sponsor various sporting teams and individuals in their quest to be the best at state and national levels.</p>
#                        <h3>Indigenous Communities</h3>
#                        <p>Goodline respect and employ aboriginal and indigenous people because we believe in providing opportunities to give back to the community. We believe that having a diversified workforce enriches our working culture.</p>
#                        <p>Goodline has set out to build up the trust in the communities in which we operate through respect for the traditions, its customs, its culture and dignity.</p>
#                        <p>The training and employment of aboriginal and local indigenous people provides economic and job opportunities within these communities. Our focus is on long term full time employment where all employees are paid the same wage rates and conditions for comparable work.</p>
#                        <h3>Major Sponsorships</h3><p>List sponsorships here</p>"),
#
#        Page.new(name: "Awards", slug: "awards", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true,
#                 body: "<p>List the awards here</p>"),
#
#        Page.new(name: "Training", slug: "training", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true,
#                 body: "<p>Overview of GOALS and other training</p>"),
#
#    ]),
#
#
#    Page.new(name: "Our Projects", slug: "projects", template: "custom-goodline-projects", rank: 400, is_enabled: true, is_navigable: true, pages: [
#        Page.new(name: "Christmas Creek Stockyard SMPE&I and Concrete Works", slug: "christmas-creek-stockyard-smpei-and-concrete-works", template: "custom-goodline-project", rank: 100, is_enabled: true, is_navigable: true,
#                 body: "<h2>Christmas Creek Stockyard SMPE&I and Concrete Works</h2><p>Content to come</p>", images: [
#                Image.new(url: "uploads/infocus/In focus 1/In focus 1.1.jpg"),
#                Image.new(url: "uploads/infocus/In focus 1/In focus 1.2.jpg"),
#                Image.new(url: "uploads/infocus/In focus 1/In focus 1.3.jpg"),
#                Image.new(url: "uploads/infocus/In focus 1/In focus 1.4.jpg"),
#                Image.new(url: "uploads/infocus/In focus 1/In focus 1.5.jpg"),
#
#            ], extras: [
#                Extra.new(name: "Project Type", slug: "project_type", type: "string", value: "Civil"),
#                Extra.new(name: "Project Blurb", slug: "project_blurb", type: "string", value: "Goodline played a vital part in the Christmas Creek Expansion Project - one of multiple of Iron Ore Projects endorsed by FMG to complement their existing Pilbara Iron Ore Export Operations.  The Project is part of the Chichester Hub and resulted in a production increase from 45mtpa to 55mtpa.  Key items included in Goodline's scope of works were; installation of conveyor systems, construction of critical foundations, erection of transfer towers, installation of electrical and communication reticulation, installation of all pipework and dust suppression and other works."),
#                Extra.new(name: "Project Client", slug: "project_client", type: "string", value: "Fortescue Metals Group Limited"),
#                Extra.new(name: "Project Year Of Completion", slug: "project_year_of_completion", type: "string", value: "2011"),
#                Extra.new(name: "Project Location", slug: "project_location", type: "string", value: "Christmas Creek 140km North-West of Newman, Western Australia"),
#                Extra.new(name: "Project Overview", slug: "project_overview", type: "string",
#                          value: "The Christmas Creek Expansion Project is one of multiple of Iron Ore Projects endorsed by FMG to add to their existing Pilbara Iron Ore Export Operations.  The Christmas Creek Project is part of the Chichester Hub and resulted in a production increase from 45mtpa to 55mtpa.  It includes:
#                                  <ul><li>Iron Ore hematite mining operations</li><li>Main truck dumping facility</li><li>Crushing, Screening and Processing plant</li><li>Network of stockyard conveyors including 5 conveyors, a stacker and a reclaimer</li></ul>"),
#
#            ]),
#
#        Page.new(name: "Nelson Point Conveyor Deconstruction", slug: "nelson-point-conveyor-deconstruction", template: "custom-goodline-project", rank: 100, is_enabled: true, is_navigable: true,
#             body: "<h2>Nelson Point Conveyor Deconstruction</h2><p>Content to come</p>", images: [
#                Image.new(url: "uploads/infocus/In focus 2/In focus 2.1.JPG"),
#                Image.new(url: "uploads/infocus/In focus 2/In focus 2.2.JPG"),
#                Image.new(url: "uploads/infocus/In focus 2/In focus 2.3.JPG"),
#                Image.new(url: "uploads/infocus/In focus 2/In focus 2.4.JPG"),
#                Image.new(url: "uploads/infocus/In focus 2/In focus 2.5.JPG"),
#            ], extras: [
#                Extra.new(name: "Project Type", slug: "project_type", type: "string", value: "Mechanical"),
#                Extra.new(name: "Project Blurb", slug: "project_blurb", type: "string", value: "FASTJV FAST - Fluor SKM Iron Ore Joint Venture, is a partnership between global business leaders; working with BHP Billiton Iron Ore on its multi-billion dollar growth plans in Western Australia. The project forms part of the BHP Port Hedland Inner Harbour Rapid Growth Project - expansion to 300 million MTPA. The Port Ore Handling Lump Rescreening Plant LRP3 Deconstruction works included the deconstruction of multiple structural, mechanical and piping infrastructure, deconstruction of the Tertiary Screening Building TSB2 and associated conveyors at Nelson Point as part of the conversion of TSB2 to Lump Rescreening Plant LRP3."),
#                Extra.new(name: "Project Client", slug: "project_client", type: "string", value: "FAST JV"),
#                Extra.new(name: "Project Year Of Completion", slug: "project_year_of_completion", type: "string", value: "2011"),
#                Extra.new(name: "Project Location", slug: "project_location", type: "string", value: "Port Hedland, WA"),
#                Extra.new(name: "Project Overview", slug: "project_overview", type: "string",
#                          value: "FASTJV Port Ore Handling Lump Rescreening Plant LRP3 Deconstruction works. It includes:
#                          <ul><li>Structural</li><li>Mechanical</li><li>Piping</li><li>Deconstruction of the Tertiary Screening Building TSB2 and associated conveyors at Nelson Point as part of the conversion of TSB2 to Lump Rescreening Plant LRP3.</li><li>BHP Port Hedland Inner Harbour Rapid Growth Project. Expansion to 300 million MTPA.</li></ul>"),
#                Extra.new(name: "Project Scope Of Work", slug: "project_scope_of_work", type: "string", value: "Goodline's deconstruction of conveyors at Nelson Point scope of work includes:
#                          <ul><li>Removal of lump rescreening plant which includes feeders, screens and chute work.</li><li>Partial and total deconstruction and removal of multiple conveyors.</li></ul>"),
#
#            ]),
#
#        Page.new(name: "Gallery Installation", slug: "gallery-installation", template: "custom-goodline-project", rank: 100, is_enabled: true, is_navigable: true,
#             body: "<h2>Gallery Installation</h2><p>Content to come</p>", images: [
#                Image.new(url: "uploads/infocus/In focus 3/In focus 3.1.jpg"),
#                Image.new(url: "uploads/infocus/In focus 3/In focus 3.2.jpg"),
#                Image.new(url: "uploads/infocus/In focus 3/In focus 3.3.jpg"),
#            ], extras: [
#                Extra.new(name: "Project Type", slug: "project_type", type: "string", value: "Mechanical"),
#                Extra.new(name: "Project Blurb", slug: "project_blurb", type: "string", value: "FASTJV FAST - Fluor SKM Iron Ore Joint Venture, is a partnership between global business leaders; working with BHP Billiton Iron Ore on its multi-billion dollar growth plans in Western Australia. The project forms part of the BHP Port Hedland Inner Harbour Rapid Growth Project - expansion to 300 million MTPA. Goodline's scope included structural installation and alignment of 9 galleries and 12 trestles, the installation of GTU Tower, this installation of 2 substations (3x50T lifts each), the installation of cable tray supports from substation to new wharf and the installation of transformers on the new wharf."),
#                Extra.new(name: "Project Client", slug: "project_client", type: "string", value: "FAST JV"),
#                Extra.new(name: "Project Year Of Completion", slug: "project_year_of_completion", type: "string", value: "2011"),
#                Extra.new(name: "Project Location", slug: "project_location", type: "string", value: "Port Hedland, WA"),
#                Extra.new(name: "Project Overview", slug: "project_overview", type: "string",
#                          value: "FAST JV SMP Early works. It includes:
#                                  <ul><li>Structural</li><li>Mechanical</li><li>Piping</li><li>BHP PHIHP Rapid Growth Project. Expansion to 300 million MTPA.</li></ul>"),
#                Extra.new(name: "Project Scope Of Work", slug: "project_scope_of_work", type: "string", value: "Goodline's SMP at Nelson Point scope of work includes:
#                          <ul><li>Structural installation and alignment of nine Galleries</li><li>Structural installation and alignment of twelve Trestles</li><li>Installation of GTU Tower</li><li>Installation of two Substations (3 x 50T lifts each)</li><li>Installation of Cable Tray Supports from Substation to new wharf</li><li>Installation of Transformers to new wharf</li><li>Installation of Raw Water and Slurry Piping on Berth Dolphins</li></ul>"),
#
#            ]),
#
#        Page.new(name: "T155 Project, TUL, Kerman Bridges", slug: "t155-project-tul-kerman-bridges", template: "custom-goodline-project", rank: 100, is_enabled: true, is_navigable: true,
#                 body: "<h2>T155 Project, TUL, Kerman Bridges</h2><p>Content to come</p>", images: [
#                Image.new(url: "uploads/infocus/In focus 4/In focus 4.1.JPG"),
#                Image.new(url: "uploads/infocus/In focus 4/In focus 4.2.jpg"),
#                Image.new(url: "uploads/infocus/In focus 4/In focus 4.3.JPG"),
#                Image.new(url: "uploads/infocus/In focus 4/In focus 4.4.jpg"),
#            ], extras: [
#                Extra.new(name: "Project Type", slug: "project_type", type: "string", value: "Mechanical"),
#                Extra.new(name: "Project Blurb", slug: "project_blurb", type: "string", value: "Fortescue Metals Group developed a comprehensive mine, rail and port facility for the export of 155Mtpa of Iron Ore.  Some of the project's key features included the construction of Cloudbreak mine including rail loading facilities, rail unloading facilities at Anderson Pt, a 250km rail link between Cloudbreak and Port Hedland, new conveyor systems, and multiple stackers and reclaimers. Goodline is intrinsically involved in the delivery of multidisciplinary construction works across civil, structural, mechanical and plumbing works."),
#                Extra.new(name: "Project Client", slug: "project_client", type: "string", value: "Fortescue Metals Group Limited"),
#                Extra.new(name: "Project Year Of Completion", slug: "project_year_of_completion", type: "string", value: "In Progress"),
#                Extra.new(name: "Project Location", slug: "project_location", type: "string", value: "Port Hedland, WA"),
#                Extra.new(name: "Project Overview", slug: "project_overview", type: "string",
#                          value: "Fortescue Metals Group developed a comprehensive mine, rail and port facility for the export of 155Mtpa of Iron Ore.  The project included:
#                            <ul>
#                            <li>Construction of Cloudbreak mine with crushing, screening, and thickening facilities.</li>
#                            <li>Rail loading facilities at Cloudbreak mine</li>
#                            <li>Rail unloading facilities at Anderson Pt</li>
#                            <li>250km rail link between Cloudbreak and Port Hedland</li>
#                            <li>Anderson Pt Stockyards and Shiploading Port facility at Port Hedland including significant land reclamation prior to civil commencement</li>
#                            <li>A new overland conveying system from train unloader to stockyard, then to Shiploader</li>
#                            <li>2 Product Stackers</li>
#                            <li>1 Product Reclaimer</li>
#                            <li>Dual Berth Wharf with one Shiploader</li>
#                            </ul>
#                          "),
#                Extra.new(name: "Project Scope Of Work", slug: "project_scope_of_work", type: "string", value: "GGoodline's Civil, Structural, Mechanical and Piping Construction scope of work included:
#                          <ul><li>Train Unloader</li>
#                          <li>Installation of Tippler Cells, Apron Feeders &amp; Lower Chutes</li>
#                          <li>Kerman Bridges</li>
#                          <li>Assembly and Installation of 12 overland Kerman Bridge conveyor module sections</li>
#                          <li>Henderson Build</li>
#                          <li>Modular build of six transfer stations and sampling stations in Henderson WA and then shipped to Port Hedland for installation.</li>
#                          <li>Underground Dust Suppression</li>
#                          <li>12km HDPE piping, 225 cannons</li>
#                          <li>Stockyard</li>
#                          <li>10km of Concrete Bored Pier Conveyor Foundations</li>
#                          <li>7 Conveyors systems totalling 10km</li>
#                          <li>4 Transfer Towers</li>
#                          <li>1 Sample Station</li>
#                          <li>20km of Conveyor Belt totalling 70 belt splices</li>
#                          <li>Project Management</li>
#                          <li>Commissioning and Initial Operation Support</li></ul>"),
#
#            ]),
#
#        Page.new(name: "Anderson Point Stacker 704 and Reclaimer 703 Erection and Commissioning", slug: "anderson-point-stacker-reclaimer", template: "custom-goodline-project", rank: 100, is_enabled: true, is_navigable: true,
#                 body: "<h2>Anderson Point Stacker 704 and Reclaimer 703 Erection and Commissioning</h2><p>Content to come</p>", images: [
#                Image.new(url: "uploads/infocus/In focus 5/In focus 5.1.png")
#            ], extras: [
#                Extra.new(name: "Project Type", slug: "project_type", type: "string", value: "Civil"),
#                Extra.new(name: "Project Blurb", slug: "project_blurb", type: "string", value: "Goodline - a proven partner in the expansion of the current capacity of the existing facilities being operated by Fortescue Metals Group (FMG) at Anderson Point in Port Hedland.  The 155Mtpa expansion project includes the erection and commissioning of multiple reclaimers and stackers.  Goodline is a proud partner to Thyssenkrupp in the delivery of services for this critical iron ore infrastructure project."),
#                Extra.new(name: "Project Client", slug: "project_client", type: "string", value: "Thyssenkrupp"),
#                Extra.new(name: "Project Year Of Completion", slug: "project_year_of_completion", type: "string", value: "2012"),
#                Extra.new(name: "Project Location", slug: "project_location", type: "string", value: "Port Hedland, WA"),
#                Extra.new(name: "Project Overview", slug: "project_overview", type: "string",
#                          value: "Expansion of the current capacity of the existing facilities being operated by Fortescue Metals Group (FMG) at Anderson Point, Port Hedland to meet Company goals and market demand. The project will expand the capacity of the facility in two stages, from 55Mtpa to 60Mtpa and finally to 155Mtpa by the end of quarter four 2012."),
#                Extra.new(name: "Project Scope Of Work", slug: "project_scope_of_work", type: "string", value: "Goodline's T155 Expansion project at Anderson Point scope of work includes:
#                          <ul><li>Erection and commissioning of Stacker 704</li><li>Erection and commissioning of Reclaimer 703</li></ul>"),
#
#            ]),
#
#    ]),
#
#    Page.new(name: "Careers", slug: "careers", template: "custom-goodline-careers", rank: 400, is_enabled: true, is_navigable: true,
#      body: "<p>The window below contains the available positions available at Goodline etc etc etc..</p><br/>"),
#
#    Page.new(name: "Contact", slug: "contact", template: "columns-4-8", rank: 1000, is_enabled: true, is_navigable: false, pages: [
#        Page.new(name: "Corporate Contacts", slug: "corporate-contacts", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true,
#                 body: "<p>Content to come</p>"),
#        Page.new(name: "Our Offices", slug: "our-offices", template: "columns-4-8", rank: 200, is_enabled: true, is_navigable: true,
#                 body: "
#<h3>Head Office - Kawana, QLD</h3>
#<p>
#<b>Address</b><br/>
#Level 2, 2 Innovation Way<br/>
#Kawana Waters QLD 4575</p>
#<p>
#<b>Phone</b> (07) 5413 5400<br/>
#<b>Fax</b> (07) 5438 8972
#</p>
#<p><iframe width='620' height='200' frameborder='0' scrolling='no' marginheight='0' marginwidth='0' src='https://maps.google.com.au/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Level+2,+2+Innovation+Way+Kawana+Waters+QLD+4575&amp;aq=&amp;sll=-27.559816,151.950656&amp;sspn=0.042725,0.045662&amp;t=m&amp;ie=UTF8&amp;hq=&amp;hnear=Edgewater+Lake+Kawana,+21+Innovation+Pkwy,+Birtinya+Queensland+4575&amp;ll=-26.736872,153.122206&amp;spn=0.015331,0.047207&amp;z=14&amp;iwloc=near&amp;output=embed'></iframe><br /><small><a href='https://maps.google.com.au/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Level+2,+2+Innovation+Way+Kawana+Waters+QLD+4575&amp;aq=&amp;sll=-27.559816,151.950656&amp;sspn=0.042725,0.045662&amp;t=m&amp;ie=UTF8&amp;hq=&amp;hnear=Edgewater+Lake+Kawana,+21+Innovation+Pkwy,+Birtinya+Queensland+4575&amp;ll=-26.736872,153.122206&amp;spn=0.015331,0.047207&amp;z=14&amp;iwloc=A'>View Larger Map</a></small></p>
#<br/>
#
#<h3>Weipa Office</h3>
#<p>
#<b>Address</b><br/>
#30 Iraci Avenue<br/>
#Weipa QLD 4874</p>
#<p>
#<b>Phone</b> (07) 4090 6500<br/>
#<b>Fax</b> (07) 4069 7686
#</p>
#<p><iframe width='620' height='200' frameborder='0' scrolling='no' marginheight='0' marginwidth='0' src='https://maps.google.com.au/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=30+Iraci+Avenue+Weipa+QLD+4874&amp;aq=&amp;sll=-26.736858,153.122171&amp;sspn=0.043041,0.045662&amp;t=m&amp;ie=UTF8&amp;hq=&amp;hnear=30+Iraci+Crescent,+Evans+Landing+Queensland+4874&amp;ll=-12.660103,141.853924&amp;spn=0.016749,0.053215&amp;z=14&amp;iwloc=near&amp;output=embed'></iframe><br /><small><a href='https://maps.google.com.au/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=30+Iraci+Avenue+Weipa+QLD+4874&amp;aq=&amp;sll=-26.736858,153.122171&amp;sspn=0.043041,0.045662&amp;t=m&amp;ie=UTF8&amp;hq=&amp;hnear=30+Iraci+Crescent,+Evans+Landing+Queensland+4874&amp;ll=-12.660103,141.853924&amp;spn=0.016749,0.053215&amp;z=14&amp;iwloc=A'>View Larger Map</a></small></p>
#
#<br/>
#<h3>Port Hedland Office</h3>
#<p>
#<b>Address</b><br/>
#6 Murrena Street<br/>
#Wedgefield WA 6721</p>
#<p>
#<b>Phone</b> (08) 9160 2600<br/>
#<b>Fax</b> (08) 9172 5944
#</p>
#<p><iframe width='620' height='200' frameborder='0' scrolling='no' marginheight='0' marginwidth='0' src='https://maps.google.com.au/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=6+Murrena+Street+Wedgefield+WA+6721&amp;aq=&amp;sll=-12.660071,141.85401&amp;sspn=0.011756,0.011576&amp;t=m&amp;ie=UTF8&amp;hq=&amp;hnear=6+Murrena+St,+Wedgefield+Western+Australia+6721&amp;ll=-20.373274,118.591061&amp;spn=0.016092,0.053215&amp;z=14&amp;iwloc=near&amp;output=embed'></iframe><br /><small><a href='https://maps.google.com.au/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=6+Murrena+Street+Wedgefield+WA+6721&amp;aq=&amp;sll=-12.660071,141.85401&amp;sspn=0.011756,0.011576&amp;t=h&amp;ie=UTF8&amp;hq=&amp;hnear=6+Murrena+St,+Wedgefield+Western+Australia+6721&amp;ll=-20.373274,118.591061&amp;spn=0.016092,0.053215&amp;z=14&amp;iwloc=A'>View Larger Map</a></small></p>
#
#<br/>
#<h3>Darwin Office</h3>
#<p>
#<b>Address</b><br/>
#35 Lilwall Road<br/>
#East Arm NT 0822</p>
#<p>
#<b>Phone</b> (08) 8944 5000<br/>
#<b>Fax</b> (08) 8944 5000
#</p>
#<p><iframe width='600' height='200' frameborder='0' scrolling='no' marginheight='0' marginwidth='0' src='https://maps.google.com.au/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=35+Lilwall+Road+East+Arm+NT+0822&amp;aq=&amp;sll=-20.373251,118.591094&amp;sspn=0.011295,0.011576&amp;t=m&amp;ie=UTF8&amp;hq=&amp;hnear=35+Lilwall+Rd,+East+Arm+Northern+Territory+0822&amp;ll=-12.473034,130.921926&amp;spn=0.016761,0.051498&amp;z=14&amp;iwloc=near&amp;output=embed'></iframe><br /><small><a href='https://maps.google.com.au/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=35+Lilwall+Road+East+Arm+NT+0822&amp;aq=&amp;sll=-20.373251,118.591094&amp;sspn=0.011295,0.011576&amp;t=m&amp;ie=UTF8&amp;hq=&amp;hnear=35+Lilwall+Rd,+East+Arm+Northern+Territory+0822&amp;ll=-12.473034,130.921926&amp;spn=0.016761,0.051498&amp;z=14&amp;iwloc=A'>View Larger Map</a></small></p>
#
#
#
#"),
#        Page.new(name: "Contact Us", slug: "us", template: "columns-4-8", rank: 300, is_enabled: true, is_navigable: true,
#                 body: "<h3>No question is too big or too small</h3>
#<p>To get in contact with us or to make a general enquiry please call one of our offices on the numbers below or fill out our contact form.</p>
#<p>
# <form class='form'>
#    <fieldset>
#    <div class='control-group'>
#
#          <!-- Text input-->
#          <label class='control-label' for='input01'>Name</label>
#          <div class='controls'>
#            <input type='text' placeholder='Your full name' class='input-xlarge'>
#            <p class='help-block'></p>
#          </div>
#        </div><div class='control-group'>
#
#          <!-- Text input-->
#          <label class='control-label' for='input01'>Email</label>
#          <div class='controls'>
#            <input type='text' placeholder='Your email address' class='input-xlarge'>
#            <p class='help-block'></p>
#          </div>
#        </div>
#
#
#
#    <div class='control-group'>
#
#          <!-- Textarea -->
#          <label class='control-label'>Enquiry</label>
#          <div class='controls'>
#            <div class='textarea'>
#                  <textarea type='' class=''> </textarea>
#            </div>
#          </div>
#        </div>
#
#    <div class='control-group'>
#          <label class='control-label'></label>
#
#          <!-- Button -->
#          <div class='controls'>
#            <button class='btn btn-inverse'>Submit Enquiry</button>
#          </div>
#        </div>
#
#    </fieldset>
#  </form></p>"),
#    ])
#
#])