/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     2021/1/14 15:10:32                           */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Project') and o.name = 'FK_PROJECT_AD_APPROV_ADMINIST')
alter table Project
   drop constraint FK_PROJECT_AD_APPROV_ADMINIST
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Project') and o.name = 'FK_PROJECT_IDENTIFY__TUTOR')
alter table Project
   drop constraint FK_PROJECT_IDENTIFY__TUTOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Project') and o.name = 'FK_PROJECT_PROJECT_C_CATEGORY')
alter table Project
   drop constraint FK_PROJECT_PROJECT_C_CATEGORY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('academic_exchange') and o.name = 'FK_ACADEMIC_DIRECTOR__DIRECTOR')
alter table academic_exchange
   drop constraint FK_ACADEMIC_DIRECTOR__DIRECTOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('academic_exchange') and o.name = 'FK_ACADEMIC_MANAGE_AC_ADMINIST')
alter table academic_exchange
   drop constraint FK_ACADEMIC_MANAGE_AC_ADMINIST
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('academic_exchange') and o.name = 'FK_ACADEMIC_POSTGRADU_POSTGRAD')
alter table academic_exchange
   drop constraint FK_ACADEMIC_POSTGRADU_POSTGRAD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('academic_exchange') and o.name = 'FK_ACADEMIC_TUTOR_AUD_TUTOR')
alter table academic_exchange
   drop constraint FK_ACADEMIC_TUTOR_AUD_TUTOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('assistant_assessment') and o.name = 'FK_ASSISTAN_AD_APPROV_ADMINIST')
alter table assistant_assessment
   drop constraint FK_ASSISTAN_AD_APPROV_ADMINIST
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('assistant_assessment') and o.name = 'FK_ASSISTAN_FINAL_CHO_POSTGRAD')
alter table assistant_assessment
   drop constraint FK_ASSISTAN_FINAL_CHO_POSTGRAD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('assistant_assessment') and o.name = 'FK_ASSISTAN_LOAD_EXAM_INSTRUCT')
alter table assistant_assessment
   drop constraint FK_ASSISTAN_LOAD_EXAM_INSTRUCT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('assistant_chose') and o.name = 'FK_ASSISTAN_ASSISTANT_COURSE')
alter table assistant_chose
   drop constraint FK_ASSISTAN_ASSISTANT_COURSE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('assistant_chose') and o.name = 'FK_ASSISTAN_ASSISTANT_ASSISTAN')
alter table assistant_chose
   drop constraint FK_ASSISTAN_ASSISTANT_ASSISTAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('director') and o.name = 'FK_DIRECTOR_BUILDDIRE_ADMINIST')
alter table director
   drop constraint FK_DIRECTOR_BUILDDIRE_ADMINIST
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('director') and o.name = 'FK_DIRECTOR_MANAGE_SUBJECT')
alter table director
   drop constraint FK_DIRECTOR_MANAGE_SUBJECT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('director') and o.name = 'FK_DIRECTOR_TEACHER_D_TEACHER')
alter table director
   drop constraint FK_DIRECTOR_TEACHER_D_TEACHER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('instructor') and o.name = 'FK_INSTRUCT_BUILDINST_ADMINIST')
alter table instructor
   drop constraint FK_INSTRUCT_BUILDINST_ADMINIST
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('instructor') and o.name = 'FK_INSTRUCT_TEACHER_I_TEACHER')
alter table instructor
   drop constraint FK_INSTRUCT_TEACHER_I_TEACHER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('participate_project') and o.name = 'FK_PARTICIP_PROJECT_P_PROJECT')
alter table participate_project
   drop constraint FK_PARTICIP_PROJECT_P_PROJECT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('participate_project') and o.name = 'FK_PARTICIP_TUTOR_APP_TUTOR')
alter table participate_project
   drop constraint FK_PARTICIP_TUTOR_APP_TUTOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('postgraduate') and o.name = 'FK_POSTGRAD_BUILDSTUD_ADMINIST')
alter table postgraduate
   drop constraint FK_POSTGRAD_BUILDSTUD_ADMINIST
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('postgraduate') and o.name = 'FK_POSTGRAD_GUIDANCE_TEACHER')
alter table postgraduate
   drop constraint FK_POSTGRAD_GUIDANCE_TEACHER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('postgraduate_participate_project') and o.name = 'FK_POSTGRAD_POSTGRADU_POSTGRAD')
alter table postgraduate_participate_project
   drop constraint FK_POSTGRAD_POSTGRADU_POSTGRAD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('postgraduate_participate_project') and o.name = 'FK_POSTGRAD_POSTGRADU_PARTICIP')
alter table postgraduate_participate_project
   drop constraint FK_POSTGRAD_POSTGRADU_PARTICIP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('selection') and o.name = 'FK_SELECTIO_CHOOSE_COURSE')
alter table selection
   drop constraint FK_SELECTIO_CHOOSE_COURSE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('selection') and o.name = 'FK_SELECTIO_FIRST_CHO_POSTGRAD')
alter table selection
   drop constraint FK_SELECTIO_FIRST_CHO_POSTGRAD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('subject') and o.name = 'FK_SUBJECT_MANAGE2_DIRECTOR')
alter table subject
   drop constraint FK_SUBJECT_MANAGE2_DIRECTOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('teach') and o.name = 'FK_TEACH_TEACH_INSTRUCT')
alter table teach
   drop constraint FK_TEACH_TEACH_INSTRUCT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('teach') and o.name = 'FK_TEACH_TEACH2_COURSE')
alter table teach
   drop constraint FK_TEACH_TEACH2_COURSE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('teacher_subject') and o.name = 'FK_TEACHER__TEACHER_S_SUBJECT')
alter table teacher_subject
   drop constraint FK_TEACHER__TEACHER_S_SUBJECT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('teacher_subject') and o.name = 'FK_TEACHER__TEACHER_S_TEACHER')
alter table teacher_subject
   drop constraint FK_TEACHER__TEACHER_S_TEACHER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tutor') and o.name = 'FK_TUTOR_BUILDTUTO_ADMINIST')
alter table tutor
   drop constraint FK_TUTOR_BUILDTUTO_ADMINIST
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tutor') and o.name = 'FK_TUTOR_TEACHER_T_TEACHER')
alter table tutor
   drop constraint FK_TUTOR_TEACHER_T_TEACHER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"user"') and o.name = 'FK_USER_USER_CATE_USERCATE')
alter table "user"
   drop constraint FK_USER_USER_CATE_USERCATE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Project')
            and   name  = 'ad_approve_project_FK'
            and   indid > 0
            and   indid < 255)
   drop index Project.ad_approve_project_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Project')
            and   name  = 'identify_itemsandfunds_FK'
            and   indid > 0
            and   indid < 255)
   drop index Project.identify_itemsandfunds_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Project')
            and   name  = 'project_category_FK'
            and   indid > 0
            and   indid < 255)
   drop index Project.project_category_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Project')
            and   type = 'U')
   drop table Project
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('academic_exchange')
            and   name  = 'director_academic_FK'
            and   indid > 0
            and   indid < 255)
   drop index academic_exchange.director_academic_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('academic_exchange')
            and   name  = 'tutor_audit_academicexchange_FK'
            and   indid > 0
            and   indid < 255)
   drop index academic_exchange.tutor_audit_academicexchange_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('academic_exchange')
            and   name  = 'manage_academicexchange_FK'
            and   indid > 0
            and   indid < 255)
   drop index academic_exchange.manage_academicexchange_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('academic_exchange')
            and   name  = 'postgraduate_load_academic_FK'
            and   indid > 0
            and   indid < 255)
   drop index academic_exchange.postgraduate_load_academic_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('academic_exchange')
            and   type = 'U')
   drop table academic_exchange
go

if exists (select 1
            from  sysobjects
           where  id = object_id('administrators')
            and   type = 'U')
   drop table administrators
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('assistant_assessment')
            and   name  = 'ad_approve_examine_FK'
            and   indid > 0
            and   indid < 255)
   drop index assistant_assessment.ad_approve_examine_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('assistant_assessment')
            and   name  = 'load_examine_FK'
            and   indid > 0
            and   indid < 255)
   drop index assistant_assessment.load_examine_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('assistant_assessment')
            and   name  = 'final_choose_FK'
            and   indid > 0
            and   indid < 255)
   drop index assistant_assessment.final_choose_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('assistant_assessment')
            and   type = 'U')
   drop table assistant_assessment
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('assistant_chose')
            and   name  = 'assistant_chose2_FK'
            and   indid > 0
            and   indid < 255)
   drop index assistant_chose.assistant_chose2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('assistant_chose')
            and   name  = 'assistant_chose_FK'
            and   indid > 0
            and   indid < 255)
   drop index assistant_chose.assistant_chose_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('assistant_chose')
            and   type = 'U')
   drop table assistant_chose
go

if exists (select 1
            from  sysobjects
           where  id = object_id('category')
            and   type = 'U')
   drop table category
go

if exists (select 1
            from  sysobjects
           where  id = object_id('course')
            and   type = 'U')
   drop table course
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('director')
            and   name  = 'teacher_director_FK'
            and   indid > 0
            and   indid < 255)
   drop index director.teacher_director_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('director')
            and   name  = 'builddirector_FK'
            and   indid > 0
            and   indid < 255)
   drop index director.builddirector_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('director')
            and   name  = 'manage_FK'
            and   indid > 0
            and   indid < 255)
   drop index director.manage_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('director')
            and   type = 'U')
   drop table director
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('instructor')
            and   name  = 'teacher_instructor_FK'
            and   indid > 0
            and   indid < 255)
   drop index instructor.teacher_instructor_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('instructor')
            and   name  = 'buildinstructor_FK'
            and   indid > 0
            and   indid < 255)
   drop index instructor.buildinstructor_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('instructor')
            and   type = 'U')
   drop table instructor
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('participate_project')
            and   name  = 'tutor_approve_participate_FK'
            and   indid > 0
            and   indid < 255)
   drop index participate_project.tutor_approve_participate_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('participate_project')
            and   name  = 'project_participate_status_FK'
            and   indid > 0
            and   indid < 255)
   drop index participate_project.project_participate_status_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('participate_project')
            and   type = 'U')
   drop table participate_project
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('postgraduate')
            and   name  = 'guidance_FK'
            and   indid > 0
            and   indid < 255)
   drop index postgraduate.guidance_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('postgraduate')
            and   name  = 'buildstudent_FK'
            and   indid > 0
            and   indid < 255)
   drop index postgraduate.buildstudent_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('postgraduate')
            and   type = 'U')
   drop table postgraduate
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('postgraduate_participate_project')
            and   name  = 'postgraduate_participate_project2_FK'
            and   indid > 0
            and   indid < 255)
   drop index postgraduate_participate_project.postgraduate_participate_project2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('postgraduate_participate_project')
            and   name  = 'postgraduate_participate_project_FK'
            and   indid > 0
            and   indid < 255)
   drop index postgraduate_participate_project.postgraduate_participate_project_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('postgraduate_participate_project')
            and   type = 'U')
   drop table postgraduate_participate_project
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('selection')
            and   name  = 'choose_FK'
            and   indid > 0
            and   indid < 255)
   drop index selection.choose_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('selection')
            and   name  = 'first_choose_FK'
            and   indid > 0
            and   indid < 255)
   drop index selection.first_choose_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('selection')
            and   type = 'U')
   drop table selection
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('subject')
            and   name  = 'manage2_FK'
            and   indid > 0
            and   indid < 255)
   drop index subject.manage2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('subject')
            and   type = 'U')
   drop table subject
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('teach')
            and   name  = 'teach2_FK'
            and   indid > 0
            and   indid < 255)
   drop index teach.teach2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('teach')
            and   name  = 'teach_FK'
            and   indid > 0
            and   indid < 255)
   drop index teach.teach_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('teach')
            and   type = 'U')
   drop table teach
go

if exists (select 1
            from  sysobjects
           where  id = object_id('teacher')
            and   type = 'U')
   drop table teacher
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('teacher_subject')
            and   name  = 'teacher_subject2_FK'
            and   indid > 0
            and   indid < 255)
   drop index teacher_subject.teacher_subject2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('teacher_subject')
            and   name  = 'teacher_subject_FK'
            and   indid > 0
            and   indid < 255)
   drop index teacher_subject.teacher_subject_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('teacher_subject')
            and   type = 'U')
   drop table teacher_subject
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tutor')
            and   name  = 'teacher_tutor_FK'
            and   indid > 0
            and   indid < 255)
   drop index tutor.teacher_tutor_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('tutor')
            and   name  = 'buildtutor_FK'
            and   indid > 0
            and   indid < 255)
   drop index tutor.buildtutor_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tutor')
            and   type = 'U')
   drop table tutor
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"user"')
            and   name  = 'user_category_FK'
            and   indid > 0
            and   indid < 255)
   drop index "user".user_category_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"user"')
            and   type = 'U')
   drop table "user"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('usercategory')
            and   type = 'U')
   drop table usercategory
go

/*==============================================================*/
/* Table: Project                                               */
/*==============================================================*/
create table Project (
   project_id           char(10)             not null,
   category_id          char(10)             null,
   tutor_id             char(10)             null,
   administrator_id     char(10)             null,
   project_name         varchar(256)         not null,
   starttime            datetime             not null,
   endtime              datetime             not null,
   allfunds             decimal(8,2)         not null,
   approve_status       int                  not null,
   approve_time         datetime             null,
   constraint PK_PROJECT primary key nonclustered (project_id)
)
go

/*==============================================================*/
/* Index: project_category_FK                                   */
/*==============================================================*/
create index project_category_FK on Project (
category_id ASC
)
go

/*==============================================================*/
/* Index: identify_itemsandfunds_FK                             */
/*==============================================================*/
create index identify_itemsandfunds_FK on Project (
tutor_id ASC
)
go

/*==============================================================*/
/* Index: ad_approve_project_FK                                 */
/*==============================================================*/
create index ad_approve_project_FK on Project (
administrator_id ASC
)
go

/*==============================================================*/
/* Table: academic_exchange                                     */
/*==============================================================*/
create table academic_exchange (
   academic_exchange_id char(10)             not null,
   administrator_id     char(10)             null,
   postgraduate_id      char(10)             null,
   tutor_id             char(10)             null,
   director_id          char(10)             null,
   academic_exchange_name varchar(256)         not null,
   report_englishname   varchar(256)         not null,
   report_chinesename   varchar(256)         not null,
   country              varchar(256)         null,
   province             varchar(256)         null,
   city                 varchar(256)         null,
   quality              int                  null,
   activity_photo       varchar(256)         null,
   others               text                 null,
   audit_status         int                  null,
   tutor_audit_time     datetime             null,
   director_audit_time  datetime             null,
   constraint PK_ACADEMIC_EXCHANGE primary key nonclustered (academic_exchange_id)
)
go

/*==============================================================*/
/* Index: postgraduate_load_academic_FK                         */
/*==============================================================*/
create index postgraduate_load_academic_FK on academic_exchange (
postgraduate_id ASC
)
go

/*==============================================================*/
/* Index: manage_academicexchange_FK                            */
/*==============================================================*/
create index manage_academicexchange_FK on academic_exchange (
administrator_id ASC
)
go

/*==============================================================*/
/* Index: tutor_audit_academicexchange_FK                       */
/*==============================================================*/
create index tutor_audit_academicexchange_FK on academic_exchange (
tutor_id ASC
)
go

/*==============================================================*/
/* Index: director_academic_FK                                  */
/*==============================================================*/
create index director_academic_FK on academic_exchange (
director_id ASC
)
go

/*==============================================================*/
/* Table: administrators                                        */
/*==============================================================*/
create table administrators (
   administrator_id     char(10)             not null,
   administrator_name   varchar(256)         not null,
   administrator_work   varchar(256)         not null,
   administrator_phone  varchar(50)          null,
   administrator_email  varchar(256)         null,
   constraint PK_ADMINISTRATORS primary key nonclustered (administrator_id)
)
go

/*==============================================================*/
/* Table: assistant_assessment                                  */
/*==============================================================*/
create table assistant_assessment (
   assessment_id        char(10)             not null,
   postgraduate_id      char(10)             null,
   administrator_id     char(10)             null,
   instructor_id        char(10)             null,
   self_account         text                 null,
   instructor_evaluate  text                 null,
   evaluate_result      int                  not null,
   examine_result       int                  null,
   examine_time         datetime             null,
   constraint PK_ASSISTANT_ASSESSMENT primary key nonclustered (assessment_id)
)
go

/*==============================================================*/
/* Index: final_choose_FK                                       */
/*==============================================================*/
create index final_choose_FK on assistant_assessment (
postgraduate_id ASC
)
go

/*==============================================================*/
/* Index: load_examine_FK                                       */
/*==============================================================*/
create index load_examine_FK on assistant_assessment (
instructor_id ASC
)
go

/*==============================================================*/
/* Index: ad_approve_examine_FK                                 */
/*==============================================================*/
create index ad_approve_examine_FK on assistant_assessment (
administrator_id ASC
)
go

/*==============================================================*/
/* Table: assistant_chose                                       */
/*==============================================================*/
create table assistant_chose (
   course_id            char(10)             not null,
   assessment_id        char(10)             not null,
   constraint PK_ASSISTANT_CHOSE primary key (course_id, assessment_id)
)
go

/*==============================================================*/
/* Index: assistant_chose_FK                                    */
/*==============================================================*/
create index assistant_chose_FK on assistant_chose (
course_id ASC
)
go

/*==============================================================*/
/* Index: assistant_chose2_FK                                   */
/*==============================================================*/
create index assistant_chose2_FK on assistant_chose (
assessment_id ASC
)
go

/*==============================================================*/
/* Table: category                                              */
/*==============================================================*/
create table category (
   category_id          char(10)             not null,
   category_name        varchar(256)         not null,
   constraint PK_CATEGORY primary key nonclustered (category_id)
)
go

/*==============================================================*/
/* Table: course                                                */
/*==============================================================*/
create table course (
   course_id            char(10)             not null,
   course_name          varchar(256)         not null,
   course_nature        varchar(256)         not null,
   course_starttime     datetime             null,
   course_endtime       datetime             null,
   course_audience      varchar(256)         null,
   course_studentnum    int                  null,
   course_teachtime     int                  null,
   constraint PK_COURSE primary key nonclustered (course_id)
)
go

/*==============================================================*/
/* Table: director                                              */
/*==============================================================*/
create table director (
   director_id          char(10)             not null,
   teacher_id           char(10)             null,
   administrator_id     char(10)             null,
   subject_id           char(10)             null,
   is_director          int                  not null,
   constraint PK_DIRECTOR primary key nonclustered (director_id)
)
go

/*==============================================================*/
/* Index: manage_FK                                             */
/*==============================================================*/
create index manage_FK on director (
subject_id ASC
)
go

/*==============================================================*/
/* Index: builddirector_FK                                      */
/*==============================================================*/
create index builddirector_FK on director (
administrator_id ASC
)
go

/*==============================================================*/
/* Index: teacher_director_FK                                   */
/*==============================================================*/
create index teacher_director_FK on director (
teacher_id ASC
)
go

/*==============================================================*/
/* Table: instructor                                            */
/*==============================================================*/
create table instructor (
   instructor_id        char(10)             not null,
   teacher_id           char(10)             null,
   administrator_id     char(10)             null,
   isinstructor         int                  not null,
   constraint PK_INSTRUCTOR primary key nonclustered (instructor_id)
)
go

/*==============================================================*/
/* Index: buildinstructor_FK                                    */
/*==============================================================*/
create index buildinstructor_FK on instructor (
administrator_id ASC
)
go

/*==============================================================*/
/* Index: teacher_instructor_FK                                 */
/*==============================================================*/
create index teacher_instructor_FK on instructor (
teacher_id ASC
)
go

/*==============================================================*/
/* Table: participate_project                                   */
/*==============================================================*/
create table participate_project (
   participate_project_id char(10)             not null,
   project_id           char(10)             null,
   tutor_id             char(10)             null,
   mainwork             text                 null,
   participate_starttime datetime             null,
   participate_endtime  datetime             null,
   participate_approvestatus int                  null,
   participate_approvetime datetime             null,
   costequivalent       decimal(8,2)         null,
   isdirector           int                  null,
   constraint PK_PARTICIPATE_PROJECT primary key nonclustered (participate_project_id)
)
go

/*==============================================================*/
/* Index: project_participate_status_FK                         */
/*==============================================================*/
create index project_participate_status_FK on participate_project (
project_id ASC
)
go

/*==============================================================*/
/* Index: tutor_approve_participate_FK                          */
/*==============================================================*/
create index tutor_approve_participate_FK on participate_project (
tutor_id ASC
)
go

/*==============================================================*/
/* Table: postgraduate                                          */
/*==============================================================*/
create table postgraduate (
   postgraduate_id      char(10)             not null,
   teacher_id           char(10)             null,
   administrator_id     char(10)             null,
   postgraduate_name    varchar(256)         not null,
   postgraduate_phone   varchar(50)          null,
   postgraduate_email   varchar(256)         null,
   postgraduate_birth   datetime             null,
   postgraduate_sex     varchar(256)         null,
   constraint PK_POSTGRADUATE primary key nonclustered (postgraduate_id)
)
go

/*==============================================================*/
/* Index: buildstudent_FK                                       */
/*==============================================================*/
create index buildstudent_FK on postgraduate (
administrator_id ASC
)
go

/*==============================================================*/
/* Index: guidance_FK                                           */
/*==============================================================*/
create index guidance_FK on postgraduate (
teacher_id ASC
)
go

/*==============================================================*/
/* Table: postgraduate_participate_project                      */
/*==============================================================*/
create table postgraduate_participate_project (
   postgraduate_id      char(10)             not null,
   participate_project_id char(10)             not null,
   constraint PK_POSTGRADUATE_PARTICIPATE_PR primary key (postgraduate_id, participate_project_id)
)
go

/*==============================================================*/
/* Index: postgraduate_participate_project_FK                   */
/*==============================================================*/
create index postgraduate_participate_project_FK on postgraduate_participate_project (
postgraduate_id ASC
)
go

/*==============================================================*/
/* Index: postgraduate_participate_project2_FK                  */
/*==============================================================*/
create index postgraduate_participate_project2_FK on postgraduate_participate_project (
participate_project_id ASC
)
go

/*==============================================================*/
/* Table: selection                                             */
/*==============================================================*/
create table selection (
   selection_id         char(10)             not null,
   postgraduate_id      char(10)             null,
   course_id            char(10)             null,
   selection_time       datetime             not null,
   constraint PK_SELECTION primary key nonclustered (selection_id)
)
go

/*==============================================================*/
/* Index: first_choose_FK                                       */
/*==============================================================*/
create index first_choose_FK on selection (
postgraduate_id ASC
)
go

/*==============================================================*/
/* Index: choose_FK                                             */
/*==============================================================*/
create index choose_FK on selection (
course_id ASC
)
go

/*==============================================================*/
/* Table: subject                                               */
/*==============================================================*/
create table subject (
   subject_id           char(10)             not null,
   director_id          char(10)             null,
   subject_name         varchar(256)         not null,
   subject_categoryname varchar(256)         null,
   subject_introduction text                 null,
   constraint PK_SUBJECT primary key nonclustered (subject_id)
)
go

/*==============================================================*/
/* Index: manage2_FK                                            */
/*==============================================================*/
create index manage2_FK on subject (
director_id ASC
)
go

/*==============================================================*/
/* Table: teach                                                 */
/*==============================================================*/
create table teach (
   instructor_id        char(10)             not null,
   course_id            char(10)             not null,
   constraint PK_TEACH primary key (instructor_id, course_id)
)
go

/*==============================================================*/
/* Index: teach_FK                                              */
/*==============================================================*/
create index teach_FK on teach (
instructor_id ASC
)
go

/*==============================================================*/
/* Index: teach2_FK                                             */
/*==============================================================*/
create index teach2_FK on teach (
course_id ASC
)
go

/*==============================================================*/
/* Table: teacher                                               */
/*==============================================================*/
create table teacher (
   teacher_id           char(10)             not null,
   teacher_name         varchar(256)         null,
   teacher_status       varchar(256)         null,
   teacher_phone        varchar(256)         null,
   teacher_birth        datetime             null,
   teacher_email        varchar(256)         null,
   teacher_sex          varchar(256)         null,
   constraint PK_TEACHER primary key nonclustered (teacher_id)
)
go

/*==============================================================*/
/* Table: teacher_subject                                       */
/*==============================================================*/
create table teacher_subject (
   subject_id           char(10)             not null,
   teacher_id           char(10)             not null,
   constraint PK_TEACHER_SUBJECT primary key (subject_id, teacher_id)
)
go

/*==============================================================*/
/* Index: teacher_subject_FK                                    */
/*==============================================================*/
create index teacher_subject_FK on teacher_subject (
subject_id ASC
)
go

/*==============================================================*/
/* Index: teacher_subject2_FK                                   */
/*==============================================================*/
create index teacher_subject2_FK on teacher_subject (
teacher_id ASC
)
go

/*==============================================================*/
/* Table: tutor                                                 */
/*==============================================================*/
create table tutor (
   tutor_id             char(10)             not null,
   teacher_id           char(10)             null,
   administrator_id     char(10)             null,
   istutor              int                  not null,
   constraint PK_TUTOR primary key nonclustered (tutor_id)
)
go

/*==============================================================*/
/* Index: buildtutor_FK                                         */
/*==============================================================*/
create index buildtutor_FK on tutor (
administrator_id ASC
)
go

/*==============================================================*/
/* Index: teacher_tutor_FK                                      */
/*==============================================================*/
create index teacher_tutor_FK on tutor (
teacher_id ASC
)
go

/*==============================================================*/
/* Table: "user"                                                */
/*==============================================================*/
create table "user" (
   userid               char(10)             not null,
   usercategory_id      char(10)             null,
   password             varchar(1024)        not null,
   lastlogintime        datetime             null,
   lastloginip          varchar(1024)        null,
   constraint PK_USER primary key nonclustered (userid)
)
go

/*==============================================================*/
/* Index: user_category_FK                                      */
/*==============================================================*/
create index user_category_FK on "user" (
usercategory_id ASC
)
go

/*==============================================================*/
/* Table: usercategory                                          */
/*==============================================================*/
create table usercategory (
   usercategory_id      char(10)             not null,
   usercategory_name    varchar(256)         not null,
   now_id               int                  not null,
   constraint PK_USERCATEGORY primary key nonclustered (usercategory_id)
)
go

alter table Project
   add constraint FK_PROJECT_AD_APPROV_ADMINIST foreign key (administrator_id)
      references administrators (administrator_id)
go

alter table Project
   add constraint FK_PROJECT_IDENTIFY__TUTOR foreign key (tutor_id)
      references tutor (tutor_id)
go

alter table Project
   add constraint FK_PROJECT_PROJECT_C_CATEGORY foreign key (category_id)
      references category (category_id)
go

alter table academic_exchange
   add constraint FK_ACADEMIC_DIRECTOR__DIRECTOR foreign key (director_id)
      references director (director_id)
go

alter table academic_exchange
   add constraint FK_ACADEMIC_MANAGE_AC_ADMINIST foreign key (administrator_id)
      references administrators (administrator_id)
go

alter table academic_exchange
   add constraint FK_ACADEMIC_POSTGRADU_POSTGRAD foreign key (postgraduate_id)
      references postgraduate (postgraduate_id)
go

alter table academic_exchange
   add constraint FK_ACADEMIC_TUTOR_AUD_TUTOR foreign key (tutor_id)
      references tutor (tutor_id)
go

alter table assistant_assessment
   add constraint FK_ASSISTAN_AD_APPROV_ADMINIST foreign key (administrator_id)
      references administrators (administrator_id)
go

alter table assistant_assessment
   add constraint FK_ASSISTAN_FINAL_CHO_POSTGRAD foreign key (postgraduate_id)
      references postgraduate (postgraduate_id)
go

alter table assistant_assessment
   add constraint FK_ASSISTAN_LOAD_EXAM_INSTRUCT foreign key (instructor_id)
      references instructor (instructor_id)
go

alter table assistant_chose
   add constraint FK_ASSISTAN_ASSISTANT_COURSE foreign key (course_id)
      references course (course_id)
go

alter table assistant_chose
   add constraint FK_ASSISTAN_ASSISTANT_ASSISTAN foreign key (assessment_id)
      references assistant_assessment (assessment_id)
go

alter table director
   add constraint FK_DIRECTOR_BUILDDIRE_ADMINIST foreign key (administrator_id)
      references administrators (administrator_id)
go

alter table director
   add constraint FK_DIRECTOR_MANAGE_SUBJECT foreign key (subject_id)
      references subject (subject_id)
go

alter table director
   add constraint FK_DIRECTOR_TEACHER_D_TEACHER foreign key (teacher_id)
      references teacher (teacher_id)
go

alter table instructor
   add constraint FK_INSTRUCT_BUILDINST_ADMINIST foreign key (administrator_id)
      references administrators (administrator_id)
go

alter table instructor
   add constraint FK_INSTRUCT_TEACHER_I_TEACHER foreign key (teacher_id)
      references teacher (teacher_id)
go

alter table participate_project
   add constraint FK_PARTICIP_PROJECT_P_PROJECT foreign key (project_id)
      references Project (project_id)
go

alter table participate_project
   add constraint FK_PARTICIP_TUTOR_APP_TUTOR foreign key (tutor_id)
      references tutor (tutor_id)
go

alter table postgraduate
   add constraint FK_POSTGRAD_BUILDSTUD_ADMINIST foreign key (administrator_id)
      references administrators (administrator_id)
go

alter table postgraduate
   add constraint FK_POSTGRAD_GUIDANCE_TEACHER foreign key (teacher_id)
      references teacher (teacher_id)
go

alter table postgraduate_participate_project
   add constraint FK_POSTGRAD_POSTGRADU_POSTGRAD foreign key (postgraduate_id)
      references postgraduate (postgraduate_id)
go

alter table postgraduate_participate_project
   add constraint FK_POSTGRAD_POSTGRADU_PARTICIP foreign key (participate_project_id)
      references participate_project (participate_project_id)
go

alter table selection
   add constraint FK_SELECTIO_CHOOSE_COURSE foreign key (course_id)
      references course (course_id)
go

alter table selection
   add constraint FK_SELECTIO_FIRST_CHO_POSTGRAD foreign key (postgraduate_id)
      references postgraduate (postgraduate_id)
go

alter table subject
   add constraint FK_SUBJECT_MANAGE2_DIRECTOR foreign key (director_id)
      references director (director_id)
go

alter table teach
   add constraint FK_TEACH_TEACH_INSTRUCT foreign key (instructor_id)
      references instructor (instructor_id)
go

alter table teach
   add constraint FK_TEACH_TEACH2_COURSE foreign key (course_id)
      references course (course_id)
go

alter table teacher_subject
   add constraint FK_TEACHER__TEACHER_S_SUBJECT foreign key (subject_id)
      references subject (subject_id)
go

alter table teacher_subject
   add constraint FK_TEACHER__TEACHER_S_TEACHER foreign key (teacher_id)
      references teacher (teacher_id)
go

alter table tutor
   add constraint FK_TUTOR_BUILDTUTO_ADMINIST foreign key (administrator_id)
      references administrators (administrator_id)
go

alter table tutor
   add constraint FK_TUTOR_TEACHER_T_TEACHER foreign key (teacher_id)
      references teacher (teacher_id)
go

alter table "user"
   add constraint FK_USER_USER_CATE_USERCATE foreign key (usercategory_id)
      references usercategory (usercategory_id)
go

