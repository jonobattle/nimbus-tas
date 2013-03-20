# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Site.create(name: "Toowoomba Art Society", pages: [
    Page.new(name: "About Us", slug: "about-us", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: false, pages: [
        Page.new(name: "History of the Toowoomba Art Society", slug: "history", template: "columns-12", rank: 100, is_enabled: true, is_navigable: true, body: "
            <h3>Early days of the Toowoomba Art Society</h3><img class='pull-right' src='/uploads/news/gallery.jpg'><p>Sometime before November 1925 a group of women had met and discussed the idea of forming an Art Club.  The Art Club membership changed continually, it seems, with people's work demanding they travel or, especially for the women, marriages.  The women gathered at Miss Aebi's studio were the wives of businessmen, a doctor and single women like Miss Aebi, who taught piano or worked in other businesses.  No doubt a few were older, single women who were heavily involved in the community through Red Cross, the Country Women's Association and their church. But younger women were involved from the beginning.  
            The first meeting of the Toowoomba Art Club, held at Miss Aebi's Studio in Russell Street was attended by - Mrs Brown, Mrs James, Mrs Oehlman and Miss Aebi.  Excused were Mrs D Horn, Mrs Leamon and Misses A and M Stewart.
            At the former meeting in the presence of Miss Aebi, Mrs Brown, Mrs D Horn, Miss E Jones, the Misses Ethel and Eileen Priest, M and A Stewart, Miss Warren the subject of forming an Art Club in Toowoomba was the subject of discussion, and Miss Aebi was charged with convoking, on a convenient date, another meeting at which the matter would be further discussed.</p>
            <p>The meeting,  Miss Aebi in the Chair, thought it necessary to proceed with the election of a preliminary committee, consisting of a president, vice-president, hon. Secretary, treasurer and hon. Instructor with the task to organise the project.  Of those present only Miss Aebi and Mrs James were ready to take office; the former accepting the temporary charge of hon. Instructor, and the latter of temporary president.   The meeting decided to ask Miss Eileen Priest to accept the charge of temporary secretary, Miss E Jones as treasurer pro-tem & A Stewart as temp. vice-president.  Miss Aebi offered her studio free of charge for the purpose of the club; an offer which was accepted in an amended form, to the effect that the club would defray the cost of lighting, hiring of chairs, & other incidental expenses connected with the meetings.  It was further agreed to ask a prominent  Toowoomba gentleman to accept the position of Patron of the Club, with a view to obtain his advice with regards to exhibitions and other matters of public interest.  Miss Aebi communicated the following names as prospective Club members:- Miss Aebi; Mrs Brown; Mrs Horn; Mrs James; Miss Jones; Miss Kanowski; Miss McCulloch; Mrs Leamon; Mrs Oehlman; Misses Ethel & EileenPriest. Misses A & M Stewart; Miss Warren; Miss Turner; Master W Dickson and Jim Jordan, and proposed that Mr and Mrs Lister should be invited to join.</p>
            <p>It was proposed and carried unanimously that a draft of rules, discussed at the first meeting and given by Miss Priest should be typed and amended and submitted to each of the prospective members to peruse, and, if so disposed, to make amendments which should be finally discussed & to witness their consent to become foundation members.  The draft should be signed by prospective members, and then returned to one of the temporary committee members.</p>
            <p>The question of deferring the foundation of the club until after the New Year was then raised and discussed, and it was decided to proceed without delay, so that the New Year should see the Club organised for work.  To this end it was proposed to call a meeting for Wednesday, November 11th, when all those who intended to become foundation members should appear to finally arrange the organisation of the club, by accepting the rules drafted in their amended form.  After this date the distinction of becoming a foundation member should be withdrawn and new members would be registered as active members on paying an entrance of 5/- beside the annual fee.  Such members admission should be made by open ballot in the next meeting of the club.</p>
            "),     

        Page.new(name: "Committee Members", slug: "committee-members", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true),
        Page.new(name: "Hours of Opening", slug: "hours-of-opening", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true),
        Page.new(name: "Annual Subscription Rates", slug: "annual-subscription-rates", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true)
    ]),
    Page.new(name: "Exhibitions", slug: "exhibitions", template: "exhibition-columns-12", rank: 400, is_enabled: true, is_navigable: false, pages: [

        # Page.new(name: "Information", slug: "information", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true),

        Page.new(name: "Youth Exhibition", slug: "youth-exhibition", template: "exhibition-columns-4-8", rank: 100, is_enabled: true, is_navigable: true, body: "CA vibrant and exciting exhibition of paintings, drawings and sculptures by the primary and secondary school students who have attended Saturday and after school classes during the year.", extras: [
            Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "An exhibition of work by the children and youth who attended classes during the year."),
            Extra.new(name: "By", slug: "by", type: "string", value: "Young members of TAS"),
            Extra.new(name: "Start Date", slug: "start-date", type: "date", value: "2013-11-18"),
            Extra.new(name: "Finish Date", slug: "finish-date", type: "date", value: "2013-12-07"),
            Extra.new(name: "Official Opening Date", slug: "official-opening-date", type: "date", value: "2013-11-23"),
            Extra.new(name: "Official Opening Time", slug: "official-opening-time", type: "date", value: "10:00:00"),

        ], images: [
            Image.new(url: "uploads/news/gallery.jpg"),
        ]),        

        Page.new(name: "People, Places, Funny Faces", slug: "people-places-funny-faces", template: "exhibition-columns-4-8", rank: 100, is_enabled: true, is_navigable: true, body: "A light-hearted visual commentary on life, people and places - sometimes real, somewhat abstracted, but entirely imagined.", extras: [
            Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "A light-hearted visual commentary on life, people and places - sometimes real, somewhat abstracted, but entirely imagined."),
            Extra.new(name: "By", slug: "by", type: "string", value: "Teresa Mundt"),
            Extra.new(name: "Start Date", slug: "start-date", type: "date", value: "2013-07-22"),
            Extra.new(name: "Finish Date", slug: "finish-date", type: "date", value: "2013-08-17"),
            Extra.new(name: "Official Opening Date", slug: "official-opening-date", type: "date", value: "2013-07-27"),
            Extra.new(name: "Official Opening Time", slug: "official-opening-time", type: "date", value: "14:00:00"),

        ], images: [
            Image.new(url: "uploads/exhibition/Tree.jpg"),
        ]),   



        Page.new(name: "The Spaces In Between", slug: "the-spaces-in-between", template: "exhibition-columns-4-8", rank: 100, is_enabled: true, is_navigable: true, body: "Three very accomplished artists from Tenterfield and Stanthorpe interpreting the one concept in very different ways in drawings, paintings, sculptures, textiles and mixed media.", extras: [
            Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "Feature artist in our corridor space is Joan Kennedy."),
            Extra.new(name: "By", slug: "by", type: "string", value: "Margaret Oban Dowe, Maggie Brockie and Sue Jurd"),
            Extra.new(name: "Start Date", slug: "start-date", type: "date", value: "2013-02-25"),
            Extra.new(name: "Finish Date", slug: "finish-date", type: "date", value: "2013-03-23"),
            Extra.new(name: "Official Opening Date", slug: "official-opening-date", type: "date", value: "2013-02-25"),
            Extra.new(name: "Official Opening Time", slug: "official-opening-time", type: "date", value: "10:00:00"),

        ], images: [
            Image.new(url: "uploads/exhibition/Maggie_possum.bmp"),
        ]),   

        Page.new(name: "Monday All Sorts", slug: "monday-all-sorts", template: "exhibition-columns-4-8", rank: 100, is_enabled: true, is_navigable: true, body: "Works by the Monday Art in Bark Group using bark and various other mediums.", extras: [
            Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "Works by the Monday Art in Bark Group using bark and various other mediums."),
            Extra.new(name: "By", slug: "by", type: "string", value: "Art In Bark Group"),
            Extra.new(name: "Start Date", slug: "start-date", type: "date", value: "2013-06-24"),
            Extra.new(name: "Finish Date", slug: "finish-date", type: "date", value: "2013-07-20"),
            Extra.new(name: "Official Opening Date", slug: "official-opening-date", type: "date", value: "2013-06-29"),
            Extra.new(name: "Official Opening Time", slug: "official-opening-time", type: "date", value: "14:00:00"),

        ], images: [
            Image.new(url: "uploads/news/gallery.jpg"),
        ]),   

        Page.new(name: "The Big Leap", slug: "the-big-leap", template: "exhibition-columns-4-8", rank: 100, is_enabled: true, is_navigable: true, body: "Two artists who have very different approaches to making art but who share the enthusiasm, fun and joy that the 'doing' provides", extras: [
            Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "Two artists who have very different approaches to making art but who share the enthusiasm, fun and joy that the 'doing' provides."),
            Extra.new(name: "By", slug: "by", type: "string", value: "Sabine Kehoe and Janice Gleeson"),
            Extra.new(name: "Start Date", slug: "start-date", type: "date", value: "2013-03-25"),
            Extra.new(name: "Finish Date", slug: "finish-date", type: "date", value: "2013-04-20"),
            Extra.new(name: "Official Opening Date", slug: "official-opening-date", type: "date", value: "2013-04-01"),
            Extra.new(name: "Official Opening Time", slug: "official-opening-time", type: "date", value: "14:00:00"),

        ], images: [
            Image.new(url: "uploads/exhibition/thebigleap/Janice &amp_ Sabine web.jpg"),
            Image.new(url: "uploads/exhibition/thebigleap/Janice Absent Madonna.jpg"),
            Image.new(url: "uploads/exhibition/thebigleap/Janice's The Sleeping Garden.jpg"),
            Image.new(url: "uploads/exhibition/thebigleap/Sabine's dog.jpg"),
            Image.new(url: "uploads/exhibition/thebigleap/Sabine's primulas.jpg"),
        ]),   

        Page.new(name: "Paint and Spatter", slug: "oil-water", template: "exhibition-columns-4-8", rank: 100, is_enabled: true, is_navigable: true, body: "A joint exhibition by Roslyn Cranch and Marie-Therese Gould. A Japanese pictorial from Roslyn's trip to Japan and a kaleidoscope of images from Marie-Therese's artistic ideas.Monday-Sunday 10am-2pm, Thursday 10am-1pm, Admission is free", extras: [
            Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "A joint exhibition by Roslyn Cranch and Marie-Therese Gould"),
            Extra.new(name: "By", slug: "by", type: "string", value: "The Tuesday 'Paint and Spatter' group"),
            Extra.new(name: "Start Date", slug: "start-date", type: "date", value: "2013-10-21"),
            Extra.new(name: "Finish Date", slug: "finish-date", type: "date", value: "2013-11-16"),
            Extra.new(name: "Official Opening Date", slug: "official-opening-date", type: "date", value: "2012-10-16"),
            Extra.new(name: "Official Opening Time", slug: "official-opening-time", type: "date", value: "14:00:00"),

        ], images: [
            Image.new(url: "uploads/news/gallery.jpg"),
        ]),        

        Page.new(name: "Annual Toowoomba Art Society Members Exhibition", slug: "annual-toowoomba-art-society-members-exhibition-in-conjunction-with-the-carnival-of-flowers", template: "exhibition-columns-4-8", rank: 100, is_enabled: true, is_navigable: true, body: "Held in conjunction with the Carnival of Flowers, the exhibition comprises selected works by TAS members and incorporates the judging of the Fred Gardiner Award for Best Picture and the People's Choice Award", extras: [
            Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "Held in conjunction with the Carnival of Flowers, the exhibition comprises selected works by TAS members and incorporates the judging of the Fred Gardiner Award for Best Picture and the People's Choice Award"),
            Extra.new(name: "By", slug: "by", type: "string", value: "TAS Members"),
            Extra.new(name: "Start Date", slug: "start-date", type: "date", value: "2013-09-16"),
            Extra.new(name: "Finish Date", slug: "finish-date", type: "date", value: "2013-10-19"),
            Extra.new(name: "Official Opening Date", slug: "official-opening-date", type: "date", value: "2013-09-20"),
            Extra.new(name: "Official Opening Time", slug: "official-opening-time", type: "date", value: "18:30:00"),

        ], images: [
            Image.new(url: "uploads/exhibition/2012_prizewinner.jpg"),
        ]),        

        Page.new(name: "Drawn From Life", slug: "drawing-from-life", template: "exhibition-columns-4-8", rank: 100, is_enabled: true, is_navigable: true, body: "Works on paper by members of the Monday and Thursday Life Drawing classes. The artists have a range of drawing experience and works are in a variety of mediums.", extras: [
            Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "Works on paper by members of the Monday and Thursday Life Drawing classes. The artists have a range of drawing experience and works are in a variety of mediums."),
            Extra.new(name: "By", slug: "by", type: "string", value: "Life Drawing Classes"),
            Extra.new(name: "Start Date", slug: "start-date", type: "date", value: "2013-04-22"),
            Extra.new(name: "Finish Date", slug: "finish-date", type: "date", value: "2013-05-18"),
            Extra.new(name: "Official Opening Date", slug: "official-opening-date", type: "date", value: "2013-04-26"),
            Extra.new(name: "Official Opening Time", slug: "official-opening-time", type: "date", value: "18:30:00"),

        ], images: [
            Image.new(url: "uploads/exhibition/Reclining_nude_from__Life_in_the_Raw__2012.jpg"),
        ]),        

        Page.new(name: "Australia - Fond Memories", slug: "australia-fond-memories", template: "exhibition-columns-4-8", rank: 100, is_enabled: true, is_navigable: true, body: "Vibrant, living, colourful images reflect the memories, thoughts and emotions of the two artists' Australian upbringing.", extras: [
            Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "Vibrant, living, colourful images reflect the memories, thoughts and emotions of the two artists' Australian upbringing."),
            Extra.new(name: "By", slug: "by", type: "string", value: "Denise Nys and Kevin Burns"),
            Extra.new(name: "Start Date", slug: "start-date", type: "date", value: "2013-08-19"),
            Extra.new(name: "Finish Date", slug: "finish-date", type: "date", value: "2013-09-14"),
            Extra.new(name: "Official Opening Date", slug: "official-opening-date", type: "date", value: "2013-08-24"),
            Extra.new(name: "Official Opening Time", slug: "official-opening-time", type: "date", value: "18:30:00"),

        ], images: [
            Image.new(url: "uploads/exhibition/My_Beach.jpg"),
        ]),        

        Page.new(name: "Printmakers Workshop", slug: "printmakers-workshop", template: "exhibition-columns-4-8", rank: 100, is_enabled: true, is_navigable: true, body: "NEXT PRINT WORKSHOP ... Fri and Sat Nov 2nd and 3rd ... approx 10am to 2 pm. Held in Studio 1 ... 'HOW TO MONOTYPE PRINT' using Watercolours. There will be a demonstration showing what materials to use and how to use them. Students will learn all of the techniques and also how to use the printing press. For more information and what to bring along, please phone Sandra on 0412 438 696.", extras: [
            Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "HOW TO MONOTYPE PRINT using Watercolours."),
            Extra.new(name: "By", slug: "by", type: "string", value: ""),
            Extra.new(name: "Start Date", slug: "start-date", type: "date", value: "2012-11-02"),
            Extra.new(name: "Finish Date", slug: "finish-date", type: "date", value: "2012-11-03"),
            Extra.new(name: "Official Opening Date", slug: "official-opening-date", type: "date", value: "2012-11-02"),
            Extra.new(name: "Official Opening Time", slug: "official-opening-time", type: "date", value: "10:00:00"),

        ], images: [
            Image.new(url: "uploads/exhibition/SANY0202.JPG"),
        ]),        

        Page.new(name: "Oil & Water", slug: "oil-water", template: "exhibition-columns-4-8", rank: 100, is_enabled: true, is_navigable: true, body: "A joint exhibition by Roslyn Cranch and Marie-Therese Gould. A Japanese pictorial from Roslyn's trip to Japan and a kaleidoscope of images from Marie-Therese's artistic ideas.Monday-Sunday 10am-2pm, Thursday 10am-1pm, Admission is free", extras: [
            Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "A joint exhibition by Roslyn Cranch and Marie-Therese Gould"),
            Extra.new(name: "By", slug: "by", type: "string", value: "Roslyn Cranch and Marie-Therese Gould"),
            Extra.new(name: "Start Date", slug: "start-date", type: "date", value: "2012-10-16"),
            Extra.new(name: "Finish Date", slug: "finish-date", type: "date", value: "2012-11-18"),
            Extra.new(name: "Official Opening Date", slug: "official-opening-date", type: "date", value: "2012-10-16"),
            Extra.new(name: "Official Opening Time", slug: "official-opening-time", type: "date", value: "10:00:00"),

        ], images: [
            Image.new(url: "uploads/exhibition/SANY0002.JPG"),
        ]),        


        Page.new(name: "Corridor Exhibition", slug: "corridor-exhibition", template: "exhibition-columns-4-8", rank: 100, is_enabled: true, is_navigable: true, body: "Artist's statement: I was born and educated in Toowoomba and have lived here most of my adult life except from 1978 to 1989 when my husband and family moved to Rockhampton for work commitments and our children went to school there. My earliest ambition was to be a commercial artist but unfortunately studies were not readily available - and so I was mostly self taught. I have always loved and been interested in sketching and painting but up until about 10 years ago, I had done nothing about it. Since then I have attended various courses and classes and tried to learn as much as I can. I like to try different mediums, and although I have no pencil sketches here, find that charcoal and pencil are what I like to use best.", extras: [
            Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "Feature artist in our corridor space is Joan Kennedy."),
            Extra.new(name: "By", slug: "by", type: "string", value: "Joan Kennedy"),
            Extra.new(name: "Start Date", slug: "start-date", type: "date", value: "2012-11-20"),
            Extra.new(name: "Finish Date", slug: "finish-date", type: "date", value: "2012-12-08"),
            Extra.new(name: "Official Opening Date", slug: "official-opening-date", type: "date", value: "2012-12-07"),
            Extra.new(name: "Official Opening Time", slug: "official-opening-time", type: "date", value: "09:18:00"),

        ], images: [
            Image.new(url: "uploads/exhibition/SANY0055-001.JPG"),
        ]),   


        Page.new(name: "Tubular Variations", slug: "tubular-variations", template: "exhibition-columns-4-8", rank: 100, is_enabled: true, is_navigable: true, body: "A solo exhibition of works on paper in watercolour, acrylic and ink.", extras: [
            Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "Feature artist in our corridor space is Joan Kennedy."),
            Extra.new(name: "By", slug: "by", type: "string", value: "Michael Cook"),
            Extra.new(name: "Start Date", slug: "start-date", type: "date", value: "2013-01-28"),
            Extra.new(name: "Finish Date", slug: "finish-date", type: "date", value: "2013-02-23"),
            Extra.new(name: "Official Opening Date", slug: "official-opening-date", type: "date", value: "2013-01-28"),
            Extra.new(name: "Official Opening Time", slug: "official-opening-time", type: "date", value: "10:00:00"),

        ], images: [
            Image.new(url: "uploads/exhibition/Tube_1.bmp"),
        ]),   

    ]),
    Page.new(name: "News", slug: "news", template: "news-columns-12", rank: 300, is_enabled: true, is_navigable: false, pages: [
        Page.new(name: "Monthly Newsletter", slug: "monthly-newsletter", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true),
        Page.new(name: "Current News", slug: "current-news", template: "news-columns-12", rank: 200, is_enabled: true, is_navigable: true, pages: [
            Page.new(name: "Nancy Culliford and Patrons' Choice Awards", slug: "nancy-culliford-and-patrons-choice-awards", template: "news-columns-4-8", rank: 100, is_enabled: true, is_navigable: true, body: "Congratulations to TAS members Vivienne and Jocelyn.<br/><br/>The Nancy Culliford Prize was awarded to Vivienne Boland for her Reaching for the Sun and Patron's Choice to Jocelyn Hunt with Abstract Flowers.", extras: [
                Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "The Nancy Culliford Prize was awarded to Vivienne Boland for her Reaching for the Sun and Patron's Choice to Jocelyn Hunt with Abstract Flowers."),
            ], images: [
                Image.new(url: "uploads/news/photos_3.jpg"),
            ]),
            Page.new(name: "Exhibition: Oil & Water", slug: "gallery-news-november-2012", template: "news-columns-4-8", rank: 200, is_enabled: true, is_navigable: true, body: "Congratulations to Ros Cranch and Marie-Therese Gould for a great exhibition with 9 sales and a good opening night. We have one last exhibition for come for the year with the Childrens' Art Exhibition, official opening day is Saturday 24th November at 10am. Do come along and support the children, it is a lot of fun with Santa and face painting and seeing all the lovely children and the work that they make during the year. Prepare to be inspired!<br/><br/>Exhibition Proposal forms are still available on the lectern in the gallery. November 28th is the final day for accepting proposals, just pop it under the office door or post. As this is my last gallery news I would like to thanks Charlie Boyle for his hangman skills, dedication and guidance in my role as Gallery Co-Ordinator, Diana Battle for her hard work and enthusiasm and ideas as Publicity Officer and lastly but mostly all the lovely members that have had exhibitions at the Toowoomba Art Society during the past 2 years.", extras: [
                Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "Congratulations to Ros Cranch and Marie-Therese Gould for a great exhibition!"),
            ], images: [
                Image.new(url: "uploads/news/SANY0001.JPG"),
            ]),
            Page.new(name: "Catherine Ketton wins 2012 Fred Gardiner Award", slug: "catherine-ketton-wins-2012-fred-gardiner-award", template: "news-columns-4-8", rank: 300, is_enabled: true, is_navigable: true, body: "Our congratulations to Catherine, Jo and Lyn.<br/><br/>Catherine Ketton was awarded the Fred Gardiner Award for Best Picture for her painting Morning Shower.  Equal Runners-Up were Lyn Watts with Magpie Theatre and Jo Smith with La Mama:Olive Tree.  Diana Battle won People's Choice for Natures Canopy on Margaret St.<br/><br/>'FRED GARDINER SELECTION' 2012 MEMBERS' EXHIBITION (part 1)  Ergon Energy Flower, Food and Wine tent in Queens Part for the 3 days during the Carnival of flowers.", extras: [
                Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "Catherine Ketton was awarded the Fred Gardiner Award for Best Picture for her painting Morning Shower.  Equal Runners-Up were Lyn Watts with Magpie Theatre and Jo Smith with La Mama:Olive Tree.  Diana Battle won People's Choice for Natures Canopy on Margaret St."),
            ], images: [
                Image.new(url: "uploads/news/SANY0329.JPG"),
            ]),
            Page.new(name: "TAS Bus Trip to Prado Exhibition ", slug: "tas-bus-trip-to-prado-exhibition", template: "news-columns-4-8", rank: 300, is_enabled: true, is_navigable: true, body: "21 people filled the bus and enjoyed a beautiful day in Brisbane. Temperature was ideal for dining outdoors - warm but not hot and of low humidity, and there was a delightful breeze along the river. The guide who led us through the Prado Exhibition was knowledgeable, most entertaining and helped all who attended to understand and appreciate the works on display. I would like to thank both Peggy and Margaret; Peggy for keeping track of the money so efficiently and Margaret for her role in finalising the booking and dealing with the gallery staff. With no spare seats the trip was a success all round. All who attended reported a very interesting and satisfying day.  ", extras: [
                Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "21 people filled the bus and enjoyed a beautiful day in Brisbane. Temperature was ideal for dining outdoors - warm but not hot and of low humidity, and there was a delightful breeze along the river."),
            ], images: [
                Image.new(url: "uploads/news/SANY0037.JPG"),
            ]),
            Page.new(name: "Joan Kennedy - Feature Artist", slug: "joan-kennedy-feature-artist", template: "news-columns-4-8", rank: 300, is_enabled: true, is_navigable: true, body: "From larger floral acrylics to smaller botanical works in watercolour, Joan has put together a wonderful display of her work.", extras: [
                Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "Corridor display by Joan Kennedy"),
            ], images: [
                Image.new(url: "uploads/news/joankennedy.jpg"),
            ]),
            Page.new(name: "Youth Exhibition", slug: "youth-exhibition", template: "news-columns-4-8", rank: 300, is_enabled: true, is_navigable: true, body: "Fun was had by all that attended the official opening on Saturday morning the 25th of November.<br/><br/>Many parents and friends enjoyed the morning tea while viewing the many paintings on display.<br/><br/>Childrens art classes resume with the school term in 2013.", extras: [
                Extra.new(name: "Blurb", slug: "blurb", type: "string", value: "Fun was had by all who attended the official opening on Saturday morning the 25th of November"),
            ], images: [
                Image.new(url: "uploads/news/childrens.jpg"),
            ]),

            # Page.new(name: "", slug: "", template: "columns-4-8", rank: 300, is_enabled: true, is_navigable: true, body: "", extras: [
            #     Extra.new(name: "Blurb", slug: "blurb", type: "string", value: ""),
            # ], images: [
            #     Image.new(url: "uploads/news/SANY0037.JPG"),
            # ]),

        ]),
        Page.new(name: "Special Events", slug: "special-events", template: "columns-4-8", rank: 300, is_enabled: true, is_navigable: true),
    ]),
    Page.new(name: "Weekly Activities", slug: "weekly-activities", template: "columns-4-8", rank: 400, is_enabled: true, is_navigable: false, pages: [
        Page.new(name: "Weekly Schedule", slug: "weekly-schedule", template: "columns-4-8", rank: 100, is_enabled: true, is_navigable: true),
        Page.new(name: "Printmakers Schedule", slug: "printmakers-schedule", template: "columns-4-8", rank: 200, is_enabled: true, is_navigable: true)
    ]),
    Page.new(name: "Artists Gallery", slug: "artists-gallery", template: "columns-12", rank: 100, is_enabled: true, is_navigable: true, body: "Artists gallery coming very soon..."),
    Page.new(name: "Childrens Art", slug: "childrens-art", template: "childrens-columns-4-8", rank: 100, is_enabled: true, is_navigable: false, pages: [
        Page.new(name: "Childrens Gallery", slug: "gallery", template: "columns-12", rank: 200, is_enabled: true, is_navigable: true, body: "Childrens art gallery coming soon..."),
        Page.new(name: "Childrens Activities Schedule", slug: "activities-schedule", template: "childrens-activities-columns-12", rank: 200, is_enabled: true, is_navigable: true)
    ], images: [
        Image.new(url: "uploads/exhibition/childrens/TAS01.jpg"),
        Image.new(url: "uploads/exhibition/childrens/TAS02.jpg"),
        Image.new(url: "uploads/exhibition/childrens/tas03.jpg"),
        Image.new(url: "uploads/exhibition/childrens/tas04.jpg"),
    ]),
    Page.new(name: "Contact Us", slug: "contact-us", template: "contact-columns-4-8", rank: 100, is_enabled: true, is_navigable: true)
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