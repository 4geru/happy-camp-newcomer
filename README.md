# chatwork gem
## このrepositoryについて
chatworkのgemを使ってメッセージの送信/部屋を行うサンプルです。

- chatworkを簡単に操作できる`gem`が存在するため、それを利用しました。
https://github.com/asonas/chatwork-ruby

## 環境変数について
環境変数は隠しファイルでおいておきます。詳しくは `dotenv`, `ruby` とかで調べてください。

.env
```
CHATWORK='CHATWORK_TOKEN'
```
## Apisについて
Class methodとInstance methodで操作することができます。
どちらのmethodも挙動的に差異は少ないので、`Instance method vs Class method` とかで調べてみてください。
READMEでは、Class method/Instance methodで、messageにidを送る例を記述しておきます。

### Class method Apis
[Class method Apis](https://github.com/asonas/chatwork-ruby#class-method-apis)のなかに利用できるmethodが記述されています。

```
ChatWork.access_token = "XXX"
ChatWork::Message.create(room_id: 1234, body: "Hello, ChatWork!")
```

### Instance method Apis
`lib/chatwork/client`の中のmethodを使えるようです。
[asonas/chatwork-ruby lib/chatwork/client.rb](https://github.com/asonas/chatwork-ruby/blob/master/lib/chatwork/client.rb)

```
client = ChatWork::Client.new(access_token: "XXX")
client.create_message(room_id: 1234, body: "Hello, ChatWork!")
```
