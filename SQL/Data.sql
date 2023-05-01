# profiles table
INSERT INTO `tblProfiles`(`UserID`,`UserName`,`Password`,`ProfilePicture`,`Bio`,`DateJoined`) VALUES
(9, 'tester', '8cea91d2d5c816a0d1fb32bd3847135f', 'profilePictures/tester.jpg', 'This is a test account', '2023-04-03'),
(15, 'Max', '963dbbca032e80aa956672488486823b', 'profilePictures/Max.jpg', 'Hi, I\'m Max. I am a computer science student at the university of Lincoln with a passion for photographer. I\'ve posted some of what I think are my best photos to my map ', '2023-04-17');

# photo table
INSERT INTO `tblPhotos`(`PhotoID`,`UserID`,`PhotoName`,`StoragePath`,`Date`,`lat`,`long`) VALUES
(1, 9, 'lake', 'uploads/Test1.jpg', '2020-01-15', '48.850000', '2.350000'),
(2, 9, 'path', 'uploads/Test2.jpg', '2020-01-17', '48.950000', '5.450000'),
(3, 9, 'snow', 'uploads/Test3.jpg', '2022-05-03', '49.050000', '-2.550000'),
(4, 9, 'forest', 'uploads/Test4.jpg', '2021-11-17', '53.229500', '0.542700'),
(5, 9, 'field', 'uploads/Test5.jpg', '2022-08-28', '40.463700', '3.749200'),
(6, 9, 'branch', 'uploads/Test6.jpg', '2023-02-15', '41.871900', '12.567400'),
(14, 9, 'Lovely castle ', 'uploads/Lovely castle .jpg', '2023-04-02', '50.118798', '-5.537592'),
(15, 9, 'wollaton castle', 'uploads/wollaton castle.jpg', '2023-04-03', '52.945715', '-1.215482'),
(31, 9, 'Brayford Lights', 'uploads/Brayford Lights.jpg', '2023-04-17', '53.229577', '-0.545613'),
(32, 9, 'Mr Minster', 'uploads/Mr Minster.jpeg', '2023-04-17', '53.962329', '-1.081921'),
(33, 9, 'Absolute shambles', 'uploads/Absolute shambles.jpeg', '2023-04-17', '53.959365', '-1.080049'),
(34, 9, 'Little waterfall', 'uploads/Little waterfall.jpeg', '2023-04-17', '53.225944', '-2.883489'),
(35, 15, 'Steep hill', 'uploads/Steep hill.jpeg', '2023-04-17', '53.233179', '-0.538487'),
(36, 15, 'Smooth criminal', 'uploads/Smooth criminal.jpeg', '2023-04-17', '27.833815', '-15.617310'),
(37, 15, 'Landing', 'uploads/Landing.jpeg', '2023-04-17', '27.920220', '-15.547437'),
(38, 15, 'Sunset tree', 'uploads/Sunset tree.jpg', '2023-04-17', '52.965344', '-1.322376'),
(39, 15, 'sunset pup', 'uploads/sunset pup.jpg', '2023-04-17', '53.002117', '-1.357099'),
(40, 15, 'Little bit of pizza', 'uploads/Little bit of pizza.jpg', '2023-04-17', '41.902784', '12.496366'),
(41, 15, 'beach time', 'uploads/beach time.jpeg', '2023-04-17', '27.788017', '-15.710866'),
(42, 15, 'Going down', 'uploads/Going down.jpg', '2023-04-17', '53.121576', '-1.562861'),
(43, 15, 'Pipe flower', 'uploads/Pipe flower.jpg', '2023-04-17', '52.570317', '-0.240800'),
(44, 15, 'rising sun', 'uploads/rising sun.jpg', '2023-04-17', '52.954022', '-1.154989'),
(45, 15, 'Lovely coast', 'uploads/Lovely coast.jpg', '2023-04-17', '51.185273', '-4.208852'),
(46, 15, 'Pier', 'uploads/Pier.jpg', '2023-04-17', '52.931448', '1.301866'),
(47, 15, 'Lands end', 'uploads/Lands end.jpg', '2023-04-17', '50.065704', '-5.713175'),
(48, 15, 'on the wall', 'uploads/on the wall.jpg', '2023-04-17', '52.279668', '-1.585228'),
(49, 15, 'Elveston', 'uploads/Elveston.jpg', '2023-04-17', '52.894361', '-1.387827'),
(50, 15, 'cityscape ', 'uploads/cityscape .jpeg', '2023-04-17', '28.123546', '-15.436257'),
(51, 15, 'Over the lake', 'uploads/Over the lake.jpg', '2023-04-17', '53.078312', '-1.192648'),
(55, 9, 'sunny beach', 'uploads/sunny beach.jpg', '2023-04-19', '51.199479', '-4.024285'),
(56, 9, 'Shipley hall', 'uploads/Shipley hall.jpg', '2023-04-22', '52.993700', '-1.348600'),
(57, 9, 'Lovely Lake', 'uploads/Lovely Lake.jpg', '2023-04-22', '53.274001', '-9.051266'),
(58, 9, 'winter walk', 'uploads/winter walk.jpg', '2023-04-22', '55.755826', '37.617300'),
(59, 9, 'Beach cactus', 'uploads/Beach cactus.jpeg', '2023-04-22', '27.785522', '-15.712690'),
(60, 9, 'Summer walk', 'uploads/Summer walk.jpg', '2023-04-23', '52.967925', '-1.307267');
