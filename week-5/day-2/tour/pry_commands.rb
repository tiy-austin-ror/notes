ls
dirs = Dir.glob('*')
dirs = Dir.glob('*').select { |f| File.directory?(f) }
dirs = Dir.glob('*').select(&:method(:directory?))
def directory?(f)
  File.directory?(f)
end
dirs = Dir.glob('*').select(&:method(:directory?))
dirs = Dir.glob('*').select(:method(:directory?))
entries = Dir.glob('*')
dirs = entries.select { |f| directory? f }
dirs = entries.select(&:directory?)
dirs = entries.select(:directory?)
dirs = entries.select(&:directory?)
dirs = entries.select(&method(:directory?))
dirs = entries.select(&method(:File.directory?))
dirs = entries.select(&method(:directory?))
show-method method
show-method directory?
File.method(:directory?)
&File.method(:directory?)
File.method(:directory?).to_proc
dirs = entries.select(File.method(:directory?).to_proc)
dirs = entries.select(&&File.method(:directory?))
dirs = entries.select(&File.method(:directory?))
entires.select { |f| File.directory?(f) }
entries.select { |f| File.directory?(f) }
dirs = entries.select(&File.method(:directory?))
dirs = entries.select(&File.directory?))
dirs = entries.select(&File.directory?)
dirs = entries.select(->(f){File.directory? f})
dirs = entries.select(&->(f){File.directory? f})
dirs = entries.select(&->(f){File.directory?(f)})
entries.select { |f| File.directory?(f) } == entries.select(&->(f) {File.directory? f })
entries.select { |f| File.directory?(f) } == entries.select(&->(f) {File.directory? f }) == entries.select(&File.method(:directory?))
dirs = entries.select(&->(f){File.directory?(f)})
def dir puts hi end
def dir; puts hi end
dir
def dir; puts "hi" end
dir
only_dirs = ->(f) { File.directory?(f) }
entries.select(&only_dirs)
dirs = entries.select(&->(f){File.directory?(f)})
dirs = entries.select(->(f){File.directory?(f)})
dirs = entries.select ->(f){File.directory?(f)}
dirs = entries.select -> (f) { File.directory?(f) }
dirs = entries.select Proc.new { |f| File.directory?(f) }
dirs = entries.select &Proc.new { |f| File.directory?(f) }
exit
@stories
@stories.empty?
exit
open_last_email
exit
self.should_notify_members
self.eventable.is_a?(Club)
self.aproved?
self.approved?
ls
methods
methods.count
public_methods.count
self.should_notify_members
public_methods.select { |x| x =~ /should_/ }
show_method should_notify_members
ls
help
exit
self.should_notify_members
self.should_notify_members = true
exit
ls
exit
event_params
exit
ls
page.html
page.text
find('event_should_notify_members')
check('event_should_notify_members')
save_and_open_page
exit
save_and_open_page
check('event_should_notify_members')
save_and_open_page
find('event_should_notify_members')
find('.event_should_notify_members')
find('.event_should_notify_members input')
exit
event_params
exit
story.
l
story
story.team
story.club
Club.where(:storyable => 2)
Club.where(:story => 2)
Storyable
Club.all.select { |x| x.stories.include(2) }
Club.all.map { |x| x.stories }
Club.all.map { |x| x.stories.map(&:id).includes?(2) }
Club.all.map { |x| x.stories.map(&:id).include?(2) }
Club.all.select { |x| x.stories.map(&:id).include?(2) }
exit
story.club_name
story.id
Club.pluck(:id)
Club.pluck(:stories)
Club.pluck(:story_id)
Club.first
Club.pluck(:storyable_id)
Club.first.methods false
Club.first.attributes
ls
Club.first.stories
Story.all
Storyable
Story.first.club
Club.all
Club.allexit
exit
story.storyable
exit
([:want] - [:want, :hi])
([:want] | [:want, :hi])
([:want] ^ [:want, :hi])
([:want, :hi] - [:want])
([:want, :hi] | [:want])
([:want, :hi] / [:want])
([:want, :hi] + [:want])
[:a] - [:a]
[:a] | [:a]
[:a, :b] | [:a]
[:a] | [:a, :b]
[:a] & [:a, :b]
[:a, :b] & [:a]
([:a, :b] & [:a]).any?
([:a, :b] & [:c]).any?
([:a, :b] & [:b]).any?
([:a, :b] & [:a]).any?
([:a, :b] & [:c]).any?
exit
record
record.team
record.team_id
record.attributes
exit
record.attributes
record.team
record.team.name
exi
exit
opts
token
record
record.team.name
exit
record.team.name
exit
record.team.name
exit
!!!
['john', 'doe'].join
['john', 'doe'].join(' ')
['john', nil.join(' ')
  ['john', nil].join(' ')
['john', nil].join(' ')
['john', ""].join(' ')
['john', ].join(' ')
['john', nil].compact.join(' ')
exit
mail
TeamMailer
TeamMailer.confirmation_instructions(user, "")
exit
record
record.team
record.team_id
team
exit
find('#event_should_notify_members')
a = _
a.should be_checked
a.check
a.check(true)
exit
event_params
def w
  _, h = [10, 20]
end
w
exit
ls
local_assigns
exit
event
next_event
ls
local_assigns
exit
event
ls
local_assigns
exit
event
ls
local_assigns
event
locals
locals[:event]
exit
event
ls
locals
exit
event
exit
@events
@events.map(&:image)
@events.map(&:image.thumb)
@events.map(&:image).map(&:url)
@events.map(&:image)
@events.first
@events.last
cd @events.first
ls
image
image.methods
image.exists?
image.to_param
image.to_s
image.path
image.size
image.present?
exit
ls
Event.all
Event.all.map(&:image)
Event.all.map(&:image).map(&:present?)
Event.all.select { |x| x.image.present? }
Event.all.select { |x| x.image.present? }.image.url
Event.all.select { |x| x.image.present? }[0].image.url
exit
date
ls
attributes
self.valid?
self.validate
self.validate!
exit
ls
resource
scope_name
@_request
exit
ls
resource
resource_class
resource_name
scope_name
after_sign_in_path_for
after_sign_in_path_for(:user)
after_sign_in_path_for(:user, "no")
after_sign_in_path_for(:user)
exit
ls
methods
methods.select { |x| x =~ /define/ }
exit
params
request
exit
params
request
exit
params
flash[:notice] = params[:next_action]
exit
params
request
exit
params
params[:user]
params[:user][:next_action]
after_sign_in_path_for(:user)
(params[:user][:next_action] || _)
exit
ls
current_page
page
page.methods
page.current_page
page.send(:current_page)
page.html
page.methods false
page.public_methods
current_path
current_page
exit
page.text
user
user.email
user.password
page.html
print page.html
ls
flash
params
page
page.response
page
page.public_methods
exit
current_path
exit
ld
params
exit
!!!
exit
callcallee
callee
ls
callee
methodss
methods
__callee__
caller
__callee__
caller
caller.map{ || x.split('/').last }
caller.map { |x| x.split('/').last }
exit
request
ls
exit
a = %w(bob steve skill)
a.to_hash
a.group
a.group_by(&:index)
a.map.with_index { |x, i| { i => x } }.merge
a.map.with_index { |x, i| { i => x } }.map(&:merge)
a.map.with_index { |x, i| { i => x } }.map(&method(:merge))
a.map.with_index { |x, i| { i => x } }
a.map.with_index { |x, i| { i => x } }.inject({})
a.map.with_index { |x, i| { i => x } }.inject(:merge)
a.map.with_index { |x, i| [x, i] }.inject(:merge)
a.map.with_index { |x, i| { x => i } }.inject(:merge)
['a', 'b', 3, :hello][nil || 0]
['a', 'b', 3, :hello][3 || 0]
[true, true, false].select { |x| x }
[true, true, false].select(&:self)
exit
[true, true, false].select(&:trust)
[true, true, false].select(&:trust).count
exit
"hello:"
a = _
a.drop
a.drop 1
a[0..-1]
a[0..-2]
a
a.chomp
a.chomp(":")
a
a.last
exit
a = "hello:"
a.gsub(/\w/)
a.gsub(/\w/, '')
a.gsub(/^\w/, '')
a
a.gsub(/^\w*/, '')
a.gsub(/\d*/, '')
a.gsub(/\W*/, '')
a.delete
a.delete /\W*/
a.remove
exit
1
1 not 2
not 1
!! 1
not not 1
exit 
@users
exit
ls
self
self.started_at
self.start_at
attributes
params
exit
params
params[:event]
event_params
Event.new(event_params)
@event
@event.update(event_params)
self
self.start_at_date
self.start_at_time
exit
@event
@event.start_at_time
exit
self
self.start_at_date
self.start_at_time
Chronic
Chronic.parse
Chronic.parse(start_at_date + " " + start_at_time)
a=_
a.strftime(DateHandler::DATE_FORMAT)
a.strftime(DateHandler::TIME_FORMAT)
exit
start_d
end_d
start_d.strftime(DateHandler::DATE_FORMAT)
start_d.strftime(DateHandler::TIME_FORMAT)
start_d.strftime(DateHandler::TIME_FORMAT + " %Z")
start_d.strftime(DateHandler::TIME_FORMAT + " %z")
start_d.strftime(DateHandler::TIME_FORMAT + " %Z")
start_at_date
start_at_time
end_at_time
end_at_time.class
exit
start_d
start_at_time
exit
start_d
start_d.strftime(DateHandler::TIME_FORMAT + " %Z")
end_d.strftime(DateHandler::TIME_FORMAT + " %Z")
start_at_time
end_at_time
self.start_at
self.end_at
start_d
self.start_at = start_d
self.start_at
self.start_at == start_d
self.start_at_time
self.start_at_date
exit
@story
@story.storyable_id
ls
exit
@story
@story.storyable_id
@story.storyable_id.nil?
@story.storyable_id
exit
!!!
club
exit
club
club.storyable_id
exit
page.html
print page.html
exit
club
club = nil
club
exit
club
page.text
puts page.html
Club.find(1)
Club.find(1).stories
exit
Club.find(1).stories
exit
Club.find(1).stories
exit
Club.find(1).stories
Story.all
Story.first.storyable_id
exit
Story.first.storyable_id
Club.find(1).stories
exit
club
club.nil?
if a
end
a
b
club || "b"
exit
local_assigns
exit
@clubs
exit
locals
local_assigns
exit
story
local_assigns
exit
story
local_assigns
exit
local_assigns
exit
story
story.nil
exit
club
club.owner
exit
club.owner
current_user
exit
club
record
record.club
record.club.image
record.club.logo
exit
[nil, "", " ", 10, "hi"].join(',')
[nil, "", " ", 10, "hi"].compact.join(',')
[nil, "", " ", 10, "hi"].reject(&:empty?).join(',')
[nil, "", " ", 10, "hi"].reject(:empty?).join(',')
[nil, "", " ", 10, "hi"].compact.reject(&:empty?).join(',')
[nil, "", " ", 10, "hi"].compact.reject(&:blank?).join(',')
[nil, "", " ", 10, "hi"].compact.select(&:present?)
exit
url_for(action: 'show')
url_for(action: 'show', id: 1...1000)
url_for(action: 'show', id: (?:[01][0-9]|2[0-4])[0-5][0-9])
url_for(action: 'show', id: /(?:[01][0-9]|2[0-4])[0-5][0-9]/)
url_for(action: 'show', id: /(?:[01][0-9]|2[0-4])[0-5][0-9])
url_for(action: 'show', id: '(?:[01][0-9]|2[0-4])[0-5][0-9]')
)
'
  "
/
"
  '
)
/
url_for(action: 'show', id: '(?:[01][0-9]|2[0-4])[0-5][0-9]')
url_for(action: 'show', id: '(?:[01][0-9]|2[0-4])[0-5][0-9]'.html_safe)
url_for(action: 'show', id: '(?:[01][0-9]|2[0-4])[0-5][0-9]')
exit
current_page
current_url
host
request.path
request.path =~ /show/
request.path =~ /clubs\/...../
'clubs/1' =~ /clubs\/..../
'clubs/1' =~ /clubs\/
/
'clubs/1' =~ /clubs\/
/
'clubs/1' =~ /clubs/
exit
@bar.class
@bar.class.name
AddressType.find(name: @bar.name
)
AddressType.find(name: @bar.class.name)
AddressType.where(name: @bar.class.name)
AddressType.where(name: @bar.class.name).first
AddressType.where(name: 30).first
exit
whereami 100
ClubFrequencies.newsletters
exit
ClubFrequencies.newsletters
ClubFrequencies.meetings
exit
!!
ls
@!
l
l;
h
'hi'
@
!
user
text
exception
whereami
text
club
exit
e
user
address
text
exit
e
exit
e
exit
r = %r{https?://}
a = ['http://goo.co', 'https://ba.co', 'mee.com/so']
a.map { |x| x =~ r }
a.map { |x| x !~ r }
exit
Domain.all
uri_host
Domain.first
Domain.first.system_name
Domain.last.system_name
exit
r = %r{(?<=\/)(\S*).git}
r
git@github.com:elzr/vim-json.git =~ (?<=\/)(\S*).git
)
/
\
/
;
git@github.com:elzr/vim-json.git =~ r
'git@github.com:elzr/vim-json.git' =~ r
a = 'git@github.com:elzr/vim-json.git'
r.match(a)
r.match(a)[0]
r = %r{(?<=\/)(\S*)(?=.git)}
r.match(a)[0]
exit
matches
matches.first
matches.methods false
matches.methods
matches.methods - Object.methods
matches.captures
matches.names
mathces.string
matches.string
matches.captures.first
exit
page.html
print page.html
exit
request.xhr?
request
exit
request.xhr?
exit
a = {foo: 'bar'}
a.fetch(:foo, 'ohno')
a.fetch(:fo, 'ohno')
exit
ls
@parent_name
@controller_path
@action_methods
exit
ls
methods
methods.count
ActionController
ActionController.methods
ActionController.methods.count
ApplicationController.methods.count
ActionController::Base.methods.count
PhotosController.methods.count
self
self.methods.count
self.class
exit
t('devise.failure.unauthenticated')
request.original_url
request.path
exit
subject
subject.methods - Object.methods
subject.methods.select { |x| x =~ /dimensions/ }
subject.file_size_and_dimensions
subject.errors
exit
ratio
dimensions.width
dimensions.height
banner_min_width
banner_min_height
dimensions.height < banner_min_height
exit
!!!
exit
errors.to_s
errors
errors.messages
errors.messages[:banner_photo]
exit
ls
locals
@club
@environment
@pathname
@__LINE__
tag
font_url
exit
ls
@club
@club.errors
@club.banner_photo
@club.banner_photo.url
@club.banner_photo.url(:full)
exit
@club.banner_photo.url(:full)
exit
@club.read_attribute(:banner_photo)
@club.dirty?
@club.persisted?
@club.tainted?
exit
@club.persisted?
@club.tainted?
@club.dirty?
@club.changed?
@club.banner_photo.changed?
@club.banner_photo_changed?
@club.changed
@club.banner_photo_file_name
@club.banner_photo_file_name_as
@club.banner_photo_file_name_was
@club.banner_photo.url(:full)
@club.banner_photo.url(:full).gsub(@club.banner_photo_file_name, @club.banner_photo_file_name_was)
exit
a
a.instance
a.instance.team
Team.all
Team.first.system_name
exit
[nil || 'hello', '/', 'goodbye'].join
exut
exit
instance_variable_set("@#{'bar'}", { foo: 'club' })
@bar
exit
@bar = 'club'
instance_variable_set("@#{'foo'}", { club: 'foo'})
instance_variable_get(:foo)
instance_variable_get(@foo)
instance_variable_get(:@foo)
instance_variable_get(:@bar)
exit
ls
@controller_path
@parent_name
whereami
@controller_path.singularize
exit
klass
@controller_path.constantize
@controller_path.singularize.constantize
@controller_path.singularize.capitalize.constantize
exit
ls
@team
params
params[:controller]
class
  self.class
end
self.class
self.class.methods
self.class.methods false
self.class.klass
self.class.class_name
self.methods
self.methods flase
self.methods false
self.public_methods
class_name
klass
exit
ls
@parent_name
@action_methods
@controller_path
exit
def what(name, keys)
  class Array; def must; nil end; end
  yield(keys.values)
end
def what(name, hash)
  keys = hash.values
  def keys.must; end
  yield(keys)
end
what
what :are, you: {talking: :about }
what :are, you: {talking: :about } do |things|
  p all things.must 
end
def all(*args); 'trolol' end
what :are, you: {talking: :about } do |things| p all things.must end
def with_addition(thing)
  def thing.+(other)
    puts 'lololol what r u doing?'
  end
end
with_addition({})
a = {}
with_addition(a)
a + 9
a
a.public_methods
{} + 99.99
exit
user_name
ls
this
self
self.user_name
exit
seslf
self
self.user_name
exit
user_name
User.where(User.arel_table[:first_name].matches("%#{user_name}%").or(User.arel_table[:last_name].matches("%#{user_name}%"))
)
exit
user
User.all
exit
user
User.all
exit
club
exit
User.all
User.where(User.arel_table[:first_name].matches("%#{user_name.downcase}%"))
User.where(arel_table[:first_name].matches("%#{user_name.downcase}%"))
User.first.first_name
user_name
User.where(arel_table[:first_name].matches("%#{sarah}%"))
User.where(arel_table[:first_name].matches("%sarah%"))
User.where(User.arel_table[:first_name].matches("%sarah%"))
User.where(User.arel_table[:first_name].matches("%sarah sanderson%"))
User.where(User.arel_table[:first_name].matches("%sarah doe%"))
exit
User.where(User.arel_table[:first_name].matches("%sarah%doe%"))
exit
user
exit
user
User.all
user_name
exit
user
exit
Peg = Struct.new
Peg = Struct.new(:discs => [])
Peg = Struct.new(:discs)
a = Peg.new
b = Peg.new
c = Peg.new
Disc = Struct.new(:id)
d1 = Disc.new(1)
d2 = Disc.new(2)
d3 = Disc.new 3
d4 = Disc.new 4
a.discs = [d1,d2,d3,d4]
def move(from, to)
end
z = [1,2,3,4]
z.unshift
z
z.shit
z.shift
z
def move(from, to)
  to.discs.unshift(from.shift)
end
move(a, b)
def move(from, to)
  to.discs.unshift(from.discs.shift)
end
def move(from, to)
  to.discs.unshift(from.discs.shift)
end
move(a, b)
a
b
to.discs || = []; to.discs.unshift(from.discs.shift)
def move(from, to)
  to.discs || = []; to.discs.unshift(from.discs.shift)
end
def move(from, to)
  to.discs ||= []; to.discs.unshift(from.discs.shift)
end
move(a, b)
a
b
c
move(a,b)
a
b
move(a,b)
a
b
def move(from, to)
  to.discs ||= []; to.discs.push(from.discs.shift)
end
move(b,a)
a
b
move b, a
b
a
def display
  [a, b, c].each do |peg|
    5.times do |i|
      puts "#{peg.discs[i]}|#{peg.discs[i]}"
    end
  end
end
display
a
b
c
def display(a,b,c)
  [a, b, c].each do |peg|
    5.times do |i|
      puts "#{peg.discs[i]}|#{peg.discs[i]}"
    end
  end
end
display a, b, c
def display(a,b,c); [a,b,c].each { |peg| 5.times { |i| puts "#{peg.discs[i].id * '-'}|#{peg.discs[i].id * '-'}"; } puts peg } end
def display(a,b,c); [a,b,c].each { |peg| 5.times { |i| puts "#{peg.discs[i].id * '-'}|#{peg.discs[i].id * '-'}"; }  end
def display(a,b,c); [a,b,c].each { |peg| 5.times { |i| puts "#{peg.discs[i].id * '-'}|#{peg.discs[i].id * '-'}"; }}  end
display(a,b,c)
def display(a,b,c); [a,b,c].each { |peg| 5.times { |i| puts "#{'-' * peg.discs[i].id}|#{'-' * peg.discs[i].id}"; }}  end
display a, b, c
b
c
def display(a,b,c); [a,b,c].each { |peg| 5.times { |i| puts "#{'-' * peg.discs[i].send(:id)}|#{'-' * peg.discs[i].send(:id)}"; }}  end
display a, b, c
exit
self.user_id
self.user_id_changed?
exit
g = `t groupies`
groupies = g.split(
)
groupies
bios = groupies.map { |x| `t whois #{x} | tail -n 2 | awk 'FNR == 1 { print }'` }
info = `t groupies --long`
CSV.new(info)
require 'csv'
CSV.new(info)
CSV.new(info, col_sep:'\t')
a = _
a.first
a.last
a
a.[2]
a[2]
a.first
CSV.new(info, col_sep:'\t', header_row:true)
CSV.new(info, col_sep:'\t', header:true)
CSV.new(info, col_sep:'\t', headers:true)
a = _
a.first
b = _
b.to_hash
b.headers
a
a.headers
info
exit
require 'csv'
CSV.new(`t groupies --long --csv`, headers:true)
a = _
a
a.headers
a.first
b = _
b.headers
b
a
a.map(&:bio)
a.map(:bio)
a.rows
a.row
a.methods
a.map { |x| x }
a.first
a
a.first
a.map { |x| x }
a.rewind
a
a.fist
a.first
b
b.bio
b['bio']
b['Bio']
a.rewind
a.map { |x| [x["Screen name"], x["Bio"]] }
b = _
b.select { |user, bio| bio =~ /blog/ }
gets
exit
@photos
Photo.last(5)
Photo.last(5).map { |x| [x.width, (x.width / x.height)] }
Photo.last(5).map { |x| [x.width, (x.width.to_f / x.height.to_f)] }
exit
@photos
exit
1@photos
@photos
@photos.map { |x| [x.width.to_f / x.height.to_f] }
@photos.map { |x| [x.height.to_f / x.width.to_f] }
Photos.all.map { |x| [x.height.to_f / x.width.to_f] }
Photo.all.map { |x| [x.height.to_f / x.width.to_f] }
exit
@photos
exit
@photos
exit
@photos
Photo.last(150).select { |photo| (photo.width.to_f / photo.height.to_f).between?(1.87, 1.92) }
Photo.last(150).select { |photo| (photo.width.to_f / photo.height.to_f).between?(1.8, 2) }
Photo.last(150).select { |photo| (photo.width.to_f / photo.height.to_f).between?(1.8, 1.9) }
Photo.last(150).select { |photo| (photo.width.to_f / photo.height.to_f).between?(1.8, 1.95) }
Photo.last(150).select { |photo| (photo.width.to_f / photo.height.to_f).between?(1.8, 1.99) }
Photo.last(150).select { |photo| (photo.width.to_f / photo.height.to_f).between?(1.8, 1.98) }
Photo.last(150).select { |photo| (photo.width.to_f / photo.height.to_f).between?(1.8, 1.99) }
Photo.last(150).select { |photo| (photo.width.to_f / photo.height.to_f).between?(1.85, 1.99) }
exit
@photos
exit
user
user.attributes
exit
field_name
page.has_select?(user_id)
page.has_select?('user_id')
exit
user.email
user.password
user.password_confirmation
user.id
user.country
select user.country, from: 'user_country'
fill_in 'user_email', with: user.email
save_and_open_page
exit
page.find('user_address1')
page.find('#user_address1')
page.find('#user_address1').value
page.text
save_and_open_page
exit
params
User.create(params[:user])
User.create(params)
exit
params
User.create(params[:user])
exit
params
params.permitted?
params[:user].permitted?
eit
exit
params.permitted?
User.create(params[:user])
exit
f
f.class
f.methods
f.object
f.object.class
f.object.class == Bar
exit
ls
resource
resource.owned_clubs
resource.owned_clubs > 0
resource.owned_clubs.length
photo_owner
@title
paged_photos_path
paged_photos_path(2)
whereami 24
all_club_photos_path(1)
all_club_photos_path
url_for([@club, :photos, params[:page]])
url_for([@club, :photos, :page, 1])
url_for([@club, :photos, :page, '1'])
url_for([@club, :photos, :page,])
url_for([@club, :photos, :page])
url_for([@club, :photos])
exit
@photos
exit
can
can?(:delete, story)
can?(:approve, story)
exit
user_registration_path
user_registration_path(user)
registration_path
registration_path(:user)
registration_path(:user, user)
session_path
user_session_path
user_registration_path
new_user_registration_path
user_registration_path
link_to '', user_registration_path, method: :delete
link_to '', user_registration_path(user), method: :delete
link_to '', user_registration_path, method: :delete
exit
destroy_user_registration_path
destroy_user_registration_path(user)
user_registration_path(:params => user)
user_registration_path
user_registration_path(user: user)
exit
!!!
params
User.find(params[:user])
User.find(params[:user]).delete
exit
format
params
ls
@user
@current_user
@request
request
params
whereami
params
params[:user] = nil
params
exit
TeamMailer.account_deletion(self)
self.email = 'me@justinherrick.com'
exit
instance
whereami 50
class_name
@bar
exit
instance
exit
ls
this
locals
blog
h
exit
ls
locals
this
blog
post
current_article
current_article.title
exit
blog
blog('game')
blog('games')
blog('games').articles
blog('games').articles.first
blog('games').articles.first.title
exit
a = [:foo, :bar, :zoo, :bat]
a > 10
class Array
  def >(other)
    raise unless other.is_a(Fixnum)
    self.count > other
  end
end
a > 10
Fixnum(1)
10.class
10.methods
class Array
  def >(other)
    fail unless other.is_a?(Fixnum)
    self.count > other
  end
end
a > 10
a > 1
class Array
  private def only_num(n)
    fail unless n.is_a?(Fixnum)
  end
  def >(o)
    n(o); self.count > o
  end
  def <(o)
    n(o); self.count < o
  end
end
a > 10
class Array
  def method_missing(args, &block)
    self.count.send(args
    )
  end
end
class Array
  def method_missing(meth, *args, &block)
    self.count.public_send(meth, args, block)
  end
end
a
a.count
a.ksjdf
class Array
  def method_missing(meth, *args, &block)
    self.count.public_send(meth, args, block) if self.count.respond_to?(meth)
  end
end
a.akjsdhf
class Array
  def method_missing(meth, *args, &block)
    self.count.public_send(meth, args, block) if self.count.respond_to?(meth)
    public_send(meth)
  end
end
a.aldksjf
class Array
  def method_missing(meth, *args, &block)
    if self.count.respond_to?(meth)
      self.count.public_send(meth, args, block)
    else
      super
    end
  end
end
a.hakjdf
a > 10
a >= 10
a <= 10
a == 10
a === 10
exit
class Array
  if self.count.respond_to?(meth)
    self.count.public_send(meth, args, block)
  else
    super
  end
end
class Array
  def method_missing(meth, *args, &block)
    if self.count.respond_to?(meth)
      self.count.public_send(meth, args, block)
    else
      super
    end
  end
end
[10, 0, 238, 23089].count
[10, 0, 238, 23089]
a = _
a > 10
a < 10
10.send(:<, 10)
class Array
  def method_missing(meth, *args, &block)
    if self.count.respond_to?(meth)
      puts meth, args, block
      self.count.public_send(meth, args, block)
    else
      super
    end
  end
end
a
a.kdjfhd
a > 10
class Array; def method_missing(meth, *args, &block); if self.count.respond_to?(meth); self.count.public_send(meth, *args, &block); else; super; end end end
a.akljdshfdk
a < 10
a > 10
[[1,1,1], [1,1]].sort
exit
user
user.owned_clubs
club
club.owner
user.owned_clubs << club
user.owned_clubs
exit
current_article
current_article.width
current_article['width']
current_article
current_article.title
current_article.date
current_article.tags
current_article.width
exit
current_article.methods
current_article.blog_data
current_article.blog_data['tags']
current_article.summary
current_article.summarypath
current_article.path
current_article.url
current_article.to_query
current_article.metadata
current_article.metadata[:page][:width]
current_article.metadata[:page]
current_article.metadata[:page]['width']
exit
ls
_
__
___
blog
code
placekitten
page
current_page
ls
current_resource
current_resource.to_s
current_resource.methods false
current_resource.methods 
current_resource.metadata
current_resource.metadata[:page]
current_resource.metadata[:page]['title']
current_page.metadata[:page]
exit
HI = "hello"
HI
HI.id
HI.__id__
def hello
  HI
end
hello
hello.__id__
hello.__id__ == HI.__id__
exit
instance
club.archived?
instance.archived?
instance.approve!
instance.approve?
instance.approved?
instance.approved
instance.approve
instance.approve!
exit
instance.approve!
exit
instance.approve!
instance.enqueue!
instance.deny!
exit
params
@club
exit
a = [true, true, true]
a.all?
b = [true, true, false]
b.all?
c = [false, false, false]
c.all?
exit
params
photo_params
params[:images]
params[:images].first
a = _
Photo.new
b = _
b.attachment
b.instance
b.photo
b.file
b.upload
b.image
b.image = a
exit
img
exit
params[:images
]
img
exit
photos
photos.first.owner
photos.first.club
photos.first.club.owner
photos.first.club.owner.name
photos.first.club.owner.first_name
exit
10 > 4 > 1
exit
min_count
max_count
params
params[:max_count]
params[:max_count].to_i
Fixnum
Fixnum('10')
Integer
Integer(
19)
Integer('100')
exit
min_count
max_count
Club.queued.select { |x| x.members.count
}
Club.queued.select { |x| x.members.count.between?(0, 10) }
exit
event
@events
params
exit
local_assigns[:header_hav]
(local_assigns[:header_nav] || Proc.new)
(local_assigns[:header_nav] || Proc.new).call
(local_assigns[:header_nav] || Proc.new)[]
exit
invites
invites.deliver!
invites.parsed_emails
invites.parsed_emails.map { |x| ClubOwnerMailer.invite_user(club, x).deliver! }
invites.parsed_emails.map { |x| ClubOwnerMailer.invite_user(club, x) }
ClubOwnerMailer.invite_user(club, x)
ClubOwnerMailer.invite_user(club, 'foo@yo.co')
exit
photos
photos.map(&:user)
exit
self
self.user
photoable
exit
content
content.club
@user
email_with_name
exit
@content
@club
@user
email_with_name
content.club
content.club.user
content.user
exit
!!!
Photo.take_until { |x, acc| puts [x, acc] }
exit
def sum(*args)
  if args.count > 2
    args[0] + sum(args.drop(1))
  end
end
sum(1,2)
def sum(*args)
  if args.count > 2
  end
end
def sum(*args)
  total = 0
  if args.count > 2
    total += args[0] + sum(args.drop(1))
  end
  total
end
sum(1,2)
sum(1,2,3)
def sum(*args)
  total = 0
  if args.count >
    total += args[0] + sum(args.drop(1))
  else
def sum(*args)
  total = 0
  if args.count > 2
    total += args[0] + sum(args.drop(1))
  else
    if args.count == 2
      total += sum(args[0], args[1])
    else
      total += args[0]
    end
  end
  total
end
sum(1,2,3)
exit
Dir
Dir['']
Dir['.']
Dir['*']
Dir['*/**']
Dir['*/**/**']
Dir.glob('.')
Dir.glob('*')
Dir.glob('*/88')
Dir.glob('*/**')
Dir.glob('*')
Dir.glob('*').map { |x| File.directory?(x) ? Dir.glob("#{x}/*") : x }
exit
def get(name); File.directory(name) ? Dir.glob("#{name}/*") : name end
name('models')
get('models')
def get(name); File.directory?(name) ? Dir.glob("#{name}/*") : name end
get('models')
Dir.glob('*').map(:method(:get))
Dir.glob('*').map(method(:get))
Dir.glob('*').map(:method())
Dir.glob('*').map(:method)
Dir.glob('*').map(&:method(:get))
Dir.glob('*').map(&method(:get))
exit
a = {}
def a.first
  self.to_a.first
end
a
a.first
a[:foo] = :bar
a.first
a = {foo: :bar }
a
a.first
a.last
b = {foo: :bar }
b.first
b.methods false
def b.flip
  Hash[self.values.zip(self.keys)]
end
b
b.flip
b
b.flip
def hi
  def bye
    "oops"
  end
  bye
end
hi
exit
a = '00110001 00000000 00000000
00110001 00000001 00000001
00110011 00000001 00000010
01010001 00001011 00000010
00100010 00000010 00001000
01000011 00000001 00000000
01000001 00000001 00000001
00010000 00000010 00000000
01100010 00000000 00000000'
a
a.split
a.split.map(:to_i)
a.split.map(&:to_i)
a.split.map { |i| i.to_i(2) }
a.split.map { |i| i.to_i(0) }
a.split
a.split.map { |i| i.to_i(2).char }
a.split.map { |i| i.to_i(2).chr }
a.split.map { |i| i.to_i(2) }
exit
def ¯\_(ツ)_/¯(*args)
def '¯\_(ツ)_/¯'(*args)
def \_(ツ)_/(*args)
def \_(ツ)_\/(*args)
def shrug(*args)
  puts '¯\_(ツ)_/¯', args.join ', '
end
shrugs
def shrug(*args)
  puts '¯\_(ツ)_/¯', args.join(', ')
end
shrug
def shrug(*args)
  puts
  puts '¯\_(ツ)_/¯', args.join(', ')
  puts
end
:¯\_(ツ)_/¯
:'¯\_(ツ)_/¯'
a = _
a
alias_method a, shrug
alias a, shrug
alias a shrug
a
shrug
a
a()
a
history
exit
{}[:foo]
{}[:foo] = :bar
({}[:foo] = :bar)
exit
[{x:1, y:1}, {x:2, y:2}]
a = _
a
a.reduce do |acc, x|
  puts acc, x
  x.x == 2 && x.y == 2
end
a.reduce do |acc, x|
  puts acc, x
  x[:x] == 2 && x[:y] == 2
end
exit
rand
rand(1, 10)
rand(0...3)
rand(0...199)
rand(1..3)
rand(0...199)
rand(1..3)
exit
class MyHash
  def yo
    'this'
  end
end
Hash
Hash = MyHash
class Object
  undef Hash
end
Hash
Hash.class
Hash.new
{}
{}.class
class Object; undef Hash; Hash = MyHash; end
hash
Hash
Hash.yo
MyHash.new
exit
Hash.new
OldHash = Hash
class Object
  undef Hash;
end
Hash
Hash.new
class MyHash
  def method_missing(*args, &block)
    OldHash.new.tap { |x| x.send(args, &block) }
  end
end
Hash = MyHash
undef hash
Hash = MyHash
Hash
Hash.new
exit
def hi; 'hi' end
def HI; 'HI' end
hi
HI
send(:HI)
def hI; 'hI' end
hI
hi
exit
class Kernal
  def c(*args)
    self
  end
end
c
class Kernel
  def c(*)
    self
  end
end
module Kernel
  def c(*)
    self
  end
end
c
c('hello')
c('hello', :yo)
1..100.c('range of 100').map { |x| puts x }.c( 'put out each')
(1..100).c('range of 100').map { |x| puts x }.c( 'put out each')
10.c
(1..100).c
(1..100).c()
(1..100).c().map { |x| x }
module Kernel def ~(*); self end end
~
()
~()
(1...100)~"something"
(1...100)~ "something"
(1...100) ~ "something"
(1...100) ~("something")
(1...100) ~ ("something")
~ "something"
exit
module Kernel
  def show(&block)
    def c(*args)
      puts args, self
    end
    block.call
  end
  def c(*)
    self
  end
end
(1...10).c('1 through 10')
show do (1...10).c('1 through 10') end
show do (1...10).c('1 through 10') end (1..10).c('no print')
show do (1...10).c('1 through 10') end; (1...10).c('no print')
exit
module Kernel
  def c(*) self end
  def print_c(*args)
    puts args, self
  end
  def show(block)
    alias_method :puts_c, :c
    block.call
    alias_method :c, :puts_c
  end
end
show do (1...10).c('1 through 10') end; (1...10).c('no print')
c
c()
show
exit
module Kernel
  def c(*)
    self
  end
  
  def puts_c(*args)
    puts args, self
  end
  
  def show(&block)
    alias_method :puts_c, :c
    block.call
    alias_method :c, :puts_c
  end
  
end
show do (1...10).c('1 through 10') end; (1...10).c('no print')
exit
show do (1...10).c('1 through 10') end; (1...10).c('no print')
alias_method
Module.alias_method
exit
show
ls
public_methods
singleton_methods
__id__
display
pretty_inspect
exit
c
method(:c)
a = _
a
a.methods
a.methods - Object.methods
a.receiver
a.owner
a.source
a.comment
a.parameters
a.source_location
a.to_proc
b = _
a.call
b.call
b
b.call
b.methods
b.methods - Object.methods
b.source
a
Method.new
Method.methods
Method.methods - Object.methods
method(def d; end)
def d; end
method(:d)
d = _
d.body
d.source
b.source
d
d.source
d.source = b.source
exit
rand
rand(1, 100)
rand(1...4)
rand(1..4))
rand(1..4)
rand(1..99)
exit
/[aeiou]/ =~ 'a'
/[aeiou]/ =~ 'b'
/[aeiou]/ =~ 'a'
/[aeiou]/ =~ 'i'
/[aeiou]/ =~ 'o'
exit
"hello".first
"hello".chars.first
exit
"hello".drop(1)
"hello".chars.drop(1)
exit
class String
  def hi
    'hi'
  end
end
"What".hi
"Bill".hi
exit
10.numerator
Date.today
Date.today.numerator
Date.today.to_s
Date.today - Date.new(2000, 06, 24)
(Date.today - Date.new(2000, 06, 24)) / 365
(Date.today - Date.new(2000, 06, 24)).numerator / 365
(Date.today - Date.new(2000, 06, 24)).years
(Date.today - Date.new(2000, 06, 24)).to_i
(Date.today - Date.new(2000, 06, 24)).to_i / 365
(Date.today - Date.new(2000, 06, 24)).to_f / 365
(Date.today - Date.new(2000, 06, 24)).to_i / 365
(Date.today - Date.new 2000, 06, 24).to_i / 365
(Date.today - Date.new(2000, 06, 24)).to_i / 365
DateTime.now
te
Date
Date.tod
Date.today
version
exit
Date.today
DateTime.now
DateTime.now.to_-ate
DateTime.now.to_date
reqiure 'date'
require 'datetime'
DateTime.now.to_date
require 'date_time'
"2000/1/1"
"2000/1/1".class
(2000/1/1).class
(2000-1-1).class
exit
def double(x); x * 2; end
[1,2,3,4,5].map(method(:double))
[1,2,3,4,5].map(&method(:double))
[1,2,3,4,5].map(&method(def triple(x); x * 3; end))
triple
exit
[
  {
    movieData => 'blah'
  }
]
exit
"hi \\q"
"hi \\\q"
"hi \q"
exit
require 'nokogiri'
Nokogiri
Nokogiri.get
Nokogiri:HTML(open('http://google.com'))
require 'uri-open'
require 'open-uri'
Nokogiri:HTML(open('http://google.com'))
Nokogiri::HTML(open('http://google.com'))
a = _
a.methods
a.children
exit
JSON
require 'json'
JSON
JSON.parse("{ 'foo' : 'bar' }
")
JSON.parse("{ 'foo' : 'bar' }")
JSON.parse("{ 'foo': 'bar' }")
JSON.parse('{ "foo": "bar" }')
exit
a = []
a.instance_methods(false)
a.methods
a.methods(false)
a.methods - Object.methods
Object.methods.count
ls
exit
ls
err
err.methods - Object.methods
err.cause
err.missing_name
err.args
err.exception
err.message
err.blamed_files
(err.methods - Object.methods).map { |meth| err.send(meth) }
err
ls
err
err.methods
err.methods(false)
err.display
err.message
err.message.class
err.class
err.class.methods
err.class.methods - Object.methods
err.class.exception
err.exception
err.exception.exception
err.exception.exception.exception
err.message
err.message.scan(/`.*'/)
err.message.scan(/(`.*')/)
err.message.scan(/`(.*)'/)
err.message.scan(/`(.*)'/).first
err.message.scan(/`(.*)'/).first.first
meth = _
meth.singularize
meth.pluralize
pieces = meth.split('_')
pieces.zip(pieces.map(&:pluralize))
plurs = pieces.zip(pieces.map(&:pluralize))
plus.combinator
plus.product
plurs.product
pieces.product(pieces.map(&:pluralize))
pieces.combination(pieces.map(&:pluralize))
pieces.combinations(pieces.map(&:pluralize))
pieces.combination(pieces.map(&:pluralize))
history
exit
a = [1, 2, 3]
b = ['a', 'b', 'c']
a.zip(b)
def mass_map(arr, &block)
  resp = []
  arr.each_with_index do |num, index|
    resp.push(block.call(arr))
  end
  resp
end
mass_map(a)
mass_map(a) do |arr|
  arr.map(&:upcase)
end
mass_map(b) do |arr|
  arr.map(&:upcase)
end
mass_map(b) do |arr|
end
def mass_map(arr, &block)
  resp = []
  arr.each_with_index do |num, index|
    resp.push(block.call(arr, num, index))
  end
  resp
end
mass_map(b) do |arr| arr.map(&:upcase) end
mass_map(b) do |arr, item, index| item end
mass_map(b) do |arr, item, index| arr[index] = arr.item.upcase; arr end
mass_map(b) do |arr, item, index| arr[index] = item.upcase; arr end
mass_map(b) do |arr, item, index| new_arr = arr.dup; new_arr[index] = item.upcase; arr end
mass_map(b) do |arr, item, index| new_arr = arr.dup; new_arr[index] = item.upcase; new_arr end
b
b.map(&:lowercase)
b
b = ['a', 'b', 'c'];
b
mass_map(b) do |arr, item, index| new_arr = arr.dup; new_arr[index] = item.upcase; new_arr end
b
b.map.with_index { |n, i| b.map { |x| b[i].upcase; b } }
b.map.with_index { |n, i| b.map { |x| b[i] = b[i].upcase; b } }
[ true, true, true, false].all?
[ true, true, true, true].all?
[ true, true, true, ''].all?
[ true, true, true, nil].all?
[ true, true, true, true].all? { |x| x.length > 3 }
[ true, true, true, true].any?
[ true, true, true, true].none?
[ true, true, true, true].zero?
[ true, true, true, true].one?
exit
method_suggestions
respond_to?(method_suggestions.first)
respond_to?(method_suggestions.first.to_sym)
respond_to?(method_suggestions.last.to_sym)
respond_to?(method_suggestions[1].to_sym)
respond_to?(method_suggestions[1])
method_suggestions - [method_name]
method_name
exit
responds_to?
respond_to?
respond_to?(:puts)
respond_to?(:put)
puts
put
defined? puts
defined? put
exit
client
client.methods - Object.methods
client
client.addr
client.peeraddr
client.remote_address
client.remote_address.methods(false)
client.remote_address.methods - Object.methods
ls
ll
client.remote_address
client.remote_address.listen
Integer
Integer.new
Integer.upto
1.upto(25).map { |x| x * x }
1.upto(25).map(:**)
1.upto(25).map { |x| x ** }
1.upto(25).map { |x| x * }
1.upto(25).map(:method(to_s))
1.upto(25).map(&:method(:to_s))
1.upto(25).map(&:method(to_s))
1.upto(25).map(&method(:to_s))
1.upto(25).map(&method(:exp))
1.upto(25).map(&method(Math.exp))
1.upto(25).map(&method(:Math.exp))
1.upto(25).map(&method(Math.exp))
method(Math.exp)
method(:Math.exp)
method('Math.exp')
method('"Math.exp')
method(':Math.exp')
Math.method(:exp)
1.upto(25).map(&Math.method(:exp))
1.upto(25).map(:*)
1.upto(25).map(*)
1.upto(25).map { |x| x ** 2 }
1.upto(25).map { |x| x * x }
1.upto(25).map { |x| x ** 2 }
1.upto(25).map { |x| x ** 2 }; nil
(Enumerator.new { |x| x ** 2 }).take(25)
(Enumerator.new { yield ** 2 }).take(25)
(Enumerator.new() { |x| ** 2 }).take(25)
(Enumerator.new() { |x| x ** 2 }).take(25)
(Enumerator.new() do |x| x ** 2 end).take(25)
(Enumerator.new() { |x| x ** 2 })
a = _
a.first
(Enumerator.new() { |x| binding.pry; x ** 2 })
whereami
(Enumerator.new() { |x| binding.pry; x ** 2 }).take(1)
x
ls
a
x
x.methods
x.yield
x.methods - Object.methods
x
ls
exit
1.upto(25).map { |x| x ** 2 }
1.upto(25).map { |x| x ** 2 }; nil
(Enumerator.new() { |x| x ** 2 }).take(25)
(Enumerator.new() { |x, y| x << y ** 2 }).take(25)
(Enumerator.new() { |x, y| x << 1 ** 2 }).take(25)
(Enumerator.new() { |x| a = 1 loop { x << a ** 2; a += 1} }).take(25)
(Enumerator.new() { |x| a = 1 loop do x << a ** 2; a += 1 end }).take(25)
(Enumerator.new() { |x| a = 1; loop do x << a ** 2; a += 1 end }).take(25)
(Enumerator.new() { |x| a = 1; loop do x << a ** 2; a += 1 end }).take(25);nil
Enumerator.new do |x|
  a = 1
  loop do
    x << a ** 2
    a += 1
  end
end
square = _
square.take(25)
exit
"5000".chars.reverse.each_slice(3).to_a.reverse.map(&:join).map(&:reverse).join(',')
"5000".chars.reverse.each_slice(3)
"5000".chars.reverse.each_slice(3).to_a
"5000".chars.reverse.each_slice(3).to_a.reverse
"5000".chars.reverse.each_slice(3).to_a.reverse.map(&:join)
"5000".chars.reverse.each_slice(3).to_a.reverse.map(&:join).map(&:reverse)
"5000".chars.reverse.each_slice(3).to_a.reverse.map(&:join).map(&:reverse).join(',')
exit
"internationalization".length
exit
hsh = Hash.new(Array.new)
hsh[:foo] << :bar
hash[:foo]
hsh[:foo]
hsh[:bar]
hsh[:bar] << :baz
hsh = Hash.new(Array.new.dup)
hsh[:bar] << :baz
hsh[:foo] << :bar
hsh = Hash.new(-> { Array.new}))
hsh = Hash.new(-> { Array.new })
hsh[:foo] << :bar
hsh[:foo][] << :bar
hsh[:baz][] << :bar
hsh = Hash.new(-> { Array.new})[])
hsh = Hash.new(-> { Array.new}[])
hsh[:foo] << :bar
hsh[:bar] << :baz
exit
{ hello: 'foo' 'foo-bar': 'baz'}
{ hello: 'foo', 'foo-bar': 'baz'}
{ hello: 'foo', 'foo-bar'.to_sym 'baz'}
data: { toggle: 'dropdown' }
{ data: { toggle: 'dropdown' } }
exit
"aaabbbccc"
"aaabbbccc".chars
"aaabbbccc".chars.partition
"aaabbbccc".chars.partition(&:to_s)
"aaabbbccc".chars.partition(&:to_i)
"aaabbbccc".chars.group_by(&:to_i)
"aaabbbccc".chars.group_by(&:to_s)
"aaabbbccc".chars.group_by(&:to_s).map { |k, v| "#{k}#{v.length}" }
"aaabbbccc".chars.group_by(&:to_s).map { |k, v| "#{k}#{v.length}" }.join
"abc".chars.group_by(&:to_s).map { |k, v| "#{k}#{v.length}" }.join
"abc".chars.group_by(&:to_s).map { |k, v| v.length > 1 ? "#{k}#{v.length}" : k }.join
exit
"aaabbbccc".chars.group_by(&:to_s).map { |k, v| "#{k}#{v.length}" }.join
"aaabbbccca".chars.group_by(&:to_s).map { |k, v| "#{k}#{v.length}" }.join
"aaabbbccca".chars.map.with_index { |char, index| [index, char] }.map { |k, v| "#{k}#{v.length}" }.join
"aaabbbccca".chars.map.with_index { |char, index| [index, char] }
"aaabbbccca".chars.map.with_index { |char, index| [index, char] }.group_by { |index, char| char }
"aaabbbccca".chars.map.with_index { |char, index| [index, char] }.group_by { |index, char| index }
"aba".chars.map.with_index { |char, index| [index, char] }.group_by { |index, char| index }
"aaba".chars.map.with_index { |char, index| [index, char] }.group_by { |index, char| index }
"aaba".chars.chunk(&:to_s)
"aaba".chars.chunk(&:to_s).first
"aaba".chars.chunk(&:to_s).last
"aaba".chars.chunk { |char| char }
"aaba".chars.chunk
"aaba".chars.chunk(&:to_s)
"aaba".chars.chunk(&:to_s).map { |char, occurances| "#{char}#{occurances}" }
"aaba".chars.chunk(&:to_s).map { |char, occurances| "#{char}#{occurances.length}" }
"aaba".chars.chunk(&:to_s).map { |char, occurances| "#{char}#{occurances.length}" }.join
"aaba".chars.chunk(&:to_s).map { |char, occurances| occurances.length > 1 ? "#{char}#{occurances.length}" : char }.join
exit
"a1".split /\d/
"a1".split /(?<=[?.!])/)
"a1".split(/(?<=[?.!])/)
"a11b2".split(/(?<=[?.!])/)
"a11b2".split(/(?<=\d)/)
"a11b2".split(/(?<=\d+)/)
"a11b2".split(/(?<=\d*)/)
"a11b2".split(/(?<=[0-9])/)
"a11b2".split(/(?<=[0-9]+)/)
"a11b2".split(/(?<=[0-9]\+)/)
"a11b2".split(/(?<=[0-9])+/)
"a11b2".split(/(?<=[0-9])*/)
"a11b2".split(/(?<=[0-9])+/)
"a11b2".split(/(?<=[0-9])+\w/)
"a11b2".split(/(?<=[0-9])+[a-z]/)
"a11b2".split(/(?<=[0-9]+[a-z])/)
"a11b2".split(/(?<=([0-9]+[a-z]))/)
"a11b2".split(/(?<=[0-9])+[a-z]/)
"a11b2".split(/(?=[0-9])+[a-z]/)
"a11b2".split(/(?[0-9])+[a-z]/)
"a11b2".split(/(?:![0-9])+[a-z]/)
"a11b2".split(/[a-z]/)
"a11b2".split(/[a-z]?=[0-9]/)
"a11b2".split(/[a-z]?![0-9]/)
"a11b2".split(/[a-z]?<![0-9]/)
"a11b2".split(/[a-z]?<[0-9]/)
"a11b2".split(([a-z][0-9]+))
"a11b2".split(/([a-z][0-9]+)/)
"a11b2".split(/([a-z][0-9])/)
"a11b2".split(/([a-z][0-9]+)/)
"a11b2".split(/[a-z][0-9]+/)
"a11b2".split(/(<match>[a-z][0-9]+)/)
"a11b2".split(/(?<match>[a-z][0-9]+)/)
"a11b2".split(/[a-z][0-9]+/)
"a11b2".split(/([a-z][0-9]+)/)
"a11b2".split(/([a-z][0-9]+)/).map do |num| num.split(/([a-z]|[0-9]+)/)
  }
"a11b2".split(/([a-z][0-9]+)/).map do |num| num.split(/([a-z]|[0-9]+)/) end
"a11b2".split(/([a-z][0-9]+)/).map { |num| num.split(/([a-z]|[0-9]+)/) }
"a11b2".split(/([a-z][0-9]+)/).map { |num| num.split(/([a-z]|[0-9]+)/).reject(&:empty?) }
"a11b2".split(/([a-z][0-9]+)/).map { |num| num.split(/([a-z]|[0-9]+)/).reject(&:empty?).map { |char, n| char * n} }
"a11b2".split(/([a-z][0-9]+)/).map { |num| num.split(/([a-z]|[0-9]+)/).reject(&:empty?) }
"a11b2".split(/([a-z][0-9]+)/).map { |num| a = num.split(/([a-z]|[0-9]+)/).reject(&:empty?); a.first * a.last }
"a11b2".split(/([a-z][0-9]+)/).map { |num| a = num.split(/([a-z]|[0-9]+)/).reject(&:empty?); return if a.nil?;a.first * a.last }
"a11b2".split(/([a-z][0-9]+)/).map { |num| a = num.split(/([a-z]|[0-9]+)/).reject(&:empty?).compact; return if a.nil?; a.first * a.last }
"a11b2".split(/([a-z][0-9]+)/).map { |num| a = num.split(/([a-z]|[0-9]+)/).reject(&:empty?).compact; return if a.empty? a.first * a.last }
"a11b2".split(/([a-z][0-9]+)/).map { |num| a = num.split(/([a-z]|[0-9]+)/).reject(&:empty?)  }
"a11b2".split(/([a-z][0-9]+)/).reject(&:empty?).map { |num| a = num.split(/([a-z]|[0-9]+)/).reject(&:empty?)  }
"a11b2".split(/([a-z][0-9]+)/).reject(&:empty?).map { |num| a = num.split(/([a-z]|[0-9]+)/).reject(&:empty?); a.first * a.last  }
"a11b2".split(/([a-z][0-9]+)/).reject(&:empty?).map { |num| a = num.split(/([a-z]|[0-9]+)/).reject(&:empty?); a.first  }
"a11b2".split(/([a-z][0-9]+)/).reject(&:empty?).map { |num| a = num.split(/([a-z]|[0-9]+)/).reject(&:empty?); a  }
"a11b2".split(/([a-z][0-9]+)/).reject(&:empty?).map { |num| a = num.split(/([a-z]|[0-9]+)/).reject(&:empty?); a.last  }
"a11b2".split(/([a-z][0-9]+)/).reject(&:empty?).map { |num| a = num.split(/([a-z]|[0-9]+)/).reject(&:empty?); a.first * a.last.to_i  }
"a11b2".split(/([a-z][0-9]+)/).reject(&:empty?).map { |num| a = num.split(/([a-z]|[0-9]+)/).reject(&:empty?); a.first * a.last.to_i  }.join
exit
[1,2,4].chunk
[1,2,4].chunk(&:self)
[1,2,4].chunk(&:self).each { |x| puts x }
[1,2,4].chunk(&:self).map { |x| x }
[1,2,4].chunk(&:object_id).map { |x| x }
"aaaaabbbbbbccccca".chunk(&:object_id).map { |x| x }
"aaaaabbbbbbccccca".chars.chunk(&:object_id).map { |x| x }
exit
"Zero zero zero zero zero zero one
Zero zero zero zero zero zero one one
Zero zero zero zero zero zero one one one
Zero zero zero zero zero one one one one"
a = _
a.split
a.split.map(&:lowercase)
a.split.map(&:lower)
a.split.map(&:downcase)
a.split.map(&:downcase).map { |x| if x == 'one'; 1; else; 0 end }
exit
a = IArray(1, 3, 5, 6)
a = IArray.new(1, 3, 5, 6)
a
a.map { |x| x * 2 }
a.first
a << 9
a.entries
a.entries << 10
a.entries.first
a.entries.first = 10
a.entries[0]
a.entries[0] * 2
a.entries << 10
a.entries[0] * 2
a.entries << 10
a.entries.first
b = IArray.new("foo", "bar")
b.entries.first
b.entries.first << "baz"
b
exit
b = IArray.new("foo", "bar")
b.entries.first << "baz"
b
exit
b = IArray.new("foo", "bar")
b.entries.first << "baz"
b
a = ['foo', 'bar']
b = IArray.new(a)
b = IArray.new(a*)
b = IArray.new(*a)
b.entries.first << "baz"
a
a.first
a.first << 'baz'
exit
a = ['foo', 'bar']
b = IArray.new(*a)
b.entries.first << "baz"
a.first << 'baz'
a
b
j
exit
a = ['foo', 'bar']
b = IArray.new(*a)
a = ['foo', 'bar']
a.first << 'baz'
a = ['foo', 'bar']
a.first << 'baz'
b.entries.first << "baz"
a
b
c = IArray.new("foo", ["bar, "baz"])
"
c = IArray.new("foo", ["bar", "baz"])
c
c.entries.last
c.entries.last.first
c.entries.last.first << "nooo"
c
exit
c = IArray.new("foo", ["bar", "baz"])
c.entries.last.first << "nooo"
c
z = "foo"
x = "bar"
a = { z => x }
z << 'pine'
a
x << "pine"
a
exit
%w(a b a)
%w(a b a).inject(Hash.new(0)). { |m, o| m[o] += 1; m}
%w(a b a).inject(Hash.new(0)) { |m, o| m[o] += 1; m }
%w(a b a).group_by(&:to_s)
%w(a b a).group_by(&:to_s).map { |k, v| k :=> v.length }
%w(a b a).group_by(&:to_s).map { |k, v| k => v.length }
%w(a b a).group_by(&:to_s).map { |k, v| { k => v.length} }
%w(a b a).group_by(&:to_s).map { |k, v| [k, v.length] }
%w(a b a).group_by(&:to_s)
%w(a b a).group_by(&:count)
%w(a b a).group_by(:count)
%w(a b a).group_by(:+)
%w(a b a).group_by&(:+)
%w(a b a).group_by(&:+)
%w(a b a).group_by(&:+, 0)
%w(a b a).partition
%w(a b a).partition.take 5
exit
class Symbol
  def to_proc
    -> (col) do
      if col.respond_to?(:each)
        col[self]
      else
        col.send(self)
      end
    end
  end
end
[{ name: "Robert Paulson", age: 42 }].map(&:name)
[{ name: "Robert Paulson", age: 42 }].map(&:to_s)
['hi', 'boo'].map(&:upcase)
class Symbol
  def to_proc
    -> (x) do
      if x.respond_to(:each) && x.keys.include?(self) || x.respond_to(:inc)
        x[self]
      else
        col.send(self)
      end
    end
  end
end
[{ name: "Robert Paulson", age: 42 }].map(&:to_s)
class Symbol
  def to_proc
    -> (x) do
      if x.respond_to?(:each) && x.keys.include?(self) || x.respond_to?(:inc)
        x[self]
      else
        x.send(self)
      end
    end
  end
end
[{ name: "Robert Paulson", age: 42 }].map(&:to_s)
[{ name: "Robert Paulson", age: 42 }].map(&:name)
[{ name: "Robert Paulson", age: 42 }].map(&:0)
[{ name: "Robert Paulson", age: 42 }].map(0)
exit
require 'csv'
CSV.new({foo: 'bar'})
CSV.new({foo: 'bar'}).first
exit
csv
csv.methods(false)
csv.methods
csv.header_row?
csv.to_a
csv.count
exit
require 'csv'
hsh = { foo: 'bar' }
CSV.new(hsh)
CSV.new(hsh).first
CSV.parse(hsh)
hash
hsh
hsh.keys
hsh.keys.join(hsh.values)
hsh.keys.zip(hsh.values)
hsh.keys.zip(hsh.values).to_s
hsh.keys.zip(hsh.values).flatten.join
hsh.keys.zip(hsh.values).flatten.join(',')
CSV.parse(hsh.keys.zip(hsh.values).flatten.join(','))
CSV.parse(hsh.keys.zip(hsh.values).flatten.join(',')).class
CSV[]
exit
hash = {}.tap { |h| h[:spelling] = "richard" }
hash
ls
exit
c "hello"
puts_c "hello"
whereami 50
show do
  c 'hello'
  c 1 + 2
end
alias_method
alias
exit
show do
  c 'hi'
  c 2 + 4
  c
end
whereami 50
show do
  puts_c "hello"
  puts_c 1 + 2
  puts_c "bye"
end
exit
[1, 2, 4] == [1, 2, 4]
exit
1 + 1
"hello"
exit
clear
fruits = ['apple', 'pear', 'guava', 'mango', 'bannannanan']
fruits.each do |fruit|
  puts fruit
end
fruits.each do |f|
  puts "My favorite is #{f} or..."
end
help
reset
fruits = ['apple', 'bananananana', 'pear', '*berry', 'kiwi']
new_fruit = []
fruits.each do |fruit|
  new_fruit << fruit.upcase
end
new_fruit
fruits.map do |fruit|
  fruit.upcase
end
loop do
number = 0
loop do
  puts number
  number += 1
  break if number > 100
end
number = 0
while number < 100
  print number
  number += 1
end
if number >= 100
  puts "I'm old"
end
if number >= 100
  puts "i'm old"
else 
  puts "not yet"
end
puts "More than 100" if number >= 100
puts "More than 100" unless number >= 100
puts "More than 100" if number <= 100
10 != 10
!10
2 + 2
2 == 2 ? puts 'yes its true' : puts 'no its false'
2 == 2 ? puts 'yes its true'; : puts 'no its false'
2 == 2 ? puts 'yes its true' : puts 'no its false'
2 == 2 ? "YES" : "NO"
2 == 3 ? "YES" : "NO"
2 == 3 ? 4==4 ? 'what' : 'are you doing' : "NO"
is_open = true
is_open ? "OPEN" : "CLOSED"
sign_title = is_open ? "OPEN" : "CLOSED"
is_open = false
sign_title = is_open ? "OPEN" : "CLOSED"
exit
people = ['mark', 'jim', 'sarah', 'sally', 'bill', 'cindy']
people.length
people.length < 3
people.map do |name|
  name.length < 4
end
people.select do |name|
  name.length < 4
end
people.reject do |name|
  name.length < 4
end
people.select { |name| name.length < 4 }
scores = [78, 98, 101, 66, 33, 70, 88, 85, 85, 20, 0]
scores.sum
sum = 0
scores.each do |score|
  sum += score
end
sum
724 / scores.length
scores.reduce(:+)
scores.reduce(:*)
scores.reduce(:**)
scores.reduce do |score, accumulator|
  accumulator += score
end
people
people.group_by { |name| name.length }
people.zip(scores)
scores.zip(people)
people.zip(scores).each { |person_and_score| puts person_and_score.first + " scored #{person_and_score.last}" }
exit
require 'uri'
get
open
open('https://api.github.com/gist')
get
require 'net/http'
get
open('https://api.github.com/gist')
require 'open-uri'
open('https://api.github.com/gist')
Net::HTTP.post_form(URI.parse('https://api.github.com/gists'), { :"description" => "testing", :"files" => { :"this.md" => "test" } })
URI.parse('https://api.github.com/gists')
Net::HTTP.post_form(URI.parse('https://api.github.com/gists'), { "description" => "testing", "files" => { "this.md" => "test" } })
a = _
a.methods false
a.methods
a.message
exit
Array.new(9)
exit
place
@pieces[place]
@pieces[place] =~ /x|o/
x=~ /x|o/
'x' =~ /x|o/
'o' =~ /x|o/
'o' !=~ /x|o/
'o' !~ /x|o/
exit
"my favorites fruits are pears, apples, and oranges"
msg = "my favorites fruits are pears, apples, and oranges"
msg.match(/pears/)
msg.scan(/pears/)
msg.scan(/guava/)
msg.scan(/[a-z]*,/)
msg =~ /guava/
msg =~ /pears/
if msg =~ /pears/
  puts 'me too!'
else
  puts 'yah pears are gross'
end
response = 'yes, show me more'
if response =~ /y/
  puts 'lets go'
end
puts 'okay' if response =~ /[yY]|yes|affirmative/
response = 'affirmative'
puts 'okay' if response =~ /[yY]|yes|affirmative/
5 > 4 || 8 > 3
Regex.new('yY')
require 'regex'
Regexp.new('yY')
%w[apple pear steve bill]
oops = "This is my favoiret thing to do"
oops.gsub(/favoiret/, 'favorite')
oops.gsub(/i/, '!')
oops.gsub(/[aeiou]/, '*')
oops.sub(/[aeiou]/, '*')
replace_me = "This is my favoiret thing to do. but I only want to replace this second period. I will also leave this third one alone."
replace_me.sub(/.*\..*)
/
)
1..9
(1..9).each do |n|
  puts n
end
(1...9).each { |n| puts n }
('a'..'z').each { |n| puts n }
'john'..'cindy'
'Alaska'..'Vermont'
('Alaska'..'Vermont'
  ('Alaska'..'Vermont'
))
_.each { |w| puts w }
'aaaaaaaaaaa'...'zzzzzzzz'
_.each { |x| puts x }
'aaaaaaa'...'zzzzzzzz'
('aaaaaaa'...'zzzzzzz').each { |x| print x + ' ' }
.permutations
['a', 'b', 'c'].permutations
def greet
  puts "Hello World"
end
def greet_person(name)
  puts "Hello #{name}"
end
greet
greet_person('Gary')
response = greet_person('Steve')
response
response.nil?
puts response
def greet
  "Hello World"
end
def greet_person(name)
  "Hello #{name}"
end
greet
greet_person('Gary')
response = greet_person('Steve')
response
exit
Object
Object.new
Object.new(1)
Kernal
Kernel
Kernel.puts
Kernel.puts "hello"
exit
nil.nil?
nil.to_s
nil.inspect
def is_time_for_class?/
def is_time_for_class?
  true
end
if is_time_for_class?
  puts "Shut Door"
else
  puts "Open Door"
end
exit
123.inspect
obj = Object.new
obj
obj.object_id
"hello world".object_id
(24).object_id
[].object_id
"hello".eql("hello")
"hello".eq?("hello")
"hello".eq("hello")
"hello".equals("hello")
"hello".equals?("hello")
"hello".eql?("hello")
0.object_id
100.object_id
1.object_id
2.object_id
"Hello"
"Hello".class
String.new('Hello')
class Dog
  def initialize
  end
  def speak
    puts 'bark!'
  end
end
Dog
Dog.speak
fido = Dog.new
fido.class
fido.speak
class Cat
  def initialize
    puts "mewwwwwww"
  end
  def speak
    puts '...'
  end
end
mittens = Cat.new
mittens.speak
class Car
  def initialize
    @color = 'red'
    @wheels = 4
    @doors = 2
    @convertable = false
  end
  def turn_on
    @on = true
    puts 'vrmmmmm'
  end
  def is_on?
    @on
  end
end
my_car = Car.new
my_car.color
my_car.turn_on
my_car.is_on?
my_car.@color
my_car.color
class Car
  def initialize
    @color = 'red'
    @doors = 2
    @on    = false
  end
  def color
    @color
  end
  def color=(new_color)
    @color = new_color
  end
  def doors
    @doors
  end
  def turn_on
    puts 'vrmm'
    @on = true
  end
  def turn_off
    puts '*powering down*'
    @on = false
  end
  def is_on?
    @on
  end
  def paint_car(color)
    @color = color
  end
end
my_car = Car.new
my_car.color
my_car.color = 'blue'
my_car.color
my_car.doors
my_car.doors = 3
my_car.is_on?
my_car.turn_on
my_car.is_on?
car_color
my_car.color
my_car.paint
my_car.paint_car('green')
my_car.color
exit
Kernel
Kernel.puts
def message(yo)
  puts yo
end
Kernel.message
Kernel.message 'hi'
exit
1..11
(1..11) * 4
Array(1..11) * 4
(Array(1..11) * 4).length
52 - 44
(Array(1..11) * 4).concat(Array.new(10, 8))
(Array(1..11) * 4).concat(Array.new(8, 10))
(Array(1..11) * 4).concat(Array.new(8, 10)).length
(Array(1..11) * 4).concat(Array.new(8, 10)).select { |x| x == 1 {
(Array(1..11) * 4).concat(Array.new(8, 10)).select { |x| x == 1 }
(Array(1..11) * 4).concat(Array.new(8, 10)).select { |x| x == 11 }
(Array(1..11) * 4).concat(Array.new(8, 10)).select { |x| x == 10 }
exit
(Array(1..11) * 4).concat(Array.new(8, 10)).select { |x| x == 10 }
(Array(1..11) * 4).concat(Array.new(8, 10))
(Array(1..11) * 4).concat(Array.new(8, 10)).count
(Array(1..11) * 4).concat(Array.new(8, 10)).select { |x| x == 10 }
(Array(1..11) * 4).concat(Array.new(8, 10)).select { |x| x == 11 }
(Array(1..11) * 4).concat(Array.new(8, 10))
exit
(Array(1..11) * 4).concat(Array.new(8, 10)).pop
cards = (Array(1..11) * 4).concat(Array.new(8, 10))
cards.pop
cards.first
cards.shuffle
cards.pop
exit
cards = (Array(1..11) * 4).concat(Array.new(8, 10))
cards.shift
cards.length
cards.unshift
cards.length
exit
[
]
[1, 2, 3, 4, 5]
1..13
(1..13) * 4
(1..13).to_a * 4
(1..13).to_a
(1..13).to_a * 4
((1..13).to_a * 4).length
exit
require 'lib/war'
load 'lib/war'
require_relative 'lib/war'
Deck
my_deck = Deck.new
my_deck.shuffle
my_deck.draw
my_deck.shuffle
my_deck.draw
arr = [1,2,3,4,5]
arr.first
arr
arr.pop
arr
arr.pop
arr
arr.pop
arr
arr.pop
arr
arr.pop
arr
arr = [1,2,3,4,5]
arr.shift
arr
arr.shift
arr
require_relative 'lib/war'
War
War.new
War.new.play
exit
require_relative 'lib/war'
game = War.new
game.play
exit
require_relative 'lib/war'
game = War.new
game.play
exit
require_relative 'lib/war'
game = War.new
game.play
exit
require_relative 'lib/war'
War.new.play
exit
require_relative 'lib/war'
War.new.play
exit
require_relative 'lib/war'
War.new.play
exit
require_relative 'lib/war'
War.new.play
exit
require_relative 'lib/war'
exit
require_relative 'lib/war'
War.new.play
exit
require_relative 'blackjack'
exit
class Animal
end
class Animal
  def initialize
  end
  def speak
    puts "ggggrrrrrssssmmmm"
  end
end
mynimal = Animal.new
mynimal.speak
class Cat < Animal
end
mittens = Cat.new
mittens.speak
class Kitten < Cat
  def speak
    puts 'mew'
  end
end
bb = Kitten.new
bb.speak
puts 'hi'
Kernel.puts 'hi'
def foo
  'bar's
def foo
  'bar'
end
Kernel.foo
bb.ancestors
bb.parents
bb.methods
Cat.ancestors
Kitten.ancestors
String.ancestors
Fixnum.ancestors
Class.ancestors
Float.ancestors
class Dog < Animal
  def initialize
    @color = 'blue'
  end
  def color
    @color
  end
end
fido = Dog.new
fido.color
fido.speak
class WhyNot
  def initialize
    @something = gets.chomp
  end
  def something
    puts @something
  end
end
eh = WhyNot.new
eh.something
class Puppy < Dog
  def initialize
    super
  end
  def speak
    super
    puts "* pees on floor * "
  end
end
pup = Pupppy.new
pup = Puppy.new
pup.color
pup.speak
class User
  def initialize(name)
    @name = name
  end
  def name
    @name.capitalize
  end
end
me = User.new('justin')
me.name
class Admin < User
  def unlock_doors
    puts 'allowed'
  end
end
sarah = Admin.new('sarah')
sarah.name
sarah.unlock_doors
me.unlock_doors
class Rectangle
  def initialize(width, height)
    @width = width
    @height = height
  end
  def resize(width, height)
    @width = width
    @height = height
  end
end
Rectangle.new(10, 20)
my_rect = Rectangle.new(10, 20)
my_rect.resize(4, 5)
class Square < Rectangle 
  def initialize(length)
    @width = length
    @height = length
  end
end
my_square = Square.new(10)
my_square.resize(10)
my_square.resize(10, 23)
my_square
class BankAccount
  attr_accessor :owner
  def initialize(owner, balance = 0)
    @owner = owner
    @balance = balance
  end
  def deposit(amount)
    @balance += amount
  end
  def withdrawal(amount)
    @balance -= amount
  end
  def balance
    @balance
  end
end
my_account = BankAccount.new('Justin Herrick')
my_account.deposite(10000)
my_account.deposit(10000)
my_account.withdrawal(25)
my_account.owner
my_account.balance
class Car
  def turn_on
    start_engine
  end
  private
  def start_engine
    puts "vrrmmmmm!".upcase
  end
end
mycar = Car.new
mycar.start_engine
mycar.turn_on
class ToyCar < Car
  def push_start
    start_engine
  end
end
toy = ToyCar.new
toy.push_start
toy.engine_start
toy.start_engine
exit
15 % 15
14 % 14
14 % 15
10 % 15
5 % 15
5 % 5
10 % 5
exit
class BlackJack
  attr_accessor :player_one
  def initialize
    @player_one = Player.new
    @card = Deck.new
  end
  def play
    puts "The player's balance is: #{player_one.balance}"
    print "You must pay $10 to join the game.  Press Y to play or N to exit: "
    users_choice = gets.chomp
    player_one.balance -= 10
    puts "Your balance is: #{player_one.balance}"
    card_one = @player_one.cards.draw
    puts "Your cards are: #{card_one}"
    while @player_one.cards.count > 0 do 
      print "Do you want to hit (h) or stay (s)? "
      users_choice = gets.chomp
      card = @card.hit
      if users_choice == "h" 
        puts "Your card is #{card}."
        puts "Yours card's are: #{card_one.push(card)}"
      elsif users_choice == "s"
        puts "Yours cards are: #{card_one}"
        puts "The dealers cards are: #{@card.dealers_draw}"
        break
      end
    end
    #if users_choice == "h"
    #end
  end
end
class Player
  attr_accessor :cards, :score, :balance
  def initialize
    @balance = 100
    @cards = Deck.new
    @score = 0
  end
end
class Deck
  attr_reader :cards
  def initialize
    cards_that_equal_ten = [10] * 16
    aces = [11] * 4
    @cards = ((2..9).to_a * 4).concat(cards_that_equal_ten).concat(aces).shuffle
  end
  def count
    @cards.count
  end
  def shuffle
    @cards = @cards.shuffle
  end
  def dealers_draw
    @cards.shift(2)
  end
  def draw
    @cards.shift(2)
  end
  def hit
    @cards.shift
  end
end
game = BlackJack.new
game.play
exit
puts "Welcome to Blackjack!"
puts "You have $100, but it's a $10 fee per game."
puts "Let's play!"
class BlackJack
  def initialize
    @player = Player.new
  end
  def play
    def initialiaze
      @user_answer = gets.chomp
    end
    while @player.money > 10 do
      @player.money -= 10
      puts "Now you have $#{@player.money}"
      card_one = @player.cards.hit
      card_two = @player.cards.hit
      card_three = @player.cards.hit
      puts "Your total is #{card_one + card_two}"
      puts "Would you like another card? (y or n)?"
      @user_answer = gets.chomp
      if @user_answer == "y"
        puts "Okay, here's your new card. Good luck"
        @player.cards.hit
        puts "Your new total is #{card_one + card_two + card_three}"
      else
        puts "You chose to stay! Thanks for playing."
      end
    end
  end
  #I know I still need to set it up for the game to continue...
  def sum_player_hand(player_hand)
    player_hand.reduce(:+)
  end
end
class Player
  attr_accessor :cards, :money, :total
  def initialize
    @cards = Deck.new
    @money = 100
    @total = 0
  end
  class Deck
    attr_reader :cards
    def initialize
      faces = [10] * 4
      aces = [11] * 4
      @cards = ((2..9).to_a * 4).concat(faces).concat(aces).shuffle
    end
    def total
      @cards.count
    end
    def shuffle
      @cards = @cards.shuffle
    end
    def deal
      @cards.shift(2)
    end
    def hit
      @cards.shift
    end
  end
end
BlackJack.new.play
Blackjack.new.play.new
Blackjack.new.
Blackjack.new
BlackJack.new
BlackJack.new.play.new
BlackJack.new.play.initialize
exit
class Blackjack
  def initialize
    @player = Player.new
    @deck = Deck.new
    @total = 100
    @hand = Player.new
  end
  def play
    puts "Your cash total is #{@total}!"
    @dealer_hand = Deck.draw
    @hand = Deck.draw
    puts "You have the cards #{hand}"
    @total -= 10
    puts "Your cash total is #{@total}!"
    if hand == 21
      puts "Congrats you won this hand!"
      @total += 20
      player.play
    else
      puts choice
    end
  end
  #add quit function
  def choice
    while hand > 21
      puts "You have the cards #{hand}"
      puts "Would you like to hit, or stand"
      player_choice = gets.chomp
      if player_choice == "hit"
        Deck.hit
        if hand > 21
          puts choice
        else
          puts "You busted you lost this round"
          Blackjack.play
        end
      else player_choice == "stand"
        if hand < dealer_hand
          puts "You have won this hand!"
          @total += 20
          Blackjack.play
        elsif hand > dealer_hand
          puts "You have lost this hand!"
          Blackjack.play
        else hand == dealer_hand
          puts "You have tied, no one wins!"
          Blackjack.play
        end
      end
    end
  end
  class Player
    attr_accessor :hand 
    def initialize
      @hand = []
    end
  end
  class Deck
    attr_accessor :draw , :hit, :shuffle, :cards
    def initialize
      @cards = []
      ace_cards = ([11] * 4)
      reg_cards = ([2..9] * 4)
      face_cards = ([10] * 16)
      ace_cards << cards
      reg_cards << cards
      face_cards << cards
    end
    def total_cards
      @cards.count
    end
    def shuffle
      @cards.shuffle
    end
    def draw
      @cards.shift(2)
    end
    def hit
      @cards.shift
    end
  end
end
puts "Welcome to the great game of Blackjack!"
puts "Let's get started!"
game_start = Blackjack.new
game_start.play
Deck
Blackjack::Deck
Blackjack::Deck.new
Blackjack::Deck.new.cards
game_start.play
exit
class Blackjack
  attr_accessor :player
  def initialize
    @user = Player.new
    @dealer = Player.new
  end
  def play
    while @user.dollars > 0
      @user.hand << @user.cards.draw
      @dealer.hand << @dealer.cards.draw
      @user.hand << @user.cards.draw
      @dealer.hand << @dealer.cards.draw
      @user.dollars -= 10
      puts "Player shows #{@user.hand[0]} #{@user.hand[1]} and the dealer shows #{@dealer.hand[0]}"
      puts "Do you want to stay or hit?"
      stay_or_hit = gets.chomp.downcase
      if stay_or_hit == "hit"
        @user.hand << @user.cards.draw
        puts "Player shows [#{@user.hand[0]}], and [#{@user.hand[1]}] and [#{@user.hand[2]}]"
        if @user.hand.reduce(:+) > 21
          puts '-' * 25
          puts "Oh! Your total is #{@user.hand.reduce(:+)} - you're Busted!"
          puts '-' * 25
        else
          puts "OK, your total is  #{@user.hand.reduce(:+)}, and the dealer has #{@dealer.hand.reduce(:+)}"
          puts "Would you like to play again?"
          again = gets.chomp.downcase
          if again == "yes"
            Blackjack.new.play
          else
            puts "Thanks for playing!"
          end
        end
      end
    end
  end
end
class Deck
  attr_reader :cards
  def initialize
    aces = [11] * 4
    face = [10] * 16
    @cards = ((2..9).to_a * 4).concat(aces).concat(face).shuffle
  end
  def count
    @cards.count
  end
  def shuffle
    @cards = @cards.shuffle
  end
  def draw
    @cards.shift()
  end
end
class Player
  attr_accessor :cards, :dollars, :hand, :score
  def initialize
    @cards = Deck.new
    @dollars = 100
    @score = 0
    @hand = []
  end
end
puts "Let's play some Blackjack!"
puts "Would you like to play a hand?"
play_again = gets.chomp.downcase
Blackjack.new.play
exit
puts " Its called 21 or Blackjack...either way illegal in most states "
cards_in_hand = []
dealer_cards_in_hand = []
@gamestart = true
def get_card
  rand(1..11) # Clever - JH
end
cards_in_hand.push(get_card)
#^^ This line doesn't need to be indented - JH
def gambler_turn
  while @gamestart == true #<< The while loop should be indented since it is inside the gambler_turn method - JH
    @gambler_card_values = 0
    puts "You have the following cards: "
    cards_in_hand.each do |card|
      puts card
      @gambler_card_values += card
    end
    puts "Card values: #{@user_card_values}"
    puts "Do you want to hit or stay (h to hit, s to stay)?"
    hit_or_stay = gets.chomp
    if hit_or_stay == 'hit me' #I like this a lot, but it goes against your instructions that just ask for 'h' - JH
      new_card = get_card
      cards_in_hand.push(new_card)
      puts "This is your new card #{new_card}"
      @gambler_card_values += new_card
      puts "Your total is now: #{@user_card_values} "
    end
    if hit_or_stay == 'stay'
      dealer_turn = true
    end
  end
  dealer_cards_in_hand.push(get_card)
  def dealer_turn 
    
    #^ This empty line doesn't need to be here - JH
    @dealer_card_values = 0
    @cards_in_hand.each do |card|
      puts card
      @dealer_card_values += card
    end
    check_win # I don't see any check_win method - JH
  end
  def who_won  # I like this who_won method, but it doesn't seem to be used anywhere - JH
    if @gambler_card_values > 21
      @gamestart = false
      puts "BUST"
    elsif @gambler_card_values == 21
      @gamestart = false
      puts "Winner Winner Chicken Dealer"
    elsif @gambler_card_values < @dealer_card_values
      @gamestart = false
      puts "House Always wins"
    end
  end
end
get_card
gambler_turn
dealer_turn
gambler_turn
exit
# Blackjack
puts "Let's play Blackjack!"
puts "-" * 20
class Blackjack
  def initialize
    @player = player.new
    @dealer = dealer.new
  end
  class Gambler
    attr_accessor :cards, :bank
    def initialize
      @cards = Deck.new
      @bank = 100
    end
  end
  class Deck
    attr_accessor :cards
    def initialize
      @cards = ((1..11).to_a * 4).shuffle
    end
    def count
      @cards.count
    end
    def shuffle
      @cards.shuffle
    end
    def draw
      @cards.shift
    end
  end
end
# Player draws 2 cards and dealer draws 2 cards
# Each round will cost player $100
def play
  while @player.cards.count > 0 do
    first_card = @player.cards.draw
    second_card = @player.cards.draw
    round = @bank - 10
    puts "Your cards are #{first_card} and #{second_card}."
    third_card = @dealer.cards.draw
    fourth_card = @dealer.cards.draw
    puts "Dealer's hand is #{third_card} and #{fourth_card}."
    if first_card + second_card == 21
      puts "Outstanding! You win!"
    elsif third_card + fourth_card == 21
      puts "Dealer wins. You lose."
    elsif first_card + second_card > 21
      puts "You lost kid."
    elsif third_card + fourth_card > 21
      puts "House loses."
    end
  end
end
Blackjack
Blackjack.new
exit
Array.new(5, 'hi')
def get_users
  @user ||= Users.all
end
class Users
  def self.all
    [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
end
get_users
@user
get_users
history
Array.new(3, ['_', '_', '_'])
Array.new(3, Array.new(3, '_'))
history
exit
b = Array.new(2, Array.new(2, 'hi'))
b[0][1] = 'foo'
b
b.first.object_id
b.last.object_id
b = Array.new(2) { ['hi']}
b[0]
b[0][0] = 'foo'
b
b = Array.new(3) { ['_', '_', '_']}
b[0][0] = 'X'
b
my_proc = Proc.new { ['_', '_', '_'] }
b = Array.new(3, &my_proc)
b = Array.new(3) { |x| [x, '_', '_']}
exit
def foo
  'hi'
end
Kernel.foo
exit
oops
exit
Struct.new('days', 'notes')
Struct('days', 'notes')
Struct['days', 'notes']
Struct.new
Struct.new('days')
Struct.new(:days)
exit
Dir
Dir[~/]
Dir[~\/]
    Dir[~/]
Dir.methods
Dir.entries
Dir.entries("~/")
Dir.entries("/")
Dir.entries("../")
Dir.entries("")
exit
Dir.entries
Dir.entries('.')
Dir.entries('.').select { |x| x.match('f') }
Dir.entries('.').select { |x| x.match('file') }
Dir.entries('.').select { |x| x.scan('file') }
Dir.entries('.').select { |x| x =~ ('file') }
Dir.entries('.').select { |x| x =~ /file/ }
Dir.entries('.').select { |x| x =~ /file/ }.sort
Dir.entries('.').select { |x| x =~ /^file/ }.sort
Dir.entries('.').select { |x| c = 'file'; x =~ /^#{c}/ }.sort
exit
Dir.entries('/Users')
loc = '/Users/Justin/'
Dir.entries(loc)
loc = '/Users/Justin/p'
loc.split('/')
*dirs, file = loc.split('/')
dirs
file
dirs.join('/')
exit
a = "file_finder"
b = "fi"
a - b
a =~ /fi/
a.match(/fi/)
c = _
c.methods false
c.methods
c.methods - Object.methods
c.to_a
c.names
c.size
c.length
c.offset
c.captures
c.post_match
c.names
c.regexp
c[]
c.values_at
c.pre_match
c.string
(c.methods - Object.methods).each do |meth|
  puts "#{meth} - #{c.send(meth)"
end
}"
end
(c.methods - Object.methods).each do |meth|
  puts "#{meth} - #{c.send(meth)}"
end
(c.methods - Object.methods).each do |meth|
  begin
    puts "#{meth} - #{c.send(meth)}"
  rescue Exception => e
    puts e
  end
end
(c.methods - Object.methods).each do |meth|
  begin
    puts "#{meth} - #{c.send(meth)}"
  rescue Exception => e
    puts "#{meth} -- #{e}"
  end
end
c.regexp.to_s
c.to_a
c.to_a.push(post_match)
c.to_a.push(c.post_match)
c.to_a.push(c.post_match).join == c.string
c.to_a.push(c.post_match).join
exit
gets.chomp
exit
Dir.glob('/Users/Justin/theironyard')
Dir['/Users/Justin/theironyard']
Dir['/Users/Justin/theironyard/*']
Dir['/Users/Justin/theironyard/**/*.md']
Dir['/Users/Justin/theironyard/notes/*.md']
Dir['/Users/Justin/theironyard/notes/**/*.md']
exit
str.gsub('~', '/Users/Justin')
exit
a, b = "foo", "bar"
a
b
def opposite(player_1, player_2)
  player_1, player_2 = player_2, player_1
end
opposite('x', 'o')
name, options = ["John Doe", { fullname: true, height: '6000' }]
name
options
(100 > 5)
!(100 > 5)
!!(100 > 5)
!!"Foo"
!!54
age = 30
case age
when 29 then "not yet"
when 30 then "right there"
when 31 then "too far"
else
  "what"
end
print_board()
name = "jutiint"
name.gusb!
name.gsub!
name
name.gsub('ii', 'i')
name
name.gsub!('ii', 'i')
name
"hello!".include?('!')
"hello".methods.each { |meth| puts meth if meth.to_s.include('?') }
"hello".methods.each { |meth| puts meth if meth.to_s.include?('!') }
"hello".slice
"hello".slice(2)
"hello".slice(2, 4)
"apple, pear, kiwi"
fruits = _
fruits
fruits.to_a
fruits.to_a(',')
fruits.split(',')
fruits.split(', ')
fruit_array = fruits.split(', ')
fruit_array.map { |x| x.upcase }
fruit_array.map { |x| x.upcase }.join
fruit_array.map { |x| x.upcase }.join(', ')
fruit
fruits
fruits.reverse
fruits.split(', ')
fruits.split(', ').reverse
fruits.split(', ').reverse.join(', ')
class User
  def self.is_user?(other_user)
    other_user.is_a?(User)
  end
end
justin = User.new
justin.is_user?
User
User.is_user?(justin)
User.is_user?('bill')
begin
  "foo".hello_world
rescue NoMethodError
  puts "Sorry"
end
"foo".hello_world
begin
  "foo".do_thing_that_will_error
rescue NoMethodError
  Email.to_me("Error Occured")
  Redirect :sorry_page
end
class NotAllowed < StandardError
end
def open_doors(user)
  if user.is_a(User)
    puts 'open doors'
  else
    raise NotAllowed
  end
end
open_doors(justin)
def open_doors
  raise NotAllowed
end
open_doors
def open_doors
  raise NotAllowed, 'You can't come in'
end
'
end
Set
require 'set
'
require 'set'
a = Set.new('foo', 'bar', 'baz')
a = Set.new
a.push('foo')
a.methods
a.add('foo')
a.add('bar')
a.add('baz')
a
a.first
a.add('bar')
def ❤️
  puts '<3'
end
❤️
💩
module Zoo
end
class Zoo::Zebra
end
class Zoo::Lion
end
Lion.new
Zoo::Lion.new
module Money
  def has_money?
    true
  end
  def money
    "so much"
  end
  def taxes
    "never"
  end
end
class Person
  include Money
end
me = Person.new
me.has_money?
me.money
me.taxes
class Dog
  include Money
end
fido = Dog.new
fido.taxes
Money.new
me.ancestors
me.class.ancestors
exit
Prime
require 'prime'
Prime
Prime.methods
(1..1_000_000).lazy
a = _
a.each do |x|
  puts x if Prime.is_prime?(x)
end
a.each do |x|
  puts x if Prime.prime?(x)
end
Prime
Prime.methods
Prime.each do |x|
  puts x
end
exit
[1,2,3].map.with_index { |x, a| puts x , a }
[1,2,3].map.methods
[1,2,3].map
[1,2,3].map.with_object { |x, o| puts x, o }
[1,2,3].map.with_object({}) { |x, o| puts x, o }
[1,2,3].map.with_object({}) { |x, o| o[x] = 'foo' }
[1,2,3].map.with_object({}).with_index { |x, o| o[x] = 'foo' }
[1,2,3].map.with_object({}).with_index { |x, o| puts o, x }
[1,2,3].map.with_object({}).with_index { |x, o, i| puts i, o, x }
[1,2,3].map.with_object({}).with_index { |x, o, i| puts "x#{x},o#{o},i#{i}" }
[1,2,3].map.with_object({}).with_index { |(x, o), i| puts "x#{x},o#{o},i#{i}" }
[1,2,3].map.with_object({}).with_index { |(x, o), i| o[i] = x }
['john', 'jane', 'lynda'].map.with_object({}).with_index { |(x, o), i| o[i] = x }
['john', 'jane', 'lynda'].map.with_object({}).with_index { |(x, o), i| o[i] ||= [x] }
['lynda', 'john', 'jane', 'lynda'].map.with_object({}).with_index { |(x, o), i| o[i] ||= [x] }
['lynda', 'john', 'jane', 'lynda'].map.with_object({}).with_index { |(x, o), i| o[x] ||= [i] }
Enumerable.new.methods - Enumerable.methods
[1,2,3].map.methods - Enumerable.methods
Enumerable.methods
Enumerable.instance_methods
[1,2,3].map.methods - Enumerable.instance_methods
[1,2,3].map.methods - (Enumerable.instance_methods + Object.methods)
exit
Erb
ERB
require 'erb'
Erb
ERB
ERB.methods
ERB.methods - Object.methods
ERB.instance_methods
erb = ERB.new
open('index.html.erb')
open('index.html.erb').read
a = _
erb = ERB.new(a)
a.results
a.result
erbmethods
erb.methods
erb.result
erb.run
erb.result({ name: 'justin' })
erb.result(binding)
erb.result(-> { })
erb.result(-> { }.binding)
erb.result(-> { name = 'foo'}.binding)
erb.result(-> { }.binding)
erb.result(-> {@name = 'foo' }.binding)
ERB.new(open('index.html.erb').read).result(-> { @name = 'foo'}.binding)
ERB.new(open('index.html.erb').read).result(-> { }.binding)
ERB.new(open('index.html.erb').read).result(-> { def main; 'hi' end }.binding)
exit
e
e.message
e.methods
e.methods - Object.methods
e.errno
e.exception
e.backtrace
e.message
e.message.match(/[a-z]+\.json/)
e.message.scan(/[a-z]+\.json/)
exit
Context.new
Context.new(:foo)
exit
Context.new(:foo)
Context.new()
exit
Context.new()
exit
Context.new
exit
"hello".prepend("bye")
"hello".drop
"hello".drop(1)
ello.prepend("way")
"ello".prepend("way")
"ello".append("way")
"ello".apend("way")
"e" =~ /e/
"e" =~ /i/
"e" =~ /l/
exit
is_alpha
is_alpha?
'x' =~ /:alpha/
'e' =~ /:alpha/
'e' =~ /::alpha/
'e' =~ /\s/
'e' =~ /\w/
exit
"hello"
"hello".first
"hello"[0]
"hello".chars
"hello".chars.first
"hello".chars.first =~ /[aeiou]/
exit
def pigatize(word)
  if starts_width_vowel?(word)
    word.append("way")
  else
    "#{word.drop(1)}#{word[0]}ay"
  end
end
def starts_with_vowel?(word)
  true
end
pigatize("animal") == "animalway"
pigatize("food")   == "oodfay"
pigatize
pigatize("food"0
def pigatize(word)
  if starts_with_vowel?(word)
    word.append("way")
  else
    "#{word.drop(1)}#{word[0]}ay"
  end
end
def starts_with_vowel?(word)
  true
end
pigatize("animal") == "animalway"
pigatize("food")   == "oodfay"
def pigatize(word)
  if starts_with_vowel?(word)
    "word#{way}"
  else
    "#{word.drop(1)}#{word[0]}ay"
  end
end
def starts_with_vowel?(word)
  true
end
pigatize("animal") == "animalway"
pigatize("food")   == "oodfay"
pigatize
def pigatize(word)
  if starts_with_vowel?(word)
    "#{word}way"
  else
    "#{word.drop(1)}#{word[0]}ay"
  end
end
def starts_with_vowel?(word)
  true
end
pigatize("animal") == "animalway"
pigatize("food")   == "oodfay"
pigatize('animal')
def pigatize(word)
  if starts_with_vowel?(word)
    "#{word}way"
  else
    "#{word.drop(1)}#{word[0]}ay"
  end
end
def starts_with_vowel?(word)
  word[0] =~ /aeiou/ #no 'y'
end
pigatize("animal") == "animalway"
pigatize("food")   == "oodfay"
"food".drop
"food".slice(1,-1)
"food".slice(0,-1)
"food".slice(0)
"food".slice(1)
"food"[0, 4]
"food"[1, 4]
"food"[1, -1]
"food"[1]
"food"[1, -]
"food"[1, 0]
"food"[1, 10]
"food"[1, 100000]
exit
def pigatize(word)
  if starts_with_vowel?(word)
    "#{word}way"
  else
    "#{word.[1, word.length]}#{word[0]}ay"
end
def starts_with_vowel?(word)
  word[0] =~ /aeiou/ #no 'y'
end
pigatize("animal") == "animalway"
pigatize("food")   == "oodfay"
pigatize
def pigatize(word)
  if starts_with_vowel?(word)
    "#{word}way"
  else
    "#{word[1, word.length]}#{word[0]}ay"
  end
end
def starts_with_vowel?(word)
  word[0] =~ /aeiou/ #no 'y'
end
pigatize("animal") == "animalway"
pigatize("food")   == "oodfay"
pigatize('animal')
exit
def pigatize(word)
  if starts_with_vowel?(word)
    "#{word}way"
  else
    "#{word[1, word.length]}#{word[0]}ay"
  end
end
def starts_with_vowel?(word)
  word[0] !~ /aeiou/ #no 'y'
end
pigatize("animal") == "animalway"
pigatize("food")   == "oodfay"
pigatize('food')
starts_with_vowel?('animal')
starts_with_vowel?('food')
food[0]
'food'[0]
'food'[0] =~ /aeiou/
'food'[0] !~ /aeiou/
'food'[0] ~ /aeiou/
'food'[0] =~ /aeiou/
'ood'[0] =~ /aeiou/
def pigatize(word)
  if starts_with_vowel?(word)
    "#{word}way"
  else
    "#{word[1, word.length]}#{word[0]}ay"
  end
end
def starts_with_vowel?(word)
  word[0] =~ /[aeiou]/
end
pigatize("animal") == "animalway"
pigatize("food")   == "oodfay"
exit
def starts_with_vowel(text)
  text.downcase == 'aeiou'
end
starts_with_vowel('apple')
starts_with_vowel('pear')
def starts_with_vowel(text)
  'aeiou'.include?(text.downcase[0])
end
starts_with_vowel('pear')
starts_with_vowel('apple')
'pear'[0]
'pear'[0] == 'aeiou'
'pear'[0] =~ /[aeiou]/
'ear'[0] =~ /[aeiou]/
'ear'.gsub(/\baeiou\b/, '\0way') 
'ear'.gsub(/\b[aeiou]\b/, '\0way')
exit
"pear".split()
"pear".split("")
"pear".split(" ")
"pear".slice!(0)
exit
class ShoppingList
  def initialize
    @items = %w(milk eggs bread catfood)
  end
  def get_binding
    binding
  end
end
list = ShoppingList.new
list.items
list.get_binding
list.get_binding.items
eval('@items', list.get_binding)
exit
file
file.split('.').first
exit
file
exit
file
exit
remote
exit
remote
remote.scan(/github\.com:[a-z0-9-_]+\/[a-z0-9-_&]+\.git/)
remote.scan(/github\.com:[a-z0-9\-_]+\/[a-z0-9\-_&]+\.git/)
remote.scan(/github\.com:[a-z0-9\-_]+\/[a-z0-9\-_&]*\.git/)
remote.scan(/github\.com:[a-z0-9\-_&]*\.git/)
remote.scan(/github\.com:.*\.git/)
remote.scan(/github\.com:(.*)\.git/)
remote.match(/github\.com:(.*)\.git/)
remote.match(/github\.com:(.*)\.git/).first
remote.match(/github\.com:(.*)\.git/)[0]
remote.scan(/github\.com:(.*)\.git/)
exit
url
exit
STUDENTS
STUDENTS.first
STUDENTS.first.name
a = STUDENTS.first
a.assignments
a.assignments.map(&:complete?)
a.assignments.map(&:complete?).length
exit
words = File.open('/usr/dict/words').read
exit
"abcdefg".split
"abcdefg".split('')
exit
"boat".include?(['a','b','c'])
split_right_hand = 'yuiophjklnm'.split('')
"city".include?(split_right_hand)
"city".includes?(split_right_hand)
split_right_hand.include?("city")
split_right_hand
city.chars.each do |ch|
  puts ch, split_right_hand.include?(ch)
end
'city'.chars.each do |ch|
  puts ch, split_right_hand.include?(ch)
end
'city'.chars.all? { |x| right_hand_city.include?(x) }
'city'.chars.all? { |x| split_right_hand.include?(x) }
"hello"
"hello".chars
"hello".split('')
'city'.chars.all? { |x| split_right_hand.include?(x) }
'jkl'.chars.all? { |x| split_right_hand.include?(x) }
exit
-> { }
a = -> { 'foo }
'}
a
a.call
Lambda.new { 'ignore this' }
require 'lambda'
lambda { 'ignore this' }
lambda { 'ignore this' }[]
def foo
  'bar'
end
method(:foo)
method(:foo).to_proc
a = _
a.call
(1..10).times(&a)
(1..10).to_a.times(&a)
(1..10).to_a.times(&:a)
10.times(&:a)
10.times(&a)
10.times(&method(:foo))
10.times(&:method(:foo))
clear
foo
method(:foo)
m = _
m.call
exit
def left_hand
  'left'
end
def right_hand
  'right'
end
def find_hand(dir)
  send("#{dir}_hand".to_sym)
end
find_hand('left')
find_hand('right')
find_hand('middle')
private def secret_hand
  'secret'
end
find_hand('secret')
def find_hand(dir)
  public_send("#{dir}_hand".to_sym)
end
def left_hand
  do_work('left')
end
def right_hand
  do_work('right')
end
private
def do_work(direction)
  #do all the things
  direction
end
DSL
exit
"hello old brown dog of york".split
"hello old brown dog of york".split.reduce('') do
end
"hello old brown dog of york".split.reduce('') do |acc, elem|
  if elem.length > acc.length
    elem
  else
    acc
  end
end
"hello old brown dog of york".split.reduce('') do |longest_word, elem|
  if elem.length >= longest_word.length
    elem
  else
    longest_word
  end
end
exit
range(100)
Range
Range.new(100)
(1..100).each { |x| x }
(1..100).each { |x| puts x }
exit
def foo
  puts 'hello'
end
Kernel.respond_to?(:foo)
Kernel.foo
class MyStuff
  def foo
    puts 'yayyy'
  end
end
foo
MyStuff.new.foo
Kernel.puts "hello
"
MyStuff.ancestors
exit
if 1
  puts true
else
  puts false
end
puts true if 0
puts true if ''
puts true if nil
puts true if false
exit
whereami
whereami 50
@computer
@player
@board
@computer.mark
ls
check_winners
play
20 + 2
help
ls
whereami 20
cd @board
ls
whereami 20
board
cells
print_board
exit
ls
whereami
exit
Struct.new(:hello)
Greet = Struct.new(:hello)
Greet.new('yo')
Greet.new('yo').to_hash
Greet.new('yo').keys
Greet.new('yo').to_h
Greet.new('yo')[:hello]
Greet.new('yo').send(:hello)
exit
class User
end
user = User.new
user.name = 'me'
class User
  attr_accessor :name, :location
end
user = User.new
user.name = 'me'
user.location = 'Austin'
exit
a = Hash.new(['hello', 'world'].clone)
a
a = Hash.new(10, ['hello', 'world'].clone)
a = Hash.new(['hello', 'world'].clone)
a[:first]
a[:second]
a[:second].first = 'goodbye'
a[:second][0] = 'goodbye'
a
a[:first
]
Array.new(0, ['hello', 'world'].clone)
Array.new(3, ['hello', 'world'].clone)
a = Array.new(3, ['hello', 'world'].clone)
a[1]
a[1] << 'no'
a
Array.new { ['hello', 'world'] }
Array.new(3) { ['hello', 'world'] }
a = Array.new(3) { ['hello', 'world'] }
a[1] << 'no'
a
exit
class Faker
  def initialize(record)
    @record = record
  end
  def class
    if record.respond_to?(:model)
      record.model.class
    else
      record.class
    end
  end
  attr_accessor :record
  def method_missing(*args, &block)
    record.send(*args, &block)
  end
end
Faker.new('')
Faker.new('').class
class Presenter
  attr_accessor :model
  def initialize(model)
    @model = model
  end
end
Presenter.new("hi")
Presenter.new("hi").model
Faker.new(Presenter.new("hi"))
Faker.new(Presenter.new("hi")).class
Faker.new(Presenter.new("hi"))
a = _
a.model
a.upcase
a.model.upcase
Faker.new(Presenter.new("hi")).is_a?(String)
Faker.new(Presenter.new("hi")).is_a?(Presenter)
Faker.new(Presenter.new("hi")).is_a?(Faker)
class Faker
  def ===
    class === ''
    end
  end
class Faker
  def ===(other)
    send(:class) === other.class
  end
end
Faker.new(Presenter.new("hi")).is_a?(Faker)
Faker.new(Presenter.new("hi")).is_a?(String)
class Faker
  def is_a?(other)
    send(:class).is_a?(other)
  end
end
Faker.new(Presenter.new("hi")).is_a?(String)
Faker.new(Presenter.new("hi")).is_a?(Faker)
Faker.new(Presenter.new("hi")).is_a?(Presenter)
Faker.new(Presenter.new("hi")).class
Faker.new(Presenter.new("hi")).class.is_a?(String)
Faker.new(Presenter.new("hi")).send(:class)
Faker.new(Presenter.new("hi")).is_a?(String)
exit
assignments
assignments.map(&:to_hash)
assignments.map { |x| x.map(&:to_hash) }
q
assignments
assignments.map { |x| x.group_by { |a| a.title } }
assignments.map { |x| x.group_by { |a| a.title } }.inject({}) { |a,b| a.merge(b) { |_, x, y| [*x, *y] }
}
assignments.map { |x| x.group_by { |a| a.title } }.inject({}) { |a,b| a.merge(b) { |_, x, y| [*x, *y] }}.map { |k,v| { k => v.select(&:complete?).length} }
assignments.map { |x| x.group_by { |a| a.title } }.inject({}) { |a,b| a.merge(b) { |_, x, y| [*x, *y] }}.map { |k,v| { k => "[green]#{'#' * v.select(&:complete?).length}"[/]"} }
}
"
    }
    "
}
assignments.map { |x| x.group_by { |a| a.title } }.inject({}) { |a,b| a.merge(b) { |_, x, y| [*x, *y] }}.map { |k,v| { k => "[green]#{'#' * v.select(&:complete?).length}[/]"} }
exit
formated_as
formated_as.map { |k,v| { completed: v, title: k }}
formated_as.map { |v| { completed: v, title: k }}
formated_as.map { |v| { completed: v, title:v }}
formated_as.map { |(k,v)| { completed: v, title:v }}
formated_as.map { |(k,v)| { completed: v, title:k }}
formated_as.map { |((k,v),_)| { completed: v, title:k }}
formated_as.map { |k| { completed: k, title:k }}
formated_as.map { |k| { completed: k.keys, title:k.values }}
formated_as.map { |k| { completed: k.values, title:k.keys.first }}
formated_as.map { |k| { completed: k.values.first, title:k.keys.first }}
exit
students
Student.new
Student.new.to_h
Student.new(students.first)
Student.new(*students.first)
Student.new(*students.first.values)
exit
p
q
exit
q
exit
total
amount
((0.to_f / 0.to_f) * 100))
((0.to_f / 0.to_f) * 100)
((0.to_f / 0.to_f) * 100).round
0.to_f
0 / 0
0.to_f / 0.to_f
NaN
(0.to_f / 0.to_f)
(0.to_f / 0.to_f).class
(0.to_f / 0.to_f).name
(0.to_f / 0.to_f).methods
(0.to_f / 0.to_f).to_s
(0/0).class
q
exit
""
[0, 1, 2].drop
[0, 1, 2].drop(1)
exit
students
students.map { |x|
  x.tap { |this|
    this.assignments.map { |ass|
      Assignment.new(*ass.values)
    }
  }
}
students.map { |x|
}
exit
students
exit
TEST
ls
ll
assignments
formatted_as
input
name
sort
student
timeline
students
@students
exit
TESTING
exit
Student.new
Student.new.attributes
Student.new.attrs
Student.new.methods - Object.methods
Student.new.keys
Student.new.values
(Student.new.methods - Object.methods).sort
Student.new.to_h
Student.new.to_h.keys
exit
pr = -> (a, b) { puts a; b }
pr.call
pr.call('hi')
pr.call('hi', -> a { puts a })
[1,2,4].map(&pr.('Printing arr', -> a { a * 2 }))
def pr
end
pr
def prn(a, b)
  puts a
  b
end
prn('hi', -> a { puts 'hi' })
def double_fn(n)
  n * 2
end
double = -> x { x * 2 }
[1,2,4].map(&pr.('doubling', double))
[1,2,4].map(&method(:prn).('doubling', double))
method(:prn)
method(:prn).methods - Object.methods
exot
exit
q
exit
SecureRandom
SecureRandom.uuid
exit
@table
whereami 20
@tables
@tables[type]
@tables[type][:records]
exit
class Record
end
Record
Record.to_sym
Record.name
Record.name.to_sym
Record.name.downcase.to_sym
exit
class Record
  def initialize(name:, age:, foo:)
def initialize(name: '', age: ', foo:)
'
  )
end
class Record
  def initialize(name: '', age: '', foo:'')
    @name = name
    @age = age
    @foo = foo
  end
end
Record.new
Record.new(age: 9, name: 'john', foo: :bar)
a = { age: 199, name: 'j', foo: :bar }
Record.new(a)
exit
Student.ne3
Student.new
h = { name: 'foo', submissions: [Submission.new], foo: 'bar' }
Student.new(h)
parsed_students
parsed_students.map(&Student.new)
parsed_students.map(&method(Student.new))
parsed_students.map(&method(Student))
parsed_students.map(&method(:new))
parsed_students.map(&method(:Student.new))
parsed_students.map(&method(:Studentnew))
parsed_students.map { |x| Student.new(x) }
Student.new
Student.new('hi')
s = parsed_students.first
Student.new(s)
exit
Studnet.new
s = parsed_students.first
Student.new(s)
h = { name: 'foo', submissions: [Submission.new], foo: 'bar' }
Student.new(h)
h = {  'foo', submissions: [Submission.new], foo: 'bar' }
h = { "name" => 'foo', submissions: [Submission.new], foo: 'bar' }
Student.new(h)
s.map { |k, v| k.to_sym }
Hash[s.map { |k, v| k.to_sym }]
Hash[s.map { |k, v| [k.to_sym, v] }]
Student.new(Hash[s.map { |k, v| [k.to_sym, v] }])
exit
REPO
REPO.tables
REPO.methods
exit
REPO
REPO[:student]
REPO[:student].first
exit
"dog".pluralize
exit
REPO
h =   {:title=>"info", :info=>"foo bar", :id=>"4d444f87-91d6-4e2d-bb55-c37c2e2286c2"}
Assignment.new(h)
Assignment.new('hi', 'hi')
Assignment.new(title: 'foo', info: 'bar')
exit
REPO
Assignment.new(title: 'foo', info: 'bar')
Assignment.new("title": 'foo', info: 'bar')
exit
REPO
q
exit
REPO
exit
REPO
exit
REPO
exit
20.times.map { |i| (Math.sin(i) * 255).floor }
200000.times.map { |i| (Math.sin(i) * 255).floor }
44100.times.map { |i| (Math.sin(i) * 255).floor }
sample = 44100.times.map { |i| (Math.sin(i) * 255).floor }; nil
exit
y = 'y'
n = 'n'
y =~ /y/
y =~ /[y|yes|true|1]/
exit
a = [{name: 'john'}, {name: 'bill'}, {name: 'jo'}, {name: 'Sally'}]
a.select { |x| x[:name].length > 4 }
a.find { |x| x[:name].length > 4 }
a.find { |x| x[:name].length > 4 } = {name: 'Sally', over_4: true }
a.find { |x| x[:name].length > 4 }.merge({over_4: true})
a
a.map { |x| x.merge({over_4: true}) if x[:name].length > 4 }
a
a.map { |x| return x.merge({over_4: true}) if x[:name].length > 4; x }
a.map { |x| x.merge({over_4: true}) if x[:name].length > 4; x }
a.map { |x| x.merge({over_4: true}) if x[:name].length > 4}
a = a.map { |x| x.merge({over_4: true}) if x[:name].length > 4}
a
exit
submissions
exit
a = { name: 'foo', b: Set.new }
a[:b].add({ name: :bar, type: 'no' })
a
a[:b].add({ name: :bar, type: 'yes' })
a
exit
REPO
exit
REPO
REPO[:students]
REPO[:students][:location]
REPO[:students]
REPO.tables
exit
REPO.tables
REPO.tables[:students]
REPO.tables[:students][:location]
repo = REPO.tables[:students]
repo[:records].first
repo[:records].first.submissions
s = repo[:records].first.submissions
s.uniq { |x| x.title }
s.sort { |x| x.title }
s.sort_by { |x| x.title }
s = repo[:records].first.submissions = s.uniq { |x| x.title }
s
rep
repo
REPO.write(repo)
exit
def calculate(n, &block)
  block.call(n)
end
calculate
calculate(100)
def calculate(n, &block)
  &block.call(n)
end
def calculate(n, &block)
  block.call(n)
end
calculate(100) { |x| x ** 2 }
def calculate(number, &block)
  block.call(number)
end
calculate(100) { |n| n * 2 }
calculate(100)
calculate(100) do |n|
  n * 3
end
multi_calc(50) do |n|
  n * 5
end
cacl
calculate
method(:calculate)
method(:calculate).call
method(:calculate).call(100) { |x| x }
def =>(meth)
def :=>(meth)
def ~>(meth)
def '~>'(meth)
def ^(meth)
  method(meth)
end
^:calculate
^ :calculate 
^(:calculate)
def send_mail(on_delivered, on_failure)
  if $delivered
    on_delivered.call('yes')
  else
    on_failure.call('nope')
  end
end
send_mail( -> { |x| puts x }, -> { |x| puts x })
send_mail( -> x {  puts x }, -> x { puts x })
$deliviered = true
send_mail( -> x {  puts x }, -> x { puts x })
$delivered = true
send_mail( -> x {  puts x }, -> x { puts x })
exit
def map(arr, &block)
  new_arr = Array.new
  arr.each do |elem|
    new_arr << block.call(elem)
  end
  new_arr
end
map([1, 2, 4]) do |n|
  n * 2
end
map([1, 2, 4]) { |x| x ** 2 }
map(map([1, 2, 4]) { |x| x ** 2 }) { |x| x / 2 }
def select(arr, &block)
  new_arr = []
  arr.each do |elem|
    if block.call(elem)
      new_array.push(elem)
    end
  end
  new_arr
end
select([1,2,3,4,5]) { |n| n.even? }
def select(arr, &block)
  new_arr = []
  arr.each do |elem|
    if block.call(elem)
      new_arr.push(elem)
    end
  end
  new_arr
end
select([1,2,3,4,5]) { |n| n.even? }
select([1,2,3,4,5]) { |n| n.odd? }
def reject(arr, &block)
  new_arr = []
  arr.each do |elem|
    if !block.call(elem)
      new_arr << elem
    end
  end
  new_arr
end
reject([1,2,3,4,5]) { |n| n.odd? }
reject([1,2,3,4,5]) { |n| n.even? }
if false
else
  puts 'hi'
end
def reject(arr, &block)
  map(arr) do |elem|
    if block.call(elem)
      elem
    end
  end
end
reject([1,2,3,4,5]) { |n| n.even? }
reject([1,2,3,4,5]) { |n| n.odd? }
def reject(arr, &block)
  map(arr) do |elem|
    elem if block.call(elem)
  end
  .compact
end
def reject(arr, &block)
  map(arr) do |elem|
    elem if block.call(elem)
  end.compact
end
reject([1,2,3,4,5]) { |n| n.odd? }
[1, 2, nil, 4].each do |x|
  puts x * 2
end
[1, 2, nil, 4].each do |x|
  next if x.nil?
  puts x * 2
end
[1, 2, nil, 4].compact.each do |x|
  puts x * 2
end
exit
gets
gets('foo')
gets(1)
kdd
def get(prompt, default)
  print '> '
  response = gets.chomp
  if response.empty?
    default
  else
    response
  end
end
get('', 'foo')
exit
get('<>', 'roo')
get('<([light_cyan]roo[/] / baroo)>', 'roo')
exit
absenses
ls
late
tardies
to_h
absenses
@absenses
self.absenses
ll
exit
Views = []
def get()
  response = gets.chomp
  if response == 'q'
[1,2,3]
[1,2,3].pop
a = [1,2]
a.push(3)
a.pop
a
exit
    send(Views.pop)
  else
    response
  end
end
def hello_view
  Views.push(:hello_view)
  puts 'hi'
end
Views
hello_view
Views
get
def goodbye
  Views.push(:goodbye)
  loop do
    r = get
    if r == 'h'
      hello_view
    end
  end
end
goodbye
Views
get
Views
def hello_view
  Views.push(:hello_view) if Views.last != :hello_view
  puts 'hi'
end
hello_view
get
Views
Views.last
Views.last != :hello_view
def b
  break
end
b
def b
  'break'
end
def g(callback)
  r = gets.chomp
  if r == 'q'
    callback.call('break')
  end
end
g
g( -> x { puts x })
loop do
  g( -> x { eval(x) } )
end
loop do
  g( lambda do |x| eval x end )
end
exit
def ui_loop
  method(Action.last).call
  method(Print.last).call
end
def ui_loop
  loop do
    method(Print.last).call
    response = gets.chomp
    method(Action.last).call(response)
    en
    d
  end
end
ui_loop
Print = []
Action = []
ui_loop
def ui_loop
  loop do
    method(Print.last).call
    response = gets.chomp
  end
end
def ui_loop
  loop do
    method(Print.last).call unless Print.last.nil?
    response = gets.chomp
    method(Action.last).call unless Action.last.nil?
  end
end
def hi
  puts "hello"
end
def hi_a
end
def hi_a(input)
  case input
  when 'a' then puts "hello a"
  else 
    puts "nope"
  end
end
Action.push(:hi_a)
Print.push :hi
ui_loop
def ui_loop
  loop do  
    method(Print.last).call unless Print.last.nil?    
    response = gets.chomp
    method(Action.last).call unless Action.last.nil?  
  end  
end  
def ui_loop
  loop do  
    method(Print.last).call unless Print.last.nil?    
    response = gets.chomp
    method(Action.last).call(response) unless Action.last.nil?  
  end
end
ui_loop
def choose
end
def choose(r)
  case r
  when 'r' then Action.push(:other); Print.push(:yep)
  end
end
Action.push :choose
def other(r)
  case r
  when 'q' then Action.pop; Print.pop;
  end
end
def yep
  puts 'q to go back'
end
ui_loop
exit
[].empty?
exit
a = [1,2,3,4,5,6,7]
a.take(5)
a.reverse
a.reverse.take(5)
a << 8
a << 9
a.reverse.take(5)
a[5..-1]
a[-5..-1]
exit
Dir['../lib/**/*.rb']
Dir['../lib/']
Dir['lib/']
Dir['lib/*.*']
Dir['lib/**/*.rb']
Dir['lib/**/*.rb'].each { |f| require f }
Dir['lib/**/*.rb'].each { |f| require_relative f }
exit
Dir[File.dirname(__FILE__) + '/lib/**/*.rb']
Dir[File.dirname(__FILE__) + '/lib/**/*.rb'].each { |f| require f }
exit
Dir[File.dirname(__FILE__) + '/lib/**/*.rb']
Dir[File.dirname(__FILE__) + '/lib/**/*.rb'].each { |f| require f }
exit
Dir[File.dirname(__FILE__) + '/lib/**/*.rb'].each { |f| require f }
exit
Dir[File.dirname(__FILE__) + '/lib/**/*.rb'].each { |f| require f }
$:
q
exit
$:
Dir[File.dirname(__FILE__) + '/lib/**/*.rb'].each { |f| require f }
File.dirname(__FILE__)
File.dirname(__FILE__) + '/lib'
File.dirname(File.expand_path(__FILE__)) + '/lib'
$:.unshift(File.dirname(File.expand_path(__FILE__)) + '/lib')
Dir[File.dirname(__FILE__) + '/lib/**/*.rb'].each { |f| require f }
exit
$:
require 'repository'
require 'repository.rb'
load 'repository'
require './repository'
require './lib/repository'
require_relative './lib/repository'
require './lib/repository'
exit
Dir[File.dirname(__FILE__) + '/lib/**/*.rb']
exit
d
Dir[File.dirname(__FILE__) + '/lib/**/*.rb']
exit
q
exit
Dir[File.dirname(__FILE__)
]
Dir[File.dirname(__FILE__) + '/lib']
Dir[File.dirname(__FILE__) + '/lib/**/*.rb']
Dir[File.dirname(__FILE__) + '/lib/**/*.rb'].each do |f|
  require f
end
exit
Dir[File.dirname(__FILE__) + '/lib/**/*.rb'].each do |f|
  require f
end
exit
q
exit
a
Dir['.'
]
Dir['*.*']
Dir['lib']
Dir['lib/*.rb']
Dir['lib/**/*.rb']
Dir['lib/**/*.rb'].each do |x| require x end
Dir['lib/**/*.rb'].each do |x| require_relative x end
Dir['lib/**/*.rb'].map do |x| require_relative x end
exit
__FILE__
exit
a
b
File.expand_path(__FILE__)
File.expand_path(File.dirname(__FILE__))
File.expand_path(File.dirname(__FILE__)) + ' /lib'
File.expand_path(File.dirname(__FILE__)) + '/lib'
Dir[File.expand_path(File.dirname(__FILE__)) + '/lib']
Dir[File.expand_path(File.dirname(__FILE__)) + '/lib/**/*.rb']
exit
a
b
Dir[File.expand_path(File.dirname(__FILE__))
]
Dir[File.expand_path(File.dirname(__FILE__))]
Dir[File.expand_path(File.dirname(__FILE__))] + '/lib/**/*.rb'
Dir[File.expand_path(File.dirname(__FILE__)) + '/lib/**/*.rb']
$:
Dir['.']
Dir['./*.*']
Dir['./lib/*.*']
Dir['./bin/../lib*.*']
Dir['./bin/../lib/*.*']
exit
a
b
$:
exit
a
b
exit
'0'..'9'
('0'..'9').each do |x| puts x end
exit
Assignment
Assignment.attributes
Assignment.attributes.each
a = _
a.first
a.next
a.peek
a
a.length
a.methods
a.feed
a.inspect
a.size
a.last
a.first
a[0
]
a.next_values
a.rewind
a.next_values
exit
a = [1, 2, 3].each
b = a.first
b
b.next
b
b.succ
exit
fruits = ['apple', 'pear', 'kiwi']
puts fruits.map("")
fruits.each do |fruit|
  puts fruit
end
fruits.each(-> x { puts(x) })
fruits.each(&-> x { puts(x) })
fruits.each(Proc.new { |x| puts(x) })
fruits.each(&Proc.new { |x| puts(x) })
exit
'7' * 1
'7' * 0
'7' * -20
exit
nil.class
exit
katlyn
katlyn.students
katlyn.students.first
katlyn.students.reduce(0) { |acc, x| acc + x }
katlyn.students.reduce(0) { |acc, x| acc + x.gpa }
katlyn.students.reduce(0) { |acc, x| acc + x.gpa } / katlyn.student.length
katlyn.students.reduce(0) { |acc, x| acc + x.gpa } / katlyn.students.length
10238.to_s
String(2480)
exit
i = 10
while i > 0 do
  sleep 1
  print i
end
exit
a = [1, 2, 3, 4, 5]
a.first(3)
a.last(3)
a.first(a.length - 1)
a[0..-1]
a[0..-2]
a.op
a.pop
a
a << 5
last = a.pop
a << last
return last
exit
a = [1,2,3,4]
a.shift(5)
a]
a
a = [1,2,3,4]
a.shift
a
a = [1,2,3,4, 5]
a.drop
a.drop(1)
a
a.drop(-1)
exit
def keys_and_values(data)
  arr = []
  arr << data.keys
  arr << data.values
end
keys_and_values({ a: 1, b: 2, c: 3 })
exit
9119.to_a
9119.to_s.to_a
9119.to_s
9119.to_s.split
9119.to_s.split(//)
9119.to_s.split(',')
9119.to_s.split('')
9119.to_s.split()
9119.to_s.split(//)
9119.to_s.chars
exit
5 * 5
def square(num)
  num * num
end
5 ^ 2
5 **
5
5 ** 2
5 | 2
square(9)
square(1)
digits = [9, 1, 1, 9]
digits.map { |n| square(n) }
exit
digits = [9, 1, 1, 9]
digits.map { |n| n * n }
digits
squares = digits.map { |n| n * n }
squares.join
squares.to_i
exit
def square_digits(num)
  digits  = num.to_s.chars
  squares = digits.map { |n| n * n }
  squares.join
end 
square_digits(9119)
def square_digits(num)
  digits  = num.to_s.chars
  squares = digits.map { |n| n.to_i * n.to_i }
  squares.join
end
square_digits(9119)
exit
def square_digits(num)
  num.to_s.chars
  .map(&:to_i).map { |n| n * n }
  .join
end
def square_digits(num)
  num.to_s.chars
  .map(&:to_i).map { |n| n * n }
  .join
end
exit
def square_digits(num)
  num.to_s.chars.map(&:to_i).map { |n| n * n }.join
end
square_digits(9119)
[1, 2, 4, 5].map { |x| x.to_s }
[1, 2, 4, 5].map(&:to_s)
[1, 2, 4, 5].map(&:*)
1.square
1.squared
require 'math'
require 'maths'
class Fixnum
  def squared
    self * self
  end
end
4.squared
[1,2,3,4,5].map(&:squared)
a = [1,2,3,4,5]
[1,2,3,4,5].map(&:squared).join
class Fixnum
  def squared_digits
    self.to_s.chars.map(&:to_i).map(&:squared).join
  end
end
9119.squared_digits
require 'active_support'
[1,2,3,4,5]
[1,2,3,4,5].first
[1,2,3,4,5].second
[1,2,3,4,5].third
[1,2,3,4,5].fourty_second
exit
katlyn
katlyn.students.map(&:gpa)
katlyn.students.map(&:gpa).reduce(:+)
katlyn.students.map(&:gpa).reduce(:+) / katlyn.students.length
exit
katlyn.methods(false)
katlyn.instance_methods(false)
katlyn.instance_methods - Object.methods
katlyn.methods - Object.methods
katlyn.average_gpa
exit
katlyn.students
katlyn.average_gpa
exit
katlyn.average_gpa
katlyn
exit
katlyn.average_gpa
exit
katlyn
katlyn.students
katlyn.students.map(&:gpa)
katlyn.students.map(&:gpa).sort
katlyn.students.map(&:gpa).sort.last
katlyn.students.sort_by(&:gpa)
exit
katlyn
katlyn.students
katlyn.students.map { |x| x.gpa }
katlyn.students.map { |x| x.gpa }.sort
katlyn.students.map { |x| x.gpa }.sort.last
katlyn.students.map { |x| x.gpa }.max
katlyn.students.map { |x| x.gpa }.min
katlyn.students.map { |x| x.gpa }.minmax
katlyn.students.max_by { |student| student.gpa }
exit
katlyn.highest_gpa
exit
katlyn.highest_gpa
exit
katlyn.students
katlyn.students.select { |x| x.course == 'ruby' }
exit
katlyn.students
katlyn.students.uniq
katlyn.students.uniq_by(&:name)
katlyn.students.uniq { |x| x.name }
katlyn.students.uniq { |x| x.name }.length
katlyn.students.length
exit
katlyn.rubyists
exit
def greeter(name, word)
  puts "#{name}, #{word}"
end
greeter(
  'justin',
  'hello'
)
greeter('hello', 'justin')
def greets(name: '', word: '')
  puts "#{name}, #{word}"
end
greets('justin', 'world')
greets(name: 'justin', word: 'world')
greets(word: 'hello', name: 'justin')
my_hash = { name: 'justin', word: 'omg hash' }
my_hash.class
greets(my_hash)
my_hash[:foo] = :bar
greets(my_hash)
link_to('destination', 'label', class: 'something', remote: true, id: 'something')
def square(n)
  n ** 2
end
square
square(1)
square(2)
square(3)
square(4)
exit
katlyn.longest_name
exit
katlyn.unique_names
katlyn.unique_names.length
katlyn.students.length
exit
katlyn.unique_names
exit
katlyn.unique_names
[1,2,3,4,2].reduce([]) do |acc, n|
  return acc if acc.include?(n)
  acc << n
end
puts [1,2,3,4,2].reduce([]) do |acc, n|
  return acc if acc.include?(n)
  acc << n
end
puts [1,2,3,4,2].reduce([]) { |acc, n| if !acc.include?(n); acc << n; end acc }
puts [1,2,3,4,2].reduce([]) { |acc, n| if !acc.include?(n); acc << n; end; acc }
puts [1,2,3,4,2].reduce([]) do |acc, n|
  if !acc.include?(n)
    acc << n
  end
  acc
end
exit
katlyn.students.group_by(&:name)
katlyn.students.group_by(&:name).map { |k, v| v.first }
exit
katlyn.highest_gpa
katlyn.lowest_gpa
katlyn.designers
katlyn.javascripters
katlyn.rubyists
katlyn.gpa_by_course
katlyn.methods - Object.methods
katlyn.average_gpa_by_course('design')
katlyn.average_gpa_for_course('design')
katlyn.average_gpa_for_course('ruby')
katlyn.average_gpa_for_course('js')
katlyn.methods
katlyn.methods - Object.methods
- Array(nil)
[1, 2, 3, nil, '']- Array(nil)
[1, 2, 3, nil, ''] - Array(nil)
[1, 2, 3, nil, ''] - [nil]
[1, 2, 3, nil, ''] - [nil, '']
[1, 2, 3, nil, ''] - [nil, '', 0]
[1, 2, 3, nil, ''] - [nil, '', 0, false]
[1, 2, 3, nil, ''].reject { |x| [nil, '', 0, false].include?(x) }
exit
4 * 4
16 / 8
16 / 7
16 / 6
16.0 / 7.0
exit
StudentManager.methods
StudentManager.methods - Object.methods
StudentManager.total
StudentManager.total(students)
StudentManager.average_gpa(students)
StudentManager.highest_gpa(students)
StudentManager.lowest_gpa(students)
StudentManager.lowest_gpa(students).map(&:gpa)
[StudentManager.lowest_gpa(students), StudentManager.highest_gpa(students)].map(&:gpa)
[StudentManager.lowest_gpa(students), StudentManager.highest_gpa(students)].map(&:gpa).reduce(:+)
[StudentManager.lowest_gpa(students), StudentManager.highest_gpa(students)].map(&:gpa).reduce(:+) / 2
([StudentManager.lowest_gpa(students), StudentManager.highest_gpa(students)].map(&:gpa).reduce(:+) / 2).round(2)
exit
"john"[0]
exit
ls
@messages
@step_enum
@steps
@assignments
exit
@assignments
exit
ls
@submission
@is_late
@is_complete
exit
ls
opts
whereami
ls
vm
ls
whereami
exit
exit!!
!
exit
on_confirm
exit
@vm
exit
a = []
[1,2,3].map(&a.method(:push))
[1,2,3].each(&a.method(:push))
a
exit
class Proc
  def >>(f)
    ->(*args) { f.call(self.call(*args)) }
  end
end
double = -> x { x * 2 }
double[2]
double[4]
wrap = -> x { " -(#{x})- " }
wrap[2]
wrap >> double
(wrap >> double)[4]
(double >> wrap)[4]
(double >>
  wrap  >>
  double
)[4]
class Proc
  def |(f)
    -> (*args) { f.call(self.call(*args)) }
  end
end
(double |
  wrap  |
  double
)[5]
def triple(n)
  n * 3
end
(triple | wrap)[3]
def triple(n)
  n * 3
rescue ArgumentError
  method(self)
end
triple
cd triple
ls
triple 4
class Method
  def |(f)
    -> (*args) { f.call(self.call(*args)) }
  end
end
triple | wrap
triple
triple.class
method(:triple)
method(:triple) | double
(method(:triple) | double)[5]
class Kernel
  def &(name)
    method(name)
  end
end
module Kernel
  def &(name)
    method(name)
  end
end
&:triple
& :triple
&(:triple)
module Kernel
  def *|(name)
    method(name)
  end
end
module Kernel
  def ~>(sym)
    method(sym)
  end
&:triple
map(&:triple)
method(:triple)
class Object
  def -@(name)
    method(name)
  end
end
- :triple
:triple
-:triple
class Object
  def -@(name)
    method(name).to_proc
  end
end
-:triple
-:triple 5
(-:triple)(5)
(-:triple)
- 'hi'
- triple
class Object
  def -(name)
    method(name)
  end
end
- :triple
-
4
-5
-"hello"
exit
double = -> x { x * 2 }
def triple(n = 0)
  n * 3
end
triple.to_proc
method(:triple)
method(:triple).to_proc
class Object
  def <<(name)
    method(name).to_proc
  end
end
<<
<< :triple
Object.methods
send(:<<)
send(:<<, :triple)
class Object
  def <@(name)
    method(name).to_proc
  end
end
< :triple
>
end
< :triple
class Ogject
end
class Object
  def ~@(name)
    method(name).to_proc
    ed
  end
end
~ :hi
~
:hi
send(:~, :hi)
class Symbol
  def ~(name)
    method(self)
  end
end
class Symbol
  def ~
    method(self).to_proc
  end
end
~:triple
double
(double | ~:triple)[4]
(double | ~triple)[4]
(double | triple)[4]
exit
def triple(n)
  n * 3
end
double = -> x { x * 2 }
(double | :triple)[4]
def add(n,x)
  n + x
end
(add | double)[2, 2]
(:add | double)[2, 2]
exit
def add(x,n)
  x + n
end
def triple(n)
  n * 3
end
double = -> x { x * 2 }
(double | :triple)[2]
(:add | double | :triple)[2, 3]
(:add | double )[2, 3]
(:add | double )[1,1]
(:add | double )[1,1, 1]
(:add | double )[1,1,1]
exit
response
super('q')
exit
resp
exit
-> a, b { a + b }
z = -> a, b { a + b }
[1,2,3].inject(&z)
[1,2,3].inject(0. &z)
[1,2,3].inject(0, &z)
[1,2,3].inject({}, &z)
z = -> a, b { a['a'] = b }
[1,2,3].inject({}, &z)
z = -> a, b { b['a'] = a }
[1,2,3].inject({}, &z)
z = -> a, b { b['a'] = a; b }
[1,2,3].inject({}, &z)
z = -> a, b { b['a'] = a; a }
[1,2,3].inject({}, &z)
exit
self
ls
whereami
assignments
exit
'Alaska'..'Florida'
('Alaska'..'Florida').each do |d| puts d end
exit
"hello".squeeze
"hello".squeeze('1')
"hello".squeeze('l')
"hello".squeeze(/l/)
exit
DATA
DATA.read
exit
1 + 1
"hello" + "goodbye"
first = 1
second = 2
first + second
second = 'second'
first + second
second + first
def foo(bar)
  if bar.respond_to?(:succ)
    puts bar.succ
  else
    puts "Sorry, not a duck"
  end
end
foo 'bar'
foo
foo('foo')
'foo'.succ
'foo'.succ.succ
'foo'.succ.succ.succ
foo(5)
foo(10)
foo("a")
foo(Proc.new{})
foo(nil)
nil.respond_to?(:succ)
nil.nil?
nil.nil? == false
nil.nil? == false ? 'true' : 'false'
exit
require 'bcrypt'
Bcrypt
require 'bcrypt'
BCrypt
BCrypt::Password.new('YWRlcXVhdGVyZWNvcmQ=')
Sha
require 'digest/sha1'
Digest::SHA1.hexdigest 'foo'
Digest::SHA1.methods false
Digest::SHA1.methods
Digest::SHA1.methods - Object.methods
Digest::SHA1.digest "hello"
Digest::SHA1.hexdigest "hello"
Digest::SHA1.base64digest "hello"
Base64.decode64('YWRlcXVhdGVyZWNvcmQ=')
require 'base64'
Base64.decode64('YWRlcXVhdGVyZWNvcmQ=')
Base64.encode64('hello')
Base64.decode64('hello')
exit
def max(a,b)
  if a >= b
    a
  else
    b
  end
end
def max_of(a*)
def max_of(*a)
  a.each_slice(2) do |(b,c)|
    max(b,c)
  end
end
max_of(3, 5)
def max_of(*a)
  m = 0
  a.each_slice(2) do |(b,c)|
    m = max(b,c)
  end
  m
end
max_of(3, 5)
max_of(3, 5, 7)
max_of(3, 5, 7, 8)
exit
"hello".chars.chunk(&:to_s)
"hello".chars.chunk(&:to_s).map(&method(:puts))
"hello".chars.chunk(&:to_s).each(&method(:puts))
"hello".chars.chunk(&:to_s).map { |x| puts x.inspect }
"hello".chars.chunk(&:itself).map { |x| puts x.inspect }
exit
require 'BCrypt'
BCrypt.
methods
BCrypt.methods - Object.methods
BCrypt.new.methods - Object.methods
BCrypt
BCrypt::Password.create("password")
login_password = 'password'
login_attempt = 'letmein'
BCrypt::Password.create(login_attempt) == BCrypt::Password.create(login_password)
BCrypt::Password.create(login_password) == BCrypt::Password.create(login_password)
exit
def c[](klass, *attrs)
def >>(klass, *attrs)
  Class.new(klass) do
    attrs.each do |name
      |
      attr_accessor name
    end
  end
end
>> Foo, :bar
>>(Foo, :bar)
send(:>>, Foo, :bar)
send(:>>, 'Foo', :bar)
def C(klass, *attrs)
'Foo'.constantize
set_constant
methods
Constant
Module.methods
  const_set(klass, Class.new do
      attrs.each do |attr|
        attr_accessor attr
      end
    end
  )
end
C 'Foo', :bar
def C(klass, *attrs)
  Module.const_set(klass, Class.new do
      attrs.each do |attr|
        attr_accessor attr
      end
    end
  )
end
C 'Foo', :bar
C('Foo', :bar).new
foo = C('Foo', :bar).new
foo.bar
foo.bar = 10
foo
foo.bar
foo.baz = 10
Class.const_set
def C(klass, *attrs)
  Class.const_set(klass, Class.new { attrs.each { |x| attr_accessor x }})
end
C :Foo, :bar, :baz
(C :Foo, :bar, :baz).new
(C :Foo, :bar, :baz)
exit
exit
class Foo
end
Class.const_get(Foo)
Class.const_get('Foo')
Class.const_get('Boo')
Class.safe_const_get('Boo')
Class.methods
Class.const_defined?('Boo')
exit
Attrs = [:name, :foo]
def bar(**attrs)
  name
end
bar
bar name: 'foo'
def bar(**Attrs)
Module.define_method(:bar, *[:name, :foo]) do
  puts name
end
define_method
define_method(:bar, *[:name, :foo]) do
  puts name
  foo
end
define_method(:bar, *[:name, :foo])
define_method(:bar, -> *[:name, :foo] { puts name; foo})
define_method(:bar, -> [:name, :foo] { puts name; foo})
define_method(:bar, -> name { puts name; foo})
define_method(:bar, -> name, foo { puts name; foo})
class_eval
module_eval
class Foo
  self.class_eval %Q{
#{attrs = ['name', 'foo', bar']}
    def initialize(#{attrs.join(', ')})
        #{attrs.each do |attr|}
        @#{attr} = #{attr}
        end
        }
        end
Foo
class Foo
  self.class_eval %Q{
#{attrs = ['foo', 'bar']}
def initialize(#{attrs.join(', ')})
  #{attrs.each do |attr|}
}
Foo
class Foo
end
Foo
class Foo
end
Class.const_get('Foo')
class Class.const_get('Foo')
class Class.const_get('Foo')[]
class Class.const_get('Foo')[
  'fo']
class Class.const_get('Foo')::
end
class_eval
module_eval
instance_eval
eval
instance_eval(<<-CODE
class Foo
def woo
'sooooo'
end
CODE
)
Foo
Foo.new
Foo.new.woo
woo
C
c
C
exit
C
exit
C
c
exit
c
c(:Foo, :bar, :baz)
Foo
Class::Foo
exit
c(:Foo, :bar, :baz)
Foo
exit
c(:Foo, :bar, :baz)
c(:Foo, :bar, :baz).new('bake', 'barry')
exit
c(:Foo, :bar, :baz).new('bake', 'barry')
exit
c
C
Foo
exit
a = []
a.push('hi', 'bye')
a
exit
@current_page = 3
@current_page.upto(@current_page + 5) do |n|
  puts n
end
(@current_page..(@current_page + 5)).each do |n|
  puts n
end
(@current_page..(@current_page + 5)).each do |n|
  '<li><a href=\'?page=#{n}\'>${n}</a></li>'
end
(@current_page..(@current_page + 5)).each do |n|
  puts  '<li><a href=\'?page=#{n}\'>${n}</a></li>'
end
(@current_page..(@current_page + 5))
(@current_page..(@current_page + 4))
((@current_page - 4)..(@current_page + 4))
((@current_page - 2)..(@current_page + 2))
@current_page = 4
((@current_page - 2)..(@current_page + 2))
exit
request
request.methods
request.methods - Object.methods
request.fetch
exit
response
exit
response
response.methods - Object.methods
response.body
response.body.to_json
response.body.to_hash
JSON.parse(response.body)
exit
uri
next
step
exit
req
http
http.request
http.request(Net::HTTP::Get.new)
http.request(Net::HTTP::Get.new(uri.request_uri))
http.request(req)
exit
req
exit
params
exit
f
ls
args
f
opts
q
ls
exit
f
exit
f
exit
fn :foo
fn :foo, String => :foo
fn :foo, String => :foo do
  puts foo
end
define_method(:foo, [], &-> { puts 'foo' })
exit
{ String => :foo, Fixnum => :bar }
args = _
args.length
args.keys
args.values
args.vals
-> *args.values { puts foo }
-> (*args.values) { puts foo }
-> args.values { puts foo }
Proc.new
Proc.new(:foo)
Proc.new(:foo) do end
Proc.new do |*args.values|
-> ((*args.values)) { puts foo }
-> ((x, y)) { puts foo }
z = _
z.call
z.call(1)
z.call([1, 2])
def output(name=((default=true); "nathan"))
  puts "name: #{name.inspect}"
  puts "default: #{default.inspect}"
end
def output(name=((default=true); "nathan"))
  puts "name: #{name.inspect}"
  puts "default: #{default.inspect}"
end
def output name=((default=true); "nathan")
  puts "name: #{name.inspect}"
  puts "default: #{default.inspect}"
end
exit
fn :foo, String => :foo do
  puts foo
end
exit
fn :foo, String => :foo do
  puts foo
end
exit
fn :foo, String => :bar do
  puts :bar
end
fn_body
fn_body.source
fn_body.call
fn_body.call("baz")
exit
fn :foo, String => :bar do
  puts bar
end
fn_body_code
exit
fn :foo, String => :bar do
  puts bar
end
fn_body_code
fn_body
fn_body.call()
fn_body.call(1)
fn_body.call('foo')
fn_body_code
-> { 
}
-> bar {
  raise 'Type Mismatch' unless bar.is_a?(String)
  block.call
}
a = _
a['hi']
block
block['hi']
bar
bar = 'foo'
block['hi']
exit
fn :foo, String => :bar do puts bar end
fn_body_code
fn_body
fn_body[]
fn_body[1]
fn_body['foo']
x = -> foo {
}
x = -> {
  puts foo
}
x[]
y = -> foo {
  x.call
}
y
y[]
y['foo']
x
y
x.source
x.methods - Object.methods
x.comment
x = -> {
  puts foo
}
y = -> foo {
  self.instance_eval(&x)
}
y[]
y['foo']
y.call
y = -> foo {
  x.call
}
y['foo']
y = -> foo {
  eval(x, binding)
}
y['foo']
instance_exec
instance_exec &x
-> { foo = 'bar' }.instance_exec &x
x
y
y = -> foo {
  eval('self', x.binding)
}
y['foo']
x.binding
y = -> foo {
  eval('x.call', self)
}
y['baz']
y = -> foo {
  eval('x.call', self.binding)
}
y['baz']
y = -> foo {
  eval('x.call', y.binding)
}
y['baz']
exit
1.responds_to?(:+)
1.respond_to?(:+)
"hello".respond_to?(:+)
Class.respond_to?(:+)
1 + 1
1.send(:+, 1)
"hello".is_a?(String)
def add_two(a, b)
  raise "Nope" unless a.respond_to?(:+) && b.respond_to?(:+)
  a + b
end
add_two(2, 6)
add_two(Class, 6)
exit
6 * 21
126.to_s.split
126.to_s.split //
126.to_s.split(//) - [6, 21]
126.to_s.split(//) - [6, 21].map { |x| x.split(//) }
126.to_s.split(//) - [6, 21].map { |x| x.to_s.split(//) }
126.to_s.split(//) | [6, 21].map { |x| x.to_s.split(//) }
126.to_s.split(//) | [6, 21].flat_map { |x| x.to_s.split(//) }
126.to_s.split(//) - [6, 21].flat_map { |x| x.to_s.split(//) }
vamp = -> arr { (arr.reduce(:*).to_s.split(//) - arr.flat_map { |x| x.to_s.split(//) }}
vamp = -> arr { (arr.reduce(:*)).to_s.split(//) - arr.flat_map { |x| x.to_s.split(//) }}
vamp[[6, 21]]
vamp = -> arr { ((arr.reduce(:*)).to_s.split(//) - arr.flat_map { |x| x.to_s.split(//) }).empty?}
vamp[[6, 21]]
exit
def vamp(arr)
  v = arr.reduce(:*)
  z = v.to_s.split(//)
  z.include?(arr.first) && z.include?(arr.last)
end
vamp([6, 21])
exit
'"hello"'.strip
'"hello"'.strip('"')
'"hello"'.chomp('"')
'"hello"'.chomp('"').reverse.chomp
'"hello"'.chomp('"').reverse.chomp('"')
'"hello"'.chomp('"').reverse.chomp('"').reverse
exit
@all_numbers.map |x|
x.split(/ /)
@all_numbers.map do |x|
  x.split(/ /)
end
x.split(/[ -\.]/)
@all_numbers.map do |x|
  x.split(/[ -\.]/)
end
exit
clearn_area_codes.group_by(&:itself)
clean_area_codes.group_by(&:itself)
clean_area_codes.group_by(&:itself).map { |k,v| { k => v.count } }
exit
foo
clean_area_codes.group_by(&:itself).map { |k,v| { k => v.count } }
clean_area_codes.group_by(&:itself).map { |k,v| { k => v.count } }.sort_by(&:value)
clean_area_codes.group_by(&:itself).map { |k,v| { k => v.count } }.sort_by(&:values)
clean_area_codes.group_by(&:itself).map { |k,v| { k => v.count } }.sort_by(&:values).reverse
clean_area_codes.group_by(&:itself).map { |k,v| [k, v.count]}
clean_area_codes.group_by(&:itself).map { |k,v| [k, v.count] }.select { |k, v| v == 5 }
clean_area_codes.group_by(&:itself).map { |k,v| [k, v.count] }.select { |_, v| v == 5 }
exit
Hash[clean_area_codes.group_by(&:itself).map { |k,v| [k, v.count] }.select do |k, v|
    v == 5
end]
exit
freq
exit
clean_area_codes
clean_area_codes.count
clean_area_codes.group_by(&:itself)
clean_area_codes.group_by(&:itself).map { |k, v| [k, v.length] }
Hash[clean_area_codes.group_by(&:itself).map { |k, v| [k, v.length] }]
Hash[clean_area_codes.group_by(&:itself).map { |k, v| [k, v.length] }].length
clean_area_codes.reduce(Hash.new(0)) { |acc, area| acc[area] += 1; acc }
clean_area_codes.reduce(Hash.new(0)) { |acc, area| acc[area] += 1; acc }.length
clean_area_codes
clean_area_codes. select { |x| x.length != 3 }
phone_numbers
@phone_numbers
@all_numbers
@all_numbers.count
exit
freq
exit
def foo
  puts 'bar'
end
def print(x)
  puts x
end
def baz
  :baz
end
:baz | print | foo
:baz | :print | :foo
:baz | :print
(:baz | :print)
(:baz | :print).call
:baz | :print
:baz
baz | :print
wherami 15
whereami20
whereami 20
~:bar
:bar ~
~ :bar
(~ :bar)
(~Lbar)
(~:bar)
exit
-> x { 'hi' } | -> x { puts x }
(-> x { 'hi' } | -> x { puts x })[]
(->  { 'hi' } | -> x { puts x })[]
exit
h = Hash.new
h.default_proc = -> (k, v) {
  k[v] = k + 1
}
h
h[1]
h.default_proc = -> (h, k) {
  h[k] = (h[k] || 0) + 1
}
h[0]
h.default_proc = -> (h, k) {
  puts k
  h[k]
}
h[1]
h = Hash.new(0)
h.default_proc = -> (h, k) {
  h[k] = k + 1
}
h[1]
h[10]
exit
__method__
method(__method__)
method(__method__).call({a: :b}
)
exit
def Kernel
end
module Kernel
  def recur(*args)
    method(__callee__).call(*args)
  end
end
recur
def fo
  'ba'
end
fo
undef :fo
fo
eixt
exit
@foo = 'bar'
undef @foo
foo = 'bar'
foo
undef foo
foo
exit
class Kernel
  def recur(*args)
    method(caller.first).call(*args)
  end
end
module Kernel
  def recur(*args)
    method(caller.first).call(*args)
  end
  ed
end
module Kernel
  def recur(*args)
    method(caller.first).call(*args)
  end
end
def foo(n)
  if n > 0
    puts 'foo'
    recur(n - 1)
  end
end
foo(4)
__callee__
__caller__
callee
caller
exit
caller
__callee__
exit
meth
exit
meth
exit
meth
exit
callee
caller
__caller__
__callee__
caller[0]
exit
meth
exit
meth
exit
4.recur
exit
ls
exit
error
error.stacktrace
error.methods
error.methods - Object.methods
error.missing_name
error.message
error.backtrace
error
error.methods - Object.methods
error.describe_blame
error.cause
error.backtrace_locations
ls
controller
@_action_name
@_headers
@_view_render
@_view_context_class
@_view_context_class.name
@_view_context_class.methods false
@_view_context_class.default_url_options
@_lookup_context
@_lookup_context.paths
@_lookup_context
@_lookup_context.view_paths
@_lookup_context.view_paths.paths
ls
__
ls
controller
@_action_name
controller_nane
controller_name
action_name
error.message
error.message = "undefined local variable or method 'room' no definition found in #{controller_name} controller or #{action_name} action"
error
error.class.new(error.message.split('for #').first + "; No definition found in #{controller_name} controller or #{action_name} action")
error.class.new(error.message.split('for #').first + "; No definition found in #{controller_name} controller or #{action_name} action")e
exit
__FILE__
error
error === new_error
error == new_error
controller
controller_name
ls
methods
methods.select { |x| x.scan(/.*controller.*/) }
methods.select { |x| x.to_s.scan(/.*controller.*/) }
methods.select { |x| x.to_s.match(/.*controller.*/) }
controller_path
def meth_find(contains)
  methods.select { |x| x.to_s.match(/.*#{contains}.*/) }
end
meth_find 'view'
view_runtime
view_paths
meth_find 'view'
meth_find 'template'
_render_template
template_exists?
template_exists? 'index'
template_exists? 'rooms/index'
meth_find 'render'
render
render_to_body
render_to_body('')
render_to_body({})
render_to_string
rendered_format
default_render
new_error.stack_trace
new_error.backtrace
new_error.backtrace == error.backtrace
error.methods - Object.methods
error.exception
error.__bb_file
error.__bb_line
error.__bb_context
error.message
error.backtrace_locations == new_error.backtrace_locations
new_error.backtrace_locations
new_error.backtrace_locations = ''
new_error.set_backtrace_locations
new_error.set_instance_variable("@#{backtrace_locations}", 'foobar')
new_error.set_instance_variable("@backtrace_locations", 'foobar')
new_error.instance_eval("@backtrace_locations = 'foobar'")
new_error.backtrace_locations
new_error.instance_eval("backtrace_locations = 'foobar'")
new_error.backtrace_locations
new_error.instance_eval("attr_accessor :backtrace_location")
exit
hash = { first_name: 'jon', last_name: 'doe' }
hash.class
hash.first_name
hash.keys
hash.values
hash.methods
hash.methods - Object.methods
(hash.methods - Object.methods).length
hash
puts "hello #{hash}"
puts "hello #{hash[:first_name]}"
exit
context
whereami 10
context.registers
context.registers[:site]
context.registers[:site].baseurl
context.registers[:site].url
context.registers[:site].config
whereami 20
context.registers[:site]
context.registers[:site].config['url']
exit
@page
site(context)
site(context).registers
whereami
context
whereami 50
context.reigster[:page]
context.reigsters[:page]
context.registers[:page]
ls
name
nodelist
parse
@page
@tag_name
@markup
exit
ls
@text
@tokens
@tag_name
exit
page
site
site(context)
whereami  50
context.reigsters[:page]
context.registers[:page]
context.registers[:page].id
context.registers[:page]['id']
exit
ls
@text
context
exit
@text
exit
@text
exit
ls
@text
@tag_name
@tokens
exit
@page
@text
ls
name
nodelist
context
exit
@text
@tokens
ls
exit
FILE
FILE.split(' ')
exit
FILE
FILE.split(' ')
exit
ast
exit
ast
ls
exit
ast
exit
ast
TOKENS
exit
ast
TOKENS
exit
ast
exit
ast
exit
env
exit
a = "hello <%= name %>"
a.gsub(/<%= .+ %>/, { '<%= ' => '', ' %>' => '', 'name' => 'foo' })
a.gsub(/<%= .+ %>/, { '<%= ' => '', ' %>' => '', 'name': 'foo' })
a.gsub(/<%= .+ %>/, { '<%= ' => '', ' %>' => '', :name => 'foo' })
a.gsub(/<%= .+ %>/, { '<%=' => '', '%>' => '', :name => 'foo' })
a.gsub(/<%= name %>/, { '<%=' => '', '%>' => '', :name => 'foo' })
a.gsub(/<%= name %>/, { '<%=' => '', '%>' => '', 'name' => 'foo' })
a.gsub(/<%= (name) %>/, { '<%=' => '', '%>' => '', 'name' => 'foo' })
a.gsub(/<%= (name)? %>/, { '<%=' => '', '%>' => '', 'name' => 'foo' })
a.gsub(/[<%= name %>]/, { '<%=' => '', '%>' => '', 'name' => 'foo' })
a.gsub(/[<%= (name) %>]/, { '<%=' => '', '%>' => '', 'name' => 'foo' })
a.gsub(/[(<%=) (name) (%>)]/, { '<%=' => '', '%>' => '', 'name' => 'foo' })
a.gsub(/[(<%=) *(name) *(%>)]/, { '<%=' => '', '%>' => '', 'name' => 'foo' })
a.gsub(/[(<%=) *(name) *(%>)]/, { '<%=': '', '%>': '', 'name': 'foo' })
a.gsub(/[(<%=)(.+)(%>)]/, { '<%=': '', '%>': '', 'name': 'foo' })
a.gsub(/[(<%=)(.+)(%>)]/) { |caps| puts caps }
a.gsub(/[(<%=)(.+)(%>)]/) { |caps| puts caps.inspect }
a.gsub(/[(<%=)(.+)(%>)]/) { |caps| p caps.inspect }
a.gsub(/[(<%= .+ %>)]/) { |caps| p caps.inspect }
a.gsub(/[(<%=)(.+)<name>(%>)]/) { |caps| p caps.inspect }
a.gsub(/[(<%=)(.+)<attr>(%>)]/) { |caps| p caps.inspect }
a.gsub(/[(<%=)(.+)<attr>(%>)]/) { |caps| puts caps.inspect }
a.gsub(/[(<%=)(.+)<?attr>(%>)]/) { |caps| puts caps.inspect }
a.gsub(/[(<%=)(.+)(%>)]/) { |caps| puts caps.inspect }
a.gsub(/(<%=)(.+)(%>)/) { |caps| puts caps.inspect }
a.gsub(/[(<%=)(.+)(%>)]/) { |caps| puts caps.inspect }
a.gsub(/[(<%=)(.+)?(%>)]/) { |caps| puts caps.inspect }
a.gsub(/[(<%=)(.+)(%>)]/) { |caps| puts caps.inspect }
a.gsub(/[(<%=)(.+)(%>)]/) { |caps| puts $1 }
a.gsub(/[(<%=)(.+)(%>)]/) { |caps| puts $~ }
a.gsub(/[(<%=)(.+)(%>)]/) { |caps| puts $~.matches }
a.gsub(/[(<%=)(.+)(%>)]/) { |caps| puts $~.captures }
a.gsub(/[(<%=)(.+)(%>)]/) { |caps| puts $1}
a.gsub(/[(<%=)(.+)(%>)]/) { |caps| puts $2 }
a.gsub(/[(<%=)(.+)(%>)]/) { |caps| puts Regexp.last_match }
a.gsub(/[(<%=)(.+)(%>)]/, 'foo')
a.gsub(/[(<%=)(.*)(%>)]/, 'foo')
a.gsub(/[(<%=).*(.*).*(%>)]/, 'foo')
a.gsub(/[(<%=).*(\s).*(%>)]/, 'foo')
a.gsub(/[(<%=)(.+)(%>)]/, 'foo')
a.gsub(/(<%=)(.+)(%>)/, 'foo')
a.gsub(/(<%=)(.+)(%>)/) { |caps| puts Regexp.last_match }
a.gsub(/(<%=)(.+)(%>)/) { |caps| puts Regexp.last_match[1] }
a.gsub(/(<%=)(.+)(%>)/) { |caps| puts Regexp.last_match[2] }
a.gsub(/(<%=)(.+)(%>)/) { |caps| puts Regexp.last_match[0] }
a.gsub(/(<%=)(.+)(%>)/) { |caps| puts Regexp.last_match[2] }
a.gsub(/(<%=)(.+)(%>)/) { |caps| Regexp.last_match[2] = 'foo'  }
a.gsub(/(<%=)(.+)(%>)/) { |caps| Regexp.last_match[2]  }
a.gsub(/(<%=)(.+)(%>)/) { |caps| { name: 'beeb' }[Regexp.last_match[2]]  }
a.gsub(/(<%=)(.+)(%>)/) { |caps| { 'name': 'beeb' }[Regexp.last_match[2]]  }
a.gsub(/(<%=)(.+)(%>)/) { |caps| { 'name': 'beeb' }[Regexp.last_match[2]]; 'hi'  }
a.gsub(/(<%=)(.+)(%>)/) { |caps| { 'name': 'beeb' }.fetch(Regexp.last_match[2]);  }
a.gsub(/(<%=)(.+)(%>)/) { |caps| { 'name': 'beeb' }.fetch(Regexp.last_match[2].strip);  }
a.gsub(/(<%=)(.+)(%>)/) { |caps| { "name" =>m'beeb' }.fetch(Regexp.last_match[2].strip);  }
a.gsub(/(<%=)(.+)(%>)/) { |caps| { "name" => 'beeb' }.fetch(Regexp.last_match[2].strip);  }
exit
%w(foo bar baz) | %w(apple pear bar)
require 'bm'
require 'benchmark'
Benchmark.measure do
end
Benchmark.measure do
  %(foo bar baz) | %w(apple pear bar)
end
Benchmark.measure do
  %w(foo bar baz) | %w(apple pear bar)
end
Benchmark.measure do |t|
exit
msg
exit
msg
exit
msg
exit
msg
JSON.parse(msg)
exit
msg
exit
module Enumerator
  def map_join(rsep)
    map(&yield).join(rsep)
  end
end
def map_join(arr, sep, &block)
  arr.map(&block).join(sep)
end
map_join([1, 2, 3, 4, 5], '-') do |x|
  x ** 2
end
class Array
  def map_join(sep, &block)
    self.map(&block).join(sep)
  end
end
%w(apple foo bar john).map_join('_', &:upcase)
wzir
exit
%w(foo bar baz)
%w(foo bar baz) * 3
%w(foo bar baz) * 1
%w(foo bar baz) * 2
%w(foo bar baz) * 3
%w(foo bar baz) * 10
exit
require 'securerandom'
SecureRandom
SecureRandom.uuid
a = Array.new(5) { { SecureRandom.uuid => { foo: :bar } } }
a
b = a.dup
b.to_json
require 'json'
b.to_json
b.to_json.to_hash
JSON.parse(b.to_json)
b = JSON.parse(b.to_json)
a
b
a == b
a.zip(b)
a.zip(b).map { |x,y| x.merge(y) }
b
b.first
b.first["baz"] = "fuubaz"
b
a.zip(b).map { |x,y| x.merge(y) }
a.zip(b.reverse).map { |x,y| x.merge(y) }
a.map do |x|
  b.map do |y|
    if false
    end
  end
end
a = Hash.new(5) { SecureRandom.uuid => { "foo" => "bar" } } 
a = Hash.new(5) { SecureRandom.uuid }
a
a = {}.tap { |x| 5.times { x.store(SecureRandom.uuid, { "goo" => "gar" }) } }
b = JSON.parse(a.to_json)
b["936fa4ee-8b4c-42ce-835f-3eb78aaac7b5"]
b["936fa4ee-8b4c-42ce-835f-3eb78aaac7b5"]["bar"] = "foo"
b
a.merge(b)
b.merge(a)
b
a
a.reduce { |acc, x| x }
a.reduce({}) { |acc, x| x }
a.reduce({}) { |acc, x| acc.push(x) }
a.reduce({}) { |acc, x| acc.store(x) }
exit
class String
  def initialize
    self.freeze
  end
end
a = "hello"
b = "hello
a.object_id == b.object_id
"
b = "hello"
a.object_id == b.object_id
a.frozen?
b.frozen?
String.new("hello")
String("Hello")
a = String("Hello")
a.frozen?
class F
  def ()(str)
class F
  def [](str)
    str.freeze
  end
end
a = F['hello']
a = F[]('hello')
a = F[]
class F
  def self.[](str)
    str.freeze
  end
end
a = F['hello']
b = F['hello']
a.object_id == b.object_id
a.frozen?
b.frozen?
a.object_id
b.object_id
c = 'hello'.freeze
d = 'hello'.freeze
c.object_id
d.object_id
exit
class Float
  def ==(other)
    self.round(10) == other.round(10)
  end
end
0.1 + 0.2
0.1 + 0.2 == 0.3
exit
0.1
0.2
0.2 + 0.2
0.2 + 0.1
0.2 + 0.1 + 0.1
0.2 + 0.1 + 0.1 + 0.1
class Bignum
end
Bignum
exit
class TArray
  def initialize(*args)
    @entries = 
  end
end
exit
a = TArray.new(String, 'a', 'b', 'c', 'd')
a.first
a.last
a[0]
a.chars
a.join
a.push 10
a
a << 10
a
a | 10
a | [10]
a | TArray.new(Fixnum, 1, 2, 3)
exit
a = TArray.new(String, 'a', 'b', 'c', 'd')
a | TArray.new(Fixnum, 1, 2, 3)
a.type
exit
a = TArray.new(String, 'a', 'b', 'c', 'd')
a | TArray.new(Fixnum, 1, 2, 3)
a | TArray.new(String, 1, 2, 3)
a | TArray.new(String, '1', '2', '3')
(a | TArray.new(String, '1', '2', '3')).class
exit
a = TArray.new(String, 'a', 'b', 'c', 'd')
(a | TArray.new(String, '1', '2', '3')).class
(a | TArray.new(String, '1', '2', '3'))
exit
a = TArray.new(String, 'a', 'b', 'c', 'd')
(a | TArray.new(String, '1', '2', '3'))
(a - TArray.new(String, '1', '2', '3'))
exit
def F(str)
  str.freeze
end
F('hello')
a = F('hello')
b = F 'hello'
a==b
a.object_id = b.object_id
a.object_id == b.object_id
c = 'hello'.freeze
c.object_id
[a,b,c].map(&:object_id)
d = 'hello'.freeze
[a,b,c,d].map(&:object_id)
[a,b,c,d, F('hello')].map(&:object_id)
exit
a = ['john doe', 'jane smith']
b = a.first
b.gsub(' ', '')
b.gsub(' ', '_')
b.split(/ ./)
b.split(/ /)
b.split(/ /).join(_)
b.split(/ /).join('_')
b.split(/ /)
c = _
c.first + c.last.chars.first
c.first + '_' + c.last.chars.first
exit
Dir['/Applications/*']
a = _
a.map { |x| x.gsub({ '/Applications/' => '', '.app' => '' }) }
a.map { |x| x.gsub(/.*/, { '/Applications/' => '', '.app' => '' }) }
a.map { |x| x.gsub(/.+/, { '/Applications/' => '', '.app' => '' }) }
a.map { |x| x.gsub(/(.+)/, { '/Applications/' => '', '.app' => '' }) }
a.map { |x| x {
  }
}
a.map { |x| x }
a.map { |x| x }; nil
a.map { |x| x.drop(15) };
a.map { |x| x[15..-1] };
a.map { |x| x[15..-1] }
a.map { |x| x[13..-1] }
a.map { |x| x[14..-1] }
a.map { |x| x[14..-1].gsub('.app', '') }
exit
a = %w(Apple Pear Banana Futon Cherry)
b = %w(apple bear pear)
a.select { |x| b.include?(x.downcase) }
b.select { |x| a.include?(x.titlize) }
b.select { |x| a.include?(x.capitalize) }
exit
completions
apps.select { |a| completions.include?(a.downcase) }
apps.select { |a| completions.include?(a.downcase) }.join("\n
)
"
)
apps.map(&:downcase).grep(/^#{Regexp.escape((ARGV[1]|| ''))}/)
apps.grep(/^#{Regexp.escape((ARGV[1]|| ''))}/)
apps.grep(/^#{Regexp.escape((ARGV[1]|| ''))}/i)
exit
word = "apple"
word.slice(0)
word.slice(0)[0]
def self.pigatize(foo)
  puts 'what'
end
pigatize('foo')
exit
["[(({}))]", "{{[()]})"]
a = _
a.first
a.first.chars
a.first.chars.group_by(&:itself)
a.first.chars.group_by(&:itself).map { |k, v] k => v.count }
a.first.chars.group_by(&:itself).map { |k, v| k => v.count }
a.first.chars.group_by(&:itself).map { |k, v| {k => v.count} }
Hash[a.first.chars.group_by(&:itself).map { |k, v| {k => v.count} }]
Hash[a.first.chars.group_by(&:itself).map { |k, v| [k, v.count] }]
b = Hash[a.first.chars.group_by(&:itself).map { |k, v| [k, v.count] }]
b
b['['] == b[']']
[ %w([ ]), %w({ }), %w{( )}] 
c = _
c.each do |brackets|
  b[brackets.first] == b[brackets.last]
  puts  b[brackets.first] == b[brackets.last]
end
c.all? { |x| b[x.first] == b[x.last] }
def are_balanced?(input)
  counted_delims = Hash[input.chars.group_by(&:itself).map { |k, v| {k => v.count} }]
  [ %w([ ]), %w({ }), %w{( )}].all? do |b|
    counted_delims[b.first] == counted_delims[b.last]
  end
end
are_balanced?(a.first)
def are_balanced?(input)
  counted_delims = Hash[input.chars.group_by(&:itself).map { |k, v| [k,v.count] }]
  [ %w([ ]), %w({ }), %w{( )}].all? do |b|
    counted_delims[b.first] == counted_delims[b.last]
  end
end
are_balanced?(a.first)
are_balanced?(a.last)
are_balanced?("(")
are_balanced?("()")
are_balanced?("())")
are_balanced?("")
a
a << "("
a
a << ")"
a << "(()"
a
a.map(&method(:are_balanced?))
a.map &method :are_balanced?
a.map &method(:are_balanced?)
def are_balanced?(input)
  counted_delims = Hash[input.chars.group_by(&:itself).map { |k, v| [k,v.count] }]
  [ %w([ ]), %w({ }), %w{( )}].all? do |b|
    counted_delims[b.first] == counted_delims[b.last]
  end
end
def b?(i)
  d = Hash[i.chars.group_by(&:itself).map {|k,v|[k,v.count]}]
  [%w([ ]),%w({ }),%w[( )]].all? {|x| d[x[0]] == d[x[1]]
  }
end
b?(a.first)
b?(a.last)
def b?(i);d=Hash[i.chars.group_by(&:itself).map {|k,v|[k,v.count]}];[%w([ ]),%w({ }),%w[( )]].all? {|x| d[x[0]] == d[x[1]]};end
b?('(')
b?('()')
exit
input = "abccccdeffg"
Hash[input.chars.group_by(&:itself).map { |k, v| [k,v.count] }]
input = "abccccdd"
Hash[input.chars.group_by(&:itself).map { |k, v| [k,v.count] }]
input = "abccccdda"
Hash[input.chars.group_by(&:itself).map { |k, v| [k,v.count] }]
exit
input = "abccccdda"
Hash[input.chars.group_by(&:itself).map { |k, v| [k,v.count] }]
Hash(input.chars.group_by(&:itself).map { |k, v| [k,v.count] })
Array[1,2,3]
Fixnum('2')
Number('2')
String(5)
String[4]
Array[[1,1,1]]
exit
[[1,1],[2,1]]
[[1,1],[2,1]].to_h
[[1,1],[2,1]].to_hash
Hash[[[1,1],[2,1]]]
exit
(1..5).to_a.methods
(1..5).to_a.sample
(1..5).sample
Arary(1..5)
Array(1..5)
Array(1..5).sample
exit
a = %w(a b c d e)
b = %w(1 2 3)
a.zip b
a.zip(b, 0)
a.zip(b) do |x|
  0
end
exit
a = Hash.new(-> x { puts "yep #{x}" })
a
a[:foo]
a[:bar] = -> x { puts 'nope' }
a[:foo].call(1)
a[:bar].call(1)
exit
SecureRandom.hex
SecureRandom.hex.methods
SecureRandom.hex(1)
SecureRandom.hex(2)
SecureRandom.hex(4)
SecureRandom.hex(2)
SecureRandom.hex(3)
SecureRandom.hex(2)
exit
env
env['test-game']
env.methods
env.entries
env.entries(1)
env.entries('')
env.methods - Object.methods
env.each_entry { |x| puts x }
env.each_entry('foo') { |x| puts x }
env.each_entry('foo')
env.each_file { |x| puts x }
env['lib/test-game']
env['lib/test-game'].to_s
exit
Dir['lib']
Dir['lib.']
Dir['lib/']
Dir['lib/*.**']
Dir['*.**']
Dir['/*.**']
exit
(1...100)
(1...100).step(2)
Array((1...100).step(2))
Array((1...100).step(2)).sample
exit
class Test < Struct.new(name: 'foobar')
end
class Test < Struct.new(:name = 'foobar')
end
class Test < Struct.new(:name); end
Test.new
class Test < Struct.new(:name)
  def initialize(name = 'foobar')
    @name = name
  end
end
exit
def flip
  if rand > 0.5
    'heads'
  else
    'tails'
  end
end
flip
1000.times { flip }
Array.new(1000) { flip }
Array.new(1000) { flip }.partition(&:itself)
Array.new(1000) { flip }.group_by(&:itself)
Array.new(1000) { flip }.group_by(&:itself).map { |k, v| [k, v.count] }
exit
[1, 2, *[3, 4, 5], 6, 7]
[1, 2, *[3, 4, 5], 6, 7] * 5
exit
"u are cool".gsub(/u ?/, "ur fun")
"u are cool".gsub(/u ?/, "ur fun\:1")
"u are cool".gsub(/u ?/, "ur fun\:1\2")
"u are cool".gsub(/u ?<s>/, "ur fun#{$~[:s]")
  }")
"u are cool".gsub(/u ?<s>/, "ur fun#{$~[:s]}")
"u are cool".gsub(/(u ?<s)>/, "ur fun#{$~[:s]}")
"u are cool".gsub(/(u ?<s>)/, "ur fun#{$~[:s]}")
"u are cool".gsub(/(u ?( ))/, "ur fun#{$2]}")
"u are cool".gsub(/(u?( ))/, "ur fun#{$2]}")
"u are cool".gsub(/(u?( ))/, "ur fun#{$2}")
"u are cool".gsub(/u?( )/, "ur fun#{$2}")
"u are cool".gsub(/u?( )/, "I am#{$2}")
"u are cool".gsub(/u ?( )/, "I am#{$2}")
"u are cool".gsub(/u ?( )/, "I am#{$1}")
"u are cool".gsub(/you|u ?( )/, "I am#{$1}")
"u want to go to the movies?".gsub(/you|u ?( )/, "I am#{$1}")
def autocorrect(input)
  input.gsub(/you|u ?( )/, "your sister#{$1}")
end
autocorrect('u want to go to the movies?'
)
input = 'you want to go to the movies?
'
input = 'you want to go to the movies?'
input.gsub(/you|u ?( )/, "your sister#{$1}")
"wtf is going on".gsub(/wtf ?( )/, "what the ****#{$1}")
"wtf is going on".gsub(/(wtf ?( ))/, "what the ****#{$1}")
input.gsub(/you|u ?( )/, "your sister#{$1}")
input.gsub(/you|u ?( )/, "your sister\1")
input.gsub(/you|u ?( )/, 'your sister\1')
def autocorrect(input)
  input.gsub(/you|u ?( )/) { Regexp.last_match[1] }
end
autocorrect('u want to go to the movies?')
input.gsub(/you|u ?( )/) { Regexp.last_match[1] }
input
input.gsub(/you|u ?( )/) { "your sister#{Regexp.last_match[1]}" }
input.gsub(/you|u/) { "your sister#{Regexp.last_match[1]}" }
input.gsub(/you|\s?u\s?/) { "your sister#{Regexp.last_match[1]}" }
def autocorrect(input)
  input.gsub(/\s?you\s?|\s?u\s?/) { "your sister#{Regexp.last_match[1]}" }
end
autocorrect('u want to go to the movies?')
def autocorrect(input)
  input.gsub(/\s?you\s?|\s?u\s?/) { "your sister#{Regexp.last_match[2]}" }
end
autocorrect('u want to go to the movies?')
input.gsub(/(\s?you\s?)|\s?u\s?/) { "your sister#{Regexp.last_match[2]}" }
input.gsub(/(\s?you\s?)|\s?u\s?/) { "your sister#{Regexp.last_match[1]}" }
input.gsub(/(\s?you\s?)|\s?u\s?/) { "your sister#{Regexp.last_match[0]}" }
input.gsub(/(\s?you\s?)|\s?u\s?/) { "your sister#{Regexp.last_match[2]}" }
input.gsub(/(\s?you\s?)|\s?u\s?/) { "your sister#{Regexp.last_match[3]}" }
input.gsub(/(\s?)you(\s?)|\s?u\s?/) { "your sister#{Regexp.last_match[3]}" }
input.gsub(/(\s?)you(\s?)|\s?u\s?/) { "your sister#{Regexp.last_match[2]}" }
def autocorrect(input)
  input.gsub(/(\s?)you(\s?)|(\s?)u(\s?)/) { "#{Regexp.last_match[1]}your sister#{Regexp.last_match[2]}" }
end
autocorrect('u want to go to the movies?')
autocorrect('you want to go to the movies?')
autocorrect('u want to go to the movies?')
input.gsub(/(\s?)you(\s?)|(\s?)u(\s?)/) { "#{Regexp.last_match[1]}your sister#{Regexp.last_match[4]}" }
input.gsub(/(\s?)you(\s?)|(\s?)u(\s?)/) { "#{Regexp.last_match[1]}your sister#{Regexp.last_match[3]}" }
input.gsub(/(\s?)you(\s?)|(\s?)u(\s?)/) { "#{Regexp.last_match[1]}your sister#{Regexp.last_match[2]}" }
autocorrect('u want to go to the movies?')
'u want to go to the movies?'.gsub(/(\s?)you(\s?)|(\s?)u(\s?)/) { "#{Regexp.last_match[1]}your sister#{Regexp.last_match[2]}" }
'u want to go to the movies?'.gsub(/(\s?)you(\s?)|(\s?)u(\s?)/) { "#{Regexp.last_match[1]}your sister#{Regexp.last_match[3]}" }
'u want to go to the movies?'.gsub(/(\s?)you(\s?)|(\s?)u(\s?)/) { "#{Regexp.last_match[1]}your sister#{Regexp.last_match[4]}" }
def autocorrect(input)
  input.gsub(/(\s?)(you|u)(\s?)/) { "#{Regexp.last_match[1]}your sister#{Regexp.last_match[2]}" }
end
autocorrect('u want to go to the movies?')
autocorrect('you want to go to the movies?')
def autocorrect(input)
  input.gsub(/(\s?)(you|u)(\s?)/) { "#{Regexp.last_match[1]}your sister#{Regexp.last_match[3]}" }
end
autocorrect('you want to go to the movies?')
autocorrect('u want to go to the movies?')
autocorrect("Can't wait to see you")
autocorrect("Can't wait to see u")
autocorrect("Can't wait to see uuuuuu")
def autocorrect(input)
  input.gsub(/(\s?)(you+\s|u)(\s?)/) { "#{Regexp.last_match[1]}your sister#{Regexp.last_match[3]}" }
end
autocorrect("Can't wait to see uuuuuu")
autocorrect("Can't wait to see youuuuuu")
def autocorrect(input)
  input.gsub(/(\s?)(you+ |u)(\s?)/) { "#{Regexp.last_match[1]}your sister#{Regexp.last_match[3]}" }
end
autocorrect("Can't wait to see youuuuuu")
autocorrect("Can't wait to see you")
input.gsub(/(\s)(you+ |u)(\s)/) { "#{Regexp.last_match[1]}your sister#{Regexp.last_match[3]}" }
def autocorrect(input)
  input.gsub(/(\s?)(you+ |u)(\s?)/) { "#{Regexp.last_match[1]}your sister#{Regexp.last_match[3]}" }
end
[2, 1, 1]
[2, 1, 1].take(2)
[2, 1, 1].drop(2)
[2, 1, 1][-1..-2]
[2, 1, 1][-2..-1]
1.to_s.chars
1.to_s.chars.length
1.to_s.chars[-2..-1]
1.to_s.chars[-1]
1.to_s.chars.drop
1.to_s.chars.drop(1
)
1.to_s.chars.drop(1)
1.to_s.chars.take(1)
123.to_s.chars.take(1)
123.to_s.reverse.chars.take(1)
123.to_s.reverse.chars.take(2)
123.to_s.reverse.chars.take(2).reverse
123.to_s.reverse.chars.last(2)
123.to_schars.last(2)
123.to_s.chars.last(2)
1.to_s.chars.last(2)
exit
10.times.each_slice(2) do |n|
  puts n
end
10.times.each_slice(2) do |n|
  n.times do
    puts n
  end
end
exit
[1,2,4].zip([1,2,3])
[1,2,4].flat([1,2,3])
[1,2,4].flat(:zip,[1,2,3])
[1,2,4].flat(:zip) {  [1,2,3] }
[1,2,4].flat(:zip)
exit
[1,2,4].flat(:zip)
[1,2,4].flat(:zip, [1,2,3])
exit
exitlsl
ls
focus
configure
focus_next
cursors
keymap
log
views
exit
require 'opal'
Opal::Builder.build('')
Opal.compile('2 + 2')
Opal.compile("`#pragma strict`\n def Start; puts 'woo'; end def Update; puts 'yay'; end")
Opal.compile("`#pragma strict`; def Start; puts 'woo'; end def Update; puts 'yay'; end")
Opal.compile("def
foo
end
")
Opal.compile(<<-CODE
def Start
puts 'yay'
end
CODE)
)
Opal.compile(<<CODE
def Start
puts "yay"
end
CODE
)
a = _
puts a
3 * "$"
"#" * 2
exit
HW
HW[:title]
HW[:title].call('foobar')
HW[:easy_mode].call('foobar')
exit
HW[:description]
HW[:description].call('x')
exit
a = -> x { }
a.methods - Object.methods
a.comment
exit
Ohno
exit
Ohno
exit
Ohno[:title]
Ohno[:description]
Ohno[:description].call('x')
exit
lesson
lesson.map { |x, i| x.call(i) }
lesson.map { |x, i| x.call(i) }.join('')
lesson.map { |x, i| x.call(i) }.join("\n")
puts lesson.map { |x, i| x.call(i) }.join("\n")
puts lesson.map { |x, i| x.call(i) }.join("")
puts lesson.map { |x, i| x.call(i) }.join("\n\n")
puts lesson.map { |x, i| x.call(i) }.join("\n")
markdown
md
exit
fff
puts lesson.map { |x, i| x.call(i) }.join("\n")
exit
Time.now
Time.now.minute
Time.now.minutes
Time.now.hour
Time.now.methods - Object.methods
exit
"[(])".chars
exit
15 + 8
12 - 8
exit
a = "Hello"
b = a
a.upcase!
a
b
board = ["1", "2", "3", "4"]
my_board = board.dup
my_board.first
my_board.first = "5"
my_board[0] = "5"
my_board
board
ObjectSpace
ObjectSpace.methods
ObjectSpace.each_object do |obj|
  puts obj
end
ObjectSpace.each_object do |obj|
  puts obj if obj.is_a?(String)
end
puts ['washed okay']
def foo
  'foobar'
end
foo
def fruits
  return 'apple'
  puts "omg they are so good"
end
fruits
class Shirt
end
Class.new(Shirt)
1 + 1
1.send(:+, 1)
clear
def wash
  ['washed okay']
end
def wash
  return ['washed okay']
end
def wash
  ['washed okay']
  @clean = true
end
wash
@foobar = 'hello world'
exit
1.1 + 1.2
0.2 + 0.1
(0.2).floor
(0.2).ceil
(0.2).round
(0.5).round
(0.5).round(2)
(0.5245342).round(2)
exit
Pi
Pie
Math::E
Math::PI
clear
exit
!todos
@todos
@todos.first
@todos.last
exit
unfinished_todos
completed_todos
@todos
@todos.partition { |x| x["completed"] == "false" }
exit
@todos
@todos.each { |x| puts x }
exit
@todos
@todos.each { |x| puts x }
exit
unfinished_todos
completed_todos
exit
@todos
@todos.each { |x| puts x }
exit
completed_todos
unfinished_todos
exit
response
@todos[1]
@todos[0]
@todos[response - 1]
@todos[response - 1]["completed"]
@todos[response - 1]["completed"] = "true"
@todos
@todos[response - 1]
exit
$output
$output.include?("Unfinished"
)
eit
exit
name
get_input
$output
$input
ls
@todos
exit
name
@todos
exit
name
exit
name
exit
name
ls
whereami
name
exit
$input
foo
ls
$output
$foo
puts what
puts 'what'
exit
$input
$output
exit
name
get_input
$input
$output
exit
name
exit
name
exit
nums = %w(1 2 80 50 800 10 '')
nums.map { |x| x.to_i }
nums.map { |x| x.to_i }.reduce(1) { |acc, n| acc * n }
exit
def upcase(str)
  return if str.nil?
  str.upcase
end
upcase("hello world")
upcase(nil)
nil.upcase
nil.swapcase
def upcase(str)
  break if str.nil?
  str.upcase
end
def upcase(str)
  return 'cannot upcase nil' if str.nil?
  str.upcase
end
upcase(nil)
upcase(10)
upcase("foo")
def to_upper(str)
  return if str.nil?
  str.swapcase
end
to_upper(0)
def to_upper(str)
  return if str.nil?
  return if str.is_a?(Fixnum)
  str.swapcase
end
to_upper(0)
exit
1 + 1
1.send(:+, 1)
1.methods - Object.methods
1.class
Fixnum.ancestors
1.send(:+, 1)
1 + 1
welcome = "hello there how are you doing"
welcome.class
welcome.upcase
welcome * 10
puts "-" * 100
puts "-" * 50
`tputs cols`
`tput cols`
exit
cols = `tput cols`.chomp
cols = `tput cols`.chomp.to_i
puts '-' * cols
cols = `tput cols`.chomp.to_i
puts '-' * cols
`tput cols`
clear
cols = `tput cols`.chomp.to_i
def center(msg)
  padding = (`tput cols`.chomp.to_i) / 2
  left_padding = padding - (msg.length / 2)
  right_padding = left_padding
  puts "#{' ' * left_padding}#{msg}#{' ' * right_padding}"
end
center("hello world")
center("h")
center("if i give it a very long string")
center("h")
def line
  puts ' ' * `tput cols`.chomp.to_i
end
line
def line
  puts '-' * `tput cols`.chomp.to_i
end
line
center('foobar')
def welcome
  line
  center('hello world')
  line
end
welcome
my_array = [1, 2, 3, 'a', 'b', 'c', nil, '', 0, :welcome, false]
my_array.methods.count
my_array.each_with_index do |element, index|
  puts "Index: #{index} and value is #{element}"
end
my_array.each_with_index do |element, index|
  puts "Index: #{index} and value is #{element.inspect}"
end
my_array.select { |x| x.is_a?(Fixnum) }
my_array
my_array.select { |x| x.is_a?(Fixnum) }.select { |x| x.even? }
my_array.select { |x| x.is_a?(Fixnum) }.select { |x| x.even? }.reject { |x| x < 1 }
my_array
my_array.each do |element|
  puts element.succ
end
my_array.each do |element|
  skip if element.nil?
  puts element.succ
end
my_array.each do |element|
  next if element.nil?
  element.succ
end
my_array.each do |element|
  next if element.nil?
  next if element == false
  puts element.succ
end
my_array.each do |element|
  next if element.nil?
  next if element == false
  puts element.succ.inspect
end
my_array.each do |element|
  puts element
end
exit
(1..100)
(1..100).class
(1..100).methods - Object.methods
(1..100).member?(10)
(1..100).member?(1000)
gets.chomp.to_i
response = gets.chomp.to_i
if (1..100).member?(response)
  puts 'yes'
else
  puts 'no go away'
end
('a'..'e')
('a'..'e').member?('k')
('a'..'e').member?('b')
('a'..'e').member?('c')
1.methods
1.methods - Object.methods
Object.methods
def square(n)
  return if n.is_a?(String)
  return if n.is_a?(Array)
  x ** 2
end
square(2)
def square(n)
  if n.respond_to?(:**)
    n ** 2
  else
    "sorry, can't square #{n.inspect} of type #{n.class}"
  end
end
square(2)
square(200)
square("hello world")
square(nil)
"whenever"
!!"whenever"
!!100
!!Object.new
!!:symbol
!!false
!!nil
!nil
!"string"
!nil
:foobar
exit
class Game
  def initialize
    guess
    hints
  end
  def number
    number = rand(1..100)
  end
  def guess
    puts "What number am I thinking of?"
    guess = gets.chomp.to_i
  end
  def hints
    if guess > number
      puts "Too high!"
    elsif guess < number
      puts "Too low!"
    else guess == number
      endgame
    end
  end
  def endgame
    puts "YOU GOT IT! Type 'y' to play again!"
    play = gets.chomp
    if play.include? "y"
      number
    end
  end
end
Game.new
Integer
Integer("10")
FixNum
Fixnum
Fixnum("10")
exit
number
number * 10
@cols
exit
class User
end
class Dog
end
foobar = Dog
case foobar
when Dog then `say 'yes'`
when User then `say 'no'`
end
foobar
foobar === Dog
foobar == Dog
exit
collection.each do |elem|
  if elem == what_i_want
    puts 'found it'
  end
end
[].methods
[].methods.sort
(1..100).chunk { |x| x % 3 == 0 }
(1..100).chunk { |x| x % 3 == 0 }.to_a
qO
collection.each do |elem|
  collection.each do |elem|
wxi
exit
(1..100).partition { |x| x % 3 == 0 }.to_a
exit
def print_foo(foo)
  if $allowed_to_print == true
    print foo
  else
    print 'sorry'
  end
end
print_foo("hello world")
$allowed_to_print = true
print_foo("hello world")
def print_msg(msg, allowed_to_print)
  if allowed_to_print
    puts msg
  else
    puts "sorry"
  end
end
print_msg("hello world", true)
print_msg("hello world", false)
print_msg("hello world", true)
def div_by_3(num)
  if num % 3 == 0
    "fizz"
  else
    num
  end
end
div_by_3(3)
end
div_by_3(3)
div_by_3(4)
div_by_3(3)
div_by_3(4)
div_by_3(3)
div_by_3(4)
div_by_3(3)
$my_number = 3
def is_div_3
  if $my_number % 3 == 0
    'fizz'
  else
    $my_number
  end
end
is_div_3
$my_number = "fooo"
is_div_3
def set_number
  $number = rand(1..100)
  return $number
end
set_number
$number
%w(apple bear stew carrot).each do |ingredient|
  ingredient.upcase
end
%w(apple bear stew carrot).map do |ingredient|
  ingredient.upcase
end
%w(apple bear stew carrot).map do |ingredient|
  puts  ingredient.upcase
end
[ 
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9, 8, 7, 6]
].map do |elem|
  elem.map { |x| x * x }
end
a = _
a.flatten
a.map { |x| x + x }
a.map { |x| x + x }.flatten
a.flat_map { |x| x + x }
%w(apple bear carrot stew).select { |x| x.length < 5 }
%w(apple bear carrot stew).select { |x| x.length < 5 }.map do |x|
  x.upcase
end
%w(apple bear carrot stew).select { |x| x.length < 5 }.map { |x| x.upcase }.join('&&')
%w(apple bear carrot stew).select { |x| x.length < 5 }.map { |x| x.upcase }.join(' && ')
%(apple bear stew)
exit
5 - 1
5 - 2
exit
exit
class Developer
  def initialize(sociability)
    @sociability = relatively_awkward
  end
end
Developer.new(:boo)
exit
1 + 1
[:a, :b, :c]
[:a, :b, :c].map { |x| x.to_s.upcase }
load 'lib/currency.rb'
Currency.new
exit
return_value_tmp
amt
other
self
self.value + other.value
return_value_tmp
whereami
whereami 100
help
@!
@
ls
@currency_code
@value
exit
ls
exit
ls
ActiveRecord
ActiveRecord.methods
exit
%w(foo bar foobar baz bat).sample
exit
"foobar".chars
"foobar".chars.select.with_index { |x| x == 'o' }
"foobar".chars.select.with_index { |x, i| x == 'o' }
"foobar".chars.each_with_index do |x, i|
  puts i if x == 'o'
end
"foobar".chars.map.with_index do |x, i|
  i if x == 'o'
end
exit
require 'securerandom'
students = (1..10).to_a
students[SecureRandom.random_number(10)]
exit
0.upto(8)
0.upto(8).each_slice(3) do
end
exit
"foobar".include?(f)
"foobar".include?('f')
exit
"sqlite".include?('s')
"sqlite".index('s')
"sqlite".index('e')
"foobar".index('b')
"foobar".index('o')
"foobar".each_with_index do |char, index|
  puts index if char == 'o'
end
"foobar".split('').each_with_index do |char, index|
  puts index if char == 'o'
end
"foobar".split('').map.with_index do |char, index|
  index if char == 'o'
end
"foobar".split('').map.with_index { |char, index| index if chat == 'o' }
"foobar".split('').map.with_index { |char, index| index if char == 'o' }
"foobar".split('').map.with_index { |char, index| index if char == 'o' }.compact
exit
Item
Item.connection
Item.all
Item.count
User.count
Item.first
Item.where(price: 1151)
Item
Order
Item.methods
Item.max
Item.all
Item.all.max { |x| x.price }
Item.all.max_by(:price)
Item.all.max_by(:price).first
Item.first
Item.last
Foo.where("category LIKE ?", "%book%")
Item.where("category LIKE ?", "%book%")
exit
Item.where
exit
Game
Entity
Dir["../lib/**/*.rb"]
Dir["../lib/]
"]
Dir["../lib/"]
__FILE__
File.dirname __FILE__
Dir['.']
Dir['..']
Dir['../']
Dir.glob('..'
)
Dir[/
]
/
]
Dir['/']
Dir['/'].each do |f| puts f end
xit
exit
Game
Dir[File.join(__dir__, '..', 'lib', '*.rb')]
__dir__
File.expand_path
File.expand_path(__dir__)
File.join(__dir__)
Dir[File.expand_path(__dir__)]
Dir[File.expand_path(__dir__)].each
Dir[File.expand_path(__dir__)].first
Dir[File.expand_path(__dir__)][2]
exit
File.expand_path(__dir__)
File.expand_path(__dir__) + '/*.*'
Dir[File.expand_path(__dir__) + '/*.*']
Dir[File.expand_path(__dir__) + '/**/*.*']
Dir[File.expand_path(__dir__) + '/**/*.rb']
Dir[File.expand_path(__dir__) + '/lib/**/*.rb']
exit
Game
exit
files
__dir__
Dir[File.expand_path(__dir__) + '/lib/**/*.rb']
exit
files
exit
files
exit
Game
exit
"--------------------------".split(//).length
exit
"foo"[-1]
"foo"[-1] = 'hello'
"foo"[-1] = 'hello';
"foo"[-1] = 'hello'
a = 'foo'
a[-1] = 'hello'
a = 'foo'
a[-1] = 'hello'
a
a[-1] = 'hello'; a
exit
Item.sum
Item.sum(:price)
exit
Save.all
Game.all
save = Save.new
save
save.word = 'fizzbuzz'
save
save.guesses_left = 18
save.guesses_made = (['_'] * save.word.length).join('~')
save
save.save!
save
save.save
save.save!
save.guesses_left = 4
save.save
save.save!
exit
"hello".to_i
"hello".chars.map(&:to_i)
"hello".chars.map(&:char_code)
"hello".chars.map(&:code)
score = 10
turn = 90
10 * 90
90 / 10
score * turn
score / turn
c = score * turn
c / turn
c / score
"hello"
"hello".base
"hello".methods
"hello".chr
"hello".byteslice
'h'
'h'.methods
'h'.bytes
'h'.hex
'h'.oct
'h'.bytes
"hello".map(&:bytes)
"hello".chars.map(&:bytes)
"hello".chars.map(&:bytes).join
"hello".chars.map(&:bytes).join(-)
"hello".chars.map(&:bytes).join('-')
name = "Justin Herrick"
name
score
turn
"#{turn*score}-#{name.chars.map(&:bytes).join('-')}"
code = _
code.split('-')
"#{code.split('-').first}"
900.bytes
900.methods
900.bit_length
9.bit_length
900..size
900.size
900.lcm
900.methods
900.ord
900.hex
900.chr
900.base(2)
900.to_s(2)
_.to_i(10)
_.to_i(2)
exit
code = "hello".chars.map(&:bytes)
code.map { |x| x.to_s }
code.join('-')
code.join('-').split(/-/)
code = _
code.map { |x| x.to_i(2) }
code.map { |x| x.to_i.to_s }
code.map { |x| x.to_i.chr }
code.map { |x| x.to_i.chr }.join
exit
"abcdefghjklmnopqrstuvwxyz123456789".chars.map(&:bytes)
"abcdefghjklmnopqrstuvwxyz123456789".chars.map(&:bytes).map { |x| x.to_s.length < 3 ? "0#{x}" : x }
"abcdefghjklmnopqrstuvwxyz123456789".chars.map(&:bytes).map { |x| x.to_s.length < 3 ? return "0#{x}" : return x }
exit
doc
doc.css('table')
doc.css('table').first
doc.css('table').first.css('tbody tr')
doc.css('table').first.css('tbody')
doc.css('table').first.css('')
doc.css('table').first.css('tr')
doc.css('table').first.css('tr')[1]
doc.css('table').first.css('tr')[1].css('td')
doc.css('table').first.css('tr')[1].css('td').css('center')
doc.css('table').first.css('tr')[1].css('td css')
doc.css('table').first.css('tr')[1].css('td center')
doc.css('table').first.css('tr')[1].css('td center').text
doc.css('table').first.css('tr')[1].css('td').first.text
exit
doc.css('h1')
doc.css('h1').text
exit
Oga.parse_html(open('http://github.com/fooba/boo'))
Oga.parse_html(open('http://equiverse.org/stats.php?breed=99999'))
Oga.parse_html(open('http://equiverse.org/stats.php?breed=9'))
exit
doc
doc.css('h1')
doc.css('h1').text
!!
!!!
require 'securerandom'
SecureRandom.random_number(10)
exit
require 'securerandom'
SecureRandom.uuid
require 'securerandom'
SecureRandom.uuid
SecureRandom.hex
SecureRandom.hex(5)
SecureRandom.hex(1)
SecureRandom.hex(2)
SecureRandom.hex(1)
SecureRandom.hex(0)
SecureRandom.methods - Object.methods)
SecureRandom.methods - Object.methods
exit
Save
exit
Save
Save.connection
Save.all
Save.create(score: 108208420)
Save.where(score: 100000)
Save.where(score: 1000000)
Save.find(1)
my_save = Save.new
my_save.persisted?
my_save.score = 100
my_save.name = "Justin"
my_save
my_save.persisted?
my_save.score_changed?
my_save.save
my_save.persisted?
my_save.name_changed?
my_save
my_save.name
my_save.methods
my_save.class
my_save.superclass
my_save.class.superclass
my_save.methods
exit
Address.all
User.all
Order.all
Item.all
Order.first
Order.join("JOIN ON users WHERE users.id == orders.user_id")
Order.joins("JOIN ON users WHERE users.id == orders.user_id")
Order.joins("JOIN ON users WHERE users.id == orders.user_id").first
Order.joins("JOIN users WHERE users.id == orders.user_id").first
User.joins("JOIN order WHERE users.id == orders.user_id AND orders.id = 1").first
User.joins("JOIN orders WHERE users.id == orders.user_id AND orders.id = 1").first
exit
Order.first
user_id = Order.first.user_id
User.find(user_id)
Item.find(Order.first.item_id)
my_order = Order.first
my_order.user
my_order.item
my_order.user
Order.first
Order.first.user
exit
Address.first
Address.first.user
Order.first.user
Address.where(user_id: Order.first.user.id)
exit
User.first
User.first.orders
exit
User.first.orders
Address.first
Address.first.user
Address.first.user.orders
Address.first.user.orders.to_sql
exit
Item
Item.connection; nil
Item.all
Item.all.map { |x| x.category }
Order.all.map { |x| x.item }
Order.all.map { |x| x.item }.count
Order.all.map { |x| x.item }.group_by(&:itself)
Order.all.map { |x| x.item }.group_by(&:itself).map { |k, v| [k,v.count] }
fo = Order.all.map { |x| x.item }.group_by(&:itself).map { |k, v| [k,v.count] }
[1, 2, 3, 3, 4, 5, 6, 6, 6, 6]
[1, 2, 3, 3, 4, 5, 6, 6, 6, 6].group_by(&:itself)
[1, 2, 3, 3, 4, 5, 6, 6, 6, 6].group_by(&:itself).map { |key, value| [key, value.count] }
[1, 2, 3, 3, 4, 5, 6, 6, 6, 6].group_by(&:itself).map { |key, value| [key, value.count] }.max_by { |x| x.last }
fo = Order.all.map { |x| x.item }.group_by(&:itself).map { |k, v| [k,v.count] }
Item.where(category: 'Books')
Item.where(category: 'Books').map { |x| x.orders }
Item.where(category: 'Books').flat_map { |x| x.orders }
Item.where(category: 'Books').flat_map { |x| [x, x.orders] }
Item.where(category: 'Books').flat_map { |x| [x.price, x.orders] }
Item.where(category: 'Books').flat_map { |x| [x.price, x.orders] }.map { |price_and_orders| price_and_orders.first * price_and_orders.reduce(0) { |sum, order| sum + order.quantity } }
Item.where(category: 'Books').flat_map { |x| [x.price, x.orders] }.map { |price_and_orders| price_and_orders * price_and_orders.reduce(0) { |sum, order| sum + order.quantity } }
Address.find(4)
my_address = _
my_address.user
my_address.user.orders
Address.where(street: "6439 Zetta Hills", city: "Willmouth", state: "WY")
Address.where(street: "6439 Zetta Hills", city: "Willmouth", state: "WY").first
Address.where(street: "6439 Zetta Hills", city: "Willmouth", state: "WY").first.user
Address.where(street: "6439 Zetta Hills", city: "Willmouth", state: "WY").first.user.addresses
Address.where(street: "6439 Zetta Hills", city: "Willmouth", state: "WY").user.addresses
addresses = Address.where(street: "6439 Zetta Hills", city: "Willmouth", state: "WY")
addresses.each do |address|
  puts address.user.addresses
end
User.first
User.last
User.all
User.find(1)
User.find(19898)
User.where(id: 1)
User.where(id: 1098709870)
User.order(:first_name)
exit
class User;end
class Student;end
class Foo;end
a = [User, Student, Foo].sample
case a
when User then puts a.class
when Student then puts a.class.upcase
when Foo
  puts a.class.swapcase
else
  puts 'idk'
end
a
a === User
a == User
if a.eql?(User)
end
a.eql?(User)
a.equal(User)
a.equal?(User)
[User, Student].include?(a)
"Vqvbflapengvp Ehol".tr'a-zA-Z','n-za-mN-ZA-M'
def rot13(str)
  str.tr('n-za-mN-ZA-M', 'a-zA-Z')
end
rot13 "Idiosyncratic Ruby"
def unrot13(str)
  str.tr('a-zA-Z', 'n-za-mN-ZA-M')
end
class String
  def rot13
    self.tr('n-za-mN-ZA-M', 'a-zA-Z')
  end
  def unrot13
    self.tr('a-zA-Z', 'n-za-mN-ZA-M')
  end
end
"hello world".rot14
"hello world".rot13
"hello world".rot13.tap{ |this| puts this }
"hello world".rot13.tap{ |this| puts this }.unrot13
"hello world".rot13
"hello world".rot13.unrot13
"Hello World".tr'a-zA-Z','n-za-mN-ZA-M'
"Hello World".tr 'a-zA-Z', 'n-za-mN-ZA-M'
exit
Save.count
exit
User.all
User.count
me = User.new
me.first_name = "Justin"
me.last_name = "Herrick"
me.email = "justin@theironyard.com"
User.count
me.save
User.count
User.new('foo', 'bar')
User.new(first_name: 'foo')
User.find(2094)
User.find('foobar')
exit
Array('a'..'z')
Array(['a'..'z'])
Array('a'..'z') << ' '
[*a..z]
[*'a'..'z']
[*('a'..'z'), ]
[*('a'..'z'), ' ', ',' '.', '']
exit
uri = 'http://www.w3.org/pub/WWW/TheProject.html'
uri.split('/')
uri = 'https://tiy-classroom.herokuapp.com/assignments/1/edit'
uri.split('/')
exit
uri = 'https://tiy-classroom.herokuapp.com/assignments/1/edit'
ur.split('/')
uri.split('/')
uri = 'https://tiy-classroom.herokuapp.com/assignments/1/edit?foo=bar&hello=world'
uri.split('/')
uri.split('/').last.split(/?/)
uri.split('/').last.split('?')
uri.split('/').last.split('?').last.split('&')
uri.split('/').last.split('?').last.split('&').map { |x| x.split('=') }
exit
full_url
uri
uri.split('?')
q
exit
require 'open-uri'
open('http://google.com')
open('http://google.com').read
clear
open('http://justinherrick.com').read
puts open('http://justinherrick.com').read
exit
request_string = 'GET http://localhost:3000/students/1 HTTP/1.1'
request_string.split('')
request_string.split(' ')
method, url, http_version = request_string.split(' ')
method
url
http_version
url.split('/')
uri_fragments = url.split('/')
protocol = uri_fragments[0][0..-2]
domain_name = uri_fragments[2]
resource = uri_fragments[3]
id = uri_fragments[4]
exit
request_string = "GET http://localhost:3000/students?name=steve&limit=10 HTTP/1.1"
request_string.split(' ')
method, url, version = request_string.split(' ')
ur
url
url.split('/')
url.split('?')
resouce_url, query_params = url.split('?')
query_params
query_params.split('&')
pairs = query_params.split('&')
pairs.to_h
pairs.split('=')
pairs
pairs.map { |pair| pair.split('=') }
pairs.map! { |pair| pair.split('=') }
pairs
params = {}
pairs.each do |pair|
  params[pair.first] = pair.last
end
pairs
params
exit
Todo.all
exit
Todo.all
exit
Todo.all
exit
Class.new(String)
Class.new(:String)
Class.new(String)
class Foobar
end
Class.new(Foobar)
Class.new(Foobar).class
exit
User.find(1..4)
User.find([1..4])
User.create(first_name: 'foobar', last_name: 'hello', age: 99)
User.create(first_name: 'foobar', last_name: 'hello', age: 90)
User.create(first_name: 'foobar', last_name: 'baz', age: 90)
User.create(first_name: 'foobar', last_name: 'hello', age: 0)
User.create(first_name: 'foobar', last_name: 'h', age: 0)
User.create(first_name: 'foobarbaz', last_name: 'h', age: 0)
User.all
User.find(1..4)
User.find([1..4])
exit
User.create(first_name: 'foobar', last_name: 'hello', age: 99)
User.create(first_name: 'foobarbaz', last_name: 'h', age: 0)
User.create(first_name: 'foobar', last_name: 'hello', age: 90)
User.create(first_name: 'foo', last_name: 'h', age: 0)
exit
User.all
exit
"hello world".substring("world")
"hello world".include?("world")
"hello world".include?("worl")
"hello world".include?(/world/)
"hello world".match?(/world/)
/world/.match? "hello world"
"hello world".scan /world/
"hello world".scan /worl/
"hello world".match /world/
exit
full_name = "mason matthews"
full_name.split(' ')
full_name.split(' ').last
"deadmou5".split(' ')
"deadmou5".split(' ').last
full_name.split(' ')
full_name.split(' ')[1]
"deadmou5".split(' ')[1]
"deadmou5".split('')[1]
"deadmou5".split('')
"deadmou5".split(' ')
ni
nil
nil.to_s
"#{nil}"
'matthews'.to_s
"john quincy adams"
"john quincy adams".split(' ')
"john quincy adams".split(' ')[0]
"john quincy adams".split(' ')[0..1]
full_name.split(' ')[0]
full_name.split(' ')[0..1]
full_name.split(' ')[0..-1]
full_name.split(' ')[0..-2]
"john quincy adams".split(' ')[0..-2]
"deadmou5".split(' ')
"deadmou5".split(' ')[0..-2]
"deadmou5".split(' ')[0..-1]
"deadmou5".split(' ')[0..-2]
"deadmou5".split(' ')[1..-2]
"deadmou5".split(' ')[-1..-2]
"deadmou5".split(' ')[0..-2]
"john quincy adams".split(' ')[0..-2]
"john quincy adams".split(' ')[0]
"john quincy adams".split(' ')[-1]
"john quincy adams".split(' ')[0..-1]
"john quincy adams".split(' ')[-1]
"deadmou5".split(' ')
"deadmou5".split(' ')[-1]
exit
space
direction
x
y
self
puts char
exit
face
facing
x
y
exit
x
y
exit
x
y
exit
!!!
x
y
@room
x < @room.widthj
x < @room.width
exit
x
y
exit
x
y
exit
x
y
!!!
n
@x
__callee__
caller
exi
exit
n
!!!
exit
require 'securerandom'
Securerandom.hex
SecureRandom.hex(1)
SecureRandom.hex(60)
SecureRandom.hex(6)
SecureRandom.hex(7)
SecureRandom.hex(10)
exit
require 'securerandom'
SecureRandom.random_number([1,2,3,4].length)
exit
arr = [ ['a', 1], ['b', 2]]
arr.to_h
Hash[arr]
Hash.new(arr)
exit
DATA
DATA.each_line
DATA.each_line do |line| puts line end
DATA.each_line.to_a
DATA.each_line.map.to_a
DATA.each_line.map { |x| x }
DATA.each_line { |x| puts x }
DATA.each_line do |line| puts line end
DATA
DATA.read
DATA.read_lines
exit
DATA.each_line.map { |x| x }
exit
DATA.each_line.map { |x| x.chomp }
exit
whereami 20
random_line(1)
random_line(3)
random_line(100)
random_line()
exit
chars
len
exit
chars
exit
chars
exit
chars
exit
chars
exit
!!!
"hello".start_with?('a')
"hello".start_with?('a', 'e', 'i', 'o', 'u')
"ello".start_with?('a', 'e', 'i', 'o', 'u')
"ello" =~ /aeiou/
"ello" =~ /[aeiou]/
"hello" =~ /[aeiou]/
"ello"[0] =~ /[aeiou]/
"hello"[0] =~ /[aeiou]/
/[aeiou]/.match('hello')
/[aeiou]/.match('hello'[0])
/[aeiou]/.match('ello'[0])
/[aeiou]/.match('hello'[0])
/[aeiou]/.match('ello'[0])
exit
['a', 'e', 'i', 'o', 'u'].include?("hello"[0])
['a', 'e', 'i', 'o', 'u'].include?("ello"[0])
"hello".start_with?('a', 'e', 'i', 'o', 'u')
exit
str = "hello world"
str[0]
str[-1]
str[6..-1]
str[0..-1]
str[1..-1]
str[0..-1]
str[0..-2]
str[0..(str.length)]
str[1..(str.length)]
str[1..(str.length - 1)]
str[0..(str.length - 1)]
exit
require 'faker'
100.times.map { Faker::Hacker }
Faker::Hacker.methods
100.times.map { Faker::Hacker.say_something_smart }
100.times.map { Faker::Hacker.say_something_smart }.join("\n")
100.times.map { Faker::Hacker.say_something_smart }.join("\n")zxx
exit
coins =[25, 25]
new_coins = [10, 10, 5]
coins + new_coins
coins << new_coins
exit
-> x { x ** 2 }
-> x { x ** 2 }.call
-> x { x ** 2 }.call(2)
-> x { x ** 2 }.call(4)
square = -> x { x ** 2 }
square
square.call(2)
Proc.new.methods
Proc.methods
square
double = -> x { x * 2 }
double.call(square.call(2))
square.call(double.call(2))
double.curry
double.curry(square)
double.curry(2)
double.curry
double.curry.call(1)
double.curry.call(square(2))
double.curry.call(square.(2))
square_and_double = -> x { double.call(square.call(x)) }
square_and_double.call(30)
exit
def foo
  print @foobar
end
foo
@foobar = 10
foo
exit
a, b, c = [3, 2, 1]
a
b
c
a, b, c = 1, 2, 3
a
b
c
a,
b,
c = 1,
2,
3
def full_name
  "justin", "allen", "herrick"
end
def full_name
  [  "justin", "allen", "herrick"]
end
first, middle, last = full_name
first
middle
last
class User
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
  def method_missing(method, *args, &block)
    if method == 'title_name'
      @name.upcase
    else
      puts method, *args
    end
  end
end
my_user = User.new('justin')
my_user.name
my_user.title_name
my_user.title_name(:foo, :bar, "hello")
my_user.dlkfjdflkj
my_user.methods - Object.methods
exit
"hello"(0)
exit
case 'Clouds'
when /Cloud/ then 'yes'
else
  'no'
end
case 'Rain'.downcase
when /rain/ then 'yes'
else
  'no'
end
exit
def age_verifier(age)
  if age < 21
    puts "Too young"
  else
    puts "Proceed"
  end
end
# Hard Mode
def pigatize(word)
  if word.downcase.start_with?("a" || "e" || "i" || "o" || "u")
    puts word + "way"
  else
    first_letter = word[0]
    word[1..-1] + first_letter + "ay"
  end
end
#Nightmare Mode
def age_verifier(age_arr)
  (age_arr).each do |i|
    if i < 21
      puts "Too young"
    else
      puts "Proceed"
    end
  end
end
age_verifier
age_verifier 50
def age_verifier(age)
  if age < 21
    puts "Too young"
  else
    puts "Proceed"
  end
end
def verify_ages(ages)
  ages.each(method(:age_verifier))
end
verify_ages([10, 3, 20, 50])
def verify_ages(ages)
  ages.each(method(:age_verifier).to_proc)
end
verify_ages([10, 3, 20, 50])
def verify_ages(ages)
  ages.each(&method(:age_verifier))
end
verify_ages([10, 3, 20, 50])
exit
class Session
  def call
    [200, "foobar"]
  end
end
Session['foo']
Session.new[]
Session.new
Session.new.call
Session.new.()
Session.new[]
Session.new.[]
exit
whereami 20
ast
exit
IF = -> bool {
  -> x {
    -> y {
      bool[x][y]
    }
  }
}
IF[true]
IF[true][1]
IF[true][1][0\
]
IF[true][1][0]
ZERO = -> p { -> x { x } }
ZERO
ZERO[]
ZERO[0]
ZERO[0][true]
ZERO[false][true]
ONE = -> p { -> x { p[x] }}
ONE[false][true]
Y = -> f { -> x { f[x[x]] }[-> x { f[x[x]] }] }
Y[-> a { puts a}]
Y[-> a { a.is_a?(Proc) ? puts 'hi': puts 'bye'}]
Y[-> a { a.is_a?(Proc) ? puts 'hi' ;: puts 'bye'}]
Y[-> a { a.is_a?(Proc) ? 'hi' :  'bye'}]
Y[-> a { a.is_a?(Proc) ? break :  'bye'}]
Y[-> a { a.is_a?(Proc) ? return :  'bye'}]
Y[-> a { a.is_a?(Proc) ? return : return }]
exit
(1..5).sample
(1..5).shuffle
Array(1..5).sample
exit
jjuslkjlkj;lk    :w ;w ;w 
kjlkj;lkjaslkdjflaksjdfdf
dkdkkdkd dkd dkkd kkd  kddk ddkkdkkdkdkkdkd    'd
dlfkjasdf;laksjdflskdfj\]   ldkjl;dkfj ;lk 
20 * 10 = 450
exit
-> x { x * 2 }
-> x { x * 2 }.call(2)
double = -> x { x * 2 }
double
double.call(2)
def log(fn)
  puts "running fn"
  fn.call(2)
  puts "finished running"
end
log(-> x { x * 2 })
exit
[1, 2, 3, 4, 5]
a = _
a.first
a.drop(0)
a.drop(1)
a
a.drop(1)
a
exit
%w(matthew ben reid).shuffle
%w(matthew ben reid).sample
Array(1, 1, 3, )
Array(2)
Array([])
Array([1, 2, 3])
Array(nil)
%w(ben reid).sample
%w(reid).sample
exit
hsh = { user: 'jo do', age: '20', limit: 200 }
hsh[:user]
hsh.fetch(:user)
hsh[:userdddd]
hsh.fetch(:userdddd)
hsh.fetch(:userdddd, 'not found')
hsh[:userdddd] || "not found"
(hsh[:userdddd] || "not found")
exiit
exit
Array(nil)
Array(1)
Array([1, 2, 3])
[nil]
[nil].compact
[1].compact
[[1, 2, 3]].compact
[[1, 2, 3]].compact.flatten
def wrap(obj)
  [obj].compact.flatten
end
wrap([1, 2, 3])
Array
Hash[ [:a, 1], [:b, 2] ]
Hash[ ][:a, 1], [:b, 2]] ]
Hash[ [[:a, 1], [:b, 2]] ]
exit
whereami 50
ls
params
EmployeeCourse.create(course_id: params[:id], employee_id: params[:employee_id])
exit
1 + 1
1.send(:+, 1)
1.methods
1.methods.count
my_array = []
my_array.push(2)
my_array = [2] * 100
my_array.length
"aaaaaaaaaaaaaaaaaaaaa" " aaaaaaaaaaaaaaaaaaaaa"
exit
Employee.new
exit
-> x { x * x }
-> x { x * x }[2]
-> (x) do
  x * x
end
[1, 2, 3].each do |x|
  puts x * x
end
[1, 2, 3].map do |x|
  x * x
end
[1, 2, 3].map -> x do
  x * x
end
[1, 2, 3].map(&-> x { x * x })
[1, 2, 3].map &-> x do
  x * x
end
square
square = -> x { x * x }
[ 1, 2, 3 ].map square
[ 1, 2, 3 ].map &square
class Maybe
end
require 'delegate'
require 'simpledelegator'
require 'delegator'
require 'delegate'
SimpleDelegator
SimpleDelegator.methods
class Maybe < SimpleDelegator
  def method_missing(meth, *args, &block)
    self
  end
  def nil?
    true
  end
  def to_s
    "Maybe(#{super})"
  end
end
Maybe
Maybe.new('hi')
exit
class Maybe < SimpleDelegator
  def method_missing(*args, &block)
    self
  end
end
Maybe.new
Maybe.new('foo')
Maybe.new('foo').capitalize
Maybe.new('foo').uppercase
class Maybe
  def then
    if value
    end
  end
end
exit
Maybe('foobar')
Maybe('foobar').upcase
Maybe('foobar').then { |str| str.upcase }
exit
Maybe("foobar")
Maybe("foobar").upcase
exit
Maybe('foobar')
Maybe('foobar').upcase
Maybe('foobar').upcase.chars
Maybe('foobar').upcase.chars.map(&:byte)
Maybe('foobar').upcase.chars.map(&:bite)
Maybe('foobar').upcase.chars.map(&:code)
Maybe('foobar').upcase.chars.map { |x| x.byte }
Maybe('foobar').upcase.chars.map { |x| x }
Maybe('foobar').upcase.chars
Maybe('foobar').upcase.chars.each { |x| puts x }
Maybe('foobar').upcase.chars.map { |x| puts x }
Maybe('foobar').upcase.chars.map { |x| x }
Maybe('foobar').upcase.chars.flat_map { |x| x }
Maybe('foobar').upcase.chars.flat_map { |x| x.succ }
Maybe('foobar').upcase.chars.flat_map { |x| x.map(&:succ) }
Maybe(nil).upcase.chars.flat_map { |x| x.map(&:succ) }
Maybe(nil).upcase.chars.unwrap { |x| x.map(&:succ) }
Maybe(nil).upcase.chars.unwrap.map { |x| x.map(&:succ) }
exit
Maybe(nil).upcase.chars.unwrap.map { |x| x.map(&:succ) }
Maybe(nil).upcase.chars.unwrap { |x| x.map(&:succ) }
Maybe('foobar').upcase.chars.unwrap { |x| x.map(&:succ) }
Maybe('foobar').upcase.chars.unwrap.map { |x| x.succ }
Maybe(nil).upcase.chars.unwrap.map { |x| x.succ }
Maybe(nil).upcase.chars.map { |x| x.succ }
exit
Maybe(nil).upcase.chars.map { |x| x.succ }
Maybe('foobar').upcase.chars.unwrap.map { |x| x.succ }
exit
Maybe('foobar')
Maybe('foobar').chars
Maybe('foobar').chars.each do |c| puts c end
Maybe('foobar').chars.each_with_index do |c, i| puts c, i; end
Maybe('foo').chars
Maybe(Maybe('foo').chars)
Maybe(Maybe('foo').chars).first
Maybe(Maybe('foo').chars).first.class
Maybe(Maybe('foo').chars).first.to_s
Maybe(Maybe('foo').chars).first.first
Maybe(Maybe('foo').chars).first.first.first
Maybe('foo').chars.first
Maybe('foo').chars.first.first
Maybe('foo').chars
Maybe('foo').chars.values
Maybe('foo').chars.value
Maybe('foo').chars
exit
Maybe('foo').chars
Maybe('foo').chars.methods - Object.methods
exit
Maybe('foo').chars.methods - Object.methods
Maybe('foo').chars
Maybe('foo').chars.first
Maybe('foobar').chars.each_with_index do |c, i| puts c, i; end
Maybe('foobar').upcase.chars.unwrap.map { |x| x.succ }
Maybe('foobar').upcase.chars.unwrap!.map { |x| x.succ }
Maybe('foobar').upcase.chars.map { |x| x.succ }
Maybe(nil).upcase.chars.map { |x| x.succ }
Maybe(nil).upcase.chars.map { |x| x.succ }.map { |foo| foo ** 2 }
exit
fizzbuzz(1)
exit
fizzbuzz(1)
exit
fizzbuzz(1)
fizzbuzz(3)
fizzbuzz(5)
fizzbuzz(15)
exit
fizzbuzz(15)
fizzbuzz(5)
fizzbuzz(3)
fizzbuzz(33)
fizzbuzz(1)
exit
fizzbuzz(33)
exit
fizzbuzz(1)
fizzbuzz(33)
fizzbuzz(3)
fizzbuzz(15)
fizzbuzz(5)
exit
fizzbuzz(15)
fizzbuzz(5)
exit
fizzbuzz(5)
fizzbuzz(15)
fizzbuzz(1)
exit
puts 5 || 'hi'
puts false || 'hi'
puts true && false || 'hi'
puts false && false || 'hi'
puts false && false && true || 'hi'
puts false && false && false || 'hi'
false && false && false || 'hi'
false && false && false || 'hi' && false
false && false && false || 'hi' | false
false && false && false || 'hi' ^ false
exit
[] << "fizz" << false || 10
[] << "fizz" << (false || 10)
[] << "fizz" || (false || 10)
[] << "fizz" || "buzz" (false || 10)
[] << "fizz" || "buzz" || (false || 10)
[] << "fizz" || "buzz" || (10)
[] << "fizz" && "buzz" || (10)
[] << "fizz" << "buzz" || (10)
[] << "fizz" << fa || (10)
[] << "fizz" << false || (10)
[] << false << false || (10)
[] << false << (false || (10))
exit
"" << 10
"" << "hello"
"" << false
"" << false.to_s
"" << nil.to_s
exit
fb(15)
exit
fb(15)
fb(5)
fb(3)
fb(1)
fb(9)
exit
[] << (true ? ('buzz') : (false || 1)
)
[] << ('fizz' ? ('buzz') : (false || 1)
)
[] << ('fizz' ? ('buzz') : (false || 1))
[] << ('fizz' ? ('fizz' << 'buzz') : (false || 1))
[] << ('fizz' ? ('fizz' << 'buzz') : ('buzz' || 1))
[] << ('buzz' ? ('fizz' << 'buzz') : ('buzz' || 1))
[] << (false ? ('fizz' << 'buzz') : ('buzz' || 1))
[] << (false ? ('fizz' << 'buzz') : (false || 1))
exit
fb(9)
fb(1)
fb(9)
fb(5)
exit
fb(1)
[1, 3, 5, 15].map { |x| fb x }
exit
[1, 3, 5, 15].map { |x| fb x }
exit
[1, 3, 5, 15].map { |x| fb x }
exit
[1, 3, 5, 15].map { |x| fb x }
exit
[1, 3, 5, 15].map { |x| fb x }
exit
[1, 3, 5, 15].map { |x| fb x }
exit
[1, 3, 5, 15].map { |x| fb x }
exit
[1, 3, 5, 15].map { |x| fb x }
exit
[1, 3, 5, 15].map { |x| fb x }
exit
Array('')
Array('').compact
''
''.empty?
exit
[1, 3, 5, 15].map { |x| fb x }
exit
%w( foo bar hello )
exit
Room.all
Room.create(name: 'foobar')
Room.all
Room.create!(name: 'foooo')
exit
"end".prepend
"end".prepend("start")
exit
ls
page
save_and_open_screenshot
save_and_open_page
exit
ls
exit
ls
path_name
current_url
current_path
exit
sort_dir = params[:sort_dir] == 'asc' ? 'asc' : 'desc'
params = {}
sort_dir = params[:sort_dir] == 'asc' ? 'asc' : 'desc'
params[:sort_dir] = 'asc'
sort_dir = params[:sort_dir] == 'asc' ? 'asc' : 'desc'
exit
a = [ [1, 2], [2, 3], [], [4,5], [6, 7, 8, 4, 4, 4], [9]]
a.map(&:uniq)
a.map(&:uniq).flatten
a.flat_map(&:uniq)
a.flatten.map(&:uniq)
a.flatten.uniq
a.flatten.to_set
a.flatten.to_set.to_a
exit
(1..100).each do |n|
  puts n
end
(1..100).each do |n|
  puts 100 - n
end
(1..100).each do |n|
  Math.abs(n - 100)
end
(1..100).each do |n|
  (n - 100).abs
end
(1..100).each do |n|
  puts  (n - 100).abs
end
(1..100).each do |n|
  exit
''.split(',')
exit
params
assignment_params
whereami 40
exit
'abc'.each_slice(2)
'abc'.chunk
'abc'.split
'abc'.split(//)
'abc'.split(//).each_slice(2)
'abc'.split(//).each_slice(2).map(&:itself)
'abc'.split(//).each_slice(2).map(&:itself).map { |pair| pair[1] ||= '_' }
'abc'.split(//).each_slice(2).map(&:itself).map { |pair| pair[1] ||= '_'; pair }
exit
'abc'.scan(/.{2}/).map(&:itself).map { |pair| pair[1] ||= '_'; pair }
'abc'.scan(/.{2}/)
'abc'.scan(/.{1, 2}/)
'abc'.scan(/.{2}/)
'abc'.scan(/.{3}/)
'abc'.scan(/.{1, 3}/)
'abc'.scan(/.{1, 2}/)
'abcdef'.scan(/.{1, 2}/)
'abcdef'.scan(/.{1,2}/)
'abc'.scan(/.{1,2}/)
'abc'.scan(/.{1,2}/).map(&:itself).map { |pair| pair[1] ||= '_'; pair }
'abc'.scan(/.{1,2}/).map { |pair| pair[1] ||= '_'; pair }
'abc'.scan /../
'abcd'.scan /../
'abcd_'.scan /../
'abcd'.scan /../
'abcdef'.scan /../
'abcdef_'.scan /../
'abcdef__'.scan /../
'abcdefg'.scan /../
'abcdefg_'.scan /../
exit
require 'rest-client'
exit
require 'rest_client'
RestClient::Request.execute(:url => 'https://www.kimonolabs.com/api/bd7d2c66?apikey=N5gmFp4txNaM14V0074wiv7FAtDuRr1L', :method => :get, :verify_ssl => false)
require 'rest_client'
exit
params
exit
Integer(1)
Integer(1.0)
Integer('1')
Integer('')
''.to_i
exit
ls
!!
!
ls
@_action_name
!$
;
!
@_headers
$!
$!.backtrace
$!.message
exit
e = $!
e.class
e.methods - Object.methods
e.original_exception
e.file_name
e.source_extract
e.line_number
e.annoted_source_code
e.cause
e.blamed_files
e.describe_blame
e.backtrace_locations
e.message
e.original_exception.message
exit
@error.source_extract
puts @error.source_extract
@error.source_extract.split('\n')
@error.source_extract.split("\n")
exit
params
!!!
params
!!!
params
!!!
params
!!!
params
!!!
params
!!!
params
params[:badge_ids]
params[:badge_ids].reject { |x| x[1] == 'false' }
params[:badge_ids].reject { |x| puts x; x[1] == 'false' }
params[:badge_ids].reject { |x| puts x.inspect; x[1] == 'false' }
params[:badge_ids].reject { |k, v| puts k, v; v == 'false' }
params[:badge_ids].reject { |k, v| v == 'false' }
params[:badge_ids].reject { |k, v| v == 'false' }.map { |(k, v)| k.split('-').last }
params[:badge_ids].reject { |k, v| v == 'false' }.map { |(k, v)| k.split('-').last }!!!
!!!
Assignment.all
exit
Assignment.all
exit
assignment
current_instructor
current_instructor.current_cohort
exit
assignment
assignment.save!
assignment.due_date DateTime.now
assignment.due_date = DateTime.now
assignment.save!
exit
Assignment.all
exit
Assignment.all
params
exit
DateTime.parse
DateTime.parse(01/02/2015)
DateTime.parse(01/02/2015')
DateTime.parse('01/02/2015')
xit
exit
records
Assignment.by_week(records)
records.group_by { |x| x.due_date }
records.group_by { |x| x.due_date.beginning_of_week }
Assignment.all
records.group_by { |x| x.due_date.beginning_of_week.to_date }
exit
ls
whereami 50
submission
completed
authorize
authorize submission
authorize submission, mark_complete?
authorize submission, :mark_complete?
current_instructor
current_instructor.students
current_instructor.has_student(Student.first)
current_instructor.has_student?(Student.first)
current_instructor.has_student?(submission.student)
exit
user
exit
ENV['ASSET_HOST']
ENV
exit
User.all
User.first.instructor
Cohort.all
exit
page
exit
find(:xpath, "//tr[contains(.,'Rails Summer')]/td/a", :text => 'Select')
find(:xpath, "//tr[contains(.,'Rails Summer')]/td/a"
)
find(:xpath, "//tr[contains('Rails Summer')]/td/a"
)
find(:xpath, "//tr[contains(.,'Rails Summer')]/td/a"
)
find(:xpath, "//tr/td/a")
exit
find(:css, 'a[data-id=2]')
find(:css, 'a[data-id="2"]')
page.html
puts page.html
exit
find(:css, 'a[data-id="2"]')
find(:css, 'a[data-id=2]')
puts page.html
Cohort.all
page
exit
puts page.html
find(:css, 'a[data-id=2]')
find(:css, 'a[data-id="2"]')
exit
page.html
exit
page.html
visit staff_cohort_path
visit staff_cohorts_path
page.html
sign_in(:instructor)
Instructor.all
User.all
instructor
User.all
exit
sign_in(:instructor)
exit
Features
Devise
require 'support/features/session_helpers.rb'
Features
Dir[File.join(File.dirname(__FILE__), 'support' '**', '*.rb')]
File.join(File.dirname(__FILE__), 'support' '**', '*.rb')
File.join(File.dirname(__FILE__), 'support', '**', '*.rb')
Dir[File.join(File.dirname(__FILE__), 'support', '**', '*.rb')]
exit
cohort
Cohort.all
Cohort.first
Cohort.first.assignments
Cohort.first.submissions
Cohort.first.assignments.map(&:submissions)
Cohort.first.students
Cohort.first.days
Cohort.first.checkins
Cohort.first.days.map(&:checkins)
Adjustment.all
exit
user
user.student
user.student.cohort
user.student.cohort = cohort
user.student.save
user.student.save!
user.email = 'user@example.com'
user
user.student.cohort
user.student.save!
user
user.email
user.student
user.student.cohort
user.email = 'user@example.com'
user.save!
exit
resource
params
params[:cohort_id]
exit
resource
resource.save
resource.student
resource.student.build
resource.students
resource.student = Student.create(cohort_id: params[:cohort_id])
resource.student
resource.save!
resource.email = 'example-student-2@example.com'
resrouce
resource
resource.student
resource.save
resource
resource.student
resource.cohort
resource.student.cohort
exit
assignment
assignment.tags
assignment.assignment_tags
assignment.save
assignment
assignment.errors
assignment.assignment_tags
assignment.assignment_tags.first
assignment.assignment_tags.first.save
a = assignment.assignment_tags.first
a.save
a.errors
a.assignment
assignment
assignment.assignment_tags
assignment.assignment_tags.map(&:assignment_id)
assignment.assignment_tags.map { |x| x.assignment_id = assignment.id }
assignment.assignment_tags
exit
whereami 50
fizzbuzz(1)
fizzbuzz(3)
exit
fizzbuzz(3)
fizzbuzz(1)
fizzbuzz(15)
fizzbuzz(5)
exit
fb(1)
fb(3)
fb(5)
fb(9)
fb(15)
fb(2000)
fb(2001)
fb(2002)
exit
main
exit
main
exit
whereami 50
ia = IArray.new
ia.push(1)
ia << '1'
exit
whereami 50
square = -> x { x * x }
square | :upcase
(square | :upcase).call(2)
square[1]
double = -> x { x * 2 }
double_square = double | square
double_suq
double_square[2]
2 * 2
4 * 4
double | :succ
_[1]
(double | map)[1]
def pretty_print(x)
  "The number is #{x} "
end
def pprint(x)
  "The number you got is #{x}"
end
pprint(x)
pprint
pprint 1
def display(x)
  puts "The number you got is #{x}"
end
display 1
(double | double | display)[1]
(double | double | :display)[1]
(double | double | square | :display)[1]
(double | double | square | double | display)[1]
(double | double | square | double | :display)[1]
exit
double = -> x { x * 2 }
(double | double)[1}
(double | double)[1]
exit
double = -> x { x * 2 }
(double | double)[1]
exit
def <|(foo)
exit
double = -> x { x * 2 }
(double | double)[1]
exit
(double | double)[1]
double = -> x { x * 2 }
(double | double)[1]
(double | Random)[1]
exit
double = -> x { x * 2 }
(double | Random)[1]
(double | [Random, :rand])[1]
Random.methods false
Random.rand
Random.send(:rand)
[Random, :rand]
a = _
a.first.send(a.last)
method(Random.rand)
method(:Random.rand)
method()
Random.method
Random.method(:rand)
Random.method(:rand).to_proc
exit
double = -> x { x * 2 }
(double | [Random, :rand])[1]
Array.methods false
Fixnum.methods false
String.methods false
Math.methods false
(double | [Math, :sin])[1]
(double | [Math, :sin])[2]
(double | [Math, :sin])[4]
(double | [Math, :sin] )[4]
exit
(double | square)[3]
double
square
(double | square)
(double | square)[3]
exit
(double | square)
(double | square)[3]
(double | square | display)[3]
(double | square | :display)[3]
(double | square | :display )[3]
exit
(double | square | :display )[3]
exit
(double | square | :display )[3]
exit
(double | square | :display )[3]
(double | square | :display | square )[3]
(double | square | :display )[3]
exit
(double | square | :display )[3]
1 | 1
1 | 3
-> x { x * x } | -> y { x ** 3 }
(-> x { x * x } | -> y { x ** 3 })[1]
(-> x { x * x } | -> y { y ** 3 })[1]
(-> x { x * x } | -> y { y ** 3 })[2]
width = (
  -> x { x / 2 } |
  -> x { x + 23.5 } |
  -> x { x - 12 }
)[1280]
exit
width = (-> x { x * 2 }).then(-> x { x * 2 })
width = (-> x { x * 2 }).then(-> x { x * 2 })[4]
width = (-> x { x * 2 }).then(:display)
width = (-> x { x * 2 }).then(:display)[2]
exit
width = (-> x { x * 2 }).then(:display).with(5)
exit
Pipeline.then(-> x { x * 2}).then(:display).with(5)
Pipeline.then(-> x { x * 2}).then(:display)
Pipeline.then(-> x { x * 2}).then(:display).call(4)
exit
Pipeline.then(-> x { x * 2}).then(:display).call(4)
exit
Pipeline.then(-> x { x * 2}).then(:display).call(4)
Pipe.then(-> x { x * 2}).then(:display).call(4)
Pipe
exit
().then(:display)
0.then(:display)
Object.new.then(:display)
(-> x { x }).then(:display)
exit
0.then(:display)
0.then(:display)[0]
(-> x { x }).then(:display)
(-> x { x }).then(:display).with(4)
Object.new.then(:display).with(4)
double.then(triple).then(:display)
double.then(square).then(:display)
double.then(square).then(:display).with(4)
double.then(square).then(:display).then(square)with(4)
double.then(square).then(:display).then(square).with(4)
def thing(x)
  nil
end
double.then(:thing).then(double).with(4)
double.then(5)
exit
double.then(5)
double.with(5)
double.with(nil)
double.then(nil)
nil.class
exit
double.then(nil)
double.then(nil).with(5)
exit
cohort
day
self
ls
exit
val
val.class
params
self
val.in_time_zone.(tz)
val.in_time_zone(tz)
val.in_time_zone(tz).beginning_of_day
exit
params
cohort_params
exit
user
user.instructor.has_student? record.student
record.sttudent
record.student
record.student.cohort
record.student.cexit
0exit
exit
@report.errors
exit
@report.errors.methods
@report.errors.messages
@report.errors.full_messages
@report.errors.full_message
@report.errors.full_message(:day)
@report.errors.full_messages
@report.errors.full_messages.join(', ')
exit
@out
@io
ls
exit
@todos
todo
todos
@todos.class
exit
class Foo
  attr_accessor :apple,
  def baz
    "foo"
  end
end
f = Foo.new
f.apple
f.baz
f.methods
f.baz = 5
f.baz
exit
class Foo
  def initialize(default = case $glob
      when "foo" then (def foobar; "hi!" end)
      end
    )
    @default = default
  end
end
Foo.new
f = _
f.methods
$glob = 'foo'
Foo.new
Foo.new.methods
class Foo
  attr_accessor :bar,
  :baz,
  
  def initialize(foo)
    @foo = foo
  end
end
Foo.new
Foo.new('foobar')
Foo.new.methods
Foo.new.methods.take(5)
Foo.new.methods.take(7)
Foo.new.methods.take(6)
exit
[1, 2, 3, 4]
Object.new
help
ls
exit
whereami
whereami 50
ls
n
exit
n
exit
n
foobar
Card.new
Card.new.methods
Card.new.display
exit
ls
exit
User
User.connection
User
User.first
me = User.first
me.name
me.name = "Justin Herrick"
me
User.first
me.save
User.first
["Travis", "Ryan"].each do |name|
  User.create(name: name)
end
User.last
User.all
User.find(1)
User.find(3)
User.find(2)
User.find(5)
User.where(name: 'Ryan')
User.all
User.count
User.methods - Object.methods
(User.methods - Object.methods).count
(User.new.methods - Object.methods).count
(User.new.methods - Object.methods)
a = User.new
a.name = 'foobar'
a.persisted?
exit
a
User.all
["Travis", "Ryan"].each do |name|
  u = User.
  new
  u.name = name
  u.save
end
User.all
User.last
User.where(name: "Travis")
results = User.where(name: "Travis")
results.first
cd = results.first
exit
results = User.where(name: "Travis")
cd = results.first
results.first
campus_director = results.first
campus_director.name = "Travis Swicegood"
campus_director.save
results = User.where(name: "Travis")
User.where(name: "Travis").to_sql
User.first.to_sql
User.find(2).to_sql
User.all
User.matches
exit
User.where(name: "JAXCK")
User.where(name: "JAXCK").first
Game.new
Game.new.start
User.all
Game.new.start
User.all
exit
Game.new.start
exit
Game.new.start
eit
exit
Game.new.start
User.where.not(score: 0).order(score: :DESC).to_sql
exit
User.all
User.where.matches
User.where.methods - Object.methods
User.where(User.arel_table[:name].matches('%avis%')
)
exit
"add_user_table".split('_')
"add_user_table".split('_').map(&:capitalize)
"add_user_table".split('_').map(&:capitalize).join
exit
"add_user_table".split('_').map(&:capitalize).join
"AddUserTable".split('_').map(&:capitalize).join
"AddUserTable".split('_').map { |x| x.chars.first = x.chars.first.upcase }.join
"AddUserTable".split('_').map { |x| x.chars[0] = x.chars.first.upcase }.join
"AddUserTable".split('_').map { |x| x.chars[0] = x.chars.first.upcase; x }.join
exit
"foo".camel_case
whereami 60
"hello-world".snake_case
"hello-world".modularize
exit
"hello-world".modularize
whereami 60
"foo-bar".split(/[_-]/)
"foo-bar".split(/[_-]/).map { |x| x.capialize }
"foo-bar".split(/[_-]/).map { |x| x.capitalize }
"foo-bar".split(/[_-]/).map { |x| x.capitalize }.join
"fooBar".split(/[_-]/).map { |x| x.capitalize }.join
"foo-bar".split(/[_-]/).map { |x|  }.join
"foo-bar".gsub(/\w+/, &:capitalize)
"fooBar".gsub(/\w+/, &:capitalize)
"fooBar".chars
"fooBar".chars.first.upcase
"fooBar".chars.first.upcase + "fooBar".chars.drop(1)
["fooBar".chars.first.upcase] + "fooBar".chars.drop(1)
(["fooBar".chars.first.upcase] + "fooBar".chars.drop(1))
(["fooBar".chars.first.upcase] + "fooBar".chars.drop(1)).join
exit
Time.new
Time.new(2000, 10, 10)
exit
def where(query)
  if query.is_a?(Symbol)
    # ... do lookup as a symbol
  elsif query.is_a?(String)
    #... run sql fragement
  end
end
exit
chosen_letters = %w(a b d e l m n)
chosen_letters.to_s
chosen_letters.to_s.to_a
chosen_letters
chosen_letters.join("~")
serialized_choices = chosen_letters.join("~")
serialized_choices.split('~')
def serialize(str)
  str.join('~')
end
def deserialize(str)
  str.split('~')
end
chosen_letters.map { |letter| letter.codepoint }
chosen_letters.map { |letter| letter.code }
chosen_letters.map { |letter| letter.chr }
"a".methods
chosen_letters.map { |letter| letter.byteslice }
chosen_letters.map { |letter| letter.getbyte }
"a".methods
chosen_letters.map { |letter| letter.bytes }
chosen_letters.map { |letter| letter.bytes }.join('~')
'1'.bytes
'a'.bytes
'z'.bytes
'Z'.bytes
'A'.bytes
010110101010101011010101010110
exit
User.all
exit
File.open('/usr/lib/dict').read
exit
File.read('/usr/share/dict/')
exit
Game.new
Game.new.turn += 1
exit
Game.all
exit
Game.all
exit
word = 'hello'
guesses = ['a', 'c', 'e']
puts "-" * word.length
word
word.chars
word.chars.each do |char|
  if guesses.include?(char)
    print char
  else 
    print "_"
  end
end
guesses << 'l'
word.chars.each do |char|
  if guesses.include?(char)
    print char
  else
    print "_"
  end
end
exit
word = "apple"
guesses = %w(a p p l d x n e)
guesses.map do |l|
  word.chars.map do |char|
  end
end
guesses.all? do |letter|
  word.include?(letter)
end
guesses.each do |guess|
  wns
end
guesses.select do |guess|
  guess if word.include?(guess)
end
guesses.select { |guess| guess if word.include?(guess) }.join
guesses.select { |guess| guess if word.include?(guess) }.join == word
guesses.select { |guess| guess if word.include?(guess) } == word.split(//)
guesses.select { |guess| guess if word.include?(guess) } == word.chars
guesses.select do |guess|
  if word.include?(guess)
    return guess
  else
    nil
    en
    d
  end
end
guesses
guesses.pop
guesses
guesses.shift
guesses
guesses.push(a)
guesses << 'a'
guesses << 'p'
guesses << 'e'
guesses.select { |guess| guess if word.include?(guess) }.join == word
guesses.select { |guess| guess if word.include?(guess) }.join.sort == word.sort
guesses.select { |guess| guess if word.include?(guess) }.sort.join == word.chars.sort.join
guesses.select { |guess| guess if word.include?(guess) }.sort.join
word
word.chars.select { |char| char if guesses.include?(char) }
word.chars.select { |char| char if guesses.include?(char) }.join == word
word.chars.select { |char| char if guesses.include?(char) }
word
guesses.select { |guess| guess if word.include?(guess) }
word
guesses
wrong_guesses = ['z']
word.chars.select { |char| char if wrong_guesses.include?(char) }
word.chars.select { |char| wrong_guesses.include?(char) }
word.chars.select { |char| guesses.include?(char) }
exit
load 'lib/currency.rb'
Currency.new
a = Currency.new
a.amount
a.amount = 1
a.dollars
a + Currency.new
exit
Dir.exist?('db')
Dir.exist?('foo')
exit
url = "GET http://localhost:3000/todos/1 HTTP/1.1"
url.split(' ')
a, b, c = url.split(' ')
a
b
c
b
c
b
b.split('/')
uri_frags = b.split('/')
uri_frags[0]
uri_frags[0].chomp
uri_frags[0].slice(0,-1)
uri_frags[0][0..-1]
uri_frags[0][0..1]
uri_frags[0][0..2]
uri_frags[0][0..-1]
uri_frags[0][0..-2]
uri_frags[0].drop(1)
uri_frags
c
c.split('/')
c.split('/').last
exit
pebble
pebble.methods
exit
[10] * 4
[25] * 3
3.times do 
  [].push(25)
end
[[10, 10]]
[[10, 10]].flatten
Array.new
Array.new(5)
Array.new(5, 25)
Array.new(2, 1)
exit
*(1..9)
a = *(1..9)
[1, 2, 3, 4, 5].each do |n|
  puts n
end
[1, 2, 3, 4, 5].each do |n|
  puts n
end
class User
  def self.with_name(name)
    new(name)
  end
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end
class Wheel
  def self.next_batch
    [new] * 10
  end
  def spin
    "*spins*"
  end
  def spokes
    8
  end
end
Wheel.new
Wheel.new.spokes
Wheel.next_batch
class Changer
  def self.run(n)
    #...
  end
end
def run(n)
end
Kernel
module Changer
  def self.run(n)
  end
end
class Changer
  def self.run(n)
  end
  def quarter
    25
  end
  def dime
    10
  end
  def pennies
    1
  end
  def self.knickles
    5
  end
end
Changer.methods - Object.methods
Changer.new.methods - Object.methods
class User
  def User.new_drinker(name)
    new(name, 21)
  end
  def User.new_baby(name)
    new(name, 0)
  end
  def initialize(name, age)
    @name = name
    @age = age
  end
end
User.new_drinker("Justin")
User.new_baby('Joelle')
User.new('foobar', 55)
exit
def fizzbuzz
  (1..100).to_a.each do |n|
    if n % 5 == 0 && n % 3 == 0 
      puts 'fizz buzz'
    elsif n % 5 == 0
      puts 'buzz'
    elsif n % 3 == 0
      puts 'fizz'
    else
      puts n
    end
  end
  fizzbuzz
end
fizzbuzz
def fizzbuzz
  (1..100).to_a.each do |n|
    if n % 5 == 0 && n % 3 == 0 
      puts 'fizz buzz'
    elsif n % 5 == 0
      puts 'buzz'
    elsif n % 3 == 0
      puts 'fizz'
    else
      puts n
    end
  end
end
fizzbuzz
fizzbuzz; nil
exit
params = {
  messages: ''
}
params[:message]
params[:messages]
exit
rand(0.0..4.0)
(0.0..4.0).step(0.1)
(0.0..4.0).step(0.1).to_a
(0.0..4.0).step(0.2).to_a
(0.0..4.0).step(0.2).to_a.map { |n| round(n, 2) }
(0.0..4.0).step(0.2).to_a.map { |n| n.round(2) }
(0.0..4.0).step(0.2).to_a.map { |n| n.round(2) }.sample
exit
zip = "08734"
zip.to_i
zip.to_i.to_s
exit
Scores.all
Score.al;
Score
Score.all
Score.first
Score
exit
Score.all
Score
exit
Tilt
Tilt.new
Tilt.new('application/index.html.hiccup')
Tilt.methods
Tilt.methods - Object.methods
exit
Tilt.new('application/index.html.hiccup')
Tilt.new('/application/index.html.hiccup')
exit
ls
context
exit
ls
data
parse(data)
exit
scope
scope.binding
scope.binding.methods - Object.methods
scope.binding.local_variables
exit
ls
locals
scope
scope.binding
scope.binding.local_variables
file
scope
exit
scope
scope.binding
scope.binding.methods - Object.methods
scope.binding.local_variables
scope.binding.callers
whereami 10
scope.call
scope.call('foo', 'bar')
methods
methods(false)
self.methods - Object.methods
view_assigns
whereami 50
define_method
self.define_method
exit
ls
whereami 50
scope
scope.binding
scope.binding.local_variables
exit
scope.binding.local_variables
scope
scope.methods - Object.methods
exit
wit
wit.valid?
wit.errors
exit
Parser.parse("(this 'is' a 'test' (9.8 10))")
exit
Parser.parse('(this "s" a "test" (9.8 10))')
exit
Parser.parse('(this "s" a "test" (9.8 10))')
exit
Parser.parse('(this "s" a "test" (9.8 10))')
s
self
@@parser.parse(data)
@@parser.parse(data).methods
@@parser.index
@@parser.methods - Object.methods
@@parser.failure_index
@@parser.failure_line
exit
Parser.parse('(this "s" a "test" (9.8 10))')
parser.methods - Object.methods
parser.has_terminal?
parse.input
parse.input(3)
parser.parse
parser.parse(data)
parser.parse("5")
parser.parse(" ' hello '")
parser.parse(' "Hello" ')
parser.parse('5 5')
parser.parse('5 ')
parser.parse('5')
Parser.parse('(this "is" a test( 1 2.0 3))')
s
exit
Parser.parse('(this "is" a test( 1 2.0 3))')
exit
Parser.parse('5')
Parser.parse('"f"')
Parser.parse('(5)')
Parser.parse('5')
Parser.parse('5.89')
exit
Parser.parse('5.89')
Parser.parse('5')
Parser.parse('"5"')
exit
Parser.parse('"5"')
Parser.parse('5')
Parser.parse('()')
Parser.parse('(5)')
Parser.parse('(this "is" a test( 1 2.0 3))')
exit
Parser.parse('(this "is" a test( 1 2.0 3))')
exit
Parser.parse('(this "is" a test( 1 2.0 3))')
exit
Parser.parse('(this "is" a test( 1 2.0 3))')
exit
Parser.clean_tree(Parser.parse('(this "is" a test( 1 2.0 3))'))
exit
Parser.clean_tree(Parser.parse('(this "is" a test( 1 2.0 3))'))
exit
Parser.clean_tree(Parser.parse('(this "is" a test( 1 2.0 3))'))
exit
Parser.clean_tree(Parser.parse('(this "is" a test( 1 2.0 3))'))
exit
Parser.clean_tree(Parser.parse('(this "is" a test( 1 2.0 3))'))
exit
Parser.clean_tree(Parser.parse('(this "is" a test( 1 2.0 3))'))
exit
Parser.clean_tree(Parser.parse('(this "is" a test( 1 2.0 3))'))
Parser.parse('(this "is" a test( 1 2.0 3))')
exit
Parser.parse('(this "is" a test( 1 2.0 3))')
exit
Parser.parse('(this "is" a test( 1 2.0 3))')
eval("is")
exit
eval("is")
Parser.parse('(this "is" a test( 1 2.0 3))')
eval("is")
exit
Parser.parse('(this "is" a test( 1 2.0 3))')
self
self.methods - Object.methods
self.dot_id
self.elements
self.offset
self.parent
self.parent.methods - Object.methods
self.parent.text_values
self.parent.text_value
exit
Parser.parse('(this "is" a test( 1 2.0 3))')
exit
Parser.parse('(this "is" a test( 1 2.0 3))')
exit
Parser.parse('(this "is" a test( 1 2.0 3))')
e.methods - Object.methods
exit
Parser.parse('(this "is" a test( 1 2.0 3))')
exit
Parser.parse('(this "is" a test( 1 2.0 3))')
exit
Parser.parse('(this "is" a test( 1 2.0 3))')
exit
Parser.parse('(this "is" a test( 1 2.0 3))')
Parser.parse('(this "is" a test( 1 2.0 3))').map(&:eval)
exit
Parser.parse('(this "is" a test( 1 2.0 3))').map(&:eval)
Parser.parse('(+ 1 1)').map(&:eval)
Parser.parse('1').map(&:eval)
Parser.parse('(foo 1)').map(&:eval)
Parser.parse('(foo 1)').map(&:to_array)
exit
Parser.parse('(foo 1)').map(&:to_array)
Parser.parse('(foo 1)').map(&:eval)
exit
Parser.parse('(foo 1)').map(&:eval)
self.elements
exit
Parser.parse('((foo 1))').map(&:eval)
exit
self
self.elements
self.elements[0]
self.elements[1]
self.elements.count
exit
Parser.parse('((foo 1))').map(&:eval)
Parser.parse('((foo 1))')
Parser.parse('(foo : String -> Integer (foo 1))')
Parser.parse('(foo : String -> Integer) (foo 1))')
Parser.parse('((foo : String -> Integer) (foo 1))')
exit
Parser.parse('((foo : String -> Integer) (foo 1))')
exit
Parser.parse('((foo : String -> Integer) (foo 1))')
Parser.parse('(foo : String -> Integer (foo 1))')
Parser.parse('(foo:String->Integer (foo 1))')
Parser.parse('(foo : String -> Integer (foo 1))')
Parser.parse('((foo : String -> Integer) (foo 
')
Parser.parse('((foo:String->Integer) (foo 1))')
Parser.parse('((foo:String->Integer)(foo 1))')
Parser.parse('(foo:String->Integer (foo 1))')
Parser.parse('foo:String->Integer (foo 1)')
Parser.parse('(foo 1)')
Parser.parse('(foo)')
Parser.parse('(foo:)')
Parser.parse('(foo :)')
Parser.parse('(foo "")')
Parser.parse('(foo )')
exit
Parser.parse('(foo )')
Parser.parse('(foo: )')
Parser.parse('(foo : )')
Parser.parse('(foo)')
exit
@ui
@ui.methods
@ui[]
@ui[1]
@ui[:foo]
@ui.methods
@ui.methods - Object.methods
@ui.priority
@ui.keys
@ui.run
@ui.alive?
@ui.stop?
@ui.safe_level
@ui.group
@ui.group.methods
exit
ei
exit
@events
exit
@events
exit
@events
exit
@events
File.methods - Object.methods
exit!!!
!
!!!
File.new('log.txt', 'A+').write('foobar')
File.new('log.txt', 'W+').write('foobar')
File.new('log.txt', 'W').write('foobar')
File.new('log.txt', 'w').write('foobar')
File.new('log.txt', 'W') do
end
File.open('log.txt', 'W') do |f|
  f.puts "hello"
end
File.open('log.txt', 'w') do |f|
  f.puts "hello"
end
exit
File.open('log.txt', 'w')
@log = _
(@log.methods - Object.methods).sort
@log.puts "hello"
@log
@log.save
@log.close
exit
@log = File.open('log.txt', 'w')
@log.methods - Object.methods
@log
@log.write('foobar')
@log.sync
@log.sync = true
@log.sync
@log.syswrite
@log.syswrite 'foobaz'
@log.fsync
@log.close
@log
exit
@log = File.open('log.txt', 'w')
@log.write('foobar')
@log.sync
@log.fsync
@log.puts 'foo baz'
@log.fsync
@log.close
exit
queue = [1, 2, 3]
queue.shift
queue
queue.unshift
queue
queue.push(5)
queue
queue.push(6)
queue.pop
queue.shift
exit
Worker.new
whereami 50
Event.new(:name) do
  puts "hello"
end
e = _
e.payload
e.payload.call
w = Worker.new(e, Logger.new)
w.work
exit
User.all
Score.all
exit
Score.all
exit
str = "coffee"
str.first
str[0]
str[1..-1]
str[0..3]
str[0..1]
str[0..-1]
str[1..-1] + str[0] + "ay"
str
str.chars
str.chars.drop
str.chars.drop(0)
str.chars.drop(1)
str.chars.drop(1) << str.chars.first << 'a' << 'y'
(str.chars.drop(1) << str.chars.first << 'a' << 'y').join
str.chars.cycle
str.chars.cycle.to_a
str.chars.cycle.first
str.chars.rotate
str.chars.rotate << 'ay'
(str.chars.rotate << 'ay').join
str.rotate
str.chars.rotate.join
exit
require 'digest/sha1'
Digest::SHA1.hexdigest
Digest::SHA1.hexdigest "mypassword11111"
encrypted_password = Digest::SHA1.hexdigest "mypassword11111"
encrypted_password
encrypted_password == Digest::SHA1.hexdigest "mypassword11111"
encrypted_password == Digest::SHA1.hexdigest("mypassword11111")
encrypted_password == Digest::SHA1.hexdigest("mypassword2222")
encrypted_password == Digest::SHA1.hexdigest("mypassword11111")
exit
[1, 2, 3, 4, 5].each do |n|
  puts 2 * n
end
[1, 2, 3, 4, 5].each do |student|
  puts 2 * student
end
exit
items = [ 1 , 3, 188, 90]
items.delete(188)
items
def fizzbuzz(n)
  {
    'fizz' => ((n % 3).zero? && !(n % 5).zero?),
    'buzz' => ((n % 5).zero? && !(n % 3).zero?),
    'fizzbuzz' => (n % 15).zero?
  }.key(true)
end
fizzbuzz(1
)
fizzbuzz(3)
fizzbuzz(5)
fizzbuzz(7)
fizzbuzz(15)
exit
options = {
  name: "Full Name",
  age: "Your Age",
  zip: "Your Zipcode"
}
puts options[:name]
puts options[:age]
exit
options = {
  name: "Full Name",
  age: "Your Age"
}
options.key("Full Name")
options.key("Your Age")
exit
[1, 2, 3, 4, 5].delete(4)
a = [ 1 , 2, 3, 4, 5]
a.delete(5)
a
a.delete(2)
a
exit
str.scan(/.{1,col}/)
"foobar".scan(/.{1,4}/)
"foobar it is I beans tada!".scan(/.{1,6}/)
"foobar it is I beans tada!".scan(/.{1,6}/).join("\n")
"foobar it is I beans tada!".scan(/.{1,6}/).join("\n")class Wrapper
def wrap(string, columnnum)
  columnnum = columnnum.to_i
  new_string = string.split(string, 3)
  puts new_string
end
record = Wrapper.new
record.wrap("Michelleeeeeeee", 3)
class Wrapper
  def wrap(string, columnnum)
    columnnum = columnnum.to_i
    new_string = string.split(string, 3)
    puts new_string
  end
end
record = Wrapper.new
record.wrap("Michelleeeeeeee", 3)
Wrapper.new.wrap('foooooobar', 3')
')
)
Wrapper.new.wrap('foooooobar', 3)
exit
ls
url = 'https://github.com/rpoplawski/Building_a_blog.git'
url.ends_with?
url.end_with?
url.end_with?('.git')
url.split('/')
url.split(%r{[\/\.]})
url.split(%r{[\/\.]}).[-3..-2]
url.split(%r{[\/\.]})[-3..-2]
url.split(%r{[\/\.]})[-3..-2].join('-')
dir_name = url.split(%r{[\/\.]})[-3..-2].join('-')
`pbcopy "git clone #{git_url} #{dir_name} && cd #{dir_name} && bundle install && rake db:setup && atom . && rails s"`
git_url = url
`pbcopy "git clone #{git_url} #{dir_name} && cd #{dir_name} && bundle install && rake db:setup && atom . && rails s"`
exit
str = "foo bar"
my_str = str + ("bar" unless str.end_with?("bar"))
my_str = str + ("bar" unless str.end_with?("bar")).to_s
str = 'fizz'
my_str = str + ("bar" unless str.end_with?("bar")).to_s
my_str = "#{str}#{"bar" unless str.end_with?("bar")}"
str = 'fizz'
my_str = "#{str}#{"bar" unless str.end_with?("bar")}"
str = 'fizzbar'
my_str = "#{str}#{"bar" unless str.end_with?("bar")}"
puts """
foobar
and
foobar
and
fizzbuzz
"""
exit
def say_hi(msg = 'no message')
  puts msg
end
say_hi "foobar"
say_hi
exit
class Ball
  def initialize(ball_type = 'regular')
    @ball_type = ball_type
  end
  def ball_type
    @ball_type
  end
end
Ball.new
Ball.new('super')
[1, 2, 3, 4, 5].reduce(:+)
[].reduce(:+)
exit
params = Hash.new { Hash.new }
params[:foobar][:hell] = :nope
params
params[:foobar]
params[:foobar] = {}
params[:foobar]
exit
word = "Ta. co, cat"
word.downcase.reverse
normalized_word = word.downcase.reverse
normalized_word.gsub(/[^a-z]/, '')
normalized_word.gsub(/[^a-z]/, '*')
normalized_word.gsub(/[^a-z]/, '')
exit
proc_double = proc { |x| x * 2 }
proc_double.call
proc_double.call(2)
proc_double.call(2, 2)
proc_double.call(2, 109999)
lambda_double = -> (x) { x * 2 }
lambda_double.call
lambda_double.call(2)
lambda_double.call(2, 3)
lambda_double.lambda?
proc_double.lamda?
proc_double.lambda?
double = proc { |x| x * 2 }
exit
class User
  def name
    "Jake"
  end
end
user = User.new
name = User.new.name
user
name
user
usedr
user
name
lk;jadf;lkajs;dlfkjasd;lfkjasd;flkjds;lfkajsd;flkajsd;lfkajsd;flkasjdflk;adjf
class SuperUser < User
end
me = SuperUser.new
me
me.name
me.class.ancestors
me.send(:name)
me.foobar
jill = nil
jill.name
jill.name if jill
@user.full_name
@cheese.flambe
@cheese
@user
10...100
(10...100
(10...100))
(10...100).each { |a| puts a }
(10...50).reduce(:+)
(10...50).select { |n| n.even? }
(10...50).reject { |n| n.even? }
(10...50).partition { |n| n.even? }
class User
  def initialize(board, score = 0)
    @board = board
    @score = score
  end
  def print_board
    board.print
  end
end
User.new
class Board
  def print
    " xo xox ox xo "
  end
end
User.new(Board.new, 1000000)
user = _
user
user.board
user.print_board
class User
  def print_board
    @board.print
  end
end
user.print_board
"okaY".swapcase
exit
require 'securerandom'
SecureRandom.uuid
SecureRandom.hex(64)
SecureRandom.hex(1)
SecureRandom.hex(5)
exit
class User
  attr_accessor :private
end
u =User.new
u.private
u.private = true
u.private = 'f'
u.private
class User
  def is_private?
    self.private
  end
end
u = User.new
u.is_private?
class User
  def is_p?
    private
  end
end
User.new.is_p?
exit
current_user.company.rooms.to_json(include: :building)
a = _
a.class
"{ rooms: #{current_user.company.rooms.to_json(include: :building)} "
"{ rooms: #{current_user.company.rooms.to_json(include: :building)} }"
exit
"Howdy Alexandra,
Congrats! I’m excited to let you know that we’ve got a spot for you in the Backend Engineering class that starts February 1!
Next Steps!
We need you to complete the following two things to reserve your spot. Your spot isn’t guaranteed until you get both of these taken care of.
Sign the admissions agreement (you can do it all digitally, no need to print and sign)
There’s a $1,000 reservation fee to secure your spot.  You can pay online with a card of your choice: https://app.moonclerk.com/pay/3v0sxn7r3p1
I’ve attached our campus bulletin. It contains some more info about the campus and details on all the courses and such. If you have any questions about it, please shoot me an email.
Financing
You had applied for the diversity and it was accepted! This note is to amend the student agreement to be a total of $11,000 (that’s $12,000 minus the $1,000 diversity scholarship).
For the remainder of tuition, you can either pay the full amount or pursue financing through Climb Credit, our financing partner. Additionally, you can explore other options such as your local bank or Upstart.
If you’d like to use Climb Credit, use this link: https://www.climbcredit.co/apply/IY5092734872357/
Pre-Work
There’s some pre-work so you can hit the ground running.  Justin will be in touch with that closer to time to start (if they haven’t already!).
I’m super excited to get you started! Look forward to seeing you around the campus in February!!
Have an awesome day!
-- 
Travis Swicegood
Campus Director @TheIronYard in Austin
512.693.7051 | @tswicegood (most everywhere)"
a = _
a.count("!")
a.count("!!")
a.count('!!')
a.count { |x| x =~ /!!/ }
a.count
a.size('!')
exit
a.size('!')response
response
response.class
response.methods
response - Object.methods
response.methods - Object.methods
response.methods - String.methods
response.to_json_raw
response
response.state
response
response.body
response.headers
response.code
JSON.parse(response)
exit
schedule = [
  {name: "Northeast Zephyr", time: "8:36 AM"},
  {name: "Western Cannonball", time: "12:18 PM"},
  {name: "Southern Greased Pig", time: "4:27 PM"},
]
schedule.group_by(:name)
schedule.map(&:name)
schedule.map { |x| x[:name] }
schedule.map { |x| x[:name] }.max(:size)
schedule.map { |x| x[:name] }.max(1)
schedule.map { |x| x[:name] }.max(2)
schedule.map { |x| x[:name] }.max_by { |x| x.length |
}
schedule.map { |x| x[:name] }.max_by { |x| x.length }
schedule.max_by { |x| x[:name].length }
schedule.group_by { |x| x[:name].length }
schedule.group_by { |x| x[:name].length }.max
schedule.group_by { |x| x[:name].length }.max.first
exit
c = 1
[1, 2]
[1, 2].delete(c)
d = [1, 2]
d.delete(c)
d
d.first.succ
d
d = [1, 2]
d.reject { |e| e == c }
d.reject { |e| e == c }.first
d.reject { |e| e == c }.first.succ
exit
User.new(email: email)
a = _
a.save!
exit
doorkeeper_token
User.count
User.all
doorkeeper_token
User.first.id
exit
doorkeeper_token
DoorKeeperToken
DoorkeeperToken
User
Doorkeeper::AccessToken
exit
"111111111".length
"1100".length
"000000000".length
"000000000000000".length
"00 ".length
"0000".length
Time.now
exit
exit
class Post
  def published
    @query = "SELECT * FROM posts WHERE published = 't'"
    self
  end
  def by_author(name)
    if @query
      @query += " AND name = #{name}"
    end
    self
  end
  def execute
    puts @query
  end
end
post = Post.new
post.published
post.published.by_author('phil')
post.published.by_author('phil').execute
exit
load 'post.rb'
Post.new
p = _
p.execute
p.published.by_author('justin')
p.published.by_author('justin').execute
exit
load 'post.rb'
Post.new
p = _
p
p.published.by_author('phil')
p.published.by_author('phil').execute
exit
p = Post.new
p.published.execute
exit
PostRepository.new(:posts)
PostRepository.new(:posts).published
PostRepository.new(:posts).published.execute
exit
PostRepository.new(:posts).published.execute
exit
PostRepository.new(:posts).published.execute
PostRepository.new().published.execute
PostRepository.new
PostRepository.new.class
PostRepository.new.class.name
PostRepository.new.class.name.gsub('Repository', '')
exit
PostRepository.new.class.name.gsub('Repository', '')
PostRepository.new(:posts).published.execute
PostsRepository.new(:posts).published.execute
PostsRepository.new.published.execute
exit
PostsRepository.new(:posts).published.by_author(:bob).execute
exit
PostsRepository.new(:posts).published.by_author(:bob).execute
exit
PostsRepository.new(:posts).select(:name).published.by_author(:bob).execute
PostsRepository.new(:posts).pluck(:name).published.by_author(:bob).execute
exit
PostsRepository.new(:posts).pluck(:name).published.by_author(:bob).execute
exit
PostsRepository.new(:posts).pluck(:name).published.by_author(:bob).execute
exit
PostsRepository.new(:posts).pluck(:name).published.by_author(:bob).execute
exit
PostsRepository.new
PostsRepository.new.published
exit
PostsRepository.new.published
PostsRepository.new.published.execute
exit
PostsRepository.new.published.execute
{foo: :bar}.first
{foo: :bar}.first.first
{foo: :bar}.first.last
exit
PostsRepository.new.published.execute
PostsRepository.new.published.limit(10)execute
PostsRepository.new.published.limit(10).execute
exit
PostsRepository.new.published.limit(10).execute
PostsRepository.new.published.order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.offset(20).order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.offset(20).order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.offset(20).order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.offset(20).order(name: :ASC).limit(10).execute
PostsRepository.new.published.offset(20).order(name: :ASC).limit(10)
PostsRepository.new.published.offset(20).order(name: :ASC)
PostsRepository.new.published.offset(20)
PostsRepository.new.published
exit
PostsRepository.new.published
exit
PostsRepository.new.published
exit
PostsRepository.new.published
PostsRepository.new.published.offset(20).order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.offset(20).order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.offset(20).order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.offset(20).order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.offset(20).order(name: :ASC).limit(10).execute
load 'repository.rb'
PostsRepository.new.published.offset(20).order(name: :ASC).limit(10).execute
@query
@query.select
select
@query
exit
PostsRepository.new.published.offset(20).order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.offset(20).order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.offset(20).order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.offset(20).order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.offset(20).order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.offset(20).order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.offset(20).order(name: :ASC).limit(10).execute
PostsRepository.new.published.pluck(:name).offset(20).order(name: :ASC).limit(10).execute
load 'repository.rb'
PostsRepository.new.published.pluck(:name).offset(20).order(name: :ASC).limit(10).execute
load 'repository.rb'
PostsRepository.new.published.pluck(:name).offset(20).order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.pluck(:name).offset(20).order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.pluck(:name).offset(20).order(name: :ASC).limit(10).execute
PostsRepository.new.published.pluck(:name, :title).offset(20).order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.pluck(:name, :title).offset(20).order(name: :ASC).limit(10).execute
exit
PostsRepository.new.published.pluck(:name, :title).offset(20).order(name: :ASC).limit(10).execute
PostsRepository.new.published.pluck(:title).offset(20).order(title: :ASC).limit(10).execute
exit
PostsRepository.new.published.pluck(:title).offset(20).order(title: :ASC).limit(10).execute
exit
PostsRepository.new.published.pluck(:title).offset(20).order(title: :ASC).limit(10).execute
PostsRepository.new.published.by_author('phil').execute
def foo
  bar
end
def bar
  puts __callee__
  puts __caller__
end
foo
def bar
  puts __callee__
  puts caller.inspect
end
foo
exit
PostsRepository.new.published
exit
PostsRepository.new.published
PostsRepository.new.published.execute
exit
PostsRepository.new.published.execute
PostsRepository.new.published
exit
PostsRepository.new.published
exit
PostsRepository.new.published
exit
PostsRepository.new.published
exit
PostsRepository.new.published
PostsRepository.new.published.by_author('iiii')
PostsRepository.new.published
exit
PostsRepository.new.published
PostsRepository.new.published.by_author('iiii')
PostsRepository.new.published.by_author('iiii').execute
exit
PostsRepository.new
PostsRepository.new.published
PostsRepository.new.published.by_author('phil')
PostsRepository.new.published.by_author('phil').execute
'foo'.respond_to?(:uppercase)
exit
[1] * 3
['foobar', 'baz'] * 2
Create = -> { puts 'foo' }
Create === 'hi'
Create ===
;
Create = ->(x) { puts 'foo' }
Create === 'hi'
exit
attrs
attrs.length
attrs.first.class
exit
row
sql
exit
row
column_names
column_names.zip(row)
row.zip(column_names)
column_names.zip(row).map(&:values)
column_names.zip(row).map(&:last)
exit
Hash[column_names.zip(row)]
Hash[column_names.map(&:to_s).zip(row)]
Hash[column_names.map(&:to_sym).zip(row)]
row
column_names
exit
row
exit
columns
results
results.shift
results
exit
row
columns
columns.map(&:to_sym).zip(row)
Hash[_]
h = _
column_names.map(&:to_sym).zip([nil] * column_names.count)
(column_names.map(&:to_sym).zip([nil] * column_names.count)).to_hash
Hash[column_names.map(&:to_sym).zip([nil] * column_names.count)]
Hash[column_names.map(&:to_sym).zip([nil] * column_names.count)].merge(h)
exit
model_attr_hash
def foo(id:, published:, name:, body:)
end
foo(**model_attr_hash)
public_send(:foo)
public_send(:foo, model_attr_hash)
public_send(:foo, **model_attr_hash)
model
model_meth
model.public_send(model_meth)
model.public_send(model_meth, model_attr_hash)
model.public_send(model_meth, **model_attr_hash)
mapping
mapping.invert
model_attr_hash
model_attr.hash.map do |k, v|
  [mapping.invert.fetch(k, k), v]
end
Hash[model_attr_hash.map do |k, v|
    [mapping.invert.fetch(k, k), v]
end]
reload!
Hash[model_attr_hash.map do |k, v|
    [mapping.invert.fetch(k.to_s, k), v]
end]
exit
model_attr_hash
olumn_names.map(&:to_sym)
column_names.map(&:to_sym)
column_names.map(&:to_sym).map { |field|
  mapping.invert.fetch(field, field)
}.zip([nil] * column_names.count)
Hash[columns.map(&:to_sym).zip(row)]
columns
mapping
columns.map { |field| mapping.invert.fetch(field, field) }
columns.map { |field| mapping.invert.fetch(field.to_s, field) }
columns.map { |field| mapping.invert.fetch(field.to_sym, field) }
columns.map { |field| mapping.invert.fetch(field.to_sym, fielde) }
exit
model_attr_hash
exit
model_attr_hash
exit
model_attr_hash
exit
sql
select
@query
exit
model_attr_hash
attr_hash
results_hash
columns.map(&method(:translate_fields))
columns
reload!
exit
model_attr_hash
results_hash
attr_hash
exit
[1, 2, 2, 3, 3, 4, 5].duplicates
[1, 2, 2, 3, 3, 4, 5].tap { |s| s | s }
[1, 2, 2, 3, 3, 4, 5].tap { |s| s - s }
a = [1, 2, 2, 3, 3, 4, 5]
a | a
a - a
a
a + a
a
a & a
a | a
a - (a | a)
a - (a & a)
(a | a) - a
a
"(())".chars
"(())".chars.group_by(&:itself)
grouped = "(())".chars.group_by(&:itself)
grouped["("].length == grouped[")"].length
"(())".chars.select("(")
"(())".chars.count("(")
"(())".chars.count(")")
"(())".count(")")
"(())".count("(")
a = [1, 2, 2, 3, 3, 4, 5]
a.inject({}) { |acc, n| acc.fetch(n, 0) += 1; acc }
a.inject({}) { |acc, n| acc[n] = (acc.fetch(n, 0) + 1); acc }
a.inject({}) { |acc, n| acc[n] = (acc[n].to_i + 1); acc }.sort_by(&:value)
a.inject({}) { |acc, n| acc[n] = (acc[n].to_i + 1); acc }.sort_by(&:last)
a.inject({}) { |acc, n| acc[n] = (acc[n].to_i + 1); acc }
a.inject({}) { |acc, n| acc[n] = (acc[n].to_i + 1); acc }.select { |k, v| v > 1 }
a.inject({}) { |acc, n| acc[n] = (acc[n].to_i + 1); acc }.select { |k, v| v > 1 }.keys
a.inject() { |acc, n| acc[n] = (acc[n].to_i + 1); acc }.select { |k, v| v > 1 }.keys
a.inject({}) { |acc, n| acc[n] = (acc[n].to_i + 1); acc }.select { |k, v| v > 1 }.keys
"foo".concat("!")
def "foo".foo
a = "foo"
def a.foo
  'bar'
end
a
a.foo
a = 'baz'
a.foo
def ("foo").foo
  'bar'
end
def (String.new('foo')).foo
  'bar'
end
a.select { |n| n.count > 1 }
a = [1, 2, 2, 3, 3, 4, 5]
a.select { |n| n.count > 1 }
a.select { |n| a.count(n) > 1 }
a.chunk { |n| a.count(n) > 1 }
a.chunk { |n| a.count(n) > 1 }.to_a
a.partition { |n| a.count(n) > 1 }.to_a
a.select { |n| a.count(n) > 1 }.uniq
@attributes
self
self.methods
self.class_variables
self.class_attribute
self.methods
self.instance_values
reload!
exit
reload!
exit
reload!
exit
define_method
ls
instance_values
exit
fields
attributes
attribues.keys
attributes.keys
exit
true
true.class
true.class.ancestors
class Boolean
end
true.is_a?(Boolean)
false.is_a?(Boolean)
false === TrueClass
false === FalseClass
"foo" === String
String === String
String.is_a?(Boolean)
exit
self
self.params
self.session
session
exit
controller
controller.params
controller.session
PostsController.new.params
PostsController.new
exit
%{hello world" " " " " "}
exit
results
exit
results
exit
results
exit
results
exit
results
columns
exit
!!!
t
sql
exit
sql
exit
t
sql
@connection
@connection.execute2(sql)
!!!
foo
DB.execute
DB.execute(foo)
DB.execute('SELECT * FROM posts;')
DB.execute('CREATE TABLE posts(id SERIAL PRIMARY KEY, published BOOLEAN, name VARCHAR(50), body TEXT);')
DB.execute('SELECT * FROM posts;')
DB.execute('CREATE TABLE IF NOT EXISTS posts (id SERIAL PRIMARY KEY, published BOOLEAN, name VARCHAR(50), body TEXT);')
DB.execute('SELECT * FROM posts;')
DB.execute('SELECT d FROM posts')
DB.execute('SELECT d FROM')
DB.execute('SELECT d FROM;')
DB.execute('SELECT d ;')
DB.execute('SELECT ;')
DB.execute('SELECT ;').first
DB.execute('SELECT ;').each { |x| puts x }
DB.execute('CREATE TABLE IF NOT EXISTS posts (id SERIAL PRIMARY KEY, published BOOLEAN, name VARCHAR(50), body TEXT);').each { |x| puts x }
DB.execute('CREATE TABLE 'posts' (id SERIAL PRIMARY KEY, published BOOLEAN, name VARCHAR(50), body TEXT);')
DB.execute("CREATE TABLE 'posts' (id SERIAL PRIMARY KEY, published BOOLEAN, name VARCHAR(50), body TEXT);")
DB.execute("CREATE TABLE \"posts\" (id SERIAL PRIMARY KEY, published BOOLEAN, name VARCHAR(50), body TEXT);")
DB.execute('SELECT * FROM posts;')
DB.execute('SELECT * FROM "posts";')
DB.connection
DB.connection.connection
DB.connection.methods
db
DB
DB.execute
DB.execute("CREATE TABLE groups (id INTEGER NOT NULL, name VARCHAR(255) NOT NULL);")
DB.execute("SELECT * FROM groups;")
\q
exit
DB.execute("SELECT * FROM groups;")
fooo
foo
DB.execute("CREATE TABLE groups (id INTEGER NOT NULL, name VARCHAR(255) NOT NULL);")
r = _
r.methods
r.results_status
r.result_status
r.fields
r.values
r.methods
r.error_message
r.error_field
r.check
r.clear
r.cmd_status
exit
DB.execute("CREATE TABLE groups (id INTEGER NOT NULL, name VARCHAR(255) NOT NULL);")
DB.execute("SELECT * FROM groups;")
DB.execute("CREATE TABLE group (ID INTEGER NOT NULL); SELECT * FROM groups;")
DB.execute("CREATE TABLE groups (ID INTEGER NOT NULL); SELECT * FROM groups;")
a = _
a.each(&method(:puts))
a
a.each { |x| puts x }
a
a.methods
DB.execute("SELECT * FROM groups;")
DB.execute("SELECT * FROM 'groups';")
DB.execute("SELECT * FROM \"groups\";")
DB.execute(SELECT * FROM "groups";')
DB.execute('SELECT * FROM "groups";')
DB.execute("CREATEE TABLE groups (ID INTEGER NOT NULL);")
DB.execute("CREATE TABLE groups (ID INTEGER NOT NULL);")
DB.execute('SELECT * FROM "groups";')
DB.connection
DB.connection.raw_connection
DB.connection.raw_connection.methods
DB.connection.raw_connection.methods.db
DB.connection.raw_connection.db
DB.connection.raw_connection.user
DB.connection.raw_connection.pass
DB.connection.raw_connection.host
DB.connection.raw_connection.port
DB.connection.raw_connection.options
DB.connection.raw_connection.status
DB.connection.raw_connection.methods.db
DB.connection.raw_connection.methods
DB.connection.raw_connection.query("SELECT * FROM groups")
DB.connection.raw_connection.query("CREATE TABLE groups (id INTEGER NOT NULL);")
DB.connection.raw_connection.query("SELECT * FROM groups")
DB.connection.raw_connection.query("SELECT * FROM groups").fields
exit
DB.connection.raw_connection.query("SELECT * FROM groups")
DB.connection.raw_connection.query("SELECT * FROM posts")
DB.execute(foo)
DB.execute("CREATE TABLE posts (id SERIAL PRIMARY KEY, published BOOLEAN, name VARCHAR(255), body TEXT);")
DB.connection.raw_connection.query("SELECT * FROM posts")
DB.connection.raw_connection.query("CREATE TABLE posts (id SERIAL PRIMARY KEY, published BOOLEAN, name VARCHAR(255), body TEXT);")
DB.connection.raw_connection.query("SELECT * FROM posts")
DB.connection.raw_connection.query("SELECT * FROM posts").fields
exit
DB.execute('SELECT * FROM posts;')
DB.execute('DROP TABLE posts;')
DB.execute('SELECT * FROM posts;')
DB.connection.raw_connection.query('SELECT * FROM posts;')
DB.connection.raw_connection.query('DROP TABLE posts;')
DB.connection.raw_connection.query('SELECT * FROM posts;')
exit
DB.connection.raw_connection.query('SELECT * FROM posts;')
exit
DB.connection.raw_connection.query('SELECT * FROM posts;')
exit
@fields
@attributes
@attributes.fetch(@key)
@attributes.fetch(@key).fetch(:type)
exit
@attributes.fetch(@key).fetch(:type)
exit
@attributes.fetch(@key).fetch(:type)
@fields
@attributes
exit
!!!
row
exit
row
model.public_send(model_meth, **model_attr_hash)
model
model.new
model.new(1
)
model.new(1)
model.new(id: 1)
model.new(id: 1, title: 'foo')
model.new(id: 1, title: 'foo', body: 'blah')
model.new(id: 1, title: 'foo', body: 'blah').attributes
model.new(id: 1, title: 'foo', body: 'blah').type_attributes
model.new(model_attr_hash)
model.new(**model_attr_hash)
model_attr_hash
attr_hash
results_hash
results
results.each do |r|
  puts r
end
exit
row
Hash[row.map { |k, v| [k.to_sym, v]}]
Post.new Hash[row.map { |k, v| [k.to_sym, v]}]
Post.new **Hash[row.map { |k, v| [k.to_sym, v]}]
Post.new(**Hash[row.map { |k, v| [k.to_sym, v]}])
model.public_send(model_meth, {})
Post.new Hash[row.map { |k, v| [translate_fields(k), v]}]
exit
!!!
exit
env
@target
@target.class
@target.to_s
@value
@value.class
exit
types
init_ctx
exit
e
e.cause
e.cause.methods - Object.methods
e.cause.ascii_tree
e.cause.pos
e.cause.pos.string
e.cause.pos.instance_variable_get("@string".to_sym)
e.cause.pos.instance_variable_get("@string".to_sym).split("\n")
e.cause.pos.instance_variable_get("@string".to_sym).split("\n").map { |x| x.chars }
e.cause.pos.instance_variable_get("@string".to_sym).split("\n").map { |x| x.chars }[3][11]
e.cause.pos.instance_variable_get("@string".to_sym).split("\n").map { |x| x.chars }[3][9..15]
e.cause.pos.instance_variable_get("@string".to_sym).split("\n").map { |x| x.chars }[3][8..15]
exit
params
body
!!!
exit
!!!\
1
!!!
params
!!!
fn
args
args.first
args.first.eval(env)
arg.last.eval(env)
args.last.eval(env)
fn.call
fn.call(args.map { |a| a.eval(env) }, env)
exit
call_env
params
params.each.with_index { |p, i| puts p, i }
exit
!!!
env
@value
exit
@value
env
env[@value]
exit
env[@value]
exit
env[@value]
exit
env[@value]
env
@value
exit
env
@value
env
exit
ctx
env
ls
ctx
@args
@value
exit
ctx
@value
exit
ctx
target
value
ctx, target, value
puts ctx, target, value
exit
puts ctx, target, value
exit
puts ctx, target, value
exit
call_ctx
params
arg_types
exit
ctx
self
name
exit
ctx
self
exit
String
String.new
exit
types
params
params.map(&:type)
params.zip(types)
exit
other_type
other_type.class
params
type
edit
exit
type
type.class
param
param.type
exit
ls
params
body
return_type
return_type.class
return_type.methods
return_type.methods - Object.methods
retun-type.line_type
return_type.line_type
return_type.line_and_column
return_type.posiiton
return_type.position
exit
param
param.location
type.location
ext
exit
param
param.methods - Object.methods
param.location
type.location
exit
value
ls
return_type
@return_type
Param.new(@return_type)
ls
whereami
value
value.class
value.accepts?
value.aliases?
value.aliases
value.aliases.include?(@return_type)
value.aliases.include?(@return_type.to_s.strip)
exit
value
value.methods
type
exit
type.line_and_column
value.inspect
type
type.inspect
type.to_s
exit
Variable
Number
Dir['nodes/*.rb']
Dir['lib/nodes/*.rb']
exit
Dir['*.rb']
Dir['lib/nodes/*.rb']
require_relative Dir['lib/nodes/*.rb'].first
require_relative Dir['lib/nodes/*.rb'].last
exit
(Dir['lib/nodes/*.rb'] - ['lib/nodes/node.rb', 'lib/nodes/all.rb']).each {|f| require_relative '../' + f }
(Dir['lib/nodes/*.rb'] - ['lib/nodes/node.rb', 'lib/nodes/all.rb']).each {|f| require_relative f }
exit
(Dir['lib/nodes/*.rb']).each { |f| require_relative f }
exit
Dir['lib/nodes/*.rb']
exit
Dir['lib/nodes/*.rb']
Dir['lib/nodes/*.rb'].each { |f| require f }
Dir['lib/nodes/*.rb'].each { |f| require_relative f }
Dir['lib/nodes/*.rb'].each { |f| require f }
Dir['lib/nodes/*.rb'].each { |f| require f.gsub('.rb', '') }
__FILE__
__DIR__
exit
Dir['nodes/*.rb']
exit
Dir['*.rb']
Dir['*]
Dir['*']
'
]
Dir['.']
Dir['*']
exit
files
Dir['nodes/*.rb']
Dir['lib/nodes/*.rb']
exit
files
exit
src
src.methods
exit
t
src
ls
_dir_
_file_
_out_
src
src.class
t.class
exit
sr
src
exit
ctx
@value
exit
trans
trans.methods - Object.methods
trans.rules
trans.rules.first
ls
inspect
exit
parser
parser.methods
parser.boolean
parser.boolean.methods
parser.boolean.methods.name
parser.boolean.methods.label
parser.boolean.name
parser.boolean.precendence
parser.boolean.precedence
parser.boolean.label
parser.boolean.parse("true")
parser.boolean.parse("\"true\"")
parser.b_true
parser.b_true.name
parser.b_true.parse("true")
parser.b_true.parse("true ")
parser.b_true.parse("truefalse")
exit
parser.parse('true')
exit
parser.parse('true')
parser.parse('true or false')
parser.parse('trueorfalse')
parser.parse('(true)orfalse')
parser.parse('!trueorfalse')
parser.parse('!true!or!false')
exit
a = 1 if true
a
b = 2 if false
b
parser.parse("if (true) { }")
parser.parse("if (true) { 1 }")
parser.parse("if(true) { 1 }")
parser.parse("if(a = 1) { 1 }")
parser.parse("if(a = 1) { 1 }") rescue => e
parser.parse("if(a = 1) { 1 }") rescue Error => e
exit
ls
body
predicate
predicate.location
body.location
body.class
body.map(&:location)
exit
!!!
my_io
my_io.puts "hi!"
strs
exit
$stderr.puts "yo"
$stderr = my_io
$stderr.puts "yo"
strs
exit
$stderr.puts "warning: instance variable @pager not initialized"
exit
!!!
io
io.class
exit
io.class
exit
!!!
exit
ls
body
predicate
self
self.methods
self.meta_def
exit
x
x.class
x.methods
x.class
x
x.keys
x.values
exit
pred
exit
e
e.cause
cause = nil
cur_cause = e.cause
while cur_cause.children do
  cur_cause = cur_cause.children.first
end
cur_cause
cur_cause = e.cause
while cur_cause.children do
  cur_cause = cur_cause.children.first if cur_cause && cur_cause.children
end
cur_cause
loop do
  cur_cause = cur_cause.children
break
end
cur_cause
cur_cause = e.cause
loop do 
  if cur_cause.children.nil?
    cause = cur_cause
  else
    cur_cause = cur_cause.children.first
  end
  if cause
    break
  end
end
cause
cur_cause
e.cause
e.cause.children
e.cause.children.first
e.cause.children.first.cause
e.cause
ls
e
e.cause.message
e.cause.children.map(&:message)
e.cause.children
e.cause.children.first
e.cause.children.first.children.first
e.cause.children.first.children.first.children.first
e.cause.children.first.children.first.children.first.children.first
e.cause.children.first.children.first.children.first.children.first.children.first
e.cause.children.first.children.first.children.first.children.first.children.first.children.first
e.cause.children.first.children.first.children.first.children.first.children.first
e.cause.children.first.children.first.children.first.children.first.children.first.message
e.cause.children.first.children.first.children.first.children.first.children.first.pos.string
e.cause.children.first.children.first.children.first.children.first.children.first.pos
e.cause.children.first.children.first.children.first.children.first.children.first.pos.methods
e.cause.children.first.children.first.children.first.children.first.children.first.pos.charpos
e.cause.children.first.children.first.children.first.children.first.children.first.pos.bytepos
e.cause.children.first.children.first.children.first.children.first.children.first
e.cause.children.first.children.first.children.first.children.first.children.first.source
e.cause.children.first.children.first.children.first.children.first.children.first.source.str
e.cause.children.first.children.first.children.first.children.first.children.first.source.methods - Object.methods
e.cause.children.first.children.first.children.first.children.first.children.first.source.pos
e.cause.children.first.children.first.children.first.children.first.children.first.source.line_and_column
exi
exit
e
e.cause
e.cause.children
exit
e
e.cause
e.cause.children
e.cause.children.first
whereami
e.cause.children.first
a = _
a.cause
a.children
exit
cause
e
e.cause.children
exit
"foo".map { |x| x }
"if (true) {"
"if (true) {".gsub('true', /#{\1.uppercase}/)
"if (true) {".gsub('true', /#{$1.uppercase}/)
"if (true) {".gsub("true") do |m, i|
  puts m, i
end
"if (true) {".gsub("true") do |m, i|
  m.uppercase
end
"if (true) {".gsub("true") do |m, i|
  m.upcase
end
str = _
str = str.downcase
str
str[2..5]
str[4..5]
str[4..7]
str = str[0..4] + str[4..7].upcase + str[7..-1]
str = str[0..3] + str[4..7].upcase + str[8..-1]
str = "if (true) {"
str = str[0..3] + str[4..7].upcase + str[8..-1]
exit
1
1.to_b
1.to_i(2)
1.to_s(2)
10.to_s(2)
1.to_s(2)
2.to_s(2)
%w(1 2 3 4 5 6 7 8 9).map { |x| x.to_s(2) }
%w(1 2 3 4 5 6 7 8 9).map(&:to_i).map { |x| x.to_s(2) }
%w(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15).map(&:to_i).map { |x| x.to_s(2) }
nums = %w(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15)
%w(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15).map(&:to_i).map { |x| x.to_s(2) }.zip(nums)
9999999999999999999999999.to_s(2)
(9999999999999999999999999 + 1).to_s(2)
exit
src
exit
src
exit
src
!!
!
!!!
src
exit
src
exit
src
exit
src
exit
src
exit
src
exit
src
exit
src
exit
src
p(src)
begin
  p(src)
rescue Error => e
  puts e.cause
end
p(src)
begin
  p(src)
rescue Parslet::ParseFailed => e
  puts e.cause
end
err = nil
begin
  p(src)
rescue Parslet::ParseFailed => e
  err = e
end
e
e.methods
e.cause
p
p("if (true) { }")
p("if(true) { }")
p("if(true){}")
p(" if(true){}")
p(" if ( true ) { } ")
p(" if ( true ) { x } ")
p(" if ( true ) { x }else{y} ")
p(" if ( true ) { x }else{y } ")
p(" if ( true ) { x }else{ y } ")
p(" if ( true ) { x }else { y } ")
p(" if ( true ) { x } else { y } ")
p(" if ( true ) {  } else { y } ")
p(" if ( true ) { x } else { y } ")
exit
p("if (true) { }")
p("if (true) { } else")
p("if (true) { } else { }")
p("if (true) { } else")
exit
!!!
p("if (true) { } else")
p("if (true) { } else { }")
p("if (true) { } else { f }")
exit
parser
parser.parse("fn fizzbuzz(n:Int):Int { n }")
trans.yield(parser.parse("fn fizzbuzz(n:Int):Int { n }"))
trans.parse
trans.methods
trans.apply(parser.parse("fn fizzbuzz(n:Int):Int { n }"))
parser.parse("fn fizzbuzz(n:Int):Int { n }")
parser.parse("fn (n:Int) { n }")
parser.parse("fn ( n : Int) { n }")
parser.parse("a = fn ( n : Int) { n }")
parser.parse("a = fn( n : Int) { n }")
exit
parser.parse("fn (x:Int, y:Int):Int { 10 }")
trans.apply(parser.parse("fn (x:Int, y:Int):Int { 10 }"))
parser.parse("fn fizzbuzz(x:int, y:Int):Int { 10 }")
parser.parse("fn fizzbuzz(x:Int, y:Int):Int { 10 }")
trans.apply(parser.parse("fn fizzbuzz(x:Int, y:Int):Int { 10 }"))
exit
params
body
return_type
name
exit
!!!
param_type_pairs
params
types
types.first
a = _
a.class
reload
reload_class
ls
help
reload-method
ls
types
types.first
types.first.inspect
a
a.methods
a.params
a.return_type
exit
params
types
reload-code
types
params
params.first
p = _
p.methods - Object.methods
p.type
types.first
types.first.type
reload-code
types.first.type
types.first.type.trim
types.first.type.strip
exit
parser.parse("fn (a:Int):int { a }")
exit
def Goal.equal(a, b)
end
class Goal
  def initialize
    @block = yield
  end
  def block
    @block
  end
  def self.equal(a, b)
    new do |state|
      unified_state = state.unify(a, b)
      Enumerator.new do |yielder|
        yielder.yield state if state
      end
    end
  end
end
Goal.equal(1, 2)
class State
  def initialize(vars = [], values = {})
    @vars = vars
    @values = values
  end
  def vars
    @vars
  end
  def values
    @values
  end
  def unify(a, b)
    edie
    exit
Array.new('x') { 4 }
Array.new(5) { 'x' }
exit
a = [1, 2, 3, 4, 5]
a.cycle
a
a.rotate
exit
a = [1, 2, 3, 4, 5]
a.rotate
a
a.rotate!
a
exit
a = [1, 2, 3, 4, 5]
e = a.cycle
a.pop
a
e
e.pop
e.first
e.next
exit
a = [1, 2, 3, 4]
a.permutations
a.permutation
a.permutation.each do |x|
  puts x
end
a.permutation.next
a.permutation.next.next
a.permutation
e = _
e.next
e
e.rewint
e.rewind
e.length
e.count
a.combinations
a.combination
e
a = e
a.next
e.next
a.rewind
e.rewind
b1 = a.permutation
a
a = [1,2,3,4]
def perms(upper)
  Array(1..upper).permutation
end
a = perms(4)
b = perms(4)
c = perms(4)
d = perms(4)
a.each do |set1|
  b.each do |set2|
    c.each do |set3|
      d.each do |set4|
a = [1, 2, 3, 4]
b = [4, 3, 2, 1]
c = [3, 2, 1, 4]
d = [2, 1, 4, 3]
a << b << c << d
a
b
a = [1, 2, 3, 4]
a = [1, 4, 3, 2]
a | b | c | d
a + b + c + d
e = (a + b + c + d)
e.each_slice(4) do |row|
  puts row.inspect
end
e
e.length
e.length / 4
e
e.transpose
s = e.each_slice(4).to_a
s
s.transpose
s
s.first
s.first - a
[1, 2, 2, 3] - a
[1, 2, 2, 3] | a
[1, 2, 2, 3] ^ a
[1, 2, 2, 3] + a
[1, 2, 2, 3] - a
a
e
[e[0], e[0+4], e[0+8], e[0+8+4]]
[e[0], e[0+4], e[0+8], e[0+8+4]] == [1, 2, 3, 4]
[e[0], e[0+4], e[0+8], e[0+8+4]].sort == [1, 2, 3, 4].sort
s
      end
    end
  end
end
exit
n
exit
controller
blog_controller
blog_controller(blog)
blog_controller(:blog)
blog_controller(:game)
blog_controller(:blogs)
blog_controller(:talks)
blog_controller(:games)
blog_controller(:blogs)
blog_controller(:posts)
exit
a = [ {type: :start}, {type: :working}, {type: :start}, {type: :finished}]
a.chunk { |x| x[:type] }
a.chunk { |x| x[:type] }.each do |t|
  puts t
end
a.chunk { |x| x[:type] }
exit
hello_world = -> {
  puts "Hello World!"
}
hello_world.call
ages = []
ages.length
ages.empty?
ages.push(7)
ages.push(4)
ages.push(2)
ages.push(8)
ages.push(99)
ages.pop
ages
ages.pop
ages
ages.pop
ages
ages.push(77)
ages.push(99)
if ages.length == 0
  puts "It is empty."
else
  ages.pop
end
def get_last_from_array(arr)
  if arr.length == 0
    puts "it is empty."
  else
    arr.pop
  end
end
get_last_from_array([])
get_last_from_array(10)
ages
get_last_from_array(ages)
teacher_info = {}
teacher_info.length
teacher_info.push(2)
teacher_info.store("name", "Aaron")
teacher_info
teacher_info.fetch("name")
teacher_info.store("age", 99)
teacher_info
teacher_info.keys
teacher_info.values
teacher_info.fetch("age")
teacher_info.fetch("favorite foods")
teacher_info["favorite foods"]
teacher_info.store("favorite foods", ["nutella", "indian food", "tacos", "bbq"])
teacher_info.fetch("favorite foods")
teacher_info.fetch("favorite foods")[0]
def print_teacher(teacher)
  puts "Name: " + teacher.fetch("name")
  puts "Favorite foods are: "
  puts teacher.fetch("favorite foods")
  puts "----------------------------"
end
print_teacher(teacher_info)
print_teacher({ "name" => "Justin", "favorite foods" => ["sushi"]})
print_teacher({ "name" => "Justin"})
def print_teacher(teacher)
  puts "Name: " + teacher.fetch("name")
  puts "Favorite foods are: "
  puts teacher.fetch("favorite foods", "No favorites")
  puts "-----------------------------"
end
print_teacher({ "name" => "Justin"})
print_teacher(teacher_info)
if (teacher_info["fav language"] == nil)
  puts "Must be Javascript"
else
  puts teacher_info["fav language"]
end
exit
page.html
page.find('.sign-up')
click_link page.find('.sign-up')
click_link 
exit
require 'guard/rspec'
require 'guard'
Guard
Rspec
require 'rspec'
bundler
bundle
Bundler
Bundler.require(*Rails.groups)
Rails
require 'rails'
Bundler.require(*Rails.groups)
Guard::RSpec
Guard
exit
page.html
puts page.html
exit
page.html
exit
puts page.html
exit
words = %w(block box chop clock cock crop dot flock fox got hop hot knock knot lock lot mock not ox plot pop pot rock shock shop shot spot stock stop top trot watch bond bronze doll fond god job lodge mob nod odd on pond rob rod sob yon arch arm art bar bark barn car card cart carve charge charm dark dart far farm guard hard harm harp jar large lark march mark park part sharp smart spark star start starve yard heart are calm palm swamp swan want
RP: ask bath blast branch brass calm can't cast chance clasp class craft dance draft fast France gasp glance glass grant grasp grass half last mast palm pass past path plant ranch shaft staff task arch are arm art bar bark barn car card cart carve charge charm dark dart guard hard harm harp jar large lark march mark park part sharp smart spark star start starve yard heart clerk)
words
themes = %w(Boulder
Carbon
Carbonate
Chalk
Coal
Cobalt
Flint
Granite
Grainstone
Gravel
Grit
Limestone
Marble
Meteor
Meteorite
Mudstone
Pebble
Quartz
Sand
Sandstone
Slate
Stone
Garnet
Moonstone
Amber
Amethyst
Topaz
Onyx
Pearl
Ruby
Sapphire
Diamond
Emerald
Sunstone
Jasper
Alchemic Symbols:
Air
Copper
Earth
Fire
Gold
Mercury
Magnesium
Phosphorous
Philosopher’s stone
Old Silver
Sulfur
Zinc
Bronze
Argon
Titanium
Krypton
Jade
Ore/Iron Ore
Arete
Basin
Bluff
Canyon
Cape
Cover
Cliff
Dune
Geo
Hill
Lowland
Marsh
Plateau
Terrace
Aurora
Comet
Crater
Crust
Dust
Eclipse
Flux
Fusion
Galaxy
Laser
Lunar
Mach
Mantle
Quasar
Nebula
Peak
Torus
Apex
Axis
Alpha
Beta
Boxplot
Centroid
Cofactor
Convex
Cube
Decagon
Degree
Delta
Chi
Digit
Ellipse
Eta
Epsilon
Polygon
Foci
Gamma
Prism
Helix
Hexagram
Sine
Cosine
Tangent
Isometry
Isosceles
Iota
Kappa
Lamda
Liit
Locus
Matrix
Midpoint
Null
Nu
Oblique
Obtuse
Octagon
Octant
Omega
Omicron
Origin
Parabola
Pi
Phi
Polar
Power
Psi
Quad
Radian
Rho
Rhombus
Scalar
Sigma
Tau
Theta
Upsilon
Vector
Vertex
Zeta
)
themes.product(words)
puts themes.product(words)
puts themes.product(words).map { |x| x.join('-') }
puts themes.product(words).map { |x| x.join('-').downcase }
puts themes.product(words).map { |x| x.join('-').downcase }.count
exit
require 'rubygems'
exit
require 'rubygems'
require 'kuby'
link = Kuby::Link.new
link.connect!
exit
link.stage!
link.throttle_full
link.stage!
link.stage
link.stage!
exit
link.stage!
link.throttle_full
link.toggle_sas
link.mission_time
link.stage!
exit
link.toggle_sas
link.toggle_rcs
link.stage!
exit
link.toggle_rcs
link.toggle_sas
link.full_throttle
link.stage!
link.throttle_full
link.full_throttle
link.throttle_full
link.stage!
link.toggle_sas
link.toggle_rcs
link.altitude
link.stage!
link.set_throttle(5)
link.set_throttle(.5)
link.set_throttle(0.5)
link.yaw
link.pitch
link.roll
link.set_roll(0)
link.pitch
link.heading
link.pitch = 0
link.roll = 0
link.yaw = 0
link.yaw = 10
link.yaw = 0.5
link.pitch
link.pitch = 0.5
link.pitch
exit
link.full_throttle
link.throttle_full
link.connect!
exit
link.throttle_full
link.stage!
link.toggle.sas
link.toggle_sas
link.toggle_rcs
exit
link.stage!
link.thrusters_full
link.full_thrust
link.set_thrust(1)
link.set_thruster(1)
link.set_thrusters(1)
exit
link.set_throttle(1)
link.toggle_sas
link.sas
link_toggle_sas
link.toggle_sas
link.stage!
link.resource('LiquidFuel')
link.current_stage_resource('LiquidFuel')
link.current_stage_resource_max('LiquidFuel')
link.stage!
link.current_stage_resource('LiquidFuel')
link.resource('LiquidFuel')
link.current_stage_resource('LiquidFuel')
link.stage!
link.current_stage_resource('LiquidFuel')
link.surface(pitch:50)
link.surface(pitch:50, heading: 50, roll: 0)
link.surface(pitch:150, heading: 50, roll: 0)
link.surface(pitch:250, heading: 50, roll: 0)
link.stage!
link.surface(pitch:250, heading: 50, roll: 0)
link.surface(pitch:250, heading: 250, roll: 0)
link.set_trottle(0.2)
link.set_throttle(0.3)
link.surface(pitch:250, heading: 250, roll: 0)
link.surface(pitch:250, heading: 150, roll: 0)
link.pause
link.pause!
link.abort
link.set_pitch(100)
link.set_roll(10)
exit
"Hello World"
"Hello World".methods
exit
link.set_throttle(1)
link.stage!
link.go
link.launch
exit
f
f.methods - Object.methods
f.object
exit
["🍕", "💻", "🍺"].shuffle
exit
FOO = """ 
hello
""""
FOO
"
FOO
BAR = <<CODE
Hello () {
  world
}
CODE
BAR
pry
exit
arr = %w(4 6 11 12 8 0).map(&:to_i)
arr.map(:+)
arr.reduce(:+)
arr.reduce(0) do |n, acc|
  acc += n
  acc
end
arr.reduce(:+)
arr.reduce(:-)
arr.reduce(:*)
arr.reduce(:to_s)
arr
arr.map { |n| n.succ }
arr.map(&:succ)
arr.each(&:succ)
class Fixnum
  def cool
    puts self
  end
end
arr.each(&:cool)
1.cool
class Car
  def drive
    puts self.inspect
  end
  def self.create_volvo
    new
  end
end
Car.create_volvo
Car.drive
volvo = Car.create_volvo
volvo.drive
volvo
class User
  def User.create_admin(name)
    new(name)
  end
  def initialize(name)
    @name = name
  end
  def first_name
    @name.split.first
  end
  def full_name
    @name
  end
  def last_name
    self.full_name.split.last
  end
end
User.create_admin("Ryan")
ryan = User.create_admin("Ryan")
ryan
ryan.first_name
ryan.last_name
class UserEmailer
  def UserEmailer.send_mail_to(user)
    puts "MAIL SENT"
  end
end
UserEmailer.send_mail_to(User.new)
UserEmailer.send_mail_to(User.new("Ryan"))
module Maths
  def self.pow2(n)
    n ** 2
  end
  def self.pi
    PI
  end
end
Maths.pi
Maths.pow2(24)
module PaymentPlans
  def self.free_tier
    #get from db
    return { }
  end
end
class PaymentProcessor
  def initialize(processor_id)
    @processor_id = processor_id
  end
  def charge_card(card_number)
    Processor.charge(card_number, @processor_id)
  end
end
PaymentPlans.free_tier
PaymentProcessor.new(4724729472497)
pp = _
pp.charge_card(params[:card_number])
Car.new
Car.new "foo", "bar"
Car.new
Car.new.inspect
Car.new "honda", "accord"
Car.new
Car.new.model
exit
require 'httparty'
exit
require 'httparty'
Httparty
HTTParty
exit
require 'rubygems'
require 'httparty'
exit
HTTParty
HTTParty.get("https://www.civitaslearning.com/careers/")
HTTParty.get("https://www.civitaslearning.com/careers/").length
HTTParty.methods
HTTParty.methods - Object.methods
HTTParty.head("https://www.civitaslearning.com/careers/").leng
HTTParty.head("https://www.civitaslearning.com/careers/")
HTTParty.options("https://www.civitaslearning.com/careers/")
HTTParty.head("https://www.civitaslearning.com/careers/")
HTTParty.methods - Object.met
HTTParty.methods - Object.methods
HTTParty.copy("https://www.civitaslearning.com/careers/")
exit
class TypedStruct < OpenStruct
  def initialize(fields = {})
    fields.each do |name, type|
      instance_variable_set("@#{name}", type)
    end
  end
  def new(attrs = {})
    attrs.each do |name, value|
      if blah
      end
    end
  end
end
exit
require 'rails'
exit
ls
self
Rails
::Rails
::Rails.application
Rails.application
::Rails.application.config
whereami 1000
ls
methods
ls
exit
def message(prompt, body)
  puts prompt
  puts body
end
message("foo", a = 1; a)
message("foo", (a = 1; a))
exit
a = "foobar"
def return_a
  a
end
return_a
def setup_b
  b = "hello world"
end
setup_b
b
@my_instance_variable = 10
def foobar
  @my_instance_variable
end
foobar
PI
Math::Pi
Math::PI
USA = "United States of America"
USA
def my_country_tis_of_thee
  USA
end
my_country_tis_of_thee
USA = "foobar"
my_country_tis_of_thee
$global_variable = "Hello World"
$global_variables
$global_variable
ls
$
$!
"Hello World".match(//)
"Hello World".scan(//)
"Hello World".scan(/Hello/)
"Hello World".scan(/ello/)
"Hello World".scan(/hello/)
"Hello World".scan(/hello/i)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/hello/i)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello World/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello John/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello J.hn/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello ..../)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello .+/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello \b/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello \s/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello \s+/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello \S+/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello .+,/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello .+/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello [a-zA-Z]+/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello [a-zA-Z]{3}/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello [a-zA-Z]{3-5}/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello [a-zA-Z]{3,5}/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello [a-zA-Z]{5}/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello [a-zA-Z]{3,6}/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello [a-zA-Z]{3,5}/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello [a-zA-Z]{3,6}/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello [a-zA-Z]{3,6}\b/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello [a-zA-Z]+\b/)
"Hello World, Hello John, Hello Karly, Hello Travis, Hello Abby".scan(/Hello ([a-zA-Z]+\b)/)
//.methods - Object.methods
/Hi/.match("Hi")
/Hi/.match("")
/[0-9]{3}-[0-9]{4}/.match("")
/[0-9]{3}-[0-9]{4}/.match("813-6125")
/[0-9]{3}-[0-9]{4}/.match("813-61255")
/^[0-9]{3}-[0-9]{4}$/.match("813-6125")
/^[0-9]{3}-[0-9]{4}$/.match("813-61245")
/^[0-9]{3}-[0-9]{4}$/.match("813-61256")
/^[0-9]{3}-[0-9]{4}$/.match("8413-6125")
/^[0-9]{3}-[0-9]{4}$/.match("d43-6125")
/^[0-9]{3}-[0-9]{4}$/.match("243-6125")
PHONE_VALIDATOR = /^[0-9]{3}-[0-9]{4}$/
PHONE_VALIDATOR.match("248-4839")
phone_number = gets.chomp
if PHONE_VALIDATOR.match(phone_number)
  puts "Calling!"
else
  puts "incorrect number"
end
person = {
  name: "Aaron",
  age: 99,
  fav_foods: ["nutella", "tacos", "cakes"],
}
person[:name]
person["name"]
"name".string
"name".class
:name.class
"Welcome to the game"
:start_game
person[:name]
person[:age]
person[:age].class
person[:age] = 100
person
person.fetch(:age)
person.fetch(:aged)
person.fetch(:aged, 0)
person
person[:fav_foods]
person[:fav_foods].class
person[:fav_foods][0].length.class
person[:fav_foods][0].length
person[:fav_foods][0]
person[:fav_foods]
person
def show_age(person)
  person[:age]
end
show_age(person)
def show_name(person)
  person[:name]
end
show_name(person)
class Aaron
  def initialize(name, age, fav_foods)
    @name = name
    @age = age
    @fav_foods = fav_foods
  end
  def name
    @name
  end
  def age
    @age
  end
  def fav_foods
    @fav_foods
  end
  def random_favorite_food
    @fav_foods.sample
  end
end
Aaron.new
Aaron.new("Aaron The First", 99, ["nutella", "tacos"])
my_first_aaron = _
my_first_aaron
my_first_aaron.@age
my_first_aaron.age
my_first_aaron.methods
my_first_aaron.methods - Object.methods
my_first_aaron.methods(false)
my_first_aaron.methods
my_first_aaron.age
my_first_aaron.random_favorite_food
exit
rand
1..10
(1..10).class
(1..10).methods - Object.methods
1..10
(1..10).each do |n|
  puts n
end
10.times.do |n|
puts n
10.times do |n|
  puts n
end
(1...10).each do |n|
  puts n
end
rand(1..10)
rand(1..6)
die_rolls = Array.new
5.times do 
  die_rolls.push( rand(1..10) )
end
die_rolls
exit
class Die
  def initialize(sides)
    @sides = sides
  end
  def roll
    rand(1..@sides)
  end
end
Die.new(6)
my_die = Die.new(6)
my_die.roll
class Die
  def initialize(sides = 6)
    @sides = sides
  end
  def roll
    rand(1..@sides)
  end
end
Die.new
d20 = Die.new(20)
d20.roll
exit
class DiceRoller
  def initialize(number_of_dice, number_of_sides)
    @number_of_dice = number_of_dice
    @number_of_sides = number_of_sides
  end
  def run
    print rand(1..@number_of_sides)
  end
end
DiceRoller.new(5, 4)
my_dice_roller = _
my_dice_roller.run
exit
class DiceRoller
  def initialize(number_of_dice, number_of_sides)
    @number_of_dice = number_of_dice
    @number_of_sides = number_of_sides
  end
  def run
    @number_of_dice.times do
      print " | "
      print rand(1..@number_of_sides)
    end
    puts
  end
end
my_dr = DiceRoller.new(5, 7)
my_dr.run
exit
%w(apple foo sushi taco bar).sample
%w(apple foo sushi taco bar).sample 2
%w(apple foo sushi taco bar).sample 2, 3
%w(apple foo sushi taco bar).sample 9
%w(apple foo sushi taco bar).sample 0
%w(apple foo sushi taco bar).sample 0.4
%w(apple foo sushi taco bar).sample 1
%w(apple foo sushi taco bar).sample 2
exit
load 'student.rb'
Student.new("Justin", "Ruby", 99999)
me = _
me
me.name
me.course
me.gpa
load 'student.rb'
me = Student.new("Justin", "Ruby", 99999)
me
me.name
me.get_name
me.course
me.gpa
load 'student.rb'
me = Student.new("Justin", "Ruby", 99999)
me.get_course
me.get_gpa
load 'student.rb'
me = Student.new("Justin", "Ruby", 99999)
me
me.name
me.get_name
me.set_name("Aaron")
me
load 'student.rb'
me = Student.new("Justin", "Ruby", 99999)
me.get_name
load 'student.rb'
me = Student.new("Justin", "Ruby", 99999)
exit
load 'student.rb'
me = Student.new("Justin", "Ruby", 99999)
me.get_name
me.name
me.set_name
me.name = "Aaron"
me
me.methods - Object.methods
me.methods
def name*(foo)
load 'student.rb'
me = Student.new("Justin", "Ruby", 99999)
me.tardy
me.tardy = true
me.tardy
me
exit
load 'student.rb'
me = Student.new("Justin", "Ruby", 99999)
me = Student.new
me.name = "justin"
me.course = "foobar"
me.tardy = true
me.gpa = 0
me
0.1 + 0.2
(0.1 + 0.2).round(3)
(0.1 + 0.2).round(2)
(0.1 + 0.2).round(1)
(0.1 + 0.2).round(3)
load 'student.rb'
student_names = %w(Aaron Abby Jess Justin Travis Karly) 
students = student_names.map do |name|
  Student.new(name, "Ruby")
end
students
student_names
students.map { |student| student.name }
students.select { |student| student.name.length > 5 }
students.reject { |student| student.name.length > 5 }
students.partition { |student| student.name.length > 5 }
students.chunk { |student| student.name }
students.group_by { |student| student.name }
students.group_by { |student| student.name.length }
students.map! do |student|
  student.gpa = rand( (1.0)..(4.0) )
end
students
students = student_names.map do |name|
  Student.new(name, ["ruby", "front end", "design"].sample, rand((1.0)..(4.0)).round(2))
end
students
students.group_by { |student| student.course }
students.map { |x| x.gpa } 
students.map { |x| x.gpa }.average
students.reduce(:+)
students.map { |s| s.gpa }.reduce(:+)
students.map { |s| s.gpa }.reduce(:+) / students.count
students.group_by { |student| student.course }
students.group_by { |student| student.course }.
map do |course_name, students_in_course|
  students_in_course.map { |s| s.gpa }.reduce(:+) / students.count
end
students.group_by { |student| student.course }.
map do |course_name, students_in_course|
  students_in_course.map { |s| s.gpa }.reduce(:+) / students_in_course.count
end
students.group_by { |student| student.course }.
map do |course_name, students_in_course|
  [course_name,  students_in_course.map { |s| s.gpa }.reduce(:+) / students_in_course.count]
end
exit
load 'lib/student.rb'
Student.new
Student.new(nil, "ruby")
exit
@students
ls
exit
class Name
  def first_name
    puts self
  end
end
me = Name.new
me.first_name
class Name
  def initialize
    @foobar = "hello world"
  end
  def show
    puts self
  end
end
Name.new
Name.new.show
Name.new.self
Name.new.inspect
Name.new.to_s
class User
  attr_accessor :name, :age
  def initialize(name, age)
    self.name = name
    self.age  = age
  end
end
User.new('fioo', 2829)
class Person
  def initialize(name)
    self.name = name
  end
end
Person.new('foobar')
def print_array(arr)
  if array.length.zero?
    return
  else
    puts array.pop
  end
end
def print_array(arr)
  if array.length.zero?
    return
  else
    puts array.pop
def print_array(arr)
  if array.length.zero?
    return
  else
def print_arr(arr)
  return if arr.length.zero?
  puts arr.pop
  print_arr(arr)
end
print_arr([1, 2, 3, 4, 5])
def print_arr(arr)
  raise if arr.length.zero?
  puts arr.pop
  print_arr(arr)
end
print_arr([1, 2, 3, 4, 5])
def foo_bar
  print_arr([1, 2, 3, 44,4,4,4,5])
end
foo_bar
class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node = nil)
    self.value = value
    self.next_node = next_node
  end
end
Node.new(10)
Node.new(10, Node.new(40))
Node.new(10, Node.new(40, Node.new(10)))
def iterate(linked_list)
  if linked_list.next_node.nil?
    puts linked_list.value
  else
    puts linked_list.value
    iterate(linked_list.next_node)
  end
end
cool_linked_list = Node.new(10, Node.new(40, Node.new(10)))
iterate(cool_linked_list)
exit
deck = []
4.times do
  (1..13).each do |n|
    deck.push(n)
  end
end
deck
deck[0]
deck.first
deck
deck.shift
deck
deck.shuffle
deck.shuffle!
exit
suits = [:hearts, :diamonds, :spades, :clubs]
suits.each do |suit|
  (2..13).each do |value|
    @cards << Card.new(suit, value)
  end
end
class Card
  def initialize(suit, value)
    @suit = suit
    @value = value
  end
end
suits = [:hearts, :diamonds, :spades, :clubs]
suits.each do |suit|
  (2..13).each do |value|
    @cards << Card.new(suit, value)
  end
end
@cards = []
suits = [:hearts, :diamonds, :spades, :clubs]
suits.each do |suit|
  (2..13).each do |value|
    @cards << Card.new(suit, value)
  end
end
@cards
@cards.length
class Card
  def initialize(suit, value)
    @suit = suit
    @value = value
  end
  def display_value
    case @value
    when 11 then "J"
    when 12 then "Q"
    when 13 then "K"
    when 14 then "A"
    else
      @value
    end
  end
  def rank
    if @value > 10
      10
    else
      @value
    end
  end
end
suits = [:hearts, :diamonds, :spades, :clubs]
suits.each do |suit|
  (2..13).each do |value|
    @cards << Card.new(suit, value)
  end
end
@cards
@cards.sample
@cards.sample.display_value
@cards.sample.rank
@cards.sample
a = _
a.rank
a.display_value
exit
table = TTY::Table[['a1', 'a2'], ['b1', 'b2']]
table = TTY::Table.new [['a1', 'a2'], ['b1', 'b2']]
table = TTY::Table.new rows: [['a1', 'a2'], ['b1', 'b2']]
table = TTY::Table.new ['h1', 'h2'], [['a1', 'a2'], ['b1', 'b2']]
table = TTY::Table.new header: ['h1', 'h2'], rows: [['a1', 'a2'], ['b1', 'b2']]
require 'tty'
table = TTY::Table[['a1', 'a2'], ['b1', 'b2']]
table = TTY::Table.new [['a1', 'a2'], ['b1', 'b2']]
table = TTY::Table.new rows: [['a1', 'a2'], ['b1', 'b2']]
table = TTY::Table.new ['h1', 'h2'], [['a1', 'a2'], ['b1', 'b2']]
table = TTY::Table.new header: ['h1', 'h2'], rows: [['a1', 'a2'], ['b1', 'b2']]
table
puts table
table = TTY::Table.new ['header1', 'header2'],
[['a1', 'a2'], ['b1', 'b2'],
  renderer: 'unicode'
  ;
table = TTY::Table.new(['header1', 'header2'],
  [['a1', 'a2'], ['b1', 'b2'],
    renderer: 'unicode')
table = TTY::Table.new(['header1', 'header2'],
  [['a1', 'a2'], ['b1', 'b2']],
renderer: 'unicode')
puts table
table = TTY::Table.new(['header1', 'header2'], [[ 'a1', 'a2'], ['b1', 'b2]], renderer: 'ascii')
'
table = TTY::Table.new(['header1', 'header2'], [[ 'a1', 'a2'], ['b1', 'b2']], renderer: 'ascii')
table.to_s
puts table
bar = TTY::ProgressBar.new("downloading [:bar]", total: 30)
puts bar
prompt.select("Choose your destiny?", %w(Scorpion Kano Jax))
prompt = TTY::Prompt.new
require 'tty/prompt'
prompt = TTY::Prompt.new
require 'tty/prompt/utils'
prompt = TTY::Prompt.new
exit
load 'fun_with_classes'
load 'fun_with_classes.rb'
Animal
generic_animal = Animal.new
generic_animal.methods - Object.methods
generic_animal.speak
beans = Cat.new
beans.speak
beans.ancestors
beans.class.ancestors
beans.send(:speak)
beans.to_s
beans.fly
load 'fun_with_classes.rb'
kk = Kitten.new
kk.speak
kk.name
Kitten.name
load 'fun_with_classes.rb'
Animal.new.walk
Kitten.new.walk
load 'fun_with_classes.rb'
justin = User.new
aaron = Admin.new
aaron.open_admin_door?
aaron.open_door?
justin.open_door?
justin.open_admin_door?
load 'fun_with_classes.rb'
ComputerPlayer.new
ComputerPlayer.new("Super Dealer")
load 'fun_with_classes.rb'
players = Array.new
players.push( ComputerPlayer.new("Super Dealer") )
players.push( HumanPlayer.new("ME!") )
players.each do |player|
  player.play
end
load 'fun_with_classes.rb'
players = Array.new
players.push( ComputerPlayer.new("Super Dealer") )
players.push( HumanPlayer.new("ME!") )
players.each do |player|
  player.play
end
20.times do 
  players.each do |player|
    player.play
  end
end
__FILE__
__DIR__
_dir_
exit
load 'testing_intro.rb'
excited_name("justin")
excited_name("jeb")
exit
5.times do
end
exit
a = 1
arr = []
arr.push(a)
a = 2
arr
info = { foo: bar }
info = { foo: 'bar' }
arr.push(info)
info[:fizz] = :buzz
arr
@upper = ["1", "2", "3"]
@ul = @upper[0]
@upper[0] = "abc"
@upper
@ul
@upper = ["1", "2", "3"]
@ul = @upper[0]
@ul = "X"
@upper = ["1", "2", "3"]
@ul = @upper[0]
@ul.gsub!("1", "XXX")
@upper = ["1", "2", "3"]
Array.new(9) { "" }
Array.new(9) { :empty }
Array.new(3) { Array.new(3) { :empty } }
{ a1: :empty, a2: :empty }
board = { a1: :empty, a2: :empty }
board[:a1] = "X"
board
exit
movies = []
movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}
cheap_movie = Array.new
movies.each do |movie|
  budget = movie.fetch(:budget)
  if budget < 100
    cheap_movie.push(movie)
  end
  puts cheap_movie
end
cheap_movie
movies.each do |movie|
  cheap_movie = Array.new
  budget = movie.fetch(:budget)
  if budget < 100
    cheap_movie.push(movie)
  end
end
cheap_movie
exit
rand(0..8).to_s
rand("0".."8")
exit
9 * 9 * 3
exit
arr = [1, 2, 3, "a", "b", "c"]
arr.map(&:succ)
def do_succ(a)
  arr.map!(&:succ)
end
do_succ(arr)
arr
def do_succ(a)
  a.map!(&:succ)
end
a
arr
do_succ(arr)
a
arr
hsh = { "1" => "X", "2" => " " }
hsh["1"]
hsh["2"]
if hsh["2"] == " "
  "2"
else
  hsh["2"]
end
def get(key)
  if hsh[key] == " "
    key
  else
    hsh[key]
  end
end
exit
ls
exit
File.open('README.md')
File.open('README.md').read
exit
a = [ "Hello World" ]
b = [ a, "Goodbye World" ]
a.push("You dont belong here")
a
b
a.dup
a.(&:itself)
a.map(&:itself)
exit
load 'modules.rb'
Portlandian.new
Portlandian.new.gets_lunch
Portlandian.class
Portlandian.ancestors
load 'modules.rb'
Austinite.new.get_lunch
Austinite.new.gets_lunch
load 'modules.rb'
SanFranciscan.new.gets_lunch
SanFranciscan.ancestors
load 'modules.rb'
exit
load 'modules.rb'
Portlandian.ancestors
exit
load 'modules.rb'
BeerSnob::gets_lunch
load 'modules.rb'
SanFranciscan.new.gets_lunch
exit
SanFranciscan.new.gets_lunch
load 'modules.rb'
SanFranciscan.new.gets_lunch
load 'modules.rb'
exit
load 'modules.rb'
my_car = Car.new
my_car.can_fly?
my_car.can_drive?
my_car.wheels
dream_car = SuperJet.new
dream_car.can_fly?
dream_car.can_drive?
dream_car.methods - Object.methods
Math
Math.methods
Math::PI
exit
load 'modules.rb'
Utils.center_str("Hello", 50)
load 'modules.rb'
Utils.center_str("Hello", 50)
load 'modules.rb'
Utils.center_str("Hello", 50)
Utils.new
Math.cosin
Math.cos
Math.cos(10)
exit
load 'modules.rb'
Utils.center_str("Hello", 50)
Utils::SCREEN_WIDTH
exit
begin
  nil.some_method_nil_doesnt_know_about
rescue Exception => ex
  puts ex
  puts ex.class
end
exit
nil.inspect
exit
nil.object_id
false.object_id
true.object_id
1.object_id
0.object_id
1.object_id
-1.object_id
Class.object_id
70332786863200.object_id
exit
response
game
Game.valid_move(response, game)
Board.moves_for(game[:board], nil).include?(id)
Board.moves_for(game[:board], nil).include?(response)
Board.moves_for(game[:board]
nil)
Board.moves_for(game[:board], nil)
Board.moves_for(game[:board], "")
Board.moves_for(game[:board], :X)
Board.moves_for(game[:board], :human)
exit
Game.valid_move(response, game)
Board.moves_for(game, nil)
Board.moves_for(game[:board], nil)
Board.moves_for(game[:board], :human)
Board.moves_for(game[:board])
exit
Game.valid_move(response, game)
Board.moves_for(game[:board], :human)
Board.moves_for(game[:board], nil)
Game.valid_move(response, game)
Board.moves_for(game[:board], nil)
exit
game
exit
game
exit
1
updated_game
Board
Board.make_move(1, game)
updated_game
response
Game.valid_move(11, game)
Game.valid_move(1, game)
exit
updated_game
response
exit
response
exit
!!!
exit
[1, 2, 4, 5, 3] - [1, 2, 3]
[1, 2, 3] - [1, 2, 4, 5, 3]
exit
did_win
exit
did_win
moves
exit
moves
exit
did_win
moves
Board.winning_moves.any? { |win_set| (win_set - moves).empty? }
eit
!!!
guess
@magic_num
guess == @magic_num
exit
CSV.open("../to_do_resume.csv", "wb") do |csv|
  @list.each_with_index do |x, y|
    csv << ["#{y+1}.", " #{x}"]
  end
end
require 'pry'
@list = ["hello world"]
CSV.open("../to_do_resume.csv", "wb") do |csv|
  @list.each_with_index do |x, y|
    csv << ["#{y+1}.", " #{x}"]
  end
end
require 'csv'
CSV.open("../to_do_resume.csv", "wb") do |csv|
  @list.each_with_index do |x, y|
    csv << ["#{y+1}.", " #{x}"]
  end
end
exit
require 'csv'
exit
CSV
require 'pry'
CSV
require 'csv'
CSV
CSV.foreach("data.csv") do |row|
  puts row.inspect
end
exit
require 'csv'
CSV.foreach("foods.csv") do |row|
  puts row.inspect
end
foods_data = CSV.read("foods.csv")
foods_data
foods_data.each do |food|
  puts food.first
  puts food.last
end
foods_data = CSV.read("foods.csv", headers: true)
foods_data.each do |row|
  puts row
end
foods_data.methods - Object.methods
foods_data.headers
exit
require 'csv'
foods_data = CSV.read("foods.csv", headers: true)
foods_data.headers
foods_data.each do |row|
  puts row["name"]
end
foods_data.each do |row|
  puts row["favorite"]
end
foods_data.each do |row|
  puts row[" favorite"]
end
foods_data.each do |row|
end
def print_favs(csv_table)
  csv_table.each do |row|
    if row[" favorite"]
      puts row["name"]
    end
  end
end
def print_other(csv_table)
  csv_table.each do |row|
    if row[" favorite"] == "no"
      puts row["name"]
    end
  end
end
def puts_lists(csv_table)
  puts "Non Favorite Foods"
  puts "-" * 10
  print_other(csv_table)
end
puts_lists(foods_data)
foods_data
exit
load 'lib/student.rb'
Student.new("Bob")
bob = _
bob
bob == Student.new("Bob")
exit
1 == 2
1.send(:==, 2)
exit
"peanut and butter jelly time".split
"peanut and butter jelly time".split[4]
"peanut and butter jelly time".split[5]
"peanut and butter jelly time".split[6]
"peanut and butter jelly time".split[4,1]
"peanut and butter jelly time".split[5,1]
exit
module Chat
  class Foobar
    def initialize
      binding.pry
    end
  end
end
Chat::Foobar.new
ls
caller
self
self.class
self.class.name
self.class.name.split("::")
self.class.name.split("::").first
self.class.name.split("::").first.downcase
self.class.name.split("::").first.downcase.pluralize
exit
(( 7 / 5 ) * 5)
7 - (( 7 / 5 ) * 5)
exit
remaining_change
n
remaining_change
exit
remaining_change
n
((n / 5 ) * 5)
exit
load 'card.rb'
card = Card.new(:hearts, 5)
presenter = CardPresenter.new(card)
presenter.display
card
"hello world"
def get_hype(str)
  str.upcase + "!!"
end
get_hype("hello world")
class String
  def hype
    self.upcase + "!!"
  end
end
"hello world".hype
exit
class NilClass
  def nil?
    false
  end
end
nil.nil?
load 'monkey_patching.rb'
"foo".hype
puts "foo"
puts 100.to_s
puts Object.new
exit
load 'guard-clause.rb'
add_two(40)
add_two(0)
add_two(-19)
add_two(nil)
add_two({})
load 'command_method.rb'
exit
Array.new(height + 2) { Array.new(width + 2) { SPACE }}
height = 10
width = 10
SPACE + "_"
SPACE = "_"
Array.new(height + 2) { Array.new(width + 2) { SPACE }}
Array.new(9) { nil }
Array.new(3) { Array.new(3) { nil} }
Array.new(3) { Array.new(3) { nil } }
hash = Hash.new { [] }
hash[:foobar]
hash = Hash.new { :not_found }
hash[:foobar]
hash[:foobardlkjfd]
hash[:foo] = "Hello"
hash[:foo]
hash[:foobar]
hash = Hash.new { [] }
hash[:foo]
hash[:foo].push(1)
hash[:foo]
hash[:foo] << (1)
hash[:bar]
hash = Hash.new([])
hash[:foo] << (1)
hash[:bar]
hash[:bar] = :hello
hash[:bar]
hash[:foo]
hash[:foobar]
hash[:foobar] << "what is going ON"
hash[:foo]
hash.fetch(:foo)
exit
load 'meter.rb'
Meter.new(10)
Meter.new(10) - Meter.new(5)
Meter.new(10) == Meter.new(10
)
load 'meter.rb'
Meter.new(10) == Meter.new(10
)
load 'meter.rb'
Meter.new(10) == Meter.new(10)
Meter.new(10) == Meter.new(9)
load 'meter.rb'
Meter.new(10) == Meter.new(9)
Meter.new(10) == Meter.new(10)
load 'meter.rb'
Meter.new(10) - Meter.new(5)
load 'meter.rb'
Meter.new(10) - Meter.new(5)
my_height = Meter.new(10
)
my_height
5!
load 'meter.rb'
Meter.new(10) + Meter.new(15)
Meter.new(10) + 50
load 'meter.rb'
Meter.new(10) + 50
50.class
var = Meter.new(30)
var.class
load 'meter.rb'
var = Meter.new(30)
Meter.new(10) + 50
puts Meter.new(10) + 50
load 'meter.rb'
Meter.new(10) + "hello"
load 'meter.rb'
Meter.new(10) + "hello"
load 'meter.rb'
Meter.new(10) + "hello"
Meter.new(10) == "hello"
load 'meter.rb'
Meter.new(10) == "hello"
load 'meter.rb'
Meter.new(10) == 10
load 'meter.rb'
Meter.new(10) == "hello"
Meter.new(10) == Meter.to_meter(10)
load 'meter.rb'
Meter.new(10) == Meter.to_meter(10)
load 'meter.rb'
Meter.new(10) == Meter.to_meter(10)
class Inch
  def initialize(amount)
    @amount = amount
  end
  def amount
    @amount
  end
end
Meter.new(10) == Meter.to_meter(10)
Meter.new(10) == Meter.to_meter("10")
Meter.new(10) == Meter.to_meter(Inch.new(10))
load 'meter.rb'
Meter.new(10) == Meter.to_meter(Inch.new(10))
Meter.to_meter(Inch.new(10))
exit
def Dollar(amt)
  "$#{amt}"
end
Dollar(400
)
exit
space
exit
space
exit
space
x
y
exit
x
y
space
@entities
exit
1!!!
!!!
require 'json'
JSON
JSON.parse
JSON.parse(`curl https://rails-assets.org/components.json`)
components = JSON.parse(`curl https://rails-assets.org/components.json`)
components.map { |comp| comp["name"] }
components.map { |comp| comp["name"] }.count
components.map { |comp| comp["name"] }.select { |name| name.downcase =~ /ske/i }
components.select { |n| n["name"] == "skeleton }
"}
components.select { |n| n["name"] == "skeleton" }
JSON.parse(`curl https://rails-assets.org/components.json`).map { |x| x["name"] }
exit
show-models
show-schema
show-routes
User.all
Chat.all
Message.all
Comment.all
exit
Chat.all
Comment.all
Message.all
Chat
exit
Speaker.rb
Speaker.all
exit
User.first
u = _
u.created_chats
u.viewing_chats
u.speaking_chats
u.chats
exit
u = User.first
u.viewing_chats
u.created_chats
u.speaking_chats
u.participating_chats
u.viewing_chats.and(u.speaking_chats)
r1 = u.created_chats
r2 = u.speaking_chats
r3 = u.viewing_chats
r1r2 = r1.merge(r2)
r1r2r3 = r1r2.merge(r3)
r1r2r3 = r1r2.merge(r3).order(updated_at: :ASC)
User.all.map do |u|
  u.participating_chats
end
u = User.first
Chat.create!({ user_id: u.id, topic: "Foo and bar??" })
exit
u = User.first
aru = User.arel_table
q = User.where(aru[:created_chats])
User.created_chats
u
u.created_chats
User.where(u.created_chats)
User.where(u.created_chats).first
usr
aru
u.created_chats; nil
u.created_chats
u.created_chats.to_sql
u.viewing_chats.to_sql
u.speaking_chats.to_sql
aru.joins(:viewers).on(
)
u.participating_chats.to_sql
u.participating_chats
exit
u = User.first
u.participating_chats
u
u.created_chats
u.created_chats | u.speaking_chats
(u.created_chats | u.speaking_chats).to_sql
[u.created_chats.to_sql, u.speaking_chats.to_sql].join(") OR (")
u.speaking_chats.to_sql
u.speaking_chats
Chat.all
Message
Message.create!(body: "I love kitttenennnssss", user_id: u.id, chat_id: 4)
Speaker.all
Speaker.create!(user_id: u.id, chat_id: 4)
u.created_chats.union(u.speaking_chats)
u.created_chats.union(u.speaking_chats).to_sql
u.created_chats.union(u.speaking_chats).each do |c|
  puts c
end
User.union(:all, u.created_chats.union(u.speaking_chats))
Chat.where(private: false).union(:all, u.created_chats.union(u.speaking_chats))
User.form(User.arel_table.create_table_alias(u.created_chats.union(u.speaking_chats)), :users)
User.form(User.arel_table.create_table_alias(u.created_chats.union(u.speaking_chats)))
User.form(User.arel_table.create_table_alias(u.created_chats.union(u.speaking_chats), :users))
User.from(User.arel_table.create_table_alias(u.created_chats.union(u.speaking_chats), :users))
User.from(User.arel_table.create_table_alias(u.created_chats.union(u.speaking_chats), :users)).each do |u|
  puts u
end
User.from(User.arel_table.create_table_alias(u.created_chats.union(u.speaking_chats), u.id)).each do |u|
  puts u
end
Chat.from(User.arel_table.create_table_alias(u.created_chats.union(u.speaking_chats), u.id)).each do |u|
  puts u
end
User.arel_table.create_table_alias(u.created_chats.union(u.speaking_chats), u.id).each do |u|
  puts u
end
u.viewing_chats
exit
Chat.for_user(User.first)
reload
reload!
Chat.for_user(User.first)
reload!
Chat.for_user(User.first)
reload!
Chat.for_user(User.first)
Chat.for_user(User.first).to_sql
reload!
Chat.for_user(User.first).to_sql
Chat.for_user(User.first)
Chat.for_user(User.first).to-sql
Chat.for_user(User.first).first
reload!
Chat.for_user(User.first).first
Chat.for_user(User.first)
reload!
Chat.for_user(User.first)
reload!; Chat.for_user(User.first)
Chat.joins(:chat_users)
Chat.joins(:chat_users, :speakers)
Chat.joins(:chat_users, :speakers).first
Chat.joins(:chat_users, :chat_viewers)
Chat.references(:chat_users)
Chat.references(:chat_users, :chat_viewers)
Chat.references(:chat_users, :chat_viewers).where(chat_id: 1)
Chat.references(:chat_users, :chat_viewers).where(user_id: 1)
Chat.references(:speakers, :chat_viewers).where(user_id: 1)
Chat.references(:speakers, :chat_viewers).where("speakers.user_id = ?", 1)
Chat.references(:speakers, :chat_viewers).where("speakers.user_id = ?", 1).first
Chat.references(:speakers, :chat_viewers).joins(:speakers).where("speakers.user_id = ?", 1).first
Chat.includes([:speakers, :chat_viewers])
Chat.includes([:speakers, :chat_viewers]).where("speakers.user_id = ?", 1)
Chat.includes([:speakers, :chat_viewers]).where("speakers.user_id = ?", 1).first
Chat.includes([:speakers, :chat_viewers]).where("speakers.user_id = ?", 1).references(:speakers).first
Chat.includes([:chat_users, :chat_viewers]).where("speakers.user_id = ?", 1).references(:chat_users).first
Chat.includes([:chat_users, :chat_viewers]).where("speakers.user_id = ? OR viewers.user_id = ?", 1, 1).references(:chat_users, :chat_viewers).first
Chat.select(:topic).includes([:chat_users, :chat_viewers]).where("speakers.user_id = ? OR viewers.user_id = ?", 1, 1).references(:chat_users, :chat_viewers).first
Chat.select(:topic).includes([:chat_users, :chat_viewers]).where("chats.user_id = ? OR speakers.user_id = ? OR viewers.user_id = ?", 1, 1, 1).references(:chat_users, :chat_viewers).first
Chat.select(:topic).includes([:chat_users, :chat_viewers]).where("chats.user_id = ?", 1).references(:chat_users, :chat_viewers).first
Chat.select(:topic).includes([:chat_users, :chat_viewers]).where("chats.user_id = ? OR speakers.user_id = 1", 1).references(:chat_users, :chat_viewers).first
Chat.select(:topic).includes([:chat_users, :chat_viewers]).where("chats.user_id = ? AND speakers.user_id = 1", 1).references(:chat_users, :chat_viewers).first
Chat.select(:topic).includes(:chat_users, :chat_viewers).where("chats.user_id = ? AND speakers.user_id = 1", 1).references(:chat_users, :chat_viewers).first
Chat.includes(:chat_users, :chat_viewers).where("chats.user_id = ? OR speakers.user_id = 1", 1).references(:chat_users, :chat_viewers).first
Chat.includes(:chat_users, :chat_viewers).where("chats.user_id = ?", 1).references(:chat_users, :chat_viewers).first
Chat.includes(:chat_users, :chat_viewers).where("chats.user_id = ? OR speakers.user_id = 1", 1).references(:chat_users, :chat_viewers).first
Chat.joins(:chat_users, :chat_viewers).where("chats.user_id = ?", 1).references(:chat_users, :chat_viewers).first
Chat.joins(:chat_users, :chat_viewers).where("chats.user_id = ? OR speakers.user_id = 1", 1).references(:chat_users, :chat_viewers).first
exit
Chat.execute
Chat.connection.execute
Chat.connection.execute("*")
Chat.connection.execute("SELECT * FROM chats")
Chat.connection.execute("SELECT * FROM chats").first
Chat.select("*")
Chat.select("* WHERE user_id = 1")
Chat.select("* WHERE user_id = 1").first
Chat.from
Chat.from("chats")
Chat.from("speakers")
Chat.from("speakers").first
Chat.find_by_sql("SELECT * FROM chats")
reload!
Chat.for_user(User.first)
reload! ; Chat.for_user(User.first)
reload!
Message.where(user_id: nil)
Message.where(user_id: nil).each do |message|
  message.user_id = Speaker.where(chat_id: message.chat_id).sample.user_id
  message.save!
end
Message.where(user_id: nil)
Speaker.where(chat_id: 5)
Chat.find(5)
Message.where(user_id: nil).update_all
Message.where(user_id: nil).update_all(user_id: 1)
exit
"Justin Herrick"
full_name = _
full_name
full_name.split(" ")
split_name = full_name.split(" ")
first = split_name.first
last = split_name.last
first, last = full_name.split(" ")
first
last
tld = "com/"
tld[0..-1]
tld[0..-2]
domain_tld_and_resource_fragments
tld = domain_tld_and_resource_fragments.last
domain_name = domain_tld_and_resource_fragments[-2]
sub_domain = domain_tld_and_resource_fragments[-3]
domain_tld_and_resource_fragments.shift
domain_tld_and_resource_fragments
domain_tld_and_resource_fragments.pop
exit
resource
id
resource_gragments
resource_fragments
exit
host_info
resource_fragments
uri
exit
uri
host_info
resource_fragments
first, last = "justin Herrick".spli(" ")
first, last = "justin Herrick".split(" ")
first, last = "justin Allen Herrick".split(" ")
first
last
first, *last = "justin Allen Herrick".split(" ")
first
last
exit
exit
client
client.methods
client.readlines
client
client.methods - Object.methods
client.addr
client.local_address
client.echo?
client.methods - Object.methods
client.each do |d|
  puts d
end
exit
route
query_param_string
uri_fragments
exit
route
route.split(/)
/)
route.split('/')
protocol
route.split('/')[0]
route.split('/')[2]
route.split('/')[1
]
exit
client
e
$!
$!.message
$!.stacktrace
$!.backtrace
exit
request
n = socket.gets
exit
header
header.split(":")
request_headers
exit
header
exit
header
exit
header
exit
header
exit
header
exit
header
exit
header
exit
pieces
uri
route
uri.split('?')
exit
uri_fragments
exit
line
socket.gets
exit
socket.gets
exit
line
request
socket.gets
exit
socket.gets
exit
line
socket.gets
exit
line
socket.gets
exit
line
socket.gets
exit
exity
exit
request
socket.gets(nil)
socket
socket.gets
exit
request
socket.gets
socket.getc
socket.recv(1)
socket.recv(0)
socket.gets(nil)
exit
request
exit
request_headers
exit
request_headers
exit
request_body
request_headers
request_body
exit
request_body
request_body.map { |x| x.split("\r\n") }
request_body.map { |x| x.split("\r\n") }.split
request_body.map { |x| x.split("\r\n") }.flatten
request_body.map { |x| x.split("\r\n") }.flatten.map { |x| x unless x =~ /WebKitFormBoundary/ }
request_body.map { |x| x.split("\r\n") }.flatten.map { |x| x unless x =~ /WebKitFormBoundary/ }.compact
request_body.map { |x| x.split("\r\n") }.flatten.map { |x| x unless x =~ /WebKitFormBoundary/ }.compact.map { |x| x.split("=") }
request_body
request_body.map { |x| x.split("------WebKitFormBoundary8itrTKLrBpudzMAa") }
request_body.map { |x| x.split("------WebKitFormBoundary8itrTKLrBpudzMAa") }.length
request_body.map { |x| x.split("------WebKitFormBoundary8itrTKLrBpudzMAa") }.flatten
request_body.map { |x| x.split("------WebKitFormBoundary8itrTKLrBpudzMAa\r\n") }
request_body.map { |x| x.split("") }
request_body.map { |x| x }
request_body.map { |x| x }.count
request_body.map { |x| x }[0]
request_body.map { |x| x }[1]
request_body.map { |x| x }[2]
request
request.split("------WebKitFormBoundary8itrTKLrBpudzMAa")
request.split("------WebKitFormBoundary8itrTKLrBpudzMAa").map { |x| x.split("\r\n\r\n") }
exit
request_headers
request_body
request_body.map { |x| x.split(';').last }
request_body.map { |x| x.split(';').last.split("\r\n\r\n") }
request_body.map { |x| x.split(';').last.gsub(/ name="(.+)"/, $1).split("\r\n\r\n") }
request_body.map { |x| x.split(';').last.gsub(/ name="(.+)"/, \1).split("\r\n\r\n") }
request_body.map { |x| x.split(';').last.gsub(/ name="(.+)"/, '\1').split("\r\n\r\n") }
request_body.map { |x| x.split(';').last.gsub(/ name="(.+)"/, '\1').gsub("\r\n", '').split("\r\n\r\n") }
request_body.map { |x| x.split(';').last.gsub(/ name="(.+)"/, '\1').split("\r\n\r\n") }
request_body.map { |x| x.split(';').last.gsub(/ name="(.+)"/, '\1').split("\r\n\r\n").map { |z| z.gsub("\r\n", '') }
}
exit
@request
parsed_request_body
Hash[parsed_request_body]
@request[:params]
exit
@request[:params]
Hash[parsed_request_body]
@request[:params].merge!(Hash[parsed_request_body])
@request
exit
@request
exit
require 'json'
JSON.parse("1")
1.to_json
{ foo: "bar"}.to_json
JSON.parse("{\"foo\":\"bar\"}")
hash = { foo: "bar"}
hash[:foo]
from_json_hash = JSON.parse(hash.to_json)
from_json_hash[:foo]
from_json_hash["foo"]
Hash[from_json_hash.map { |k,v| [k.to_sym, v] }]
from_json_hash
from_json_hash.map do |key, val|
  puts key, bal
end
from_json_hash.map do |key, val|
  puts key, val
end
from_json_hash.keys
from_json_hash.keys.first.to_sym
{ foo: :bar, baz: nil }.to_json
JSON.parse({ foo: :bar, baz: nil }.to_json)
JSON.parse({ foo: :bar, baz: Fixnum }.to_json)
JSON.parse({ foo: :bar, baz: [1, 2, Array.new, Fixnum }.to_json)
JSON.parse({ foo: :bar, baz: [1, 2, Array.new, Fixnum] }.to_json)
Fixnum
exit
module Math
  def Math.double(n)
    n * 2
  end
end
Math.double(2)
class User
  def initialize
  end
  def User.create_admin
    @admin = true
  end
end
User.new
User.create_admin
class User
  def User.create_admin
    User.new
    user.admin = true
  end
  def admin=(yes)
    @admin= yes
  end
end
User.create_admin
exit
def hello_world
end
class User
  attr_accessor :first_name
  ,
end
class User
  attr_accessor :first_name,
  def initialize(foo)
    @first_name = foo
  end
end
User.new('justin')
User.new
u = _
u
u.methods
exit
1 + 1
1.send(:+, 1)
Object.new.methods
my_str = "justin herrick"
action = gets.chomp
my_str.send(action.to_sym)
exit
[false, nil, nil, nil, 1, 10, a = 10, b = a, a = c].find
[false, nil, nil, nil, 1, 10, a = 10, b = a].find
[false, nil, nil, nil, 1, 10, a = 10, b = a].find.first
[false, nil, nil, nil, 1, 10, a = 10, b = a].find(&:itself)
[false, nil, nil, nil, 1, 10, a = 10, b = a, a = c].find(&:itself)
exit
Regex.new("/users/:id/edit")
Regexp.new("/users/:id/edit")
Regexp.new("/users/:id/edit".gsub(/:.+\//, ".+"))
Regexp.new("/users/:id/edit".gsub(/:.+\//, ".+\/"))
Regexp.new("/users/:id/edit".gsub(/:.+\//, ".+\/")) =~ "users/10/edit"
"users/10/edit" =~ Regexp.new("/users/:id/edit".gsub(/:.+\//, ".+\/"))
"/users/10/edit" =~ Regexp.new("/users/:id/edit".gsub(/:.+\//, ".+\/"))
exit
url_str
route_match?(url_str)
get?
exi
exit
get?
route_match?(url_str)
url_str
Regexp.new("^#{@request[:route].gsub(/:.+\//, ".+\/")}$")
exi
exit
url_str
route_match?(url_str)
@request[:route]
Regexp.new("^#{@request[:route].gsub(/:.+\//, ".+\/")}$")
Regexp.new("^#{url_str.gsub(/:.+\//, ".+\/")}$")
url_str.gsub(/:.+\//, '')
url_str.gsub(/:\.+\//, '')
Regexp.new("^#{url_str.gsub(/:.+[\/\s]/, ".+\/")}$")
url_str.gsub(/:\.+[\/\s]/, '')
url_str.gsub(/:\.+[\/\w]/, '')
url_str.gsub(/:\.+[\/\n]/, '')
url_str.gsub(/:\.+[\/\B]/, '')
url_str.gsub(/:\.+[\/\W]/, '')
url_str.gsub(/:\.+[\/\s]/, '')
url_str.gsub(/:\.+[\/\S]/, '')
url_str.gsub(/:\.+[\/\S]/, '(!!)')
url_str.gsub(/:\.+/, '(!!)')
url_str.gsub(/:.+/, '(!!)')
url_str.gsub(/:.+[\/]/, '(!!)')
url_str.gsub(/:.+[\/\b]/, '(!!)')
url_str.gsub(/:.+[\/\s]/, '(!!)')
url_str.gsub(/:.+[\/\w]/, '(!!)')
url_str.gsub(/:.+[\/\w]/, '(!!)')exit
exit
route_match?(url_str)
url_str
exit
url_str
route_match?(url_str)
@request[:route] =~ Regexp.new("^#{url.gsub(/:.+[\/\w]/, ".+\/")}$")
@request[:route] =~ Regexp.new("^#{url_str.gsub(/:.+[\/\w]/, ".+\/")}$")
Regexp.new("^#{url_str.gsub(/:.+[\/\w]/, ".+\/")}$")
Regexp.new("^#{url_str.gsub(/:.+[\/\w]/, ".+")}$")
@request[:route] =~ Regexp.new("^#{url_str.gsub(/:.+[\/\w]/, ".+")}$")
exit
Regexp.new("^#{url_str.gsub(/:.+[\/\w]/, ".+")}$")
url_str
'\/users\/.+?[\/\n]edit'
Regexp.new("^#{"/users/:id/edit".gsub(/:.+[\/\w]/, ".+")}$")
"/users/:id/edit".gsub(/:.+[\/\w]/, ".+")
"/users/:id/edit".gsub(/:.+[\/\w](.+)/, ".+\1")
"/users/:id/edit".gsub(/:.+[\/\w](.+)/, ".+\2")
"/users/:id/edit".gsub(/:.+[\/\w](.+)/, '.+\1')
"/users/:id/edit".gsub(/:.+[\/\w]/, ".+")
"/users/:id/edit".gsub(/:.+[\/\w]//, ".+")
"/users/:id/edit".gsub(/:.+[\/\w]\//, ".+")
"/users/:id/edit".gsub(/:.+\//, ".+")
"/users/:id/edit".gsub(/:.+\//, ".+/")
"/users/:id".gsub(/:.+\//, ".+/")
"/users/:id/edit".gsub(/:.+\//, ".+/")
exit
!!!
exit
route_match?(url_str)
url_str
@request[:route]
Regexp.new("^#{url.gsub(/:.+\//, ".+\/")}$")
Regexp.new("^#{url_str.gsub(/:.+\//, ".+\/")}$")
url
url_str
@request[:route]
url_str.gsub(/:.+/)
url_str.gsub(/:.+/, "(.+)")
"/users/:id/edit".gsub(/:.+/, "(.+)")
"/users/:id/edit".gsub(/:.+?\//, "(.+)")
"/users/:id/edit".gsub(/:.+(?\/)/, "(.+)\1")
"/users/:id/edit".gsub(/:.+/, "(.+)")
"/users/:id/edit".gsub(/:.+/, "(.+)/")
"/users/:id/edit".gsub(/:.+?(\/.+)/, "(.+)/")
"/users/:id/edit".gsub(/:.+?(\/.+)/, "(.+)/\1")
"/users/:id/edit".gsub(/:.+?(\/.+)/, "(.+)/$1")
"/users/:id/edit".gsub(/:.+?(\/.+)/, "(.+)/\1")
"/users/:id/edit".gsub(/:.+?(\/.+)/, "(.+)\1")
"/users/:id/edit".gsub(/:.+?(\/.+)/, "(.+)(\1)")
"/users/:id/edit".gsub(/:.+ ?(\/.+)/, "(.+)\1")
"/users/:id/edit".gsub(/:.+?(\/.+)/, "(.+)\1")
"/users/:id/edit".gsub(/:.+?(\/.+)/, '(.+)\1')
"/users/:id".gsub(/:.+?(\/.+)/, '(.+)\1')
exit
!!!
exit
route_match?(url_str)
url_str
@request[:route]
@request[:route] =~ Regexp.new("^#{url.gsub(/:.+?(\/.+)/, '(.+)\1')}$")
Regexp.new("^#{url_str.gsub(/:.+?(\/.+)/, '(.+)\1')}$")
url_str.gsub(/:.+?(\/.+)/, '(.+)\1')
url_str
url_str.gsub(/:.+?[(\W)(\/.+)]/, '(.+)\1')
exit
!!!
url_str
exit
url_str
route_match?(url_str)
exit
class User
  def to_json
    { first_name: "justin" }
  end
end
require 'json'
[User.new, User.new, User.new]
[User.new, User.new, User.new].to_json
[User.new, User.new, User.new]
User.new
User.new.to_json
User.new.to_json.to_json
[].to_json
[User.new].to_json
[User.new].to_json(true)
[User.new].to_json
class User
  def to_json(wat)
    puts wat
    { first_name: "justin" }
  end
end
[User.new].to_json
def to_json(wat)
end
class User
  def to_json(wat)
    puts wat
    { first_name: "justin"}.to_json
  end
end
[User.new].to_json
JSON.parse [User.new].to_json
class vim
end
exit
socket.gets
exit
socket.gets
exit
"taco cat"
"taco cat".gsub(' ', '')
"taco cat".gsub(' ', '').downcase
"taco cat".gsub(' ', '').downcase.reverse
reversed = "taco cat".gsub(' ', '').downcase.reverse
reversed == reversed.reverse
exit
require 'uuid'
require 'securerandom'
SecureRandom.uuid
require 'securerandom'
SecureRandom.uuid
require 'securerandom'
SecureRandom.uuid
SecureRandom.sha
SecureRandom.methods
SecureRandom.hex
exit
"".empty?
exit
request
socket.gets
exit
request_headers
request_body
request
exit
socket.recv(1024)
socket.read
socket
socket.gets
socket.rewind
socket.class
socket.methods
socket.close_read
socket.eof?
!!!
exit
socket.eof?
IO.select([s])
IO.select([socket])
IO.select(s
  _
IO.select(socket)
socket.gets
socket.recv(10)
socket.readlines
socket.gets
exit
class Foo
  def self.fizzbuzz
    'fizzbuzz'
  end
end
Foo.fizzbuzz
Foo.singleton_methods
a = "hello"
def a.coolio
  'yep'
end
a.singleton_methods
a.coolio
"ddd".coolio
class Foo
  self << do
end
class Foo
  class << self
    def bar
      "bar"
    end
  end
end
Foo.bar
Foo.singleton_methods
class Foo
  class << Foo
    def bizz
      'bizz'
    end
  end
end
Foo.bizz
Foo = Class.new do
  class << Foo
    def bizz
      'bizz
end
'
    end
  end
end
Baz = Class.new do
  self << Baz
  def biz
    'biz'
  end
end
Baz
Baz = Class.new do
  class << self
    def name
      "baz"
    end
  end
end
Baz.name
exit
request
request.methods - Object.methods
request.body
request.port
request.header
request.request_method
request.path
request.content_type
request.content_length
request.meta_bars
request.query_string
exit
Foo = Class.new do
  class.push(self)
    def foo
      'bar'
    end
  end
end
en
exit
@tweet
params
request
exit
request
exit
@request[:path]
@request[:paths]
url
@request[:route]
url.split('/')
url.drop(1).split('/')
url[1..-1]split('/')
url[1..-1].split('/')
url[1..-1].split('/').zip(@request[:paths])
url[1..-1].split('/').zip(@request[:paths]).select do |k, v|
  k[0] == ":"
end
exit
"Wake up!".downcase.gsub(/[ !\?]/, '')
exit
@request
@request[:raw_request].referrer
@request[:raw_request].methods - Object.methods
@request[:raw_request].raw_header
exit
params
exit
params
@tweet
exit
url_str
route_match?(url_str)
show-method route_match?
url_str.gsub(/:.+?[\w(\/.+)]/, '(.+)\1')
exit
show-method route_match?
route_match?(url_str)
url_str.gsub(/:.+(?=[\/\b])/, '(.+)\1')
url_str.gsub(/:.+(?=[\/\b])/g, '(.+)\1')
until (str = url_str.gsub(/:.+(?=[\/\b])/, '(.+)\1')).include?(":") == false do
  str = url.gsub(/:.+(?=[\/\b])/, '(.+)\1')
end
until (str = url_str.gsub(/:.+(?=[\/\b])/, '(.+)\1')).include?(":") == false do
  str = url_str.gsub(/:.+(?=[\/\b])/, '(.+)\1')
end
"Apollo 12".gsub(/(\w+) (\d+)/) do |matches|
  puts matches.inspect, matches
  puts Regexp.last_match.inspect
end
"Apollo 12".gsub(/(\w+) (\d+)/) do |matches|
  puts Regexp.last_match[0]
  puts Regexp.last_match[1]
  puts Regexp.last_match[2]
end
puts nil
"Apollo 12".gsub(/(\w+) (\d+)/) do |matches|
  puts Regexp.last_match[0]
  puts Regexp.last_match[1]
  puts Regexp.last_match[2]
  puts Regexp.last_match[3]
end
exit
"hello/:world/".include?(":")
"hello/:world/".include?("z")
exit
Regexp.last_match
Regexp.last_match[1]
exit
Regexp.last_match[1]
Regexp.last_match
str
exit
!!!
exit
exi
exit
new_id
params
request
request[:raw_request].body
request[:raw_request]
exit
body = "message=My+new+tweet&commit=Submit"
body.split('&')
body.split('&').map { |x| x.split("=") }
require 'uri'
URI.decode("My+new+tweet")
URI.encode("My+new+tweet")
body.split('&').map { |x| x.split("=") }
body.gsub('+', ' ').split('&').map { |x| x.split("=") }
body.gsub('+', ' ').split('&').map { |x| x.split("=") }.map { |k, v| [k.to_sym, v] }
Hash[body.gsub('+', ' ').split('&').map { |x| x.split("=") }.map { |k, v| [k.to_sym, v] }]
exit
params
require 'uri'
URI.decode(params[:message])
exit
tweet
App.tweeets
App.tweets
exit
@tweet
App.tweets
params[:id]]
params[:id
]
params[:id]
params
exit
params
@request
@request[:params]
@request
@request[:route]
url
url_str
exit
!!!
@request[:params]
exit
@twet
@tweet
exit
params
request[:raw_request]["MimeTypes"]
request[:raw_request]
request[:raw_request].mime_types
request[:raw_request].config
request[:raw_request]["config"]
request[:raw_request].get_config
request[:raw_request].methods
request[:raw_request].attributes
request[:raw_request].to_json
request[:raw_request].each do |x| puts x end
request[:raw_request]
cd request[:raw_request]
ls
@config
@config["MimeTypes"]
@config[:MimeTypes]
exit
request[:raw_request][:MimeTypes]
request[:raw_request][:config]
request[:raw_request].config
ls
cd request[:raw_request]
ls
WEBrick::HTTPUtils
WEBrick::HTTPUtils.methods
WEBrick::HTTPUtils.mime_type
WEBrick::HTTPUtils.mime_type('xml', 'application/xml')
WEBrick::HTTPUtils.mime_type(0
)
WEBrick::HTTPUtils.mime_type(0, 1)
WEBrick::HTTPUtils.mime_type(0, '')
WEBrick::HTTPUtils.mime_type('', '')
WEBrick::HTTPUtils.methods - Object.methods
WEBrick::HTTPUtils::DefaultMimeTypes
exit
WEBrick::HTTPUtils::DefaultMimeTypes
WEBrick::HTTPUtils::DefaultMimeTypes[request[:format]]
request[:format]
request
params
exit
request[:format]
exit
params
request[:format]
exit
params
exit
params
exit
params
request[:raw_request]
exit
file_name
exit
file_name
`sass #{file_name}`
exit
raw_request.query
exit
raw_request.query
exit
!!
!!!
ARGB
ARGV
ARGV[1\
  ARGV[1\]
]
ARGV[1]
ARGV[1] == "--verbose"
t.verbose
exit
Router.new
Router.new)
Router.new('foo')
r = _
r
r.methods - Object.methods
r.private_methods
r.private_methods - Object.methods
r.private_methods - Object.private_methods
r.send(:replace_dynamic_segments)
r.send(:replace_dynamic_segments, '/:id')
exit
!!!
posts = [ { name: 'foo', comments: [ { title: 'comment foo' } ] ]
posts = [ { name: 'foo', comments: [ { title: 'comment foo' } ] }]
posts
posts.first[:comments]
posts[:comments]
posts.each do |p|
  puts p.comments
end
posts.each do |p|
  puts p[:comments]
end
require 'json'
posts.each do |p|
  puts p[:comments].to_json
end
posts.map { |p| p[:comments] }
posts.map { |p| p[:comments] }.to_json
posts.flat_map { |p| p[:comments] }
posts.flat_map { |p| p[:comments] }.to_json
exit
class Hash
  def method_missing(*args, &block)
    if keys.include?(args.first)
      self[args.first]
    end
  end
end
{ :foo => 2, :bar => "yolo" }
a = _
a.foo
a.bar
a.baz
a["fizzbuzz"] = "noo"
a.fizzbuzz
class Hash
  def method_missing(method_name, *args, &block)
    if keys.include?(method_name.to_sym)
      self[method_name]
    else
      public_send(method_name, *args, &block)
    end
  end
end
a = { foo: 2, :bar => "yolo", "fizzbuzz" => "kata" }
a.fizzbuzz
class Hash
  def method_missing(method_name, *args, &block)
    if keys.include?(method_name.to_sym)
      self[method_name]
    else
      super(method_name, *args, &block)
    end
  end
end
a = { foo: 2, :bar => "yolo", "fizzbuzz" => "kata" }
a.foo
a.bar
a.fizzbuzz
a."fizzbuzz"
a.send(:fizzbuzz)
a.bar
a[:fizz] = "bazz"
a["buzz"] = "bolo
"
a.fizz
a.buzz
a.foo
a.bar
a.fizzbuzz
a.fizz
a.buzz
a.keys
a.dig(:foo)
a[:deep] = { so_long: :so_gone }
a.deep
a.deep.so_long
a[:deep][:down] = [1, 2, 3, 4]
a.deep.down
a.deep.down[0]
a.deep.down.0
a.deep.down.zero
class Array
  def method_missing(meth, *args, &block)
    nums = {
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine"
    }
    meth_pieces = meth.to_s.split("_")
    num_from_name = meth_pieces.map { |x| nums.invert(x) }
    self[nums_from_name.join('').to_i]
  end
end
[1, 2, 3, 4].four
class Array
  def method_missing(meth, *args, &block)
    nums = {
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine"
    }
    meth_pieces = meth.to_s.split("_")
    num_from_name = meth_pieces.map { |x| nums.invert[x] }
    self[nums_from_name.join('').to_i]
  end
end
[1, 23, 4, 5].four
class Array
  def method_missing(meth, *args, &block)
    nums = {
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine"
    }
    meth_pieces = meth.to_s.split("_")
    num_from_name = meth_pieces.map { |x| nums.invert[x] }
    puts meth_pieces, num_from_name
  end
end
[1, 2,3].one
[1, 2,3].four
[1, 2,3].three
[1, 24,3, 4].three
[1, 24,3, 4].three_four
class Array
  def method_missing(meth, *args, &block)
    nums = {
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine"
    }
    meth_pieces = meth.to_s.split("_")
    num_from_name = meth_pieces.map { |x| nums.invert[x] }
    puts nums_from_name.join('').to_i
  end
end
[1, 2, 3].two
class Array
  def method_missing(meth, *args, &block)
    nums = {
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine"
    }
    meth_pieces = meth.to_s.split("_")
    num_from_name = meth_pieces.map { |x| nums.invert[x] }
    self[num_from_name.join('').to_i]
  end
end
[1, 2, 3].three
[1, 2, 3].two
[1, 2, 3].1
[1, 2, 3].one
(a..z).to_a
('a'..'z').to_a
('a'..'z').to_a.four
('a'..'z').to_a.four_two
('a'..'z').to_a.one_two
('a'..'z').to_a.dkljfdlj
('a'..'z').to_a.dkldkfj
exit
request
request[:method
]
whereami
http_method
self
exit
self
exit
self
route_match?(request[:route])
exit
params
request
exit
params
request
exit
request
params
exit
self
x
exit
Fixnum([1,2])
FixNum([1,2]_
FixNum([1,2])
1.class
Fixnum
Fixnum('2')
Number('2')
Integer('2')
Integer([1, 2])
Integer("foo")
"foo".to_i
[1,1, 2].to_i
exit
str
max_columns
pieces
str.scan(/.{2}/)
str.scan(/.{3}/)
str.scan(/.{4}/)
str.scan(/.{1}/)
str.scan(/.{2}/)
exit
"hello world".chars
"hello world".chars.map { |x| "#{x}!" }
"hello world".chars.map { |x| "#{x}!" }.join
exit
Post.new
itle: nil, editor: nil, body: nil, created_at: nil, updated_at: nil>
[2] pry(main)>
Post.new
Post.first
my_first_post = Post.first
my_first_post
my_first_post.id
my_first_post.title
my_first_postedito
my_first_post.editor
my_first_post.editor = "Justin"
Post.first
my_first_post
my_first_post.persisted?
my_first_post.editor_changed?
my_first_post.save
my_new_post = Post.new
my_new_post.title = "Super Cool"
my_new_post.body = "foobar"
my_new_post.editor = "Jake"
my_new_post.save
Post.last
Post.new(title: "Magic Ttitle!", body: "Such cool", editor: "Vivek").save
Post.last
Post.where(editor: "Justin")
Post.where(editor: "J")
Post.where(editor: "%J%")
Post.where("LIKE = "%i%")
")
Post.where("LIKE = '%i%'")
Post.where("editor LIKE = '%i%'")
Post.where("editor LIKE = '%i%'").first
Post.where("editor LIKE '%i%'")
Post.select(:title)
Post.select(:id, :title)
Post.select(:id, :title).where(editor: "Justin")
Post.select(:id, :title).where(" title LIKE '%Cool%'")
Post.select(:id, :title).where(" title LIKE '%Cool%'").order(title: :ASC)
Post.select(:id, :title).where(" title LIKE '%Cool%'").order(title: :DESC)
Post.first
Post.all
Post.limit(10)
Post.limit(10).offset(1)
Post.group(:title)
#<Post:0x007fb94d4c24e0
id: 3,
title: "Magic Ttitle!",
editor: "Vivek",
body: "Such cool",
created_at: Tue, 29 Mar 2016 16:46:38 UTC +00:00,
updated_at: Tue, 29 Mar 2016 16:46:38 UTC +00:00>,
#<Post:0x007fb94d4c2350
id: 1,
title: "My Cool Post",
editor: "Justin",
body: "blah blah blah blah",
created_at: Tue, 29 Mar 2016 16:39:34 UTC +00:00,
updated_at: Tue, 29 Mar 2016 16:44:08 UTC +00:00>,
#<Post:0x007fb94d4c20a8
id: 2,
title: "Super Cool",
editor: "Jake",
body: "foobar",
created_at: Tue, 29 Mar 2016 16:45:10 UTC +00:00,
ls
Post
Post.methods
(Post.methods - Object.methods).count
(Post.methods - Object.methods)
Post.first
Post.second
Post.third
Post.fourth
Post.fourth!
Post.fourth
exit
Post.all
exit
Post.destroy_all
Post.create!
exit
