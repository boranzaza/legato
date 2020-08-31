# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
User.destroy_all
Review.destroy_all

#here is our persona, our only customer:
nancy_shapiro = User.create!({first_name: "Nancy",
                          last_name: "Shapiro",
                          email: "nancy_money@gmail.com",
                          password: "password",
                          phone_number: "819-399-1919",
                          address: "1000 The Boulevard, Westmount, Canada, B9C9D9",
                          is_musician: false}

)



#and here are our 6 musicians/groups
boran_zaza = User.create!({first_name: "Boran",
                          last_name: "Zaza",
                          email: "contact@boranzaza.com",
                          password: "password",
                          phone_number: "432-394-1999",
                          address: "23-4567 rue Berlioz, Montreal, Canada, B2C3D4",
                          photo: "https://i0.wp.com/boranzaza.com/wp-content/uploads/2018/06/Boran-6.jpg?resize=1024%2C684",
                          video: "https://www.youtube.com/watch?v=HGsjH2AtF1o",
                          bio: "Described as “One of the most talented and motivated musicians to come out of the Kurdistan region of Iraq.”— (Paul MacAlindin, Conductor and Author), Boran Zaza holds multiple degrees in music education, musicology and piano from Iraq and Lebanon, and has recently completed her musical studies concentrating on Piano under the tutelage of Patil Harboyan, and Choral Conducting under Jean-Sebastien Vallée at McGill University. Boran’s professional musical engagements have led her to perform in prestigious venues in Canada, Iraq, Lebanon, Oman, Dubai, Italy and the USA. Boran was a pianist of the National Youth Orchestra of Iraq in 2008; at the same time, she hosted her own classical music radio program called “Behind the Music”. Her piano performances have been acclaimed by the press as “dramatic and full of vivid
                          emotion” — (Arts and Culture Today).
                          From 2018 to 2020, Boran Zaza was the Executive and Artistic Director of the Oasis Musicale Concert Series. She is currently the Marketing Manager of the Orchestre classique de Montréal.",
                          price: "500",
                          ensemble_type: "solo",
                          instruments: "piano",
                          facebook: "https://www.facebook.com/boranzaza.pianist",
                          youtube: "https://www.youtube.com/channel/UCAIlJX0MYYoU4wfeWnT5IwQ",
                          website: "http://boranzaza.com/",
                          instagram: "https://www.instagram.com/boran.zaza/?hl=en",
                          repertoire_1: "For the love of Tango!",
                          repertoire_1_length: "50 minutes",
                          repertoire_2: "Armenians colours",
                          repertoire_2_length: "50 minutes",
                          is_musician: true}

)

michel_alexandre_broekaert = User.create!({first_name: "Michel-Alexandre",
                                          last_name: "Broekaert",
                                          email: "contact@broekaert.space",
                                          password: "password",
                                          phone_number: "431-393-1999",
                                          address: "12-3456 rue Albeniz, Montreal, Canada, A1B2C3",
                                          photo: "https://i1.wp.com/www.broekaert.space/wp-content/uploads/2019/03/MG_0884-2.jpg?strip=info&w=2000",
                                          video: "https://www.youtube.com/watch?v=FwSrdfUp8tM",
                                          bio: "Recognized for his profound and spectacular interpretations, Quebec pianist Michel-Alexandre Broekaert is one of the most promising musicians of his generation. Early on, he developed a passion for accompaniment and chamber music, making his experience as vast as eclectic. At ease both on stage and in the studio, he divides his time between the instrumental repertoire and the world of opera with equal pleasure. A pedagogue at heart, his activities as a coach / pianist-collaborator at the Université de Montréal and at McGill University nourish his passion for passing on knowledge to generations of young musicians. He is also committed to the future of classical music, actively engaging with established organizations and collectives of experienced musicians to present this art form in an accessible and casual way. Michel-Alexandre is very active in the Quebec scene and regularly collaborates with many organizations, such as the Canadian Institute of Vocal Art, Opéra de Montréal, the OSM-Manuvie competition, Opéra à la Carte, as well as the collective Un Opéra Une Heure.  He is the the winner of several national and international competitions, and holds a doctorate from the Université de Montréal, under the tutelage of Mr. Jean Saulnier,
                                          “He is an excellent listener […] and has a remarkable touch. In his hands, the music breathes and blossoms.” – Revue Opéra",
                                          price: "400",
                                          ensemble_type: "solo",
                                          instruments: "piano",
                                          facebook: "https://www.facebook.com/michabroekaert",
                                          youtube: "https://www.youtube.com/user/MichaBroekaert",
                                          website: "http://broekaert.space/",
                                          instagram: "https://www.instagram.com/michabroekaert/?hl=en",
                                          repertoire_1: "Vienna Classics",
                                          repertoire_1_length: "60 minutes",
                                          repertoire_2: "Russian moods",
                                          repertoire_2_length: "60 minutes",
                                          is_musician: true}

)

noemie_raymond_friset = User.create!({first_name: "Noémie",
                                    last_name: "Raymond-Friset",
                                    email: "no_4cello@gmail.com",
                                    password:  "password",
                                    phone_number: "433-395-1599",
                                    address: "34-5678 rue Chopin, Montreal, Canada, C3D4E5",
                                    photo: "http://noemieraymondfriset.ca/wp-content/uploads/2020/06/IMG_2659-copy.png",
                                    video: "http://noemieraymondfriset.ca/videos/",
                                    bio: "One of the most promising Canadian cellists of her generation, Noémie is part of the“30 Hot Canadian Classical Musicians under 30”list by CBC Music. She is a passionate musician, praised for her sensitive and refined playing. Noémie made her debut at the Royal Albert Hall in London in December 2016 and was one of the top prizewinners at the Edwin H. and Leigh W. Schadt String International Competition, the Stepping Stone Competition and the WAMSO Young Artist Competition. At the 2017 Prix d’Europe, she received the Beatrice Kennedy-Bourbeau Prize for the best interpretation of a work, all genres and instruments, and previously received the Guy-Soucie Prize for the best interpretation of a Canadian work. In addition, Ms. Raymond-Friset was awarded professional development grants by the Canada Council for the Arts and was a laureate of the 2015 edition of the Musical Instruments Bank.
                                    Noémie serves as the Artistic director of the Eastman Cello Ensemble and is quite active in the musical community. She recently returned from a tour in Cambodia, where she was a member of a quartet with the violinist Midori as part of the ICEP Music Sharing program and will travel to Japan next June as a continuation of the tour. She took part in the most recent tours of the Heifetz International Music Institute, has been one of their Artist in Residence and will be a cello and chamber music mentor for the PEG Program this summer. She has been heard several times on Performance Today, the New York popular classical music radio show and was invited by the Music Corporation of Viña del Mar to perform in La Calera (Chile) as part of an introduction program to classical music with young students. Noémie was also a guest artist at the XVIII International Festival of Musica de Camara in Lima (Peru). Noémie has performed extensively in Quebecc, notably at the Montreal Chamber Music Festival, the International Festival of Lanaudière, the Orford International Music Festival and the Festival Les Concerts de la Chapelle. In June 2016, she recorded the Prokofiev Sonata for Radio-Canada with pianist Lysandre Ménard and appeared soon after on ICI Musique and CBC Radio.
                                    As a soloist, she has been invited to perform with the National Arts Center Orchestra, the Longueuil Symphonic Orchestra, the Francophonie Orchestra, the Carlos Costa Chamber Orchestra, the Symphonic Orchestra of the Agora, the Montérégie Youth Orchestra and the Montreal Conservatory of Music Orchestra with whom she performed an arrangement of the famous violin piece Zigeunerweisen by Sarasate. Additionally, she was invited to play the solo cello part in Vivaldi’s Concerto for four violins and cello with Pinchas Zukerman and the National Arts Center Orchestra, the maestro himself playing the first violin.
                                    Noémie is currently working with Michel-Alexandre Broekaert, her accomplice of Duo Cavatine on the production of a CD album scheduled to be released in 2021, which was recorded in collaboration with CBC Music.
                                    Noémie has been fortunate to work with many internationally renowned cellists. In 2014, she performed in a master class led by Yo-Yo Ma at the Claude-Champagne hall in Montreal in front of an audience of more than 1000 people, a performance that was warmly acclaimed by the public and described as a “beautiful and sensitive performance ”- La Scena Musicale.
                                    A natural in the spotlight, Noémie was ambassador of the New England Conservatory at the Amsterdam Cello Biennale Festival in 2014 and was ambassador of the Orford International Academy in 2015 and 2016. An accomplished and experienced educator, she is currently the teaching assistant of Steven Doane at the Eastman School of Music where she is pursuing a DMA in music and literature. Ms. Raymond-Friset also holds a Graduate Diploma from the New England Conservatory and a Masters from the University of Montreal, where she studied under the tutelage of Yegor Dyachkov and Carole Sirois. Previously, she studied with Denis Brott at the Conservatoire de Musique de Montréal. During her studies at the New England Conservatory, she was a recipient of one of the highly coveted scholarships from the Community Performances and Partnerships Program for which she offered recitals throughout the city of Boston and the surrounding area to promote classical music in the community.
                                    Noémie currently plays on the magnificent “Ex-Curtis” cello by Matteo Goffriller (1700) graciously on loan to her by Canimex Inc., Drummondville, Qc. She also has a Jean-Dominique Adam bow, dating from 1835.
                                    Noémie plays the beautiful “Ex-Curtis’ cello made by Matteo Goffriller, dating from 1700. It is graciously on loan to her by Canimex Inc, Drummondville, Qc. She also owns a beautiful Jean-Dominique Adam bow from 1835.",
                                    price: "600",
                                    ensemble_type: "solo",
                                    instruments: "cello",
                                    facebook: "https://www.facebook.com/noemieraymondfrisetcello",
                                    youtube: "https://www.youtube.com/results?search_query=noemie+raymond+friset",
                                    website: "http://noemieraymondfriset.ca/",
                                    instagram: "https://www.instagram.com/noemie_rf/?hl=en",
                                    repertoire_1: "All you need is Bach!",
                                    repertoire_1_length: "60 minutes",
                                    repertoire_2: "Cello Virtuoso",
                                    repertoire_2_length: "50 minutes",
                                    is_musician: true}
)

quatuor_despax = User.create!({first_name: "Quatuor",
                              last_name: "Despax",
                              email: "quatuordespax@yahoo.fr",
                              password: "password",
                              phone_number: "436-396-1599",
                              address: "45-6789 rue Debussy, Montreal, Canada, D4E5F6",
                              photo: "https://scontent.fyxk1-1.fna.fbcdn.net/v/t1.0-9/300359_408762912516196_377991190_n.jpg?_nc_cat=108&_nc_sid=09cbfe&_nc_ohc=GA-1Z1DG9ugAX_O0Po4&_nc_oc=AQnzaymOHjbo7dFA2PfrnXsZqhKVfqehwiAHAL4-eCPMT9ibXHnetsJH_tvbqEiwmMM&_nc_ht=scontent.fyxk1-1.fna&oh=08d9e28e930eadfee3785936028fa47c&oe=5F6C4B33",
                              video: "https://www.youtube.com/watch?v=_nh8Xivkko4",
                              bio: "Formé en 2003 à Gatineau par quatre frères et sœurs, le QUATUOR DESPAX donne régulièrement des concerts dans la capitale nationale du Canada, en Outaouais ainsi qu’à Montréal.
                              Il se produit dans différents festivals ou séries de concerts en Ontario comme au Québec tels que : le Festival de Westben (près de Toronto), The Abbey for the Arts (Alexandria), la série des Mardis Classiques de Gatineau, la Montée des Arts du Mont-St-Hilaire, le Festival Classique de l’Abitibi-Témiscamingue (Val d’Or), les Concerts Ponticello de Gatineau, Music and Beyond (Ottawa), Chamberfest City Series (Ottawa), Luminato Festival (Toronto), le Festival L’Art de la Musique (Gatineau), SweetWater Music Festival (Owen Sound) ou encore Festival of the Sound (Parry Sound).
                              Il se produit également outre-mer soit en France (dans le sud-ouest, à Paris, en Normandie); ainsi qu’en Italie lors de festivals ou séries de concerts : Polincontri Classica (Torino), Rivolimusica (Rivoli), Festival Echos (Alessandria) ou encore à Osimo.
                              L’hiver 2019, il donne des concerts en Colombie (Cartagena) et travail avec ConCuerda ainsi que Fundación Musica por Colombia.
                              L’été 2006, il a gagné le concours en résidence des « Concerts aux Îles du Bic » (Québec). De 2011 à 2013, il a été en résidence à l’Église Saint-Jean-Baptiste de Montréal.
                              Depuis septembre 2013, le Quatuor Despax est en résidence à l’Église Notre-Dame-de-la-Guadeloupe de Gatineau où il a une série de concerts.",
                              price: "1000",
                              ensemble_type: "quartet",
                              instruments: "strings (2 violins, viola, cello)",
                              facebook: "https://www.facebook.com/quatuor.despax",
                              youtube: "https://www.youtube.com/channel/UCX96dXN6HQ0ltCnrHWX4Wug",
                              website: "http://quatuordespax.com/",
                              instagram: "https://www.instagram.com/explore/tags/quatuordespax/?hl=en",
                              repertoire_1: "Beethoven à l’honneur!",
                              repertoire_1_length: "70 minutes",
                              repertoire_2: "Shostakovich à l’honneur!",
                              repertoire_2_length: "65 minutes",
                              is_musician: true}

)

carlos_avila = User.create!(first_name: "Carlos",
                            last_name: "Avila",
                            email: "contact@avila.com",
                            password:  "password",
                            phone_number: "437-397-1599",
                            address: "56-7899 rue Elgar, Montreal, Canada, E5F6G7",
                            photo: "http://www.artsglobal.org/images/galleries/588/carlos%20publicity%201.jpg",
                            video: "https://www.youtube.com/watch?v=la6fKbTrtLU",
                            bio: "Hailed for his “beautiful command of tone and mood…and unruffleable savoir-faire” (San Francisco Chronicle), his “layers of emotional expression” (The Examiner) and his “level of artistry that seem far beyond his years” (Contra Costa Times), Carlos Avila is one of the most in-demand pianists on the classical music scene. His concerts have taken him across North and South America, Europe, and Asia.  Carlos began his professional career in 2001 when he stepped in for an ailing Stewart Goodyear at 24-hours-notice to play the Rachmaninoff First Piano Concerto with the California Symphony – a “pinch-hit homerun” (San Francisco Chronicle).  Since then, Carlos has been a guest at festivals such as Schleswig-Holstein, Tanglewood, Sarasota, Aspen, Banff, Music Academy of the West, Pianofest, Holland, ChamberFest Dubuque, Atlantic Music Festival, Lake George, and the Carnegie Hall Workshops where he had the opportunity to work and study with the late Isaac Stern, Daniel Barenboim, Michael Tilson Thomas, Emanuel Ax, Richard Goode and members of the St. Lawrence, Tokyo, Guarneri, Juilliard, Ying, and Borodin String Quartets.  Carlos is also an avid collaborator – he shares a 20-year partnership with acclaimed violinist Jay Oh, with whom he has given over 80 recitals across Asia and the United States. These past seasons, he performed in the Chicago Symphony Orchestra’s All-Access Chamber series and the New York Philharmonic’s Leonard Bernstein salon series. Prior to that, he embarked on a country-wide 29-city tour with award-winning Baritone Leon Williams. Carlos was also recently showcased on New York’s WQXR, where he gave an all-transcription recital broadcast as one of the winners of Juilliard’s prestigious Gina Bachauer Piano Competition.  A dedicated member of community outreach, he also collaborates frequently with the New York Philharmonic’s Assistant Concertmaster Michelle Kim and participates in the promotion of her Doublestop Foundation, a non-profit organization dedicated to providing young musicians with no-cost loans of high-quality instruments. He has also made a large part of his musical home in South Korea where he was recently awarded Honorary Ambassadorship of the city of Chuncheon for his work in the chamber music initiative “New York in Chuncheon” and promoting and supporting national and international activities in the fields of policy, tourism resources, culture and art.  Carlos is on Collaborative Piano Faculty at the Heifetz Institute, where he makes his summer home and for which he works year-round on American tours to promote the innovation of cross-disciplinary learning and communication in student training. Since the spring of 2018, he is also the new pianist of the Boreal Trio, represented exclusively by Sciolino Artist Management. In addition, he is also the studio pianist for Joel Krosnick at the Juilliard School.  A proud Filipino-American, Carlos is a graduate of the Juilliard School where he studied with Jerome Lowenthal and did prior studies at Yale with Peter Frankl and Claude Frank. He currently resides in New York City.",
                            price: "800",
                            ensemble_type: "solo",
                            instruments: "piano",
                            facebook: "none",
                            youtube: "https://www.youtube.com/results?search_query=carlos+avila+piano+",
                            website: "http://www.artsglobal.org/en/people/carlos-avila/",
                            instagram: "none",
                            repertoire_1: "The Art of Rachmaninov",
                            repertoire_1_length: "70 minutes",
                            repertoire_2: "The world of Prokofiev",
                            repertoire_2_length: "70 minutes",
                            is_musician: true

)

trio_de_l_ile = User.create!(first_name: "Trio",
                            last_name: "de l’Île",
                            email: "triodelile@gmail.com",
                            password:  "password",
                            phone_number: "433-398-1599",
                            address: "67-8999 rue Faust, Montreal, Canada, F6G7H8",
                            photo: "https://static.wixstatic.com/media/a5c9d2_b0210fa9186644efaa526c5db64e2b53~mv2_d_5616_3744_s_4_2.jpg/v1/fill/w_1569,h_1046,al_c,q_90,usm_0.66_1.00_0.01/a5c9d2_b0210fa9186644efaa526c5db64e2b53~mv2_d_5616_3744_s_4_2.webp",
                            video: "https://www.youtube.com/watch?time_continue=1&v=UeET0ziiAs4&feature=emb_logo",
                            bio: "Tous trois anciens boursiers de la Fondation de soutien aux arts de Laval (FSAL), les membres de ce trio, formé en 2015 profitent de leur résidence à la série Les Déjeuners croissants-musique de la Maison des Arts de Laval pour promouvoir l’œuvre philanthropique de la Fondation. Élus ambassadeurs de la FSAL, ces musiciens dont la rigoureuse formation classique se reconnaît dans la justesse et le sérieux de leurs interprétations se produisent avec brio un peu partout sur les scènes du pays. Les concerts du trio de l’Île se démarquent par leur qualité et leur accessibilité auprès d’un public varié. Le trio est régulièrement invité à jouer dans la série « Matinées en Musique » de l’orchestre symphonique de Trois-Rivières et lors des concerts de professeurs de la faculté de musique de l’Université de Montréal.",
                            price: "900",
                            ensemble_type: "trio",
                            instruments: "piano/cello/violin",
                            facebook: "https://www.facebook.com/triodelile",
                            youtube: "https://www.youtube.com/channel/UCKJUR6e0PSXb_L3Q5YnXu3Q",
                            website: "http://www.triodelile.com/",
                            instagram: "none",
                            repertoire_1: "Paris Postcard",
                            repertoire_1_length: "60 minutes",
                            repertoire_2: "When female composers shines!",
                            repertoire_2_length: "70 minutes",
                            is_musician: true

)

Booking.create!(customer: nancy_shapiro,
                musician: boran_zaza,
                date_time: 1.day.ago,
                repertoire_number: 1,
                status: "pending",
                location:"1000 The Boulevard, Westmount, Canada, B9C9D9",
                comments:"my backyard okay?",
)

#




# require "json"
# require "rest-client"

# TOP_STORIES_URL = "https://hacker-news.firebaseio.com/v0/topstories.json"

# def story_url(id)
#   "https://hacker-news.firebaseio.com/v0/item/#{id}.json"
# end

# post_ids = JSON.parse(RestClient.get(TOP_STORIES_URL))

# post_ids.take(10).each do |id|
#   hacker_news_post = JSON.parse(RestClient.get(story_url(id)))
#   post = Post.new(
#     title: hacker_news_post["title"],
#     url: hacker_news_post["url"],
#     votes: hacker_news_post["score"]
#   )
#   post.save
#   puts "[#{post.votes}] #{post.title} - #{post.url}"
# end
