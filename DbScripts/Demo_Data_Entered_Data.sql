USE [Demo_Data_Entered]
GO
INSERT [dbo].[Course] ([c_id], [name], [code]) VALUES (N'1', N'DBMS', N'CDMS45')
GO
INSERT [dbo].[Course] ([c_id], [name], [code]) VALUES (N'10', N'TBW', N'ENG105')
GO
INSERT [dbo].[Course] ([c_id], [name], [code]) VALUES (N'11', N'ENG', N'ENG202')
GO
INSERT [dbo].[Course] ([c_id], [name], [code]) VALUES (N'2', N'OOP', N'CS101')
GO
INSERT [dbo].[Course] ([c_id], [name], [code]) VALUES (N'3', N'AI', N'CS456')
GO
INSERT [dbo].[Course] ([c_id], [name], [code]) VALUES (N'4', N'NA', N'MTH34')
GO
INSERT [dbo].[Course] ([c_id], [name], [code]) VALUES (N'5', N'LA', N'MTH209')
GO
INSERT [dbo].[Course] ([c_id], [name], [code]) VALUES (N'6', N'VP', N'CS002')
GO
INSERT [dbo].[Course] ([c_id], [name], [code]) VALUES (N'7', N'PF', N'PF101')
GO
INSERT [dbo].[Course] ([c_id], [name], [code]) VALUES (N'8', N'MVC', N'MTH908')
GO
INSERT [dbo].[Course] ([c_id], [name], [code]) VALUES (N'9', N'DLD', N'DLD236')
GO
INSERT [dbo].[Lesson_Plan] ([c_id], [less_id], [week]) VALUES (N'1', N'lesson-1', N'1')
GO
INSERT [dbo].[Lesson_Plan] ([c_id], [less_id], [week]) VALUES (N'1', N'lesson-2', N'2')
GO
INSERT [dbo].[Lesson_Plan] ([c_id], [less_id], [week]) VALUES (N'1', N'lesson-3', N'3')
GO
INSERT [dbo].[Lesson_Plan] ([c_id], [less_id], [week]) VALUES (N'1', N'lesson-4', N'4')
GO
INSERT [dbo].[Lesson_Plan] ([c_id], [less_id], [week]) VALUES (N'1', N'lesson-5', N'5')
GO
INSERT [dbo].[List_Topic] ([topic_id], [less_id], [topic_name]) VALUES (N'1', N'lesson-1', N'Intro of DBMS')
GO
INSERT [dbo].[List_Topic] ([topic_id], [less_id], [topic_name]) VALUES (N'10', N'lesson-5', N'Assignment for CRUD')
GO
INSERT [dbo].[List_Topic] ([topic_id], [less_id], [topic_name]) VALUES (N'2', N'lesson-1', N'What is Data')
GO
INSERT [dbo].[List_Topic] ([topic_id], [less_id], [topic_name]) VALUES (N'3', N'lesson-2', N'Expanation')
GO
INSERT [dbo].[List_Topic] ([topic_id], [less_id], [topic_name]) VALUES (N'4', N'lesson-2', N'ExampleofData&DBMS')
GO
INSERT [dbo].[List_Topic] ([topic_id], [less_id], [topic_name]) VALUES (N'5', N'lesson-3', N'CRUD Operations')
GO
INSERT [dbo].[List_Topic] ([topic_id], [less_id], [topic_name]) VALUES (N'6', N'lesson-3', N'Create And Del Query')
GO
INSERT [dbo].[List_Topic] ([topic_id], [less_id], [topic_name]) VALUES (N'7', N'lesson-3', N'Examples')
GO
INSERT [dbo].[List_Topic] ([topic_id], [less_id], [topic_name]) VALUES (N'8', N'lesson-4', N'Update And Delete Query')
GO
INSERT [dbo].[List_Topic] ([topic_id], [less_id], [topic_name]) VALUES (N'9', N'lesson-4', N'Examples')
GO
INSERT [dbo].[User] ([user_id], [role], [name], [password], [email]) VALUES (N'1', N'Student', N'Usman', N'1234', N'usman@gmail.com')
GO
INSERT [dbo].[User] ([user_id], [role], [name], [password], [email]) VALUES (N'10', N'Teacher', N'Maryam', N'5678', N'maryam@gmail.com')
GO
INSERT [dbo].[User] ([user_id], [role], [name], [password], [email]) VALUES (N'2', N'Student', N'Zeeshan', N'1234', N'zee@gmail.com')
GO
INSERT [dbo].[User] ([user_id], [role], [name], [password], [email]) VALUES (N'3', N'Student', N'Ali', N'1234', N'ali@gmail.com')
GO
INSERT [dbo].[User] ([user_id], [role], [name], [password], [email]) VALUES (N'4', N'Student', N'Kanwal', N'1234', N'kanwal@gmail.com')
GO
INSERT [dbo].[User] ([user_id], [role], [name], [password], [email]) VALUES (N'5', N'Student', N'Hifza', N'1234', N'hifza@gmail.com')
GO
INSERT [dbo].[User] ([user_id], [role], [name], [password], [email]) VALUES (N'6', N'Teacher', N'Zahid', N'5678', N'zahid@gmail.com')
GO
INSERT [dbo].[User] ([user_id], [role], [name], [password], [email]) VALUES (N'7', N'Teacher', N'Umar', N'5678', N'umar@gmail.com')
GO
INSERT [dbo].[User] ([user_id], [role], [name], [password], [email]) VALUES (N'8', N'Teacher', N'Munir', N'5678', N'munir@gmail.com')
GO
INSERT [dbo].[User] ([user_id], [role], [name], [password], [email]) VALUES (N'9', N'Teacher', N'Riffat', N'5678', N'riffat@gmail.com')
GO
INSERT [dbo].[Teacher] ([t_id], [user_id], [designation], [fac_type]) VALUES (N'101', N'6', N'Assistant Professor', N'CS')
GO
INSERT [dbo].[Teacher] ([t_id], [user_id], [designation], [fac_type]) VALUES (N'102', N'7', N'Professor', N'CS')
GO
INSERT [dbo].[Teacher] ([t_id], [user_id], [designation], [fac_type]) VALUES (N'103', N'8', N'Assistant Professor', N'IT')
GO
INSERT [dbo].[Teacher] ([t_id], [user_id], [designation], [fac_type]) VALUES (N'104', N'9', N' Professor', N'IT')
GO
INSERT [dbo].[Teacher] ([t_id], [user_id], [designation], [fac_type]) VALUES (N'105', N'10', N'Instructor.', N'CS')
GO
INSERT [dbo].[Videos] ([v_id], [tiltle], [t_id], [session], [url], [less_id]) VALUES (N'1', N'lesson-1 Video', N'101', N'Spring-2023', N'https://youtu.be/i-XNqOfg9_A', N'lesson-1')
GO
INSERT [dbo].[Videos] ([v_id], [tiltle], [t_id], [session], [url], [less_id]) VALUES (N'2', N'lesson-2 Video', N'102', N'Spring-2023', N'https://youtu.be/G5R3HFOppHs', N'lesson-2')
GO
INSERT [dbo].[Videos] ([v_id], [tiltle], [t_id], [session], [url], [less_id]) VALUES (N'3', N'lesson-3 Video', N'101', N'Spring-2021', N'https://youtu.be/IY53WIIYnIU', N'lesson-3')
GO
INSERT [dbo].[Videos] ([v_id], [tiltle], [t_id], [session], [url], [less_id]) VALUES (N'4', N'lesson-4 Video', N'103', N'Spring-2022', N'https://youtu.be/D_yrFFG5v9U', N'lesson-4')
GO
INSERT [dbo].[Videos] ([v_id], [tiltle], [t_id], [session], [url], [less_id]) VALUES (N'5', N'lesson-5 Video', N'101', N'Spring-2022', N'
https://youtu.be/uqSH_kins-M', N'lesson-5')
GO
INSERT [dbo].[video_data] ([v_data_id], [v_id], [topic_id], [start_time], [end_time], [key_word], [url]) VALUES (N'1', N'1', N'1', N'00:00', N'00:05', NULL, N'https://youtu.be/i-XNqOfg9_A')
GO
INSERT [dbo].[video_data] ([v_data_id], [v_id], [topic_id], [start_time], [end_time], [key_word], [url]) VALUES (N'10', N'5', N'10', N'00:00', N'00:08', NULL, N'https://youtu.be/uqSH_kins-M')
GO
INSERT [dbo].[video_data] ([v_data_id], [v_id], [topic_id], [start_time], [end_time], [key_word], [url]) VALUES (N'2', N'1', N'2', N'00:06', N'00:15', NULL, N'https://youtu.be/i-XNqOfg9_A')
GO
INSERT [dbo].[video_data] ([v_data_id], [v_id], [topic_id], [start_time], [end_time], [key_word], [url]) VALUES (N'3', N'2', N'3', N'00:00', N'00:07', NULL, N'https://youtu.be/G5R3HFOppHs')
GO
INSERT [dbo].[video_data] ([v_data_id], [v_id], [topic_id], [start_time], [end_time], [key_word], [url]) VALUES (N'4', N'2', N'4', N'00:08', N'00:20', NULL, N'https://youtu.be/G5R3HFOppHs')
GO
INSERT [dbo].[video_data] ([v_data_id], [v_id], [topic_id], [start_time], [end_time], [key_word], [url]) VALUES (N'5', N'3', N'5', N'00:00', N'00:05', NULL, N'https://youtu.be/IY53WIIYnIU')
GO
INSERT [dbo].[video_data] ([v_data_id], [v_id], [topic_id], [start_time], [end_time], [key_word], [url]) VALUES (N'6', N'3', N'6', N'00:06', N'00:10', NULL, N'https://youtu.be/IY53WIIYnIU')
GO
INSERT [dbo].[video_data] ([v_data_id], [v_id], [topic_id], [start_time], [end_time], [key_word], [url]) VALUES (N'7', N'3', N'7', N'00:11', N'00:15', NULL, N'https://youtu.be/IY53WIIYnIU')
GO
INSERT [dbo].[video_data] ([v_data_id], [v_id], [topic_id], [start_time], [end_time], [key_word], [url]) VALUES (N'8', N'4', N'8', N'00:01', N'00:10', NULL, N'https://youtu.be/D_yrFFG5v9U')
GO
INSERT [dbo].[video_data] ([v_data_id], [v_id], [topic_id], [start_time], [end_time], [key_word], [url]) VALUES (N'9', N'4', N'9', N'00:11', N'00:20', NULL, N'https://youtu.be/D_yrFFG5v9U')
GO
INSERT [dbo].[Section] ([sec_id], [name]) VALUES (N'1', N'BCS1A')
GO
INSERT [dbo].[Section] ([sec_id], [name]) VALUES (N'10', N'BIT1B')
GO
INSERT [dbo].[Section] ([sec_id], [name]) VALUES (N'2', N'BCS1B')
GO
INSERT [dbo].[Section] ([sec_id], [name]) VALUES (N'3', N'BCS1C')
GO
INSERT [dbo].[Section] ([sec_id], [name]) VALUES (N'4', N'BCS1D')
GO
INSERT [dbo].[Section] ([sec_id], [name]) VALUES (N'5', N'BCS2A')
GO
INSERT [dbo].[Section] ([sec_id], [name]) VALUES (N'6', N'BCS2B')
GO
INSERT [dbo].[Section] ([sec_id], [name]) VALUES (N'7', N'BCS3A')
GO
INSERT [dbo].[Section] ([sec_id], [name]) VALUES (N'8', N'BCS3C')
GO
INSERT [dbo].[Section] ([sec_id], [name]) VALUES (N'9', N'BIT1A')
GO
INSERT [dbo].[Student] ([s_id], [user_id], [sec_id]) VALUES (N'2018-ARID-001', N'1', N'3')
GO
INSERT [dbo].[Student] ([s_id], [user_id], [sec_id]) VALUES (N'2018-ARID-0345', N'4', N'2')
GO
INSERT [dbo].[Student] ([s_id], [user_id], [sec_id]) VALUES (N'2019-ARID-3067', N'2', N'4')
GO
INSERT [dbo].[Student] ([s_id], [user_id], [sec_id]) VALUES (N'2020-ARID-0123', N'3', N'1')
GO
INSERT [dbo].[Student] ([s_id], [user_id], [sec_id]) VALUES (N'2023-ARID-3456', N'5', N'6')
GO
SET IDENTITY_INSERT [dbo].[Notes] ON 
GO
INSERT [dbo].[Notes] ([s_id], [v_data_id], [notes], [session], [n_id]) VALUES (N'2018-ARID-001', N'1', N'this is my first note', N'Spring-2023', 1)
GO
INSERT [dbo].[Notes] ([s_id], [v_data_id], [notes], [session], [n_id]) VALUES (N'2018-ARID-001', N'1', N'this is my second note', N'Spring-2023', 2)
GO
INSERT [dbo].[Notes] ([s_id], [v_data_id], [notes], [session], [n_id]) VALUES (N'2018-ARID-001', N'2', N'this is my second note', N'Spring-2023', 3)
GO
INSERT [dbo].[Notes] ([s_id], [v_data_id], [notes], [session], [n_id]) VALUES (N'2018-ARID-001', N'2', N'this is my last note', N'Spring-2023', 4)
GO
INSERT [dbo].[Notes] ([s_id], [v_data_id], [notes], [session], [n_id]) VALUES (N'2018-ARID-001', N'1', N'gsgzj', N'Spring-2023', 5)
GO
INSERT [dbo].[Notes] ([s_id], [v_data_id], [notes], [session], [n_id]) VALUES (N'2018-ARID-001', N'1', N'dnfjj', N'Spring-2023', 6)
GO
INSERT [dbo].[Notes] ([s_id], [v_data_id], [notes], [session], [n_id]) VALUES (N'2018-ARID-001', N'7', N'this is first.note', N'Spring-2021', 7)
GO
INSERT [dbo].[Notes] ([s_id], [v_data_id], [notes], [session], [n_id]) VALUES (N'2018-ARID-001', N'7', N'hahaha', N'Spring-2021', 8)
GO
INSERT [dbo].[Notes] ([s_id], [v_data_id], [notes], [session], [n_id]) VALUES (N'2018-ARID-001', N'7', N'lol', N'Spring-2021', 9)
GO
INSERT [dbo].[Notes] ([s_id], [v_data_id], [notes], [session], [n_id]) VALUES (N'2018-ARID-001', N'3', N'jeje', N'Spring-2023', 10)
GO
INSERT [dbo].[Notes] ([s_id], [v_data_id], [notes], [session], [n_id]) VALUES (N'2018-ARID-001', N'10', N'jsjsj', N'Spring-2022', 11)
GO
INSERT [dbo].[Notes] ([s_id], [v_data_id], [notes], [session], [n_id]) VALUES (N'2018-ARID-001', N'2', N'jfcucjcj', N'Spring-2023', 12)
GO
INSERT [dbo].[Notes] ([s_id], [v_data_id], [notes], [session], [n_id]) VALUES (N'2018-ARID-001', N'5', N'this is first note', N'Spring-2021', 13)
GO
INSERT [dbo].[Notes] ([s_id], [v_data_id], [notes], [session], [n_id]) VALUES (N'2018-ARID-001', N'1', N'vhy y', N'Spring-2023', 14)
GO
INSERT [dbo].[Notes] ([s_id], [v_data_id], [notes], [session], [n_id]) VALUES (N'2018-ARID-001', N'1', N'aaj', N'Spring-2023', 15)
GO
INSERT [dbo].[Notes] ([s_id], [v_data_id], [notes], [session], [n_id]) VALUES (N'2018-ARID-001', N'1', N'jsjsja', N'Spring-2023', 16)
GO
SET IDENTITY_INSERT [dbo].[Notes] OFF
GO
SET IDENTITY_INSERT [dbo].[Rate] ON 
GO
INSERT [dbo].[Rate] ([s_id], [rate], [v_data_id], [session], [r_id]) VALUES (N'2018-ARID-001', 4.5, N'1', N'Spring-2023', 36)
GO
INSERT [dbo].[Rate] ([s_id], [rate], [v_data_id], [session], [r_id]) VALUES (N'2018-ARID-001', 4.5, N'2', N'Spring-2023', 37)
GO
INSERT [dbo].[Rate] ([s_id], [rate], [v_data_id], [session], [r_id]) VALUES (N'2018-ARID-001', 2.5, N'5', N'Spring-2021', 38)
GO
INSERT [dbo].[Rate] ([s_id], [rate], [v_data_id], [session], [r_id]) VALUES (N'2018-ARID-001', 5, N'4', N'Spring-2023', 46)
GO
INSERT [dbo].[Rate] ([s_id], [rate], [v_data_id], [session], [r_id]) VALUES (N'2018-ARID-001', 1, N'7', N'Spring-2021', 47)
GO
INSERT [dbo].[Rate] ([s_id], [rate], [v_data_id], [session], [r_id]) VALUES (N'2018-ARID-001', 1, N'3', N'Spring-2023', 48)
GO
INSERT [dbo].[Rate] ([s_id], [rate], [v_data_id], [session], [r_id]) VALUES (N'2018-ARID-001', 2, N'10', N'Spring-2022', 49)
GO
SET IDENTITY_INSERT [dbo].[Rate] OFF
GO
SET IDENTITY_INSERT [dbo].[Enrollement] ON 
GO
INSERT [dbo].[Enrollement] ([t_id], [c_id], [s_id], [semester], [grade], [e_id]) VALUES (N'101', N'1', N'2018-ARID-001', N'Spring-2018', N'A         ', 1)
GO
INSERT [dbo].[Enrollement] ([t_id], [c_id], [s_id], [semester], [grade], [e_id]) VALUES (N'102', N'3', N'2019-ARID-3067', N'Fall-2019', N'A         ', 2)
GO
INSERT [dbo].[Enrollement] ([t_id], [c_id], [s_id], [semester], [grade], [e_id]) VALUES (N'103', N'4', N'2020-ARID-0123', N'Fall-2020', N'B         ', 3)
GO
INSERT [dbo].[Enrollement] ([t_id], [c_id], [s_id], [semester], [grade], [e_id]) VALUES (N'104', N'2', N'2018-ARID-0345', N'Spring-2018', N'C         ', 4)
GO
INSERT [dbo].[Enrollement] ([t_id], [c_id], [s_id], [semester], [grade], [e_id]) VALUES (N'105', N'8', N'2023-ARID-3456', N'Fall-2023', N'A         ', 5)
GO
INSERT [dbo].[Enrollement] ([t_id], [c_id], [s_id], [semester], [grade], [e_id]) VALUES (N'102', N'2', N'2018-ARID-001', N'Spring-2018', N'B         ', 6)
GO
INSERT [dbo].[Enrollement] ([t_id], [c_id], [s_id], [semester], [grade], [e_id]) VALUES (N'102', N'6', N'2018-ARID-001', N'Spring-2018', N'C         ', 7)
GO
SET IDENTITY_INSERT [dbo].[Enrollement] OFF
GO
SET IDENTITY_INSERT [dbo].[History] ON 
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:23:09', N'1', N'Spring-2023', CAST(N'0001-01-01' AS Date), 5)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:23:15', N'1', N'Spring-2023', CAST(N'0001-01-01' AS Date), 6)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:23:53', N'1', N'Spring-2023', CAST(N'0001-01-01' AS Date), 7)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:25:46', N'1', N'Spring-2023', CAST(N'0001-01-01' AS Date), 8)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:25:50', N'1', N'Spring-2023', CAST(N'0001-01-01' AS Date), 9)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:26:58', N'1', N'Spring-2023', CAST(N'0001-01-01' AS Date), 10)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:28:16', N'1', N'Spring-2023', CAST(N'2023-06-03' AS Date), 11)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:28:21', N'1', N'Spring-2023', CAST(N'2023-06-03' AS Date), 12)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:28:32', N'1', N'Spring-2023', CAST(N'2023-06-03' AS Date), 13)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:25:45', N'1', N'Spring-2023', CAST(N'2023-07-03' AS Date), 14)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:26:02', N'1', N'Spring-2023', CAST(N'2023-07-03' AS Date), 15)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:26:13', N'2', N'Spring-2023', CAST(N'2023-07-03' AS Date), 16)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:26:16', N'2', N'Spring-2023', CAST(N'2023-07-03' AS Date), 17)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:09:37', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 18)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:10:51', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 19)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:11:14', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 20)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:11:37', N'2', N'Spring-2023', CAST(N'2023-08-03' AS Date), 21)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:11:46', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 22)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:11:50', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 23)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:00:04', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 24)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:00:25', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 25)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:01:37', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 26)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:01:57', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 27)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:02:05', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 28)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:02:14', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 29)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:13:40', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 30)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:13:43', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 31)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:16:24', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 32)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:16:27', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 33)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:16:37', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 34)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:17:22', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 35)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:21:46', N'2', N'Spring-2023', CAST(N'2023-08-03' AS Date), 36)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:22:04', N'2', N'Spring-2023', CAST(N'2023-08-03' AS Date), 37)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:22:22', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 38)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:24:30', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 39)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:24:34', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 40)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:24:43', N'2', N'Spring-2023', CAST(N'2023-08-03' AS Date), 41)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:24:47', N'2', N'Spring-2023', CAST(N'2023-08-03' AS Date), 42)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:24:59', N'3', N'Spring-2021', CAST(N'2023-08-03' AS Date), 43)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:25:02', N'3', N'Spring-2021', CAST(N'2023-08-03' AS Date), 44)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:25:06', N'3', N'Spring-2021', CAST(N'2023-08-03' AS Date), 45)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:25:31', N'3', N'Spring-2021', CAST(N'2023-08-03' AS Date), 46)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:49:05', N'3', N'Spring-2021', CAST(N'2023-08-03' AS Date), 47)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:49:33', N'3', N'Spring-2021', CAST(N'2023-08-03' AS Date), 48)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:50:01', N'3', N'Spring-2021', CAST(N'2023-08-03' AS Date), 49)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:50:07', N'3', N'Spring-2021', CAST(N'2023-08-03' AS Date), 50)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:50:15', N'3', N'Spring-2021', CAST(N'2023-08-03' AS Date), 51)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:02:22', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 52)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:05:17', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 53)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:05:28', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 54)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:05:40', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 55)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:05:47', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 56)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:07:09', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 57)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:07:23', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 58)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:14:09', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 59)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:14:17', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 60)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:14:25', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 61)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:14:30', N'1', N'Spring-2023', CAST(N'2023-08-03' AS Date), 62)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:14:40', N'3', N'Spring-2021', CAST(N'2023-08-03' AS Date), 63)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'08:20:11', N'3', N'Spring-2021', CAST(N'2023-09-03' AS Date), 64)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'08:26:36', N'1', N'Spring-2023', CAST(N'2023-09-03' AS Date), 65)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'09:36:57', N'3', N'Spring-2021', CAST(N'2023-09-03' AS Date), 66)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:30:20', N'3', N'Spring-2021', CAST(N'2023-09-03' AS Date), 67)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:33:54', N'1', N'Spring-2023', CAST(N'2023-09-03' AS Date), 68)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:35:09', N'1', N'Spring-2023', CAST(N'2023-09-03' AS Date), 69)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:35:18', N'1', N'Spring-2023', CAST(N'2023-09-03' AS Date), 70)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:35:29', N'1', N'Spring-2023', CAST(N'2023-09-03' AS Date), 71)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:35:45', N'1', N'Spring-2023', CAST(N'2023-09-03' AS Date), 72)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:38:16', N'1', N'Spring-2023', CAST(N'2023-09-03' AS Date), 73)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:38:21', N'1', N'Spring-2023', CAST(N'2023-09-03' AS Date), 74)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:45:48', N'2', N'Spring-2023', CAST(N'2023-09-03' AS Date), 75)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:18:49', N'1', N'Spring-2023', CAST(N'2023-09-03' AS Date), 76)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:19:09', N'1', N'Spring-2023', CAST(N'2023-09-03' AS Date), 77)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:19:13', N'1', N'Spring-2023', CAST(N'2023-09-03' AS Date), 78)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:19:16', N'1', N'Spring-2023', CAST(N'2023-09-03' AS Date), 79)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:19:19', N'1', N'Spring-2023', CAST(N'2023-09-03' AS Date), 80)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:51:21', N'1', N'Spring-2023', CAST(N'2023-09-03' AS Date), 81)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:53:01', N'1', N'Spring-2023', CAST(N'2023-09-03' AS Date), 82)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:53:29', N'1', N'Spring-2023', CAST(N'2023-09-03' AS Date), 83)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:23:09', N'1', N'Spring-2023', CAST(N'2023-06-03' AS Date), 84)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'11:35:32', N'3', N'Spring-2021', CAST(N'2023-10-03' AS Date), 85)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'11:35:53', N'3', N'Spring-2021', CAST(N'2023-10-03' AS Date), 86)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'11:36:40', N'3', N'Spring-2021', CAST(N'2023-10-03' AS Date), 87)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'11:41:37', N'1', N'Spring-2023', CAST(N'2023-10-03' AS Date), 88)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'11:43:20', N'2', N'Spring-2023', CAST(N'2023-10-03' AS Date), 89)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'11:44:30', N'1', N'Spring-2023', CAST(N'2023-10-03' AS Date), 90)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'11:46:18', N'3', N'Spring-2021', CAST(N'2023-10-03' AS Date), 91)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'11:50:50', N'1', N'Spring-2023', CAST(N'2023-10-03' AS Date), 92)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'16:23:09', N'1', N'Spring-2023', CAST(N'2023-06-03' AS Date), 93)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'1678730656679', N'1', N'Spring-2023', CAST(N'2023-06-03' AS Date), 94)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21', N'1', N'Spring-2023', CAST(N'2023-03-13' AS Date), 95)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'1678808145297', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 96)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'20:53:58', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 97)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:00:42', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 98)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:00:45', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 99)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:00:53', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 100)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:00:59', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 101)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:01:06', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 102)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:01:13', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 103)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:01:37', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 104)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:08:27', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 105)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:08:30', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 106)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:10:22', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 107)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:12:59', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 108)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:14:06', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 109)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:14:57', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 110)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:16:23', N'2', N'Spring-2023', CAST(N'2023-03-14' AS Date), 111)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:16:28', N'2', N'Spring-2023', CAST(N'2023-03-14' AS Date), 112)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:16:35', N'2', N'Spring-2023', CAST(N'2023-03-14' AS Date), 113)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:16:43', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 114)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:16:47', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 115)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:16:57', N'2', N'Spring-2023', CAST(N'2023-03-14' AS Date), 116)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:17:03', N'3', N'Spring-2021', CAST(N'2023-03-14' AS Date), 117)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:17:07', N'3', N'Spring-2021', CAST(N'2023-03-14' AS Date), 118)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:17:10', N'3', N'Spring-2021', CAST(N'2023-03-14' AS Date), 119)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:26:03', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 120)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:27:46', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 121)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:27:50', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 122)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:27:57', N'5', N'Spring-2022', CAST(N'2023-03-14' AS Date), 123)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:28:07', N'2', N'Spring-2023', CAST(N'2023-03-14' AS Date), 124)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'21:28:11', N'4', N'Spring-2022', CAST(N'2023-03-14' AS Date), 125)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'22:00:26', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 126)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'22:01:46', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 127)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'22:01:51', N'2', N'Spring-2023', CAST(N'2023-03-14' AS Date), 128)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'22:01:54', N'2', N'Spring-2023', CAST(N'2023-03-14' AS Date), 129)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'22:01:57', N'4', N'Spring-2022', CAST(N'2023-03-14' AS Date), 130)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'22:02:00', N'5', N'Spring-2022', CAST(N'2023-03-14' AS Date), 131)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'22:53:38', N'1', N'Spring-2023', CAST(N'2023-03-14' AS Date), 132)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:26:46', N'1', N'Spring-2023', CAST(N'2023-03-15' AS Date), 133)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:51:10', N'3', N'Spring-2021', CAST(N'2023-03-15' AS Date), 134)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:51:45', N'3', N'Spring-2021', CAST(N'2023-03-15' AS Date), 135)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:51:48', N'3', N'Spring-2021', CAST(N'2023-03-15' AS Date), 136)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:51:53', N'4', N'Spring-2022', CAST(N'2023-03-15' AS Date), 137)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:51:55', N'4', N'Spring-2022', CAST(N'2023-03-15' AS Date), 138)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:52:00', N'1', N'Spring-2023', CAST(N'2023-03-15' AS Date), 139)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:57:22', N'1', N'Spring-2023', CAST(N'2023-03-15' AS Date), 140)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:57:26', N'4', N'Spring-2022', CAST(N'2023-03-15' AS Date), 141)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:57:30', N'4', N'Spring-2022', CAST(N'2023-03-15' AS Date), 142)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:57:36', N'5', N'Spring-2022', CAST(N'2023-03-15' AS Date), 143)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:57:40', N'3', N'Spring-2021', CAST(N'2023-03-15' AS Date), 144)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:57:44', N'2', N'Spring-2023', CAST(N'2023-03-15' AS Date), 145)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:57:46', N'2', N'Spring-2023', CAST(N'2023-03-15' AS Date), 146)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:57:48', N'2', N'Spring-2023', CAST(N'2023-03-15' AS Date), 147)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:57:50', N'2', N'Spring-2023', CAST(N'2023-03-15' AS Date), 148)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:58:06', N'2', N'Spring-2023', CAST(N'2023-03-15' AS Date), 149)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:58:27', N'2', N'Spring-2023', CAST(N'2023-03-15' AS Date), 150)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:58:52', N'5', N'Spring-2022', CAST(N'2023-03-15' AS Date), 151)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'19:59:06', N'5', N'Spring-2022', CAST(N'2023-03-15' AS Date), 152)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'20:01:47', N'1', N'Spring-2023', CAST(N'2023-03-15' AS Date), 153)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'20:02:19', N'3', N'Spring-2021', CAST(N'2023-03-15' AS Date), 154)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'09:58:01', N'3', N'Spring-2021', CAST(N'2023-03-17' AS Date), 155)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'10:11:26', N'3', N'Spring-2021', CAST(N'2023-03-17' AS Date), 156)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:01:23', N'1', N'Spring-2023', CAST(N'2023-03-20' AS Date), 157)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:02:02', N'1', N'Spring-2023', CAST(N'2023-03-20' AS Date), 158)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:04:18', N'1', N'Spring-2023', CAST(N'2023-03-20' AS Date), 159)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'12:06:13', N'1', N'Spring-2023', CAST(N'2023-03-20' AS Date), 160)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:01:03', N'1', N'Spring-2023', CAST(N'2023-03-21' AS Date), 161)
GO
INSERT [dbo].[History] ([s_id], [time], [v_id], [session], [date], [h_id]) VALUES (N'2018-ARID-001', N'13:13:17', N'1', N'Spring-2023', CAST(N'2023-03-21' AS Date), 162)
GO
SET IDENTITY_INSERT [dbo].[History] OFF
GO
