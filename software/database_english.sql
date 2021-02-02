create table Project
(
    project_id       char(10)      not null
        constraint PK_PROJECT
            primary key nonclustered,
    category_id      char(10)
        constraint FK_PROJECT_PROJECT_C_CATEGORY
            references category,
    tutor_id         char(10)
        constraint FK_PROJECT_IDENTIFY__TUTOR
            references tutor,
    administrator_id char(10)
        constraint FK_PROJECT_AD_APPROV_ADMINIST
            references administrators,
    project_name     varchar(256)  not null,
    starttime        date          not null,
    endtime          date          not null,
    allfunds         decimal(8, 2) not null,
    approve_status   int           not null,
    approve_time     datetime
)
go

create index project_category_FK
    on Project (category_id)
go

create index identify_itemsandfunds_FK
    on Project (tutor_id)
go

create index ad_approve_project_FK
    on Project (administrator_id)
go

INSERT INTO database_english.dbo.Project (project_id, category_id, tutor_id, administrator_id, project_name, starttime, endtime, allfunds, approve_status, approve_time) VALUES ('p000000001', 'x000000001', 'd000000001', 'g000000001', '项目1', '2019-09-14', '2020-09-14', 3000.00, 1, '2019-06-20 21:16:07.000');
INSERT INTO database_english.dbo.Project (project_id, category_id, tutor_id, administrator_id, project_name, starttime, endtime, allfunds, approve_status, approve_time) VALUES ('p000000002', 'x000000002', 'd000000002', 'g000000002', '项目2', '2019-09-14', '2020-09-14', 5000.00, 1, '2020-01-17 21:17:04.000');
INSERT INTO database_english.dbo.Project (project_id, category_id, tutor_id, administrator_id, project_name, starttime, endtime, allfunds, approve_status, approve_time) VALUES ('p000000003', 'x000000003', 'd000000003', 'g000000003', '项目3', '2019-09-14', '2020-09-14', 4000.00, 1, '2019-08-17 21:17:53.000');
create table academic_exchange
(
    academic_exchange_id   char(10)     not null
        constraint PK_ACADEMIC_EXCHANGE
            primary key nonclustered,
    administrator_id       char(10)
        constraint FK_ACADEMIC_MANAGE_AC_ADMINIST
            references administrators,
    postgraduate_id        char(10)
        constraint FK_ACADEMIC_POSTGRADU_POSTGRAD
            references postgraduate,
    tutor_id               char(10)
        constraint FK_ACADEMIC_TUTOR_AUD_TUTOR
            references tutor,
    director_id            char(10)
        constraint FK_ACADEMIC_DIRECTOR__DIRECTOR
            references director,
    academic_exchange_name varchar(256) not null,
	academic_time          date not null,
    report_englishname     varchar(256) not null,
    report_chinesename     varchar(256) not null,
    country                varchar(256),
    province               varchar(256),
    city                   varchar(256),
    quality                int,
    activity_photo         varchar(256),
    others                 text,
    audit_status           int,
    tutor_audit_time       datetime,
    director_audit_time    datetime
)
go

create index postgraduate_load_academic_FK
    on academic_exchange (postgraduate_id)
go

create index manage_academicexchange_FK
    on academic_exchange (administrator_id)
go

create index tutor_audit_academicexchange_FK
    on academic_exchange (tutor_id)
go

create index director_academic_FK
    on academic_exchange (director_id)
go

INSERT INTO database_english.dbo.academic_exchange (academic_exchange_id, administrator_id, postgraduate_id, tutor_id, director_id, academic_exchange_name, academic_time, report_englishname, report_chinesename, country, province, city, quality, activity_photo, others, audit_status, tutor_audit_time, director_audit_time) VALUES ('j0000001  ', 'g000000001', 'y000000001', 'd000000001', 'f000000001', '活动1', 2020-01-19,'name1', '名字1', '英国', '伦敦', '伦敦', 1, '照片1', '其他备注', 1, '2020-10-08 21:37:15.000', '2020-10-12 21:37:24.000');
INSERT INTO database_english.dbo.academic_exchange (academic_exchange_id, administrator_id, postgraduate_id, tutor_id, director_id, academic_exchange_name, academic_time, report_englishname, report_chinesename, country, province, city, quality, activity_photo, others, audit_status, tutor_audit_time, director_audit_time) VALUES ('j0000002  ', 'g000000003', 'y000000003', 'd000000003', 'f000000003', '活动3', 2020-03-17,'name3', '名字3', '中国', '北京', '北京', 1, '照片2', '其他备注', 1, '2020-10-08 21:40:23.000', '2020-10-12 21:40:30.000');
create table administrators
(
    administrator_id    char(10)     not null
        constraint PK_ADMINISTRATORS
            primary key nonclustered,
    administrator_name  varchar(256) not null,
    administrator_work  varchar(256) not null,
    administrator_phone varchar(50),
    administrator_email varchar(256)
)
go

INSERT INTO database_english.dbo.administrators (administrator_id, administrator_name, administrator_work, administrator_phone, administrator_email) VALUES ('g000000001', 'g1', '职务1', '15600003333', 'g1@163.com');
INSERT INTO database_english.dbo.administrators (administrator_id, administrator_name, administrator_work, administrator_phone, administrator_email) VALUES ('g000000002', 'g2', '职务2', '18711113333', 'g2@163.com');
INSERT INTO database_english.dbo.administrators (administrator_id, administrator_name, administrator_work, administrator_phone, administrator_email) VALUES ('g000000003', 'g3', '职务3', '19200009999', 'g3@163.com');
INSERT INTO database_english.dbo.administrators (administrator_id, administrator_name, administrator_work, administrator_phone, administrator_email) VALUES ('g000000004', 'g4', '职务4', '18633339999', 'g4@163.com');
INSERT INTO database_english.dbo.administrators (administrator_id, administrator_name, administrator_work, administrator_phone, administrator_email) VALUES ('g000000005', 'g5', '职务5', '18690908787', 'g5@163.com');
INSERT INTO database_english.dbo.administrators (administrator_id, administrator_name, administrator_work, administrator_phone, administrator_email) VALUES ('g000000006', 'g6', '职务6', '18123433333', 'g6@163.com');
INSERT INTO database_english.dbo.administrators (administrator_id, administrator_name, administrator_work, administrator_phone, administrator_email) VALUES ('g000000007', 'g7', '职务7', '18574676666', 'g7@163.com');
create table assistant_assessment
(
    assessment_id       char(10) not null
        constraint PK_ASSISTANT_ASSESSMENT
            primary key nonclustered,
    postgraduate_id     char(10)
        constraint FK_ASSISTAN_FINAL_CHO_POSTGRAD
            references postgraduate,
    administrator_id    char(10)
        constraint FK_ASSISTAN_AD_APPROV_ADMINIST
            references administrators,
    instructor_id       char(10)
        constraint FK_ASSISTAN_LOAD_EXAM_INSTRUCT
            references instructor,
    self_account        text,
    instructor_evaluate text,
    evaluate_result     int      not null,
    examine_result      int,
    examine_time        datetime
)
go

create index final_choose_FK
    on assistant_assessment (postgraduate_id)
go

create index load_examine_FK
    on assistant_assessment (instructor_id)
go

create index ad_approve_examine_FK
    on assistant_assessment (administrator_id)
go

INSERT INTO database_english.dbo.assistant_assessment (assessment_id, postgraduate_id, administrator_id, instructor_id, self_account, instructor_evaluate, evaluate_result, examine_result, examine_time) VALUES ('a000000001', 'y000000001', 'g000000001', 'k000000001', '良好', '良好', 1, 1, '2020-12-25 21:12:06.000');
INSERT INTO database_english.dbo.assistant_assessment (assessment_id, postgraduate_id, administrator_id, instructor_id, self_account, instructor_evaluate, evaluate_result, examine_result, examine_time) VALUES ('a000000002', 'y000000002', 'g000000002', 'k000000002', '良好', '优秀', 1, 1, '2020-12-21 21:13:11.000');
INSERT INTO database_english.dbo.assistant_assessment (assessment_id, postgraduate_id, administrator_id, instructor_id, self_account, instructor_evaluate, evaluate_result, examine_result, examine_time) VALUES ('a000000003', 'y000000003', 'g000000003', 'k000000003', '良好', '优秀', 1, 1, '2020-12-28 21:13:47.000');
create table assistant_chose
(
    course_id     char(10) not null
        constraint FK_ASSISTAN_ASSISTANT_COURSE
            references course,
    assessment_id char(10) not null
        constraint FK_ASSISTAN_ASSISTANT_ASSISTAN
            references assistant_assessment,
    constraint PK_ASSISTANT_CHOSE
        primary key (course_id, assessment_id)
)
go

create index assistant_chose_FK
    on assistant_chose (course_id)
go

create index assistant_chose2_FK
    on assistant_chose (assessment_id)
go

INSERT INTO database_english.dbo.assistant_chose (course_id, assessment_id) VALUES ('c000000001', 'a000000001');
INSERT INTO database_english.dbo.assistant_chose (course_id, assessment_id) VALUES ('c000000002', 'a000000002');
INSERT INTO database_english.dbo.assistant_chose (course_id, assessment_id) VALUES ('c000000003', 'a000000003');
create table category
(
    category_id   char(10)     not null
        constraint PK_CATEGORY
            primary key nonclustered,
    category_name varchar(256) not null
)
go

INSERT INTO database_english.dbo.category (category_id, category_name) VALUES ('x000000001', '项目1');
INSERT INTO database_english.dbo.category (category_id, category_name) VALUES ('x000000002', '项目2');
INSERT INTO database_english.dbo.category (category_id, category_name) VALUES ('x000000003', '项目3');
create table course
(
    course_id         char(10)     not null
        constraint PK_COURSE
            primary key nonclustered,
    course_name       varchar(256) not null,
    course_nature     varchar(256) not null,
    course_starttime  date,
    course_endtime    date,
    course_audience   varchar(256),
    course_studentnum int,
    course_teachtime  int
)
go

INSERT INTO database_english.dbo.course (course_id, course_name, course_nature, course_starttime, course_endtime, course_audience, course_studentnum, course_teachtime) VALUES ('c000000001', '课程1', '必修', '2020-02-04', '2020-06-07', '本科', 60, 48);
INSERT INTO database_english.dbo.course (course_id, course_name, course_nature, course_starttime, course_endtime, course_audience, course_studentnum, course_teachtime) VALUES ('c000000002', '课程2', '选修', '2020-02-13', '2020-06-13', '本科', 80, 56);
INSERT INTO database_english.dbo.course (course_id, course_name, course_nature, course_starttime, course_endtime, course_audience, course_studentnum, course_teachtime) VALUES ('c000000003', '课程3', '必修', '2020-02-09', '2020-05-27', '研究生', 60, 48);
create table director
(
    director_id      char(10) not null
        constraint PK_DIRECTOR
            primary key nonclustered,
    teacher_id       char(10)
        constraint FK_DIRECTOR_TEACHER_D_TEACHER
            references teacher,
    administrator_id char(10)
        constraint FK_DIRECTOR_BUILDDIRE_ADMINIST
            references administrators,
    subject_id       char(10)
        constraint FK_DIRECTOR_MANAGE_SUBJECT
            references subject,
    is_director      int      not null
)
go

create index manage_FK
    on director (subject_id)
go

create index builddirector_FK
    on director (administrator_id)
go

create index teacher_director_FK
    on director (teacher_id)
go

INSERT INTO database_english.dbo.director (director_id, teacher_id, administrator_id, subject_id, is_director) VALUES ('f000000001', 't000000001', 'g000000001', 's000000001', 1);
INSERT INTO database_english.dbo.director (director_id, teacher_id, administrator_id, subject_id, is_director) VALUES ('f000000003', 't000000002', 'g000000002', 's000000002', 0);
create table instructor
(
    instructor_id    char(10) not null
        constraint PK_INSTRUCTOR
            primary key nonclustered,
    teacher_id       char(10)
        constraint FK_INSTRUCT_TEACHER_I_TEACHER
            references teacher,
    administrator_id char(10)
        constraint FK_INSTRUCT_BUILDINST_ADMINIST
            references administrators,
    isinstructor     int      not null
)
go

create index buildinstructor_FK
    on instructor (administrator_id)
go

create index teacher_instructor_FK
    on instructor (teacher_id)
go

INSERT INTO database_english.dbo.instructor (instructor_id, teacher_id, administrator_id, isinstructor) VALUES ('k000000001', 't000000001', 'g000000001', 1);
INSERT INTO database_english.dbo.instructor (instructor_id, teacher_id, administrator_id, isinstructor) VALUES ('k000000002', 't000000002', 'g000000002', 1);
INSERT INTO database_english.dbo.instructor (instructor_id, teacher_id, administrator_id, isinstructor) VALUES ('k000000003', 't000000003', 'g000000003', 1);
INSERT INTO database_english.dbo.instructor (instructor_id, teacher_id, administrator_id, isinstructor) VALUES ('k000000004', 't000000004', 'g000000004', 0);
INSERT INTO database_english.dbo.instructor (instructor_id, teacher_id, administrator_id, isinstructor) VALUES ('k000000005', 't000000005', 'g000000005', 1);
INSERT INTO database_english.dbo.instructor (instructor_id, teacher_id, administrator_id, isinstructor) VALUES ('k000000006', 't000000006', 'g000000006', 0);
INSERT INTO database_english.dbo.instructor (instructor_id, teacher_id, administrator_id, isinstructor) VALUES ('k000000007', 't000000007', 'g000000007', 1);
create table participate_project
(
    participate_project_id    char(10) not null
        constraint PK_PARTICIPATE_PROJECT
            primary key nonclustered,
    project_id                char(10)
        constraint FK_PARTICIP_PROJECT_P_PROJECT
            references Project,
    tutor_id                  char(10)
        constraint FK_PARTICIP_TUTOR_APP_TUTOR
            references tutor,
    mainwork                  text,
    participate_starttime     date,
    participate_endtime       date,
    participate_approvestatus int,
    participate_approvetime   datetime,
    costequivalent            decimal(8, 2),
    isdirector                int
)
go

create index project_participate_status_FK
    on participate_project (project_id)
go

create index tutor_approve_participate_FK
    on participate_project (tutor_id)
go

INSERT INTO database_english.dbo.participate_project (participate_project_id, project_id, tutor_id, mainwork, participate_starttime, participate_endtime, participate_approvestatus, participate_approvetime, costequivalent, isdirector) VALUES ('r000000001', 'p000000001', 'd000000001', '工作1', '2019-09-14', '2020-09-14', 1, '2020-10-16 21:20:45.000', 3000.00, 1);
INSERT INTO database_english.dbo.participate_project (participate_project_id, project_id, tutor_id, mainwork, participate_starttime, participate_endtime, participate_approvestatus, participate_approvetime, costequivalent, isdirector) VALUES ('r000000002', 'p000000002', 'd000000002', '工作2', '2019-09-14', '2020-09-14', 1, '2020-10-16 21:22:12.000', 5000.00, 1);
INSERT INTO database_english.dbo.participate_project (participate_project_id, project_id, tutor_id, mainwork, participate_starttime, participate_endtime, participate_approvestatus, participate_approvetime, costequivalent, isdirector) VALUES ('r000000003', 'p000000003', 'd000000003', '工作3', '2019-09-14', '2020-09-14', 1, '2020-10-15 21:23:16.000', 4000.00, 1);
create table postgraduate
(
    postgraduate_id    char(10)     not null
        constraint PK_POSTGRADUATE
            primary key nonclustered,
    teacher_id         char(10)
        constraint FK_POSTGRAD_GUIDANCE_TEACHER
            references teacher,
    administrator_id   char(10)
        constraint FK_POSTGRAD_BUILDSTUD_ADMINIST
            references administrators,
    postgraduate_name  varchar(256) not null,
    postgraduate_phone varchar(50),
    postgraduate_email varchar(256),
    postgraduate_birth datetime,
    postgraduate_sex   varchar(256)
)
go

create index buildstudent_FK
    on postgraduate (administrator_id)
go

create index guidance_FK
    on postgraduate (teacher_id)
go

INSERT INTO database_english.dbo.postgraduate (postgraduate_id, teacher_id, administrator_id, postgraduate_name, postgraduate_phone, postgraduate_email, postgraduate_birth, postgraduate_sex) VALUES ('y000000001', 't000000001', 'g000000001', 'yjs1', '18899990000', 'yjs1@163.com', '1997-03-05 21:05:35.000', '1');
INSERT INTO database_english.dbo.postgraduate (postgraduate_id, teacher_id, administrator_id, postgraduate_name, postgraduate_phone, postgraduate_email, postgraduate_birth, postgraduate_sex) VALUES ('y000000002', 't000000002', 'g000000002', 'yjs2', '18477790000', 'yjs2@163.com', '1998-07-05 21:07:13.000', '0');
INSERT INTO database_english.dbo.postgraduate (postgraduate_id, teacher_id, administrator_id, postgraduate_name, postgraduate_phone, postgraduate_email, postgraduate_birth, postgraduate_sex) VALUES ('y000000003', 't000000003', 'g000000003', 'yjs3', '15677778880', 'yjs3@163.com', '1996-10-05 00:00:00.000', '1');
INSERT INTO database_english.dbo.postgraduate (postgraduate_id, teacher_id, administrator_id, postgraduate_name, postgraduate_phone, postgraduate_email, postgraduate_birth, postgraduate_sex) VALUES ('y000000004', 't000000004', 'g000000004', 'yjs4', '19733998800', 'yjs4@163.com', '1996-09-05 00:00:00.000', '0');
create table postgraduate_participate_project
(
    postgraduate_id        char(10) not null
        constraint FK_POSTGRAD_POSTGRADU_POSTGRAD
            references postgraduate,
    participate_project_id char(10) not null
        constraint FK_POSTGRAD_POSTGRADU_PARTICIP
            references participate_project,
    constraint PK_POSTGRADUATE_PARTICIPATE_PR
        primary key (postgraduate_id, participate_project_id)
)
go

create index postgraduate_participate_project_FK
    on postgraduate_participate_project (postgraduate_id)
go

create index postgraduate_participate_project2_FK
    on postgraduate_participate_project (participate_project_id)
go

INSERT INTO database_english.dbo.postgraduate_participate_project (postgraduate_id, participate_project_id) VALUES ('y000000001', 'r000000001');
INSERT INTO database_english.dbo.postgraduate_participate_project (postgraduate_id, participate_project_id) VALUES ('y000000002', 'r000000002');
INSERT INTO database_english.dbo.postgraduate_participate_project (postgraduate_id, participate_project_id) VALUES ('y000000003', 'r000000003');
create table selection
(
    selection_id    char(10) not null
        constraint PK_SELECTION
            primary key nonclustered,
    postgraduate_id char(10)
        constraint FK_SELECTIO_FIRST_CHO_POSTGRAD
            references postgraduate,
    course_id       char(10)
        constraint FK_SELECTIO_CHOOSE_COURSE
            references course,
    selection_time  datetime not null
)
go

create index first_choose_FK
    on selection (postgraduate_id)
go

create index choose_FK
    on selection (course_id)
go

INSERT INTO database_english.dbo.selection (selection_id, postgraduate_id, course_id, selection_time) VALUES ('z000000001', 'y000000001', 'c000000001', '2020-03-09 21:09:39.000');
INSERT INTO database_english.dbo.selection (selection_id, postgraduate_id, course_id, selection_time) VALUES ('z000000002', 'y000000002', 'c000000003', '2020-09-03 21:10:04.000');
INSERT INTO database_english.dbo.selection (selection_id, postgraduate_id, course_id, selection_time) VALUES ('z000000003', 'y000000003', 'c000000002', '2020-09-04 21:10:23.000');
INSERT INTO database_english.dbo.selection (selection_id, postgraduate_id, course_id, selection_time) VALUES ('z000000004', 'y000000004', 'c000000002', '2020-09-08 21:10:45.000');
create table subject
(
    subject_id           char(10)     not null
        constraint PK_SUBJECT
            primary key nonclustered,
    director_id          char(10)
        constraint FK_SUBJECT_MANAGE2_DIRECTOR
            references director,
    subject_name         varchar(256) not null,
    subject_categoryname varchar(256),
    subject_introduction text
)
go

create index manage2_FK
    on subject (director_id)
go

INSERT INTO database_english.dbo.subject (subject_id, director_id, subject_name, subject_categoryname, subject_introduction) VALUES ('s000000001', 'f000000001', '高数', '理科', '学数学啊');
INSERT INTO database_english.dbo.subject (subject_id, director_id, subject_name, subject_categoryname, subject_introduction) VALUES ('s000000002', 'f000000003', '大英', '文科', '学英语啊');
create table teach
(
    instructor_id char(10) not null
        constraint FK_TEACH_TEACH_INSTRUCT
            references instructor,
    course_id     char(10) not null
        constraint FK_TEACH_TEACH2_COURSE
            references course,
    constraint PK_TEACH
        primary key (instructor_id, course_id)
)
go

create index teach_FK
    on teach (instructor_id)
go

create index teach2_FK
    on teach (course_id)
go

INSERT INTO database_english.dbo.teach (instructor_id, course_id) VALUES ('k000000001', 'c000000001');
INSERT INTO database_english.dbo.teach (instructor_id, course_id) VALUES ('k000000002', 'c000000002');
INSERT INTO database_english.dbo.teach (instructor_id, course_id) VALUES ('k000000003', 'c000000003');
create table teacher
(
    teacher_id     char(10) not null
        constraint PK_TEACHER
            primary key nonclustered,
    teacher_name   varchar(256),
    teacher_status varchar(256),
    teacher_phone  varchar(256),
    teacher_birth  date,
    teacher_email  varchar(256),
    teacher_sex    varchar(256)
)
go

INSERT INTO database_english.dbo.teacher (teacher_id, teacher_name, teacher_status, teacher_phone, teacher_birth, teacher_email, teacher_sex) VALUES ('t000000001', '李一', '教授', '15900001111', '1972-01-18', 'aaa@163.com', '1');
INSERT INTO database_english.dbo.teacher (teacher_id, teacher_name, teacher_status, teacher_phone, teacher_birth, teacher_email, teacher_sex) VALUES ('t000000002', '李二', '教授', '15900002222', '1971-01-18', 'bbb@163.com', '1');
INSERT INTO database_english.dbo.teacher (teacher_id, teacher_name, teacher_status, teacher_phone, teacher_birth, teacher_email, teacher_sex) VALUES ('t000000003', '李三', '教授', '15900003333', '1976-08-20', 'ccc@163.com', '0');
INSERT INTO database_english.dbo.teacher (teacher_id, teacher_name, teacher_status, teacher_phone, teacher_birth, teacher_email, teacher_sex) VALUES ('t000000004', '李四', '教授', '15900004444', '1979-01-04', 'ddd@163.com', '1');
INSERT INTO database_english.dbo.teacher (teacher_id, teacher_name, teacher_status, teacher_phone, teacher_birth, teacher_email, teacher_sex) VALUES ('t000000005', '李五', '副教授', '15900005555', '1991-06-19', 'eee@163.com', '1');
INSERT INTO database_english.dbo.teacher (teacher_id, teacher_name, teacher_status, teacher_phone, teacher_birth, teacher_email, teacher_sex) VALUES ('t000000006', '李六', '副教授', '15900006666', '1981-01-09', 'fff@163.com', '1');
INSERT INTO database_english.dbo.teacher (teacher_id, teacher_name, teacher_status, teacher_phone, teacher_birth, teacher_email, teacher_sex) VALUES ('t000000007', '李七', '副教授', '15900007777', '1978-01-12', 'ggg@163.com', '0');
create table teacher_subject
(
    subject_id char(10) not null
        constraint FK_TEACHER__TEACHER_S_SUBJECT
            references subject,
    teacher_id char(10) not null
        constraint FK_TEACHER__TEACHER_S_TEACHER
            references teacher,
    constraint PK_TEACHER_SUBJECT
        primary key (subject_id, teacher_id)
)
go

create index teacher_subject_FK
    on teacher_subject (subject_id)
go

create index teacher_subject2_FK
    on teacher_subject (teacher_id)
go

INSERT INTO database_english.dbo.teacher_subject (subject_id, teacher_id) VALUES ('s000000001', 't000000001');
INSERT INTO database_english.dbo.teacher_subject (subject_id, teacher_id) VALUES ('s000000002', 't000000002');
create table tutor
(
    tutor_id         char(10) not null
        constraint PK_TUTOR
            primary key nonclustered,
    teacher_id       char(10)
        constraint FK_TUTOR_TEACHER_T_TEACHER
            references teacher,
    administrator_id char(10)
        constraint FK_TUTOR_BUILDTUTO_ADMINIST
            references administrators,
    istutor          int      not null
)
go

create index buildtutor_FK
    on tutor (administrator_id)
go

create index teacher_tutor_FK
    on tutor (teacher_id)
go

INSERT INTO database_english.dbo.tutor (tutor_id, teacher_id, administrator_id, istutor) VALUES ('d000000001', 't000000001', 'g000000001', 1);
INSERT INTO database_english.dbo.tutor (tutor_id, teacher_id, administrator_id, istutor) VALUES ('d000000002', 't000000002', 'g000000002', 1);
INSERT INTO database_english.dbo.tutor (tutor_id, teacher_id, administrator_id, istutor) VALUES ('d000000003', 't000000003', 'g000000003', 1);
INSERT INTO database_english.dbo.tutor (tutor_id, teacher_id, administrator_id, istutor) VALUES ('d000000004', 't000000004', 'g000000004', 1);
INSERT INTO database_english.dbo.tutor (tutor_id, teacher_id, administrator_id, istutor) VALUES ('d000000005', 't000000005', 'g000000005', 0);
INSERT INTO database_english.dbo.tutor (tutor_id, teacher_id, administrator_id, istutor) VALUES ('d000000006', 't000000006', 'g000000006', 0);
INSERT INTO database_english.dbo.tutor (tutor_id, teacher_id, administrator_id, istutor) VALUES ('d000000007', 't000000007', 'g000000007', 0);
create table [user]
(
    userid          char(10)      not null
        constraint PK_USER
            primary key nonclustered,
    usercategory_id char(10)
        constraint FK_USER_USER_CATE_USERCATE
            references usercategory,
    password        varchar(1024) not null,
    lastlogintime   datetime,
    lastloginip     varchar(1024)
)
go

create index user_category_FK
    on [user] (usercategory_id)
go

INSERT INTO database_english.dbo.[user] (userid, usercategory_id, password, lastlogintime, lastloginip) VALUES ('t000000001', 'u000000002', '123456', '2021-01-17 21:31:21.000', '北京');
INSERT INTO database_english.dbo.[user] (userid, usercategory_id, password, lastlogintime, lastloginip) VALUES ('t000000002', 'u000000002', '123456', '2021-01-17 21:31:27.000', '北京');
INSERT INTO database_english.dbo.[user] (userid, usercategory_id, password, lastlogintime, lastloginip) VALUES ('t000000003', 'u000000002', '123456', '2021-01-17 21:31:28.000', '北京');
INSERT INTO database_english.dbo.[user] (userid, usercategory_id, password, lastlogintime, lastloginip) VALUES ('t000000004', 'u000000002', '123456', '2021-01-17 21:31:28.000', '北京');
INSERT INTO database_english.dbo.[user] (userid, usercategory_id, password, lastlogintime, lastloginip) VALUES ('t000000005', 'u000000002', '123456', '2021-01-17 21:31:29.000', '北京');
INSERT INTO database_english.dbo.[user] (userid, usercategory_id, password, lastlogintime, lastloginip) VALUES ('t000000006', 'u000000002', '123456', '2021-01-17 21:31:30.000', '北京');
INSERT INTO database_english.dbo.[user] (userid, usercategory_id, password, lastlogintime, lastloginip) VALUES ('t000000007', 'u000000002', '123456', '2021-01-17 21:31:32.000', '北京');
INSERT INTO database_english.dbo.[user] (userid, usercategory_id, password, lastlogintime, lastloginip) VALUES ('y000000001', 'u000000001', '123456', '2021-01-17 21:32:30.000', '北京');
INSERT INTO database_english.dbo.[user] (userid, usercategory_id, password, lastlogintime, lastloginip) VALUES ('y000000002', 'u000000001', '123456', '2021-01-17 21:32:32.000', '北京');
INSERT INTO database_english.dbo.[user] (userid, usercategory_id, password, lastlogintime, lastloginip) VALUES ('y000000003', 'u000000001', '123456', '2021-01-17 21:32:33.000', '北京');
INSERT INTO database_english.dbo.[user] (userid, usercategory_id, password, lastlogintime, lastloginip) VALUES ('y000000004', 'u000000001', '123456', '2021-01-17 21:32:33.000', '北京');
INSERT INTO database_english.dbo.[user] (userid, usercategory_id, password, lastlogintime, lastloginip) VALUES ('g000000001', 'u000000003', '123456', '2021-01-17 21:34:24.000', '北京');
INSERT INTO database_english.dbo.[user] (userid, usercategory_id, password, lastlogintime, lastloginip) VALUES ('g000000002', 'u000000003', '123456', '2021-01-17 21:34:27.000', '北京');
INSERT INTO database_english.dbo.[user] (userid, usercategory_id, password, lastlogintime, lastloginip) VALUES ('g000000003', 'u000000003', '123456', '2021-01-17 21:34:28.000', '北京');
INSERT INTO database_english.dbo.[user] (userid, usercategory_id, password, lastlogintime, lastloginip) VALUES ('g000000004', 'u000000003', '123456', '2021-01-17 21:34:29.000', '北京');
INSERT INTO database_english.dbo.[user] (userid, usercategory_id, password, lastlogintime, lastloginip) VALUES ('g000000005', 'u000000003', '123456', '1970-01-01 00:00:00.023', '北京');
INSERT INTO database_english.dbo.[user] (userid, usercategory_id, password, lastlogintime, lastloginip) VALUES ('g000000006', 'u000000003', '123456', '2021-01-17 21:34:31.000', '北京');
INSERT INTO database_english.dbo.[user] (userid, usercategory_id, password, lastlogintime, lastloginip) VALUES ('g000000007', 'u000000003', '123456', '2021-01-17 21:34:32.000', '北京');
create table usercategory
(
    usercategory_id   char(10)     not null
        constraint PK_USERCATEGORY
            primary key nonclustered,
    usercategory_name varchar(256) not null,
    now_id            int          not null
)
go

INSERT INTO database_english.dbo.usercategory (usercategory_id, usercategory_name, now_id) VALUES ('u000000001', '研究生', 0);
INSERT INTO database_english.dbo.usercategory (usercategory_id, usercategory_name, now_id) VALUES ('u000000002', '老师', 0);
INSERT INTO database_english.dbo.usercategory (usercategory_id, usercategory_name, now_id) VALUES ('u000000003', '管理员', 0);