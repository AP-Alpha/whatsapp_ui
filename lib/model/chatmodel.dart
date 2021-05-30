class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;
  final bool seen, online;

  ChatModel({
    this.name,
    this.message,
    this.time,
    this.avatarUrl,
    this.seen,
    this.online,
  });
}

List<ChatModel> testData = [
  new ChatModel(
    name: "Mark",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: "https://randomuser.me/portraits/men/88.jpg",
    seen: false,
    online: true,
  ),
  new ChatModel(
    name: "Shiela",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: "https://randomuser.me/portraits/women/58.jpg",
    seen: true,
    online: false,
  ),
  new ChatModel(
    name: "David",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: "https://randomuser.me/portraits/men/22.jpg",
    seen: true,
    online: true,
  ),
  new ChatModel(
    name: "Cloie",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: "https://randomuser.me/portraits/women/43.jpg",
    seen: false,
    online: false,
  ),
  new ChatModel(
    name: "Randale",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: "https://randomuser.me/portraits/women/15.jpg",
    seen: true,
    online: false,
  ),
  new ChatModel(
    name: "Monica",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: "https://randomuser.me/portraits/women/3.jpg",
    seen: true,
    online: false,
  ),
  new ChatModel(
    name: "Henley",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: "https://randomuser.me/portraits/women/2.jpg",
    seen: true,
    online: true,
  ),
  new ChatModel(
    name: "Morgan",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: "https://randomuser.me/portraits/men/1.jpg",
    seen: true,
    online: false,
  ),
  new ChatModel(
    name: "Nathan",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: "https://randomuser.me/portraits/men/15.jpg",
    seen: true,
    online: true,
  ),
  new ChatModel(
    name: "kelly",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: "https://randomuser.me/portraits/women/6.jpg",
    seen: true,
    online: false,
  ),
  new ChatModel(
    name: "Harry",
    message: "Hey Flutter, You are amazing !",
    time: "15:30",
    avatarUrl: "https://randomuser.me/portraits/men/11.jpg",
    seen: true,
    online: false,
  ),
];
