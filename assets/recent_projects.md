# <span class = "recent_projects">Recent Projects
{: .section_title}

## RunRun Bicycle Couriers
{: .section_sub_title}

* Closed source - code samples avalable on request *

• Dispatch & Accounting program for Bicycle Courier Services
• A RESTful API for tracking wabills & deliveriy contracts
• Utilizes QR codes to securely manipulate system via RESTfull API

A dispatch & control system for Bicycle Courier Services. This system has three components, A RESTfull API to track the current status, location & destination of packages to be Delivered. Waybills with dynamically QR Codes that store tracking hash to allow for couriers & clients to excange data with the API, updating the information. RunRun automates the book work of envelope pushing. Useing little more then a camrephone & a data connection Couriers, Dispatchers, & Clients can track, dispatch, & maintain the waybill custody chain from issue through dispatch to delivery accounting for redirect, service changes, and any aditional surcharges for size, weight, or additional wait time.

#### Front End
HTML5, CSS3, ECMAScript

#### Back End
Ruby, Slim, SASS, Sinatra, Grape, DataMapper, Postgres, MongoDB, OAuth2, Heroku, Cucumber


## The Void/HexScan
{: .section_sub_title}

* _The Void_: closed source - code samples avalable on request *
* _HexScan_: http://thevoid.herokuapp.com/scan *


• Social Augemented Reality Game
• Global coverage via scaleable boundings derived from Spiral Honeycomb Mosaic
• Ember.js front end / Sinatra driven backend

An Augmented Reality Game where players claim teritory & resources on a virtual play field. Venues such as local businesses & user added locations serve as the base to generate in game content & resources. As the coverage of the gratiucle is global & the scale of the tiles ranges from less then a meter to hundreds of kilometers; There are potentialy billions of Tile Records in the database, Tiles are dynamicly calculated when requested by a player's client so that only 'Discovered' tiles are persisted to the database, significantly reducing system overhead. Tiles & contents accesable via RESTfull JSON api.

_HexScan_ is an Ember.js based mobile app/tool for accessing the void API to test playfield coverage & navigation. HexScan allows inspection of graticule metadata based on location of inspection. Metadata information is avalable such as Current tile at Cursor, Scale of bounding, Latitide & Longitude of Tile at cursor, Tiles Bounded by Tile at Cursor, Bounding Tile, & Adjecent tiles. This system was extracted & integrated into RunRun to allow for simple setup of delivery & billing zones. 

#### Front End
Ember.js, HTML5, CSS3, ECMAScript, JSON

#### Back End
Ruby, Slim, SASS, Grape, Sinatra, DataMapper, SQLite, MongoDB, Postgres, OAuth2, Heroku, Cucumber,

## Unicorns
{: .section_sub_title}

* https://github.com/therocketforever/unicorns *

• Markdown powered custom CMS for authoring webpages
• Git based workflow
• Automatically persisted to database on deploy

Unicorns is a CMS I wrote to power my webpage. One writes articles in plain text files useing Markdown which are then deployed via a rake task & git to a heroku instance. When the deploy command is issued the markdown articles are parsed & perssisted to the database. The site is then spun up as a Rack/Sinatra app on heroku. The drive behind unicorn was a system 'So easy your mother could use it' & to give me a functional 'blank slate' to develop websites for clients.

#### Front End
HTML5, CSS3, ECMAScript

#### Back End
Ruby, Slim, SASS, Sinatra, DataMapper, SQLite, Postgres, Heroku, Cucumber

## Chartered Mule
{: .section_sub_title}

* https://github.com/therocketforever/chartered_mule *

• An automaticly provisioned VM that provides a private Heroku-like service for Development
• Uses Docker & Vagrant to isolate projects from one another alowing felexablity with out overhead of multiple VMs
• Scaleable, Automatic Provisioning & Easily Deployable

Chartered Mule is an agile dev/ops tool for rapidly deploying & manageing webapps. The primary goal is leverageing Docker in a Vagrent VM to reduce the overhead of running multiple per project VMs. Chartered Mule is intended to rapidly construct scaleable, reproduceable & potentaly disposable development evnironments freeing the Developer to concentrate less on project setup & maintence and more on codeing & inovative expression.

#### Front End
HTML5, CSS3, ECMAScript, Git

#### Back End
Ruby, Grape, Foreman, Rake, Git Vagrent, VirtualBox, Docker, Ubuntu

## Gourami
{: .section_sub_title}

* https://github.com/therocketforever/gourami *

• Authored a boilerplate for RESTful state driven applications 
• Decoupled implementation for rapid refactoring
• Project dependencies managed with bundler for maximum portability

Gourami is an opinionated, clonable, functional, scalable & flexile web application template. Takeing advantage of technologies such as Ruby, Sinatra, Grape & DataMapper Gourami alows a developer to be more agile by eliminateing the need to start from scratch with every project. Useing Gourami a developer can produce a functional protype in minuets facilitateing rapid agile colaboration between a Devloper & a client. By embraceing convention over configuration rapid development & deployment become as easy as `git pull` & starting to code.

#### Front End
HTML5, CSS3, ECMAScript

#### Back End
Ruby, Slim, SASS, Sinatra, Grape, DataMapper, Cucumber

## Xserve & Fiber Channel RAID Array
{: .section_sub_title}

* access restricted - demonstration avalible uppon request *

• Experience working with datacenter grade bare metal servers
• Facilitates remote operations & development by ceteralizeing mobile workflow
• Functions as a live classroom for teaching development & operations on 'real' hardware

My personal Xserve & Fiber Channel RAID Array. Owning a functional Data Center Grade bare metal server allows one access to an invalable resource for development, teaching & discovery. By makeing this resource avalable to friends & colleagues one may also provide services such as File & Calendar Shareing, Git Repository hosting, Web Hosting & Other Colaborative services facilitating colaboration in both a personal & professional capacity as well as provideing a constant stream of experence to hone my dev/ops skills. Some may view this a source of constant work & maintence however I see view this as a perpetual opertunity to experement & develop operations skills without risking a production enviroment.

#### Front End
OSX Lion, Apple Remote Desktop, SSH, The Internet

#### Back End
Ruby, Xserve, Fiber Channel RAID, L2TP/IPSec VPN, CalDAV, AFP, NFS, DNS, DHCP, NAT, UNIX, git, Ubuntu, Open Directory, Kerberos


## Guns.for.Hire
{: .section_sub_title}

* https://github.com/therocketforever/guns.for.hire *

• This Document & the associated resources
• Automaticly compile markdown for print & portability
• Automaticly compile cramdown for presentarion

Guns for hire is my Curriculum Vitae. Versioned with git, structured with Markdown/Kramdown, and automaticly compiled and processed from the source files to various document formats. The processing is done via rake build tasks to pull in the various sections as markdown source documents & compile it all into a single document. The task is structured as an object that allows fine grain manipulation on a line by line base should edits or changes be nessicary. Also included is a basic Sinatra/Rack app to present the raw Markdown as not only a stuctured document but styled as well. I also use this document & corrisponding repositories to instruct friends & collouges in the github *pull request* based workflow.

### Front End
HTML5, CSS3, Markdown

### Back End
Ruby, Git, Rake, Kramdown, SASS


