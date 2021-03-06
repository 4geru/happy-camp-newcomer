require 'chatwork'
require 'dotenv/load'

# raw chatwork api
ChatWork.api_key = ENV['CHATWORK_TOKEN']
tsukky = ChatWork::Contacts.get.first
me = ChatWork::Me.get
# send message to tsukky
ChatWork::Message.create(room_id: tsukky['room_id'], body: "Hello, ChatWork!")
# create room me and tsukky
ChatWork::Room.create(members_admin_ids: [tsukky['account_id'], me['account_id']], name: 'test01')

# use client
client = ChatWork::Client.new(api_key: ENV['CHATWORK_TOKEN'])
tsukky = client.get_contacts.first
me = client.get_me
# send message to tsukky
client.create_message(room_id: tsukky['room_id'], body: "Hello, ChatWork!")
# create room me and tsukky
client.create_room(members_admin_ids: [tsukky['account_id'], me['account_id']], name: 'test02')
