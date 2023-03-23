use [master]

Create database [Demo_Data_Entered]

GO

USE [Demo_Data_Entered]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 3/23/2023 6:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[c_id] [varchar](50) NOT NULL,
	[name] [varchar](50) NULL,
	[code] [varchar](50) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enrollement]    Script Date: 3/23/2023 6:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollement](
	[t_id] [varchar](50) NULL,
	[c_id] [varchar](50) NULL,
	[s_id] [varchar](50) NULL,
	[semester] [varchar](50) NULL,
	[grade] [char](10) NULL,
	[e_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Enrollement] PRIMARY KEY CLUSTERED 
(
	[e_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History]    Script Date: 3/23/2023 6:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[s_id] [varchar](50) NULL,
	[time] [varchar](50) NULL,
	[v_id] [varchar](50) NULL,
	[session] [varchar](50) NULL,
	[date] [date] NULL,
	[h_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_History] PRIMARY KEY CLUSTERED 
(
	[h_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson_Plan]    Script Date: 3/23/2023 6:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson_Plan](
	[c_id] [varchar](50) NULL,
	[less_id] [varchar](50) NOT NULL,
	[week] [varchar](50) NULL,
 CONSTRAINT [PK_Lesson_Plan] PRIMARY KEY CLUSTERED 
(
	[less_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[List_Topic]    Script Date: 3/23/2023 6:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_Topic](
	[topic_id] [varchar](50) NOT NULL,
	[less_id] [varchar](50) NULL,
	[topic_name] [varchar](200) NULL,
 CONSTRAINT [PK_List_Topic] PRIMARY KEY CLUSTERED 
(
	[topic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notes]    Script Date: 3/23/2023 6:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notes](
	[s_id] [varchar](50) NULL,
	[v_data_id] [varchar](50) NULL,
	[notes] [varchar](max) NULL,
	[session] [varchar](50) NULL,
	[n_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Notes] PRIMARY KEY CLUSTERED 
(
	[n_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Presentation]    Script Date: 3/23/2023 6:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presentation](
	[s_id] [varchar](50) NULL,
	[topic_id] [varchar](50) NULL,
	[p_date] [date] NULL,
	[session] [varchar](50) NULL,
	[t_id] [varchar](50) NULL,
	[marks] [float] NULL,
	[p_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Presentation] PRIMARY KEY CLUSTERED 
(
	[p_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rate]    Script Date: 3/23/2023 6:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate](
	[s_id] [varchar](50) NULL,
	[rate] [float] NULL,
	[v_data_id] [varchar](50) NULL,
	[session] [varchar](50) NULL,
	[r_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Rate] PRIMARY KEY CLUSTERED 
(
	[r_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 3/23/2023 6:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[sec_id] [varchar](50) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[sec_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 3/23/2023 6:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[s_id] [varchar](50) NOT NULL,
	[user_id] [varchar](50) NOT NULL,
	[sec_id] [varchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 3/23/2023 6:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[t_id] [varchar](50) NOT NULL,
	[user_id] [varchar](50) NULL,
	[designation] [varchar](50) NULL,
	[fac_type] [varchar](50) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[t_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/23/2023 6:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [varchar](50) NOT NULL,
	[role] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[video_data]    Script Date: 3/23/2023 6:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[video_data](
	[v_data_id] [varchar](50) NOT NULL,
	[v_id] [varchar](50) NULL,
	[topic_id] [varchar](50) NULL,
	[start_time] [varchar](50) NULL,
	[end_time] [varchar](50) NULL,
	[key_word] [nchar](100) NULL,
	[url] [varchar](50) NULL,
 CONSTRAINT [PK_video_data] PRIMARY KEY CLUSTERED 
(
	[v_data_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Videos]    Script Date: 3/23/2023 6:16:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videos](
	[v_id] [varchar](50) NOT NULL,
	[tiltle] [varchar](50) NULL,
	[t_id] [varchar](50) NULL,
	[session] [varchar](50) NULL,
	[url] [varchar](50) NULL,
	[less_id] [varchar](50) NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[v_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Enrollement]  WITH CHECK ADD  CONSTRAINT [FK_Enrollement_Course] FOREIGN KEY([c_id])
REFERENCES [dbo].[Course] ([c_id])
GO
ALTER TABLE [dbo].[Enrollement] CHECK CONSTRAINT [FK_Enrollement_Course]
GO
ALTER TABLE [dbo].[Enrollement]  WITH CHECK ADD  CONSTRAINT [FK_Enrollement_Student] FOREIGN KEY([s_id])
REFERENCES [dbo].[Student] ([s_id])
GO
ALTER TABLE [dbo].[Enrollement] CHECK CONSTRAINT [FK_Enrollement_Student]
GO
ALTER TABLE [dbo].[Enrollement]  WITH CHECK ADD  CONSTRAINT [FK_Enrollement_Teacher] FOREIGN KEY([t_id])
REFERENCES [dbo].[Teacher] ([t_id])
GO
ALTER TABLE [dbo].[Enrollement] CHECK CONSTRAINT [FK_Enrollement_Teacher]
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_Student] FOREIGN KEY([s_id])
REFERENCES [dbo].[Student] ([s_id])
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_Student]
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_Videos] FOREIGN KEY([v_id])
REFERENCES [dbo].[Videos] ([v_id])
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_Videos]
GO
ALTER TABLE [dbo].[Lesson_Plan]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Plan_Course] FOREIGN KEY([c_id])
REFERENCES [dbo].[Course] ([c_id])
GO
ALTER TABLE [dbo].[Lesson_Plan] CHECK CONSTRAINT [FK_Lesson_Plan_Course]
GO
ALTER TABLE [dbo].[List_Topic]  WITH CHECK ADD  CONSTRAINT [FK_List_Topic_Lesson_Plan] FOREIGN KEY([less_id])
REFERENCES [dbo].[Lesson_Plan] ([less_id])
GO
ALTER TABLE [dbo].[List_Topic] CHECK CONSTRAINT [FK_List_Topic_Lesson_Plan]
GO
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK_Notes_Student] FOREIGN KEY([s_id])
REFERENCES [dbo].[Student] ([s_id])
GO
ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK_Notes_Student]
GO
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK_Notes_video_data] FOREIGN KEY([v_data_id])
REFERENCES [dbo].[video_data] ([v_data_id])
GO
ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK_Notes_video_data]
GO
ALTER TABLE [dbo].[Presentation]  WITH CHECK ADD  CONSTRAINT [FK_Presentation_List_Topic] FOREIGN KEY([topic_id])
REFERENCES [dbo].[List_Topic] ([topic_id])
GO
ALTER TABLE [dbo].[Presentation] CHECK CONSTRAINT [FK_Presentation_List_Topic]
GO
ALTER TABLE [dbo].[Presentation]  WITH CHECK ADD  CONSTRAINT [FK_Presentation_Student] FOREIGN KEY([s_id])
REFERENCES [dbo].[Student] ([s_id])
GO
ALTER TABLE [dbo].[Presentation] CHECK CONSTRAINT [FK_Presentation_Student]
GO
ALTER TABLE [dbo].[Presentation]  WITH CHECK ADD  CONSTRAINT [FK_Presentation_Teacher] FOREIGN KEY([t_id])
REFERENCES [dbo].[Teacher] ([t_id])
GO
ALTER TABLE [dbo].[Presentation] CHECK CONSTRAINT [FK_Presentation_Teacher]
GO
ALTER TABLE [dbo].[Rate]  WITH CHECK ADD  CONSTRAINT [FK_Rate_Student] FOREIGN KEY([s_id])
REFERENCES [dbo].[Student] ([s_id])
GO
ALTER TABLE [dbo].[Rate] CHECK CONSTRAINT [FK_Rate_Student]
GO
ALTER TABLE [dbo].[Rate]  WITH CHECK ADD  CONSTRAINT [FK_Rate_video_data] FOREIGN KEY([v_data_id])
REFERENCES [dbo].[video_data] ([v_data_id])
GO
ALTER TABLE [dbo].[Rate] CHECK CONSTRAINT [FK_Rate_video_data]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Section] FOREIGN KEY([sec_id])
REFERENCES [dbo].[Section] ([sec_id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Section]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_User]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_User]
GO
ALTER TABLE [dbo].[video_data]  WITH CHECK ADD  CONSTRAINT [FK_video_data_List_Topic] FOREIGN KEY([topic_id])
REFERENCES [dbo].[List_Topic] ([topic_id])
GO
ALTER TABLE [dbo].[video_data] CHECK CONSTRAINT [FK_video_data_List_Topic]
GO
ALTER TABLE [dbo].[video_data]  WITH CHECK ADD  CONSTRAINT [FK_video_data_Videos] FOREIGN KEY([v_id])
REFERENCES [dbo].[Videos] ([v_id])
GO
ALTER TABLE [dbo].[video_data] CHECK CONSTRAINT [FK_video_data_Videos]
GO
ALTER TABLE [dbo].[Videos]  WITH CHECK ADD  CONSTRAINT [FK_Videos_Lesson_Plan] FOREIGN KEY([less_id])
REFERENCES [dbo].[Lesson_Plan] ([less_id])
GO
ALTER TABLE [dbo].[Videos] CHECK CONSTRAINT [FK_Videos_Lesson_Plan]
GO
ALTER TABLE [dbo].[Videos]  WITH CHECK ADD  CONSTRAINT [FK_Videos_Teacher] FOREIGN KEY([t_id])
REFERENCES [dbo].[Teacher] ([t_id])
GO
ALTER TABLE [dbo].[Videos] CHECK CONSTRAINT [FK_Videos_Teacher]
GO
