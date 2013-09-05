# Projects

## RunRun Bicycle Couriers

• Bicycle Courier Dispatch, Tracking & Accounting System  
• RESTFull API Accessable via URL & QR Code  
• Mobile web app for Couriers & Clients  

RunRun is the dispatch & control system powering RunRun Bicycle Couriers. The system uses dynamicly generated QR Codes to excange data with a RESTfull API allowing Couriers, Dispatchers, & Clients to interact with the full waybill custody chain via camera equiped mobile phones. By automating the book work of envelope pushing RunRun allows maximum efficent use of courier resources by removeing the operational overhead of waybill management. RunRun allows couriers & dispatchers to more effectively opperate as independent contracters by streamlineing the back office management & allowing agents to concentrate on delivery speed.  

#### Front End
HTML5, CSS3, ECMAScript
#### Back End
Ruby, Slim, SASS, Sinatra, Grape, DataMapper, Postgres, MongoDB, OAuth2, Heroku


## The Void/HexScan

• Social Augemented Reality Game  
• Location Based Virtual playfield extracted for Location Awareness in RunRun  
• Ember.js front end / Sinatra driven backend  

The Void is a work in progress Augmented Reality Game. In The Void players claim teritory & resources on a dynamicly generated location based virtual play field. The Void uses an inovative location based Spiral Honeycomb Mosaic to generate a scaleable, nestable, Hexagonaly tiled game board. Venues such as local businesses & user added locations serve as the base to generate ingame content & Resources. As the coverage of the gratiucle is global & the scale of the tiles ranges from less then a meter to hundreds of kilometers there are potentialy billions of Tile Records in the database, Tiles are dynamicly calculated when requested by a player's client so that only 'Discoverd' tiles are persisted significantly reduceing database overhead.

HexScan is an Ember.js based tool for accessing the void API to test playfield coverage & navigation. This system was extracted & integrated into RunRun to allow for simple setup of delivery & billing zones. 

#### Front End
Ember.js, HTML5, CSS3, ECMAScript
#### Back End
Ruby, Slim, SASS, Grape, Sinatra, DataMapper, SQLite, MongoDB, Postgres, OAuth2, Heroku

## Unicorns

• Custome Markdown based CMS extracted from Personal Webpage  
• Full git based workflow  
• Articles writen in Markdown, Automaticly persisted to DataBase on Deploy  

Unicorns is a custome Content Management System I wrote to power my personal hpme page. Articles are expressed in markdown txt files & the site is deployed via a rake task & git to a heroku instance. When the deploy command is issued the markdown articles are parsed & perssisted to the database. The site is then spun up as a Rack/Sinatra app on heroku. The drive behind unicorn was a system 'So easy your mother could use it' & to give me a functional 'blank slate' to develop websites for clients.

#### Front End
HTML5, CSS3, ECMAScript

#### Back End
Ruby, Slim, SASS, Sinatra, DataMapper, SQLite, Postgres, Heroku

## Chartered Mule

• Basicly it's Portable Heroku for development  
• Docker Containers allow project isolation while only useing one VM  
• Scaleable, Automatic Provisioning & Easly Deployable  

Chartered Mule is an agile dev/ops tool for rapidly deploying & manageing webapps. The primary goal is leverageing Docker in a Vagrent VM to reduce the overhead of running multiple per project VMs. Chartered Mule is intended to rapidly construct scaleable, easily scaleable & potentaly disposable development evnironments freeing the Developer to concentrate less on project setup & maintence and more on codeing & inovative expression.

#### Front End
HTML5, CSS3, ECMAScript
#### Back End
Ruby, Grape, Vagrent, VirtualBox, Docker, Ubuntu

## Gourami

• Cloneable base for RESTfull state driven application  
• Decoupled implementation for rapid refactoring  
• Project dependencies managed with bundler for maximum portability

Gourami is an opinionated, clonable, functional, scalable & flexile web application template. Takeing advantage of technologies such as Ruby, Sinatra, Grape & DataMapper Gourami alows a developer to be more agile by eliminateing the need to start from scratch with every project. Useing Gourami a developer can produce a functional protype in minuets facilitateing rapid colaboration between a Devloper & a client. By embraceing convention over configuration rapid development & deployment become as easy as `git pull` & starting to code.

#### Front End
HTML5, CSS3, ECMAScript
#### Back End
Ruby, Slim, SASS, Sinatra, Grape, DataMapper

## Moonbase

• Moonbase is my Xserve for hire  
• Facilitates development & general awesomeness by increasing technological effectiveness  
• Functions as a live classroom for teaching development & operations on 'real' hardware

Moonbase is my personal Xserve & Fiber Channel RAID Array. Owning a functional Data Center Grade bare metal server allows one access to an invalable resource for development, teaching & discovery. By makeing this resource avalable to friends & colleagues one may also provide services such as File & Calendar Shareing, Git Repository hosting, Web Hosting & Other Colaborative services facilitating colaboration in both a personal & professional capacity.

#### Front End
OSX Lion, Apple Remote Desktop, SSH, The Internet
#### Back End
Ruby, Xserve, Fiber Channel RAID, L2TP/IPSec VPN, CalDAV, AFP, NFS, DNS, DHCP, NAT, UNIX, git, Ubuntu, Open Directory, Kerberos
