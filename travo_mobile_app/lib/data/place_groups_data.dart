class GroupMessage {
  final String userName;
  final String userAvatar;
  final String message;
  final String timestamp;
  final bool isCurrentUser;

  const GroupMessage({
    required this.userName,
    required this.userAvatar,
    required this.message,
    required this.timestamp,
    this.isCurrentUser = false,
  });
}

class PlaceGroup {
  final String placeName;
  final String placeImage;
  final int memberCount;
  final String lastActivity;
  final List<GroupMessage> messages;

  const PlaceGroup({
    required this.placeName,
    required this.placeImage,
    required this.memberCount,
    required this.lastActivity,
    required this.messages,
  });
}

// Generate default messages for any place
List<GroupMessage> getDefaultMessages(String placeName) {
  return [
    const GroupMessage(
      userName: 'Sarah Chen',
      userAvatar: 'https://i.pravatar.cc/150?img=1',
      message: 'Just visited yesterday! The sunset view was absolutely breathtaking 🌅',
      timestamp: '2h ago',
    ),
    const GroupMessage(
      userName: 'Michael Torres',
      userAvatar: 'https://i.pravatar.cc/150?img=3',
      message: 'Pro tip: Visit early morning to avoid crowds. Totally worth waking up early!',
      timestamp: '5h ago',
    ),
    const GroupMessage(
      userName: 'Priya Sharma',
      userAvatar: 'https://i.pravatar.cc/150?img=5',
      message: 'Does anyone know the best way to get there from Colombo?',
      timestamp: '8h ago',
    ),
    const GroupMessage(
      userName: 'David Kim',
      userAvatar: 'https://i.pravatar.cc/150?img=7',
      message: 'Take the train! The scenic route is part of the experience 🚂',
      timestamp: '7h ago',
    ),
    const GroupMessage(
      userName: 'Emma Wilson',
      userAvatar: 'https://i.pravatar.cc/150?img=9',
      message: 'The local food nearby is amazing. Don\'t miss the street vendors!',
      timestamp: '12h ago',
    ),
    const GroupMessage(
      userName: 'Raj Patel',
      userAvatar: 'https://i.pravatar.cc/150?img=12',
      message: 'Planning to visit next week. Any must-see spots nearby?',
      timestamp: '1d ago',
    ),
    const GroupMessage(
      userName: 'Lisa Anderson',
      userAvatar: 'https://i.pravatar.cc/150?img=16',
      message: 'The photography opportunities here are endless! Bring your camera 📸',
      timestamp: '1d ago',
    ),
    const GroupMessage(
      userName: 'Ahmed Hassan',
      userAvatar: 'https://i.pravatar.cc/150?img=20',
      message: 'Weather was perfect when I went last month. Highly recommend!',
      timestamp: '2d ago',
    ),
  ];
}

PlaceGroup getPlaceGroup(String placeName, String placeImage) {
  return PlaceGroup(
    placeName: placeName,
    placeImage: placeImage,
    memberCount: 847 + placeName.length * 10, // Dynamic member count based on place name
    lastActivity: '5 min ago',
    messages: getDefaultMessages(placeName),
  );
}
