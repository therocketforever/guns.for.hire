# Projects

## RunRun Bicycle Couriers

• wrote a dispatch and accounting program for bicycle couriers which includes an api, qr code output system, mobile webapp
• A RESTFul API for tracking courier packages
• QR code #{that hold script rather than just a url, describe why is special compared to regular qr codes}
• utilizes a companion mobile webapp that scans the QR code and securely update package status and location through the RESTful API

A dispatch & control system for bicycle couriers. This system has three components, A restful api to track the current status, current location and destination of packages to be delivered, Waybills with dynamically QR Codes that store #{small, self-contained scripts} and a mobile web app for couriers and clients to excange data with the API, updating the information. This also automates the book work of envelope pushing RunRun #{no semantics, what exactly did you automate, describe}, maximum efficent use of courier resources by removeing the operational overhead of waybill management#{this is meaningless, what did you do to make it maximixed efficiency? did it calculate the order that couriers should deliver in order to minimize the distance travelled? etc?}. RunRun allows couriers & dispatchers to more effectively opperate as independent contracters by streamlineing the back office management & allowing agents to concentrate on delivery speed. #{Your previously points should make this last point self evident. Delete}  

#### Front End
HTML5, CSS3, ECMAScript
#### Back End
Ruby, Slim, SASS, Sinatra, Grape, DataMapper, Postgres, MongoDB, OAuth2, Heroku


## The Void/HexScan

• Social Augemented Reality Game
• Hexagon shaped virtual perimeter lattices indexed using a spiral honeycomb mosaic system
• Ember.js front end / Sinatra driven backend  

An Augmented Reality Game where players claim teritory & resources on a virtual play field. Venues such as local businesses & user added locations serve as the base to generate in game content & resources. As the coverage of the gratiucle is global and the scale of the tiles ranges from less then a meter to hundreds of kilometers; There are potentialy billions of Tile Records in the database, Tiles are dynamicly calculated when requested by a player's client so that only 'Discovered' tiles are persiste, significantly reducing database overhead.

HexScan is an Ember.js based tool for accessing the void API to test playfield coverage & navigation. This system was extracted & integrated into RunRun to allow for simple setup of delivery & billing zones. 

#### Front End
Ember.js, HTML5, CSS3, ECMAScript
#### Back End
Ruby, Slim, SASS, Grape, Sinatra, DataMapper, SQLite, MongoDB, Postgres, OAuth2, Heroku

## Unicorns

• markdown CMS for authoring webpages  
• git based workflow
• automatically persisted to database on deploy  

Unicorns is a cms I wrote to power my webpage. I would write articles in markdown txt files which are then deployed via a rake task & git to a heroku instance. When the deploy command is issued the markdown articles are parsed & perssisted to the database. The site is then spun up as a Rack/Sinatra app on heroku. The drive behind unicorn was a system 'So easy your mother could use it' & to give me a functional 'blank slate' to develop websites for clients.

#### Front End
HTML5, CSS3, ECMAScript

#### Back End
Ruby, Slim, SASS, Sinatra, DataMapper, SQLite, Postgres, Heroku

## Chartered Mule

• a #{virtual machine image} that provides a Heroku-like service for development activites   
• uses Docker and Vagrant to virtulize any type of environment and isolate projects from one another
• Scaleable, Automatic Provisioning & Easily Deployable  

Chartered Mule is an agile dev/ops tool for rapidly deploying & manageing webapps. The primary goal is leverageing Docker in a Vagrent VM to reduce the overhead of running multiple per project VMs. Chartered Mule is intended to rapidly construct scaleable, easily scaleable & potentaly disposable development evnironments freeing the Developer to concentrate less on project setup & maintence and more on codeing & inovative expression.

#### Front End
HTML5, CSS3, ECMAScript, Git
#### Back End
Ruby, Grape, Foreman, Rake, Git Vagrent, VirtualBox, Docker, Ubuntu

## Gourami

• authored a boilerplate for RESTful state driven applications 
• decoupled implementation for rapid refactoring  
• project dependencies managed with bundler for maximum portability

Gourami is an opinionated, clonable, functional, scalable & flexile web application template. Takeing advantage of technologies such as Ruby, Sinatra, Grape & DataMapper Gourami alows a developer to be more agile by eliminateing the need to start from scratch with every project. Useing Gourami a developer can produce a functional protype in minuets facilitateing rapid colaboration between a Devloper & a client. By embraceing convention over configuration rapid development & deployment become as easy as `git pull` & starting to code.

#### Front End
HTML5, CSS3, ECMAScript
#### Back End
Ruby, Slim, SASS, Sinatra, Grape, DataMapper

## Xserve & Fiber Channel RAID Array

• experience working with datacenter grade servers
• functions as a live classroom for teaching development & operations on 'real' hardware

My personal Xserve & Fiber Channel RAID Array. Owning a functional Data Center Grade bare metal server allows one access to an invalable resource for development, teaching & discovery. By makeing this resource avalable to friends & colleagues one may also provide services such as File & Calendar Shareing, Git Repository hosting, Web Hosting & Other Colaborative services facilitating colaboration in both a personal & professional capacity.

#### Front End
OSX Lion, Apple Remote Desktop, SSH, The Internet
#### Back End
Ruby, Xserve, Fiber Channel RAID, L2TP/IPSec VPN, CalDAV, AFP, NFS, DNS, DHCP, NAT, UNIX, git, Ubuntu, Open Directory, Kerberos


## Guns.for.Hire

• This Document & the associated resources
• Automaticly compile markdown for print & portability
• Automaticly compile cramdown for presentarion

Guns for hire is my Curriculum Vitae. Versioned with git, structured with Markdown/Kramdown, and automaticly compiled and processed from the source files to various document formats. The processing is done via rake build tasks to pull in the various sections as markdown source documents & compile it all into a single document. The task is structured as an object that allows fine grain manipulation on a line by line base should edits or changes be nessicary. Also included is a basic Sinatra/Rack app to present the raw Markdown as not only a stuctured document but styled as well. I also use this document & corrisponding repositories to instruct friends & collouges in the github *pull request* based workflow.

### Front End
HTML5, CSS3, Markdown

### Back End
Ruby, Git, Rake, Kramdown, SASS


