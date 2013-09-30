#  Don Graziano  
  
*Agile full stack dev/ops implementing a more RESTfull world through beautiful code*  
  
+1 (734) 747 0412  
*therocketforever@me.com*  
  
453 Skyline Dr.  
Horton, MI 49246  
  
### On the internet  
  
*http://www.dongraziano.com*  
*https://github.com/therocketforever*  
  
# Technologies  
  
## Front End  
  
HTML5, CSS3, ECMAScript(JavaScript), Ember.js, Handlebars, Ember-Data, Node.js, jQuery, Right.js, Lovely.io, JSON, RESTFfull API Design, HATEOS, iOS, OSX  
  
## Back End  
  
Git, Shell, Ruby (1.8, 1.9, 2.0), Rack, Sinatra, Grape, Rails, Node.js, HAML, Slim, SASS, Foreman, Heroku, GitHub, PHP, YAML, JSON, OAuth2, Kerberos, SQLite, MySQL, Postgres, Redis, DataMapper, MongoDB, Haskell, Go, CoffeeScript, C, Objective C, SmallTalk, SNMP, IPMI, Bind, Markdown, Kramdown, Sprockets  
  
## Dev/Ops  
  
VirtualBox, VMWare, ESXi, Docker, Vagrant, Boxen, Puppet, OSX Client (10.2, 10.3, 10.4 10.5, 10.6, 10.7 10.8, 10.9) & Server (10.5, 10.6, 10.7, 10.8), Ubuntu (10, 12, 13), SUSE, Slackware, Nmap, Bind, Open Directory  
  
## Tools & Technologies  
  
Vi/m, Emacs, Bash, Zsh, Fish, XCode, TextMate, Sublime Text, Espresso, Photoshop, Illustrator, InDesign, Acrobat, MS Office (Word, Excel, PowerPoint, Outlook), Apple iWork (Keynote, Numbers, Pages), Espresso, CSSEdit, Tower, Github for Mac, Kaleidoscope, Versions, Coda 1 & 2, Firefox, Safari, Internet Explorer, Pow, Heimdal ,IPMItool, Apple Remote Desktop, Git, Tig, Subversion, Mathmtica, Nmap  
  
# Recent Projects  
  
## RunRun Bicycle Couriers  
  
*Closed source - code samples available on request*  
  
• Dispatch & Accounting program for Bicycle Courier Services  
• A RESTful API for tracking waybills & delivery contracts  
• Utilizes QR codes to securely manipulate system via RESTfull API  
  
A dispatch & control system for Bicycle Courier Services. This system has three components, A RESTfull API to track the current status, location & destination of packages to be Delivered. Waybills with dynamically QR Codes that store tracking hash to allow for couriers & clients to exchange data with the API, updating the information. RunRun automates the book work of envelope pushing. Using little more then a camera phone & a data connection Couriers, Dispatchers, & Clients can track, dispatch, & maintain the waybill custody chain from issue through dispatch to delivery accounting for redirect, service changes, and any additional surcharges for size, weight, or additional wait time.  
  
#### Front End  
HTML5, CSS3, ECMAScript  
  
#### Back End  
Ruby, Slim, SASS, Sinatra, Grape, DataMapper, Postgres, MongoDB, OAuth2, Heroku, Cucumber  
  
  
## The Void/HexScan  
  
*__The Void__: closed source - code samples available on request*  
*__HexScan__: http://thevoid.herokuapp.com/scan*  
  
  
• Social Augmented Reality Game  
• Global coverage via scaleable boundings derived from Spiral Honeycomb Mosaic  
• Ember.js front end / Sinatra driven backend  
  
An Augmented Reality Game where players claim territory & resources on a virtual play field. Venues such as local businesses & user added locations serve as the base to generate in game content & resources. As the coverage of the gratiucle is global & the scale of the tiles ranges from less then a meter to hundreds of kilometers; There are potentially billions of Tile Records in the database, Tiles are dynamically calculated when requested by a player's client so that only 'Discovered' tiles are persisted to the database, significantly reducing system overhead. Tiles & contents accessible via RESTfull JSON api.  
  
_HexScan_ is an Ember.js based mobile app/tool for accessing the void API to test play field coverage & navigation. HexScan allows inspection of graticule metadata based on location of inspection. Metadata information is available such as Current tile at Cursor, Scale of bounding, Latitude & Longitude of Tile at cursor, Tiles Bounded by Tile at Cursor, Bounding Tile, & Adjacent tiles. This system was extracted & integrated into RunRun to allow for simple setup of delivery & billing zones.  
  
#### Front End  
Ember.js, HTML5, CSS3, ECMAScript, JSON  
  
#### Back End  
Ruby, Slim, SASS, Grape, Sinatra, DataMapper, SQLite, MongoDB, Postgres, OAuth2, Heroku, Cucumber,  
  
## Unicorns  
  
*https://github.com/therocketforever/unicorns*  
  
• Markdown powered custom CMS for authoring webpages  
• Git based workflow  
• Automatically persisted to database on deploy  
  
Unicorns is a CMS I wrote to power my webpage. One writes articles in plain text files using Markdown which are then deployed via a rake task & git to a heroku instance. When the `deploy` command is issued the markdown articles are parsed & persisted to the database. The site is then spun up as a Rack/Sinatra app on heroku. The drive behind unicorn was a system 'So easy your mother could use it' & to give me a functional 'blank slate' to develop websites for clients.  
  
#### Front End  
HTML5, CSS3, ECMAScript  
  
#### Back End  
Ruby, Slim, SASS, Sinatra, DataMapper, SQLite, Postgres, Heroku, Cucumber  
  
## Chartered Mule  
  
*https://github.com/therocketforever/chartered_mule*  
  
• An automatically provisioned VM that provides a private Heroku-like service for Development  
• Uses Docker & Vagrant to isolate projects from one another allowing flexibility with out overhead of multiple VMs  
• Scaleable, Automatic Provisioning & Easily Deployable  
  
Chartered Mule is an agile dev/ops tool for rapidly deploying & managing web apps. The primary goal is leveraging Docker in a Vagrant VM to reduce the overhead of running multiple per project VMs. Chartered Mule is intended to rapidly construct scaleable, reproducible & potentially disposable development environments freeing the Developer to concentrate less on project setup & maintenance and more on coding & innovative expression.  
  
#### Front End  
HTML5, CSS3, ECMAScript, Git  
  
#### Back End  
Ruby, Grape, Foreman, Rake, Git Vagrant, VirtualBox, Docker, Ubuntu  
  
## Gourami  
  
*https://github.com/therocketforever/gourami*  
  
• Authored a boilerplate for RESTful state driven applications  
• Decoupled implementation for rapid refactoring  
• Project dependencies managed with bundler for maximum portability  
  
Gourami is an opinionated, clone-able, functional, scalable & flexile web application template. Taking advantage of technologies such as Ruby, Sinatra, Grape & DataMapper Gourami allows a developer to be more agile by eliminating the need to start from scratch with every project. Using Gourami a developer can produce a functional prototype in minuets facilitating rapid agile collaboration between a Developer & a client. By embracing convention over configuration rapid development & deployment become as easy as `git pull` & starting to code.  
  
#### Front End  
HTML5, CSS3, ECMAScript  
  
#### Back End  
Ruby, Slim, SASS, Sinatra, Grape, DataMapper, Cucumber  
  
## Xserve & Fiber Channel RAID Array  
  
*access restricted - demonstration available upon request*  
  
• Experience working with datacenter grade bare metal servers  
• Facilitates remote operations & development by centralizing mobile workflow  
• Functions as a live classroom for teaching development & operations on 'real' hardware  
  
My personal Xserve & Fiber Channel RAID Array. Owning a functional Data Center Grade bare metal server allows one access to an invaluable resource for development, teaching & discovery. By making this resource available to friends & colleagues one may also provide services such as File & Calendar Sharing, Git Repository hosting, Web Hosting & Other Collaborative services facilitating collaboration in both a personal & professional capacity as well as providing a constant stream of experience to hone my dev/ops skills. Some may view this a source of constant work & maintenance however I see view this as a perpetual opportunity to experiment & develop operations skills without risking a production environment.  
  
#### Front End  
OSX Lion, Apple Remote Desktop, SSH, The Internet  
  
#### Back End  
Ruby, Xserve, Fiber Channel RAID, L2TP/IPSec VPN, CalDAV, AFP, NFS, DNS, DHCP, NAT, UNIX, git, Ubuntu, Open Directory, Kerberos  
  
  
## Guns.for.Hire  
  
*https://github.com/therocketforever/guns.for.hire*  
  
• This Document & the associated resources  
• Automatically compile markdown for print & portability  
• Automatically compile Kramdown for presentation  
  
Guns for hire is my Curriculum Vitae. Versioned with git, structured with Markdown/Kramdown, and automatically compiled and processed from the source files to various document formats. The processing is done via rake build tasks to pull in the various sections as markdown source documents & compile it all into a single document. The task is structured as an object that allows fine grain manipulation on a line by line base should edits or changes be necessary. Also included is a basic Sinatra/Rack app to present the raw Markdown as not only a structured document but styled as well. I also use this document & corresponding repositories to instruct friends & colleagues in the Github *pull request* based workflow.  
  
### Front End  
HTML5, CSS3, Markdown  
  
### Back End  
Ruby, Git, Rake, Kramdown, SASS, Nokogiri  
  
  
# Previous Employment  
  
## Clarity Communications Advisors, Inc. *Southfield, MI  - July 2013 - August 2013*  
  
### Application Developer  
  
• Develop & Implement new product features  
• Implement Migration from Old Sip/PBX system to new Scalable Solution  
• Work with Operations & Network Engineer to Deploy Product  
  
As an Application Developer for Clarity Communications Advisors, Inc. responsibilities involved taking ownership of product & service development from the CTO, as well as working closely with the Network Engineer to implement these new systems. Additionally the migration from a non-scalar Sip/PBX legacy PHP based system to a modern scalable VoIP implementation fell with in the scope of responsibility. Additionally this migration involved the integration of a legacy PHP based accounting & ratting system. When I joined Clarity not a single product or system was managed with source control of any kind. Implemented source control using git as well as integration with various vendors using various revision control systems including CVS & SVN as well as implementation of a three tired development/staging/production system.  
  
## Sava's State Street Café *Ann Arbor, MI - June 2011 - August 2011*  
  
### Server, Bus & General Maintenance  
  
• Provide exceptional Customer Service  
• Manage supply & delivery of essential assets  
• Support Restaurant Operation & Maintenance  
  
As A Server for Sava's State Street Café responsibilities include waiting tables, supporting the bar, & general shop maintenance (side work). Additionally some of my shifts include bus service to support the bar & other servers. During my time as an employee I assisted Sava in the design & implementation of a bicycle based delivery system for her new market allowing the market to augment the personal shopping & culinary programs to allow home delivery of all market products.  
  
## Jimmy John's *Ann Arbor, MI - May 2011 - August 2011*  
  
### Delivery & Counter  
  
• Make Sandwiches, Freaky fast  
• Deliver Sandwiches… Freaky fast  
• General Shop Operations & Management  
  
As a Delivery Driver for Jimmy John's the sole responsibility is freaky fast delivery. Successful mission execution is entirely dependent on speed & customer satisfaction. All deliveries must be out the door with in ten minuets of receiving the order & at the destination within 15 minutes of dispatch. Employing my skills as a bicycle courier allowed me to on average complete assigned tasks within half the time required of drivers leveraging automobiles. As Ann arbor is Home to the University of Michigan various events such as Basketball & Football games can bring road traffic to a halt. In situations such as this the agility & speed of bicycle delivery solely allowed for successful execution of assigned tasks.  
  
## Urban Outfitters *Ann Arbor, MI - August 2009 - December 2010*  
  
### Shipping & Receiving / Logistics Support  
  
• Receive & Process daily salable merchandise shipment  
• Support Visual Merchandiser & Determine product processing priorities  
• Manage custody for Send Sale & Online Orders  
  
As Shipping & Receiving Manager for Urban Outfitters responsibilities include such tasks as custody chain management of salable merchandise, loss prevention, and supporting the Shop Fitter & Visual Merchandiser in establishing processing priority of salable merchandise as wells the construction of displays, fixtures, and signage for salable merchandise. Shop maintenance also falls within this scope of responsibility. As Urban Outfitters contracts logistics to third parties coordination with Vendors, Truck Drivers & warehouses across the country is ofter required to ensure arrival of daily shipments of salable merchandise. As Shipping & Receiving Manager for Urban Outfitters I devised & implemented a new processing & loss prevention system that resulted in a quantifiable reduction in shrink.  
  
## Road Runner Bicycle Couriers *Toronto, ON - May 2007 - July 2009*  
  
### Bicycle Courier  
  
• Deliver high priority parcels as fast as humanly possible  
• Manage concurrent routing & custody chain for multiple waybills  
• Support Dispatch & Other Couriers in efficient & effective delivery  
  
As a Bicycle Courier for Road Runner Bicycle Couriers responsibilities include the effective & efficient delivery of parcels of all sizes, from envelopes going cross town, to forgotten keys & cell phones, to Christmastimes, at roadrunner we find a way nothing is outside of the scope of our logistic services. As a Bicycle Courier navigation, time management & routing of multiple concurrent waybills is essential to effective execution of assigned tasks. As roadrunner is a general delivery service mission success often involves coordination of car, van, and freight truck delivery. Bicycle Couriers are often the first & only interface to our clients requiring critical thinking, customer service skills & the ability to make quick evaluation of waybills to support dispatch.  
  
## Zap! Couriers *Toronto, ON - May 2007 - July 2009*  
  
### Bicycle Courier  
  
• Transport parcels & storage media between production & post production facilities  
• Deliver delicate & time sensitive goods such at Hard Disks & Beta Tape  
• Navigate City streets & traffic to facilitate efficient & effective delivery of time sensitive materials  
  
As a Courier for Zap! Speed, accuracy & reliability are skills essential to successful execution of assigned tasks. Although a majority of our volume comes from production/postproduction for the Film & Delayed Broadcast television industry a significant portion of tasks support live broadcast, local & provincial news, and Sport broadcast. Clients included such companies as CBC Television & Radio, Toronto Symphony, Much Music, MTV Canada, Deluxe Media, TatterSail Audio, & Various Film production companies. Efficient & accurate delivery of materials in the allocated time frame is essential to effective execution of assigned tasks In many cases tardiness could result in broadcast delays.  
  
## Cy's Courier House *Toronto, ON - May 2007 - July 2009*  
  
### Bicycle Courier  
  
• Provide secure & reliable delivery of valuable & Sensitive materials  
• Support local Courts & Legal services  
• Provide secure & discreet transport of valuable parcels (Jewelry, Keys, Trade Instruments)  
  
As a Courier for Cy's expedient & effective execution of tasked deliveries was critical to mission success. Clients included Various Jewelers & Gem Cutters, The Municipal Courts of Toronto, The Provincial Courts of Ontario & The Crown Courts of Canada as well as various Lawyers, Legal services, Brokerage Firms & NGOs. Also included in our client list are Financial Institutions such as Soctiabank, Bank of Montreal, Toronto Dominion & The Toronto Stock Exchange. Discretion & security are essential services required by clients in the transport of various valuable & sensitive documents & materials.  
  
## H&M *Ann Arbor, MI - May 2006 - December 2006*  
  
### Stockroom Manager / Shipping & Receiving  
  
• Receive & Process daily salable merchandise shipment  
• Support Visual Merchandiser & Determine product processing priorities  
• Support Store Manager & Shop Operations  
  
As Stockroom Manager for H&M responsibilities included managing chain of custody for salable merchandise & processing of products to the sales floor. As well inventory, loss prevention, organization of the stock room fell within the scope of responsibility. As H&M employs a vertically integrated logistics chain coordinating with Overseas production facilities, Container Ships & Freight trucks transporting product, and Regional Warehouses was often required to ensure a constant stream of merchandise salable to our market. As well supporting shop management & visual merchandiser in the tracking of received merchandise with respect to sold merchandise was required to ensure that the product we receive would be desirable to our market. As Stockroom Manager for H&M I designed & implemented a new processing system that resulted in the reduction & eventual elimination of product processing backlog. Subsequently Stock Managers for shops in Lansing, MI & Troy, MI were trained in my method resulting in the reduction & eventual elimination of processing backlog at the respective shops.  
  
## Eastern Michigan University (School of Art) *Ann Arbor, MI - August 2005 - December 2006*  
  
### Photographic Laboratory Technician  
  
• Manage Darkroom/Wet-lab access & schedule usage  
• Prepare photographic chemistry  
• Maintain Laboratory tools & equipment  
  
As a Laboratory Technician for the Darkrooms & Wet-labs at Eastern  Michigan University my responsibilities included tasks such as scheduling use & maintenance of laboratory equipment, tools, and facilities. Additionally preparing working chemistry from stock solution as well as synthesizing exotic chemistry such as Sepia, Selenium & Cyano toners and processing chemistry for Collodion Process & Mercury Vapor for Daguerreotype process. Effective execution of laboratory support tasks often involves processing, handling & disposal of various hazardous materials such as cyanide, mercury, selenium, cadmium, potassium chloride & spent photo fix saturated with various heavy metals.  
  
## Great Wraps *Ann Arbor, MI - September 2005 - May 2006*  
  
### Line Cook & Counter  
  
• Exceptional Customer Service  
• Prepare & Cook all menu Items  
• Support owners in New franchisee enterprise  
  
As an employee of Great Wraps my responsibilities included both kitchen tasks such as morning preparation, and evening clowning, as well as cooking. Additionally counter service & interfacing with customers to deliver excellent service. Great Wraps was a newly opened franchise & as such responsibilities also included various conversion & evangelism tasks such as distributing samples, passing out flyers, or visiting local business to promote lunch specials.  
  
## Café Felix *Ann Arbor, MI - May 2004 - September 2005*  
  
### Server  
  
• Exceptional Customer Service  
• Manage multiple customer orders & deliver food from kitchen  
• General shop operations & maintenance (side work)  
  
As a server for Café Felix responsibilities include tasks such as waiting tables, managing time & prompt delivery of customer orders. Dinning areas include both indoor seating & sidewalk/patio service. Effective communication & teamwork stills are essential to exceptional execution of operational tasks. Customer service skills are essential.  
  
# Education  
  
## Eastern Michigan University *Ypsilanti, MI*  
  
  
• Darkroom Photography  
• Active in the Ann Arbor Art & Music culture  
• Coperative Housing Member  
  
I attended Eastern Michigan University as a Fine Art student studying Photography & Curation. During this time I organized & participated in various local shows, exhibitions, and events. While in university I was a resident of the Eugene V. Debs Cooperative House learning many essential interpersonal communication & management skills.  
  
## Jackson Community College *Jackson, MI*  
  
• Dual-Enrolled Computer Service Technology  
• Organization of various student music festivals  
• Active participant in campaign to construct on campus student housing  
  
After High school I matriculated at the local Community Collage further perusing my education in computer technology. During this time I became more exposed to local arts & music developing a deeper appreciation for the creative arts.  
  
## Jackson Area Career Center *Jackson, MI*  
  
• Dual-Enrolled Computer Service Technology  
• Graphic Design  
• Darkroom Photography  
  
Further complications from my general disinterest in attending classes led to an opportunity to not only attend the local vocational school for Computer Service Technology but to also become dual enrolled at the local community collage gaining access to more advanced instruction in computer operation & service. While attending JACC I first encountered the SmallTalk & Ruby programing Languages.  
  
## Hanover-Horton High School *Horton, MI*  
  
• *Zero Hour* class maintaining school servers & network infrastructure  
• Varsity Cross Country  
• Marching & Concert Band  
  
In High school I was active in Marching & Concert Bands as well as a reasonably successful period on the Varsity Cross Country Team. Noticing my aptitude for computers & general dis interest in class I was offered the opportunity to come in before school to maintain the school servers & network infrastructure in exchange for class credit. During this time I also designed & deployed the first website for the school receiving a commendation from the school board. Various backend and graphic components of this original site are still in use on the schools current site.  
  
## Hanover-Horton Elementary School *Hanover, MI*  
  
• Reasonably successful *Odyssey of the Mind* competitor  
• Not as successful baseball player (team building skills!)  
• Advanced placement in Computer classes  
  
I attended Hanover-Horton Elementary School in Hanover Michigan. In 5th grade I was selected to compete on one of the schools original two *Odyssey of the mind* teams achieving regional victories three times & a semi-final victory once. At an early age my teachers noticed an aptitude for computers & in 6th grade I was allowed to participate in the Junior High level computer classes providing my initial exposer to HTML, The UNIX operating system & the Internet.  
  
# Hobbies & Activities  
  
## Cleveland Aquarium Society  
  
• Member Since 2010  
• Given various lectures about Freshwater Plants, Fish & Invertebrate  
• Maintain club documentation for CO2 injection  
  
The Cleveland Aquarium Society is the lodes operating aquarium club in north America. In addition to lectures, collecting trips & auctions CAS maintains one of the largest private ichthyological libraries in the world.  
  
## Akron Aquarium Club  
  
• Member Since 2010  
• Given various lectures about Freshwater Plants, Fish & Invertebrate, Wallsted method, CO2 injection & Dirted tanks  
• Award wining cherry red shrimp colony  
  
One of the most active clubs in the state of Ohio, the Akron aquarium club organizes various lectures, collecting trips & auctions around the grater Akron/Cleveland Area  
  
### Lorain County Collecting Trip  
  
• Annual native fish collection trip  
• Metro parks collection  
• Vermillion River Collection  
  
An annual trip to the various locations on the Vermillion River in Lorain Co. Ohio for the purpose of specimen collection & public education of watershed conservation & native species.  
  
## American Aquatic Gardners  
  
• Member Since 2000  
• Given various lectures about Freshwater Plants  
• Awards for Aquatic Plants  
  
American Aquatic Gardeners is an organization of Freshwater Aquarium enthusiasts primarily focused on the cultivation & exhibition of freshwater aquarium & pond/bog plant specimens.  
  
## Master Gardeners / American Horticultural Society  
  
• Member Since 2008  
• Various lectures on Freshwater Plants, Wallsted Method & CO2 Injection  
• Awards for Aquatic Plants  
  
Master Gardeners is the *field division* of the American Horticultural Society focusing on active conservation & horticultural efforts while providing support for the academic & educational agendas of the AHS  
  
## International Federation of Bicycle Messengers  
  
• Member Since 2007  
• Organize, Design & Competition of Allycat Races  
• Keirin Competitor  
  
IFBM is an international fraternal organization of professional bicycle couriers. IFMB fills various roles in the Bicycle Messenger community, from acting as the governing body for competitive events IFBM also provides legal advocacy & service for bicycle couriers as well as administrating a trust to assist couriers who are injured or killed in the execution of their profession.  
  
### Cycle Messenger World Championship  
  
• Organization & Competitor CMWC Toronto 2008  
• Organization CMWC Tokyo 2009  
• Organize *Camp Courier* for visiting couriers  
  
Competitive event to test skill, resolve & endurance of bicycle couriers. I was involved in both a professional compactly as a recruiter for my disputers as well as personally as a competitor. Active in the organization & execution of Toronto event, as well as training of Tokyo Couriers to host the event in their city.  
  
## Ann Arbor Cycling Club  
  
• Member Since 2006  
• Organize allocate races  
• Organize club rides  
  
Cycling Club in Ann Arbor Michigan, focused mainly on group & individual inter/intra-club competition, Also primary venue for off season training of University of Michigan tour cycling team.  
  
## Ann Arbor Photographic Society  
  
• Member Since 2005  
• Various local exhibits  
• Lectures on alternative process (colloidal wet plate & daguerreotype process )  
  
Photographic club in an Ann Arbor, MI. While a club member I was active in the organization & establishment of club darkrooms & equipment bank.  
  
## Jackson County Cycling Club  
  
• Member Since 2000  
• Local Road & rally races  
• Organize club rides  
  
The 'pro' cycling club in my home town. Primarily focused on competitive inter-club competitions & matching pajamas. Frequent individual competition & club training rides.  
  
## Cascades Cycling Club  
  
• Member Since 1999  
• Local Road & trail races  
• Cross State cycling trips  
  
The "Other" cycling club in my home town, primarily focused on distance tour & casual club cycling. Occasional team participation in various charity & fundraising competitions.  
  
## Michigan Sport Buggy Association  
  
• Member Since 1998  
• Dune buddy Design & Construction  
• Various Drag & Rally Racing events  
  
I have been involved if the MSBA in various complicates for as long as I can remember officially joining the organization in 1998. The MSBA is an off road enthusiast club primarily focused on Volkswagen flat-four / horizontally opposed power plant based contraption builds.  
  
### Spring & Fall Hill Climb  
  
• Bi-Anual uphill drag race  
• Pit Crew for *Time Machine* NOS injected sand rail dragster  
• Competitor for Home-brew sand rail trail buggy  
  
Participate & support family race team as pit crew as well as assist with event operation  
  
### Fall Colour Run  
  
• Annual off road trail trip to northern Michigan  
• Primary navigator  
• General wilderness camping support  
  
Participate & sometimes organize an annual fall trip to northern Michigan for camping & off road trail ridding.  
  
## Boy Scouts of America  
  
• Member Since 1996  
• Annual Northern Ontario pike fishing trip  
• Philmont New Mexico trip  
  
As a member of the Boy Scouts of America I learned various Organizational & Leadership skills, Serving as both patrol & senior patrol leader multiple times. Organization of various camping trips as well as developing skills in wilderness survival, sailing, canoe & kayaking, fishing, photography, assisted & astral navigation, or entering, community service & general life skills.  
  
# Testimonials  
  
## Mark Poon *Ruby on Rails & iOS Developer, Ur-Channel*  
  
"Don began teaching me Ruby nearly six years ago. His knowledge of application architecture & security have proven to be invaluable time and time again. His assistance & mentoring have helped me learn to write code that is testable & maintainable; Most importantly his ability to understand & explain advanced concepts in programming makes him a superb educator. He continues to be a constant source of wisdom & direction. I would recommend him for any position."  
  
## Xianhe Wei *Senior Engineer - Qualcomm Inc.*  
  
"Don is very committed to his work. He would sacrifice his own time to ensure work is completed in the highest quality possible."  
  
## Erdem Onder *Bicycle Courier - Toronto, ON*  
  
"Don is fast. No other way to say is. His ability to get from one end of town to the other, in traffic, under a load is pretty well known. He is also pretty great with a wrench, When I'm in a jam I know I can count on Don to get me back on the road & my waybills to their destination."  
  
## Leah Hollinsworth *Bicycle Courier Dispatcher - Toronto, ON*  
  
"When I need no know without doubt that my packages will arrive on time without incident I know that I can count on Don."  
  
## Bao Nguyen *Real Restate Agent - Ann Arbor, MI*  
  
"I am constantly impressed with Don's ability to absorb new knowledge and adapt to changing situations. When there is a problem to be solved he has a singular focus until a solution is found."  
  
## Steve Sabo *Painting Instructor & Studio Manager - Chicago, IL*  
  
"He sees a map once and knows exactly how to arrive at our destination. He must have GPS built into his head. Some people are natural problem solvers. Don is one of them."  
  
