toc.dat                                                                                             0000600 0004000 0002000 00000206243 14231652720 0014450 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       *                    z           websitepostgredb    14.1    14.1 ╦    °
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         ∙
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         ·
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         √
           1262    41047    websitepostgredb    DATABASE     t   CREATE DATABASE websitepostgredb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
     DROP DATABASE websitepostgredb;
                postgres    false         ╪            1259    41074 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false         ╫            1259    41073    auth_group_id_seq    SEQUENCE     ë   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    216         ⁿ
           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    215         ┌            1259    41083    auth_group_permissions    TABLE     è   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false         ┘            1259    41082    auth_group_permissions_id_seq    SEQUENCE     å   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    218         ²
           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    217         ╓            1259    41067    auth_permission    TABLE     ┐   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false         ╒            1259    41066    auth_permission_id_seq    SEQUENCE     Ä   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    214         ■
           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    213         ▄            1259    41090 	   auth_user    TABLE     ▀  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false         ▐            1259    41099    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false         ▌            1259    41098    auth_user_groups_id_seq    SEQUENCE     Ç   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    222          
           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    221         █            1259    41089    auth_user_id_seq    SEQUENCE     ê   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    220                     0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    219         α            1259    41106    auth_user_user_permissions    TABLE     ì   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false         ▀            1259    41105 !   auth_user_user_permissions_id_seq    SEQUENCE     è   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    224                    0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    223         Θ            1259    41281 	   blog_post    TABLE     ■   CREATE TABLE public.blog_post (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    body text NOT NULL,
    caption text NOT NULL,
    post_date date NOT NULL,
    author_id integer NOT NULL,
    slug character varying(50) NOT NULL
);
    DROP TABLE public.blog_post;
       public         heap    postgres    false         Φ            1259    41280    blog_post_id_seq    SEQUENCE     y   CREATE SEQUENCE public.blog_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.blog_post_id_seq;
       public          postgres    false    233                    0    0    blog_post_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.blog_post_id_seq OWNED BY public.blog_post.id;
          public          postgres    false    232         Γ            1259    41165    django_admin_log    TABLE     ê  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false         ß            1259    41164    django_admin_log_id_seq    SEQUENCE     Å   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    226                    0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    225         ╘            1259    41058    django_content_type    TABLE     ƒ   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false         ╙            1259    41057    django_content_type_id_seq    SEQUENCE     Æ   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    212                    0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    211         ╥            1259    41049    django_migrations    TABLE     ─   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false         ╤            1259    41048    django_migrations_id_seq    SEQUENCE     ü   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    210                    0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209         π            1259    41194    django_session    TABLE     ¬   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false         ≡            1259    57345    gTTS_speech    TABLE     Å   CREATE TABLE public."gTTS_speech" (
    id bigint NOT NULL,
    text text NOT NULL,
    language text NOT NULL,
    file_name text NOT NULL
);
 !   DROP TABLE public."gTTS_speech";
       public         heap    postgres    false         ±            1259    57362    gTTS_speech_id_seq    SEQUENCE     }   CREATE SEQUENCE public."gTTS_speech_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."gTTS_speech_id_seq";
       public          postgres    false    240                    0    0    gTTS_speech_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."gTTS_speech_id_seq" OWNED BY public."gTTS_speech".id;
          public          postgres    false    241         σ            1259    41204    learning_course    TABLE     ì   CREATE TABLE public.learning_course (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    image character varying(100)
);
 #   DROP TABLE public.learning_course;
       public         heap    postgres    false         Σ            1259    41203    learning_course_id_seq    SEQUENCE        CREATE SEQUENCE public.learning_course_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.learning_course_id_seq;
       public          postgres    false    229                    0    0    learning_course_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.learning_course_id_seq OWNED BY public.learning_course.id;
          public          postgres    false    228         φ            1259    41312    learning_guide    TABLE     =  CREATE TABLE public.learning_guide (
    id bigint NOT NULL,
    "guideTitle" character varying(255) NOT NULL,
    content text NOT NULL,
    "orderingID" integer NOT NULL,
    course_id bigint NOT NULL,
    slug character varying(50) NOT NULL,
    category character varying(255) NOT NULL,
    "richContent" text
);
 "   DROP TABLE public.learning_guide;
       public         heap    postgres    false         ∞            1259    41311    learning_guide_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.learning_guide_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.learning_guide_id_seq;
       public          postgres    false    237                    0    0    learning_guide_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.learning_guide_id_seq OWNED BY public.learning_guide.id;
          public          postgres    false    236         τ            1259    41211    learning_lesson    TABLE     !  CREATE TABLE public.learning_lesson (
    id bigint NOT NULL,
    "lessonTitle" character varying(255) NOT NULL,
    course_id bigint NOT NULL,
    content text,
    "orderingID" integer NOT NULL,
    slug character varying(50) NOT NULL,
    "richContent" text,
    "numLevels" integer
);
 #   DROP TABLE public.learning_lesson;
       public         heap    postgres    false         µ            1259    41210    learning_lesson_id_seq    SEQUENCE        CREATE SEQUENCE public.learning_lesson_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.learning_lesson_id_seq;
       public          postgres    false    231         	           0    0    learning_lesson_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.learning_lesson_id_seq OWNED BY public.learning_lesson.id;
          public          postgres    false    230         ⌡            1259    90159    learning_level    TABLE     y   CREATE TABLE public.learning_level (
    id bigint NOT NULL,
    "levelNumber" integer NOT NULL,
    lesson_id bigint
);
 "   DROP TABLE public.learning_level;
       public         heap    postgres    false         ⌠            1259    90158    learning_level_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.learning_level_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.learning_level_id_seq;
       public          postgres    false    245         
           0    0    learning_level_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.learning_level_id_seq OWNED BY public.learning_level.id;
          public          postgres    false    244         ∩            1259    49303    learning_questionanswer    TABLE     )  CREATE TABLE public.learning_questionanswer (
    id bigint NOT NULL,
    question character varying(255) NOT NULL,
    answer character varying(255) NOT NULL,
    lesson_id bigint,
    "questionKeyword" character varying(100),
    level_id bigint,
    level bigint,
    "levelModel_id" bigint
);
 +   DROP TABLE public.learning_questionanswer;
       public         heap    postgres    false         ε            1259    49302    learning_qanda_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.learning_qanda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.learning_qanda_id_seq;
       public          postgres    false    239                    0    0    learning_qanda_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.learning_qanda_id_seq OWNED BY public.learning_questionanswer.id;
          public          postgres    false    238         δ            1259    41296    userprofile_profile    TABLE     ±   CREATE TABLE public.userprofile_profile (
    id bigint NOT NULL,
    username character varying(20) NOT NULL,
    bio text NOT NULL,
    user_id integer,
    slug character varying(50) NOT NULL,
    email character varying(254) NOT NULL
);
 '   DROP TABLE public.userprofile_profile;
       public         heap    postgres    false         ≤            1259    57368    userprofile_profile_course    TABLE     è   CREATE TABLE public.userprofile_profile_course (
    id bigint NOT NULL,
    profile_id bigint NOT NULL,
    course_id bigint NOT NULL
);
 .   DROP TABLE public.userprofile_profile_course;
       public         heap    postgres    false         ≥            1259    57367 !   userprofile_profile_course_id_seq    SEQUENCE     è   CREATE SEQUENCE public.userprofile_profile_course_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.userprofile_profile_course_id_seq;
       public          postgres    false    243                    0    0 !   userprofile_profile_course_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.userprofile_profile_course_id_seq OWNED BY public.userprofile_profile_course.id;
          public          postgres    false    242         Ω            1259    41295    userprofile_profile_id_seq    SEQUENCE     â   CREATE SEQUENCE public.userprofile_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.userprofile_profile_id_seq;
       public          postgres    false    235         
           0    0    userprofile_profile_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.userprofile_profile_id_seq OWNED BY public.userprofile_profile.id;
          public          postgres    false    234         ≈            1259    90172    userprofile_profile_levels    TABLE     ë   CREATE TABLE public.userprofile_profile_levels (
    id bigint NOT NULL,
    profile_id bigint NOT NULL,
    level_id bigint NOT NULL
);
 .   DROP TABLE public.userprofile_profile_levels;
       public         heap    postgres    false         ÷            1259    90171 !   userprofile_profile_levels_id_seq    SEQUENCE     è   CREATE SEQUENCE public.userprofile_profile_levels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.userprofile_profile_levels_id_seq;
       public          postgres    false    247                    0    0 !   userprofile_profile_levels_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.userprofile_profile_levels_id_seq OWNED BY public.userprofile_profile_levels.id;
          public          postgres    false    246         ╜           2604    41077 
   auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216         ╛           2604    41086    auth_group_permissions id    DEFAULT     å   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218         ╝           2604    41070    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214         ┐           2604    41093    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220         └           2604    41102    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222         ┴           2604    41109    auth_user_user_permissions id    DEFAULT     Ä   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224         ╞           2604    41284    blog_post id    DEFAULT     l   ALTER TABLE ONLY public.blog_post ALTER COLUMN id SET DEFAULT nextval('public.blog_post_id_seq'::regclass);
 ;   ALTER TABLE public.blog_post ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233         ┬           2604    41168    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226         ╗           2604    41061    django_content_type id    DEFAULT     Ç   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212         ║           2604    41052    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210         ╩           2604    57363    gTTS_speech id    DEFAULT     t   ALTER TABLE ONLY public."gTTS_speech" ALTER COLUMN id SET DEFAULT nextval('public."gTTS_speech_id_seq"'::regclass);
 ?   ALTER TABLE public."gTTS_speech" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240         ─           2604    41207    learning_course id    DEFAULT     x   ALTER TABLE ONLY public.learning_course ALTER COLUMN id SET DEFAULT nextval('public.learning_course_id_seq'::regclass);
 A   ALTER TABLE public.learning_course ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229         ╚           2604    41315    learning_guide id    DEFAULT     v   ALTER TABLE ONLY public.learning_guide ALTER COLUMN id SET DEFAULT nextval('public.learning_guide_id_seq'::regclass);
 @   ALTER TABLE public.learning_guide ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237         ┼           2604    41214    learning_lesson id    DEFAULT     x   ALTER TABLE ONLY public.learning_lesson ALTER COLUMN id SET DEFAULT nextval('public.learning_lesson_id_seq'::regclass);
 A   ALTER TABLE public.learning_lesson ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231         ╠           2604    90162    learning_level id    DEFAULT     v   ALTER TABLE ONLY public.learning_level ALTER COLUMN id SET DEFAULT nextval('public.learning_level_id_seq'::regclass);
 @   ALTER TABLE public.learning_level ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    245    245         ╔           2604    49306    learning_questionanswer id    DEFAULT        ALTER TABLE ONLY public.learning_questionanswer ALTER COLUMN id SET DEFAULT nextval('public.learning_qanda_id_seq'::regclass);
 I   ALTER TABLE public.learning_questionanswer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239         ╟           2604    41299    userprofile_profile id    DEFAULT     Ç   ALTER TABLE ONLY public.userprofile_profile ALTER COLUMN id SET DEFAULT nextval('public.userprofile_profile_id_seq'::regclass);
 E   ALTER TABLE public.userprofile_profile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235         ╦           2604    57371    userprofile_profile_course id    DEFAULT     Ä   ALTER TABLE ONLY public.userprofile_profile_course ALTER COLUMN id SET DEFAULT nextval('public.userprofile_profile_course_id_seq'::regclass);
 L   ALTER TABLE public.userprofile_profile_course ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243         ═           2604    90175    userprofile_profile_levels id    DEFAULT     Ä   ALTER TABLE ONLY public.userprofile_profile_levels ALTER COLUMN id SET DEFAULT nextval('public.userprofile_profile_levels_id_seq'::regclass);
 L   ALTER TABLE public.userprofile_profile_levels ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246    247         ╓
          0    41074 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216       3542.dat ╪
          0    41083    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218       3544.dat ╘
          0    41067    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214       3540.dat ┌
          0    41090 	   auth_user 
   TABLE DATA           ò   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    220       3546.dat ▄
          0    41099    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222       3548.dat ▐
          0    41106    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    224       3550.dat τ
          0    41281 	   blog_post 
   TABLE DATA           Y   COPY public.blog_post (id, title, body, caption, post_date, author_id, slug) FROM stdin;
    public          postgres    false    233       3559.dat α
          0    41165    django_admin_log 
   TABLE DATA           è   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226       3552.dat ╥
          0    41058    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212       3538.dat ╨
          0    41049    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210       3536.dat ß
          0    41194    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    227       3553.dat ε
          0    57345    gTTS_speech 
   TABLE DATA           F   COPY public."gTTS_speech" (id, text, language, file_name) FROM stdin;
    public          postgres    false    240       3566.dat π
          0    41204    learning_course 
   TABLE DATA           ;   COPY public.learning_course (id, title, image) FROM stdin;
    public          postgres    false    229       3555.dat δ
          0    41312    learning_guide 
   TABLE DATA           {   COPY public.learning_guide (id, "guideTitle", content, "orderingID", course_id, slug, category, "richContent") FROM stdin;
    public          postgres    false    237       3563.dat σ
          0    41211    learning_lesson 
   TABLE DATA           Ç   COPY public.learning_lesson (id, "lessonTitle", course_id, content, "orderingID", slug, "richContent", "numLevels") FROM stdin;
    public          postgres    false    231       3557.dat ≤
          0    90159    learning_level 
   TABLE DATA           F   COPY public.learning_level (id, "levelNumber", lesson_id) FROM stdin;
    public          postgres    false    245       3571.dat φ
          0    49303    learning_questionanswer 
   TABLE DATA           ç   COPY public.learning_questionanswer (id, question, answer, lesson_id, "questionKeyword", level_id, level, "levelModel_id") FROM stdin;
    public          postgres    false    239       3565.dat Θ
          0    41296    userprofile_profile 
   TABLE DATA           V   COPY public.userprofile_profile (id, username, bio, user_id, slug, email) FROM stdin;
    public          postgres    false    235       3561.dat ±
          0    57368    userprofile_profile_course 
   TABLE DATA           O   COPY public.userprofile_profile_course (id, profile_id, course_id) FROM stdin;
    public          postgres    false    243       3569.dat ⌡
          0    90172    userprofile_profile_levels 
   TABLE DATA           N   COPY public.userprofile_profile_levels (id, profile_id, level_id) FROM stdin;
    public          postgres    false    247       3573.dat            0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    215                    0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    217                    0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);
          public          postgres    false    213                    0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    221                    0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 62, true);
          public          postgres    false    219                    0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    223                    0    0    blog_post_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.blog_post_id_seq', 2, true);
          public          postgres    false    232                    0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 874, true);
          public          postgres    false    225                    0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);
          public          postgres    false    211                    0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 77, true);
          public          postgres    false    209                    0    0    gTTS_speech_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."gTTS_speech_id_seq"', 140, true);
          public          postgres    false    241                    0    0    learning_course_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.learning_course_id_seq', 46, true);
          public          postgres    false    228                    0    0    learning_guide_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.learning_guide_id_seq', 24, true);
          public          postgres    false    236                    0    0    learning_lesson_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.learning_lesson_id_seq', 75, true);
          public          postgres    false    230                    0    0    learning_level_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.learning_level_id_seq', 32, true);
          public          postgres    false    244                    0    0    learning_qanda_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.learning_qanda_id_seq', 433, true);
          public          postgres    false    238                    0    0 !   userprofile_profile_course_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.userprofile_profile_course_id_seq', 76, true);
          public          postgres    false    242                     0    0    userprofile_profile_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.userprofile_profile_id_seq', 41, true);
          public          postgres    false    234         !           0    0 !   userprofile_profile_levels_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.userprofile_profile_levels_id_seq', 321, true);
          public          postgres    false    246         █           2606    41192    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    216         α           2606    41122 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     á   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    218    218         π           2606    41088 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    218         ▌           2606    41079    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    216         ╓           2606    41113 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     û   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    214    214         ╪           2606    41072 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    214         δ           2606    41104 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    222         ε           2606    41137 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ê   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    222    222         σ           2606    41095    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    220         ±           2606    41111 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    224         ⌠           2606    41151 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ª   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 â   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    224    224         Φ           2606    41187     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    220         
           2606    41288    blog_post blog_post_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_pkey;
       public            postgres    false    233         

           2606    41328    blog_post blog_post_slug_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_slug_key UNIQUE (slug);
 F   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_slug_key;
       public            postgres    false    233         ≈           2606    41173 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    226         ╤           2606    41065 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     î   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    212    212         ╙           2606    41063 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    212         ╧           2606    41056 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210         √           2606    41200 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    227          
           2606    57355    gTTS_speech gTTS_speech_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."gTTS_speech"
    ADD CONSTRAINT "gTTS_speech_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."gTTS_speech" DROP CONSTRAINT "gTTS_speech_pkey";
       public            postgres    false    240         ■           2606    41209 $   learning_course learning_course_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.learning_course
    ADD CONSTRAINT learning_course_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.learning_course DROP CONSTRAINT learning_course_pkey;
       public            postgres    false    229         
           2606    41319 "   learning_guide learning_guide_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.learning_guide
    ADD CONSTRAINT learning_guide_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.learning_guide DROP CONSTRAINT learning_guide_pkey;
       public            postgres    false    237         
           2606    41344 &   learning_guide learning_guide_slug_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.learning_guide
    ADD CONSTRAINT learning_guide_slug_key UNIQUE (slug);
 P   ALTER TABLE ONLY public.learning_guide DROP CONSTRAINT learning_guide_slug_key;
       public            postgres    false    237         
           2606    41218 $   learning_lesson learning_lesson_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.learning_lesson DROP CONSTRAINT learning_lesson_pkey;
       public            postgres    false    231         
           2606    41348 (   learning_lesson learning_lesson_slug_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_slug_key UNIQUE (slug);
 R   ALTER TABLE ONLY public.learning_lesson DROP CONSTRAINT learning_lesson_slug_key;
       public            postgres    false    231         )
           2606    90164 "   learning_level learning_level_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.learning_level
    ADD CONSTRAINT learning_level_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.learning_level DROP CONSTRAINT learning_level_pkey;
       public            postgres    false    245         
           2606    49310 +   learning_questionanswer learning_qanda_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.learning_questionanswer
    ADD CONSTRAINT learning_qanda_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.learning_questionanswer DROP CONSTRAINT learning_qanda_pkey;
       public            postgres    false    239         #
           2606    57373 :   userprofile_profile_course userprofile_profile_course_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.userprofile_profile_course
    ADD CONSTRAINT userprofile_profile_course_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.userprofile_profile_course DROP CONSTRAINT userprofile_profile_course_pkey;
       public            postgres    false    243         &
           2606    57375 X   userprofile_profile_course userprofile_profile_course_profile_id_course_id_b1e95337_uniq 
   CONSTRAINT     ñ   ALTER TABLE ONLY public.userprofile_profile_course
    ADD CONSTRAINT userprofile_profile_course_profile_id_course_id_b1e95337_uniq UNIQUE (profile_id, course_id);
 é   ALTER TABLE ONLY public.userprofile_profile_course DROP CONSTRAINT userprofile_profile_course_profile_id_course_id_b1e95337_uniq;
       public            postgres    false    243    243         

           2606    98352 ;   userprofile_profile userprofile_profile_email_2d4a7ae9_uniq 
   CONSTRAINT     w   ALTER TABLE ONLY public.userprofile_profile
    ADD CONSTRAINT userprofile_profile_email_2d4a7ae9_uniq UNIQUE (email);
 e   ALTER TABLE ONLY public.userprofile_profile DROP CONSTRAINT userprofile_profile_email_2d4a7ae9_uniq;
       public            postgres    false    235         ,
           2606    90177 :   userprofile_profile_levels userprofile_profile_levels_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.userprofile_profile_levels
    ADD CONSTRAINT userprofile_profile_levels_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.userprofile_profile_levels DROP CONSTRAINT userprofile_profile_levels_pkey;
       public            postgres    false    247         /
           2606    90179 W   userprofile_profile_levels userprofile_profile_levels_profile_id_level_id_2f6a7b01_uniq 
   CONSTRAINT     ó   ALTER TABLE ONLY public.userprofile_profile_levels
    ADD CONSTRAINT userprofile_profile_levels_profile_id_level_id_2f6a7b01_uniq UNIQUE (profile_id, level_id);
 ü   ALTER TABLE ONLY public.userprofile_profile_levels DROP CONSTRAINT userprofile_profile_levels_profile_id_level_id_2f6a7b01_uniq;
       public            postgres    false    247    247         
           2606    41303 ,   userprofile_profile userprofile_profile_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.userprofile_profile
    ADD CONSTRAINT userprofile_profile_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.userprofile_profile DROP CONSTRAINT userprofile_profile_pkey;
       public            postgres    false    235         
           2606    41365 0   userprofile_profile userprofile_profile_slug_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.userprofile_profile
    ADD CONSTRAINT userprofile_profile_slug_key UNIQUE (slug);
 Z   ALTER TABLE ONLY public.userprofile_profile DROP CONSTRAINT userprofile_profile_slug_key;
       public            postgres    false    235         
           2606    41305 3   userprofile_profile userprofile_profile_user_id_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.userprofile_profile
    ADD CONSTRAINT userprofile_profile_user_id_key UNIQUE (user_id);
 ]   ALTER TABLE ONLY public.userprofile_profile DROP CONSTRAINT userprofile_profile_user_id_key;
       public            postgres    false    235         ┘           1259    41193    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    216         ▐           1259    41133 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    218         ß           1259    41134 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    218         ╘           1259    41119 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    214         Θ           1259    41149 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    222         ∞           1259    41148 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    222         ∩           1259    41163 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ü   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    224         ≥           1259    41162 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    224         µ           1259    41188     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    220         
           1259    41294    blog_post_author_id_dd7a8485    INDEX     W   CREATE INDEX blog_post_author_id_dd7a8485 ON public.blog_post USING btree (author_id);
 0   DROP INDEX public.blog_post_author_id_dd7a8485;
       public            postgres    false    233         
           1259    41329    blog_post_slug_b95473f2_like    INDEX     f   CREATE INDEX blog_post_slug_b95473f2_like ON public.blog_post USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.blog_post_slug_b95473f2_like;
       public            postgres    false    233         ⌡           1259    41184 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    226         °           1259    41185 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    226         ∙           1259    41202 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    227         ⁿ           1259    41201 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    227         
           1259    41325 !   learning_guide_course_id_bf79aab3    INDEX     a   CREATE INDEX learning_guide_course_id_bf79aab3 ON public.learning_guide USING btree (course_id);
 5   DROP INDEX public.learning_guide_course_id_bf79aab3;
       public            postgres    false    237         
           1259    41345 !   learning_guide_slug_6b6041ee_like    INDEX     p   CREATE INDEX learning_guide_slug_6b6041ee_like ON public.learning_guide USING btree (slug varchar_pattern_ops);
 5   DROP INDEX public.learning_guide_slug_6b6041ee_like;
       public            postgres    false    237                     1259    41238 "   learning_lesson_course_id_55d253b7    INDEX     c   CREATE INDEX learning_lesson_course_id_55d253b7 ON public.learning_lesson USING btree (course_id);
 6   DROP INDEX public.learning_lesson_course_id_55d253b7;
       public            postgres    false    231         
           1259    41349 "   learning_lesson_slug_e238ab6f_like    INDEX     r   CREATE INDEX learning_lesson_slug_e238ab6f_like ON public.learning_lesson USING btree (slug varchar_pattern_ops);
 6   DROP INDEX public.learning_lesson_slug_e238ab6f_like;
       public            postgres    false    231         '
           1259    90170 !   learning_level_lesson_id_775adba3    INDEX     a   CREATE INDEX learning_level_lesson_id_775adba3 ON public.learning_level USING btree (lesson_id);
 5   DROP INDEX public.learning_level_lesson_id_775adba3;
       public            postgres    false    245         
           1259    49316 !   learning_qanda_lesson_id_9e3fd8c9    INDEX     j   CREATE INDEX learning_qanda_lesson_id_9e3fd8c9 ON public.learning_questionanswer USING btree (lesson_id);
 5   DROP INDEX public.learning_qanda_lesson_id_9e3fd8c9;
       public            postgres    false    239         
           1259    90198 .   learning_questionanswer_levelModel_id_a897c76f    INDEX     x   CREATE INDEX "learning_questionanswer_levelModel_id_a897c76f" ON public.learning_questionanswer USING btree (level_id);
 D   DROP INDEX public."learning_questionanswer_levelModel_id_a897c76f";
       public            postgres    false    239         !
           1259    57387 -   userprofile_profile_course_course_id_3ede5062    INDEX     y   CREATE INDEX userprofile_profile_course_course_id_3ede5062 ON public.userprofile_profile_course USING btree (course_id);
 A   DROP INDEX public.userprofile_profile_course_course_id_3ede5062;
       public            postgres    false    243         $
           1259    57386 .   userprofile_profile_course_profile_id_87275d1d    INDEX     {   CREATE INDEX userprofile_profile_course_profile_id_87275d1d ON public.userprofile_profile_course USING btree (profile_id);
 B   DROP INDEX public.userprofile_profile_course_profile_id_87275d1d;
       public            postgres    false    243         
           1259    98353 '   userprofile_profile_email_2d4a7ae9_like    INDEX     |   CREATE INDEX userprofile_profile_email_2d4a7ae9_like ON public.userprofile_profile USING btree (email varchar_pattern_ops);
 ;   DROP INDEX public.userprofile_profile_email_2d4a7ae9_like;
       public            postgres    false    235         *
           1259    90191 ,   userprofile_profile_levels_level_id_b549465d    INDEX     w   CREATE INDEX userprofile_profile_levels_level_id_b549465d ON public.userprofile_profile_levels USING btree (level_id);
 @   DROP INDEX public.userprofile_profile_levels_level_id_b549465d;
       public            postgres    false    247         -
           1259    90190 .   userprofile_profile_levels_profile_id_1e6aef6b    INDEX     {   CREATE INDEX userprofile_profile_levels_profile_id_1e6aef6b ON public.userprofile_profile_levels USING btree (profile_id);
 B   DROP INDEX public.userprofile_profile_levels_profile_id_1e6aef6b;
       public            postgres    false    247         
           1259    41366 &   userprofile_profile_slug_938b9244_like    INDEX     z   CREATE INDEX userprofile_profile_slug_938b9244_like ON public.userprofile_profile USING btree (slug varchar_pattern_ops);
 :   DROP INDEX public.userprofile_profile_slug_938b9244_like;
       public            postgres    false    235         2
           2606    41128 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm 
   FK CONSTRAINT     ▄   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3288    214    218         1
           2606    41123 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id 
   FK CONSTRAINT     ╙   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    216    218    3293         0
           2606    41114 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co 
   FK CONSTRAINT     ╪   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3283    212    214         4
           2606    41143 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id 
   FK CONSTRAINT     ╟   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3293    216    222         3
           2606    41138 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id 
   FK CONSTRAINT     ├   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    222    220    3301         6
           2606    41157 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm 
   FK CONSTRAINT     α   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    224    3288    214         5
           2606    41152 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id 
   FK CONSTRAINT     ╫   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 Ç   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    224    220    3301         :
           2606    41289 6   blog_post blog_post_author_id_dd7a8485_fk_auth_user_id 
   FK CONSTRAINT     ╣   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_author_id_dd7a8485_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_author_id_dd7a8485_fk_auth_user_id;
       public          postgres    false    233    220    3301         7
           2606    41174 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co 
   FK CONSTRAINT     ┌   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    226    212    3283         8
           2606    41179 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id 
   FK CONSTRAINT     ├   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    220    3301    226         <
           2606    41320 F   learning_guide learning_guide_course_id_bf79aab3_fk_learning_course_id 
   FK CONSTRAINT     ╧   ALTER TABLE ONLY public.learning_guide
    ADD CONSTRAINT learning_guide_course_id_bf79aab3_fk_learning_course_id FOREIGN KEY (course_id) REFERENCES public.learning_course(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.learning_guide DROP CONSTRAINT learning_guide_course_id_bf79aab3_fk_learning_course_id;
       public          postgres    false    229    237    3326         9
           2606    41239 H   learning_lesson learning_lesson_course_id_55d253b7_fk_learning_course_id 
   FK CONSTRAINT     ╤   ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_course_id_55d253b7_fk_learning_course_id FOREIGN KEY (course_id) REFERENCES public.learning_course(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.learning_lesson DROP CONSTRAINT learning_lesson_course_id_55d253b7_fk_learning_course_id;
       public          postgres    false    229    3326    231         A
           2606    90317 F   learning_level learning_level_lesson_id_775adba3_fk_learning_lesson_id 
   FK CONSTRAINT     ╧   ALTER TABLE ONLY public.learning_level
    ADD CONSTRAINT learning_level_lesson_id_775adba3_fk_learning_lesson_id FOREIGN KEY (lesson_id) REFERENCES public.learning_lesson(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.learning_level DROP CONSTRAINT learning_level_lesson_id_775adba3_fk_learning_lesson_id;
       public          postgres    false    231    245    3329         =
           2606    73795 L   learning_questionanswer learning_questionans_lesson_id_63f0af84_fk_learning_ 
   FK CONSTRAINT     ╒   ALTER TABLE ONLY public.learning_questionanswer
    ADD CONSTRAINT learning_questionans_lesson_id_63f0af84_fk_learning_ FOREIGN KEY (lesson_id) REFERENCES public.learning_lesson(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.learning_questionanswer DROP CONSTRAINT learning_questionans_lesson_id_63f0af84_fk_learning_;
       public          postgres    false    231    239    3329         >
           2606    90193 P   learning_questionanswer learning_questionans_levelModel_id_a897c76f_fk_learning_ 
   FK CONSTRAINT     ┘   ALTER TABLE ONLY public.learning_questionanswer
    ADD CONSTRAINT "learning_questionans_levelModel_id_a897c76f_fk_learning_" FOREIGN KEY (level_id) REFERENCES public.learning_level(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.learning_questionanswer DROP CONSTRAINT "learning_questionans_levelModel_id_a897c76f_fk_learning_";
       public          postgres    false    3369    239    245         @
           2606    57381 O   userprofile_profile_course userprofile_profile__course_id_3ede5062_fk_learning_ 
   FK CONSTRAINT     ╪   ALTER TABLE ONLY public.userprofile_profile_course
    ADD CONSTRAINT userprofile_profile__course_id_3ede5062_fk_learning_ FOREIGN KEY (course_id) REFERENCES public.learning_course(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.userprofile_profile_course DROP CONSTRAINT userprofile_profile__course_id_3ede5062_fk_learning_;
       public          postgres    false    243    229    3326         C
           2606    90185 N   userprofile_profile_levels userprofile_profile__level_id_b549465d_fk_learning_ 
   FK CONSTRAINT     ╒   ALTER TABLE ONLY public.userprofile_profile_levels
    ADD CONSTRAINT userprofile_profile__level_id_b549465d_fk_learning_ FOREIGN KEY (level_id) REFERENCES public.learning_level(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.userprofile_profile_levels DROP CONSTRAINT userprofile_profile__level_id_b549465d_fk_learning_;
       public          postgres    false    247    3369    245         B
           2606    90180 P   userprofile_profile_levels userprofile_profile__profile_id_1e6aef6b_fk_userprofi 
   FK CONSTRAINT     ▐   ALTER TABLE ONLY public.userprofile_profile_levels
    ADD CONSTRAINT userprofile_profile__profile_id_1e6aef6b_fk_userprofi FOREIGN KEY (profile_id) REFERENCES public.userprofile_profile(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.userprofile_profile_levels DROP CONSTRAINT userprofile_profile__profile_id_1e6aef6b_fk_userprofi;
       public          postgres    false    247    235    3343         ?
           2606    57376 P   userprofile_profile_course userprofile_profile__profile_id_87275d1d_fk_userprofi 
   FK CONSTRAINT     ▐   ALTER TABLE ONLY public.userprofile_profile_course
    ADD CONSTRAINT userprofile_profile__profile_id_87275d1d_fk_userprofi FOREIGN KEY (profile_id) REFERENCES public.userprofile_profile(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.userprofile_profile_course DROP CONSTRAINT userprofile_profile__profile_id_87275d1d_fk_userprofi;
       public          postgres    false    243    3343    235         ;
           2606    41306 H   userprofile_profile userprofile_profile_user_id_f37c6bb1_fk_auth_user_id 
   FK CONSTRAINT     ╔   ALTER TABLE ONLY public.userprofile_profile
    ADD CONSTRAINT userprofile_profile_user_id_f37c6bb1_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.userprofile_profile DROP CONSTRAINT userprofile_profile_user_id_f37c6bb1_fk_auth_user_id;
       public          postgres    false    220    3301    235                                                                                                                                                                                                                                                                                                                                                                     3542.dat                                                                                            0000600 0004000 0002000 00000000005 14231652720 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3544.dat                                                                                            0000600 0004000 0002000 00000000005 14231652720 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3540.dat                                                                                            0000600 0004000 0002000 00000005600 14231652720 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add lesson	7	add_lesson
26	Can change lesson	7	change_lesson
27	Can delete lesson	7	delete_lesson
28	Can view lesson	7	view_lesson
29	Can add course	8	add_course
30	Can change course	8	change_course
31	Can delete course	8	delete_course
32	Can view course	8	view_course
33	Can add blog post	9	add_blogpost
34	Can change blog post	9	change_blogpost
35	Can delete blog post	9	delete_blogpost
36	Can view blog post	9	view_blogpost
37	Can add post	9	add_post
38	Can change post	9	change_post
39	Can delete post	9	delete_post
40	Can view post	9	view_post
41	Can add profile	10	add_profile
42	Can change profile	10	change_profile
43	Can delete profile	10	delete_profile
44	Can view profile	10	view_profile
45	Can add post	11	add_post
46	Can change post	11	change_post
47	Can delete post	11	delete_post
48	Can view post	11	view_post
49	Can add profile	12	add_profile
50	Can change profile	12	change_profile
51	Can delete profile	12	delete_profile
52	Can view profile	12	view_profile
53	Can add guide	13	add_guide
54	Can change guide	13	change_guide
55	Can delete guide	13	delete_guide
56	Can view guide	13	view_guide
57	Can add qand a	14	add_qanda
58	Can change qand a	14	change_qanda
59	Can delete qand a	14	delete_qanda
60	Can view qand a	14	view_qanda
61	Can add question answer	14	add_questionanswer
62	Can change question answer	14	change_questionanswer
63	Can delete question answer	14	delete_questionanswer
64	Can view question answer	14	view_questionanswer
65	Can add speech	15	add_speech
66	Can change speech	15	change_speech
67	Can delete speech	15	delete_speech
68	Can view speech	15	view_speech
69	Can add choice	16	add_choice
70	Can change choice	16	change_choice
71	Can delete choice	16	delete_choice
72	Can view choice	16	view_choice
73	Can add question	17	add_question
74	Can change question	17	change_question
75	Can delete question	17	delete_question
76	Can view question	17	view_question
77	Can add level	18	add_level
78	Can change level	18	change_level
79	Can delete level	18	delete_level
80	Can view level	18	view_level
\.


                                                                                                                                3546.dat                                                                                            0000600 0004000 0002000 00000001042 14231652720 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        60	pbkdf2_sha256$320000$hd3nesh0t9Ce7uWyaa5brO$7cV1gjbCk9U2l4ll6gWj1Ca23I3Og9mqp29NU1zZh0A=	2022-03-28 23:22:22.039808-04	f	1			1@gmail.com	f	t	2022-03-28 23:22:21.758553-04
61	pbkdf2_sha256$320000$gV5u11fqPPxISFSwdMs9ko$9pfvfdsCNRClwf+cLoSpAZTnMfFKxS59/mmHiAOWnfY=	2022-03-28 23:22:29.132258-04	f	2			2@gmail.com	f	t	2022-03-28 23:22:28.866015-04
1	pbkdf2_sha256$320000$9mYa7SSqRNfv74HhqrLFmr$jY0TYRcLeWOmDUKcURbHTQ44yYi1ZM/8lHNHTLfNsBw=	2022-04-22 00:20:13.435509-04	t	jmkryzanski			jmkryzanski@gmail.com	t	t	2022-01-17 20:48:55.989063-05
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3548.dat                                                                                            0000600 0004000 0002000 00000000005 14231652720 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3550.dat                                                                                            0000600 0004000 0002000 00000000005 14231652720 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3559.dat                                                                                            0000600 0004000 0002000 00000000200 14231652720 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	title1d	<h1>sayindddddddawdadawddawdawssdad</h1>	caption 1	2022-01-20	1	bet
2	title2	ffffff	fffawdawdaw	2022-02-04	1	dwa
\.


                                                                                                                                                                                                                                                                                                                                                                                                3552.dat                                                                                            0000600 0004000 0002000 00000320200 14231652720 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2022-01-17 20:58:41.555955-05	1	Spanish	1	[{"added": {}}]	8	1
2	2022-01-17 20:58:55.893985-05	1	Pronouns1	1	[{"added": {}}]	7	1
3	2022-01-17 20:59:12.43802-05	2	Pronouns2	1	[{"added": {}}]	7	1
4	2022-01-17 21:24:19.903407-05	1	spanish	2	[{"changed": {"fields": ["Title"]}}]	8	1
5	2022-01-17 21:24:26.534433-05	2	spanish	2	[{"changed": {"fields": ["Language"]}}]	7	1
6	2022-01-17 21:24:30.517052-05	1	spanish	2	[{"changed": {"fields": ["Language"]}}]	7	1
7	2022-01-17 21:46:58.83165-05	4	spanish	1	[{"added": {}}]	7	1
8	2022-01-17 22:08:24.920156-05	2	Course- spanish |  Lesson Title- Pronouns2	2	[]	7	1
9	2022-01-17 22:09:05.549079-05	5	Course- spanish |  Lesson Title- verbs1	1	[{"added": {}}]	7	1
10	2022-01-17 22:09:18.18907-05	5	Course- spanish |  Lesson Title- verbs1	2	[{"changed": {"fields": ["Language"]}}]	7	1
11	2022-01-17 22:09:54.440519-05	5	Course- spanish |  Lesson Title- verbs1	3		7	1
12	2022-01-17 23:01:38.355038-05	1	title1 | jmkryzanski	1	[{"added": {}}]	9	1
13	2022-01-17 23:44:13.973148-05	2	title2 | jmkryzanski	1	[{"added": {}}]	9	1
14	2022-01-18 00:03:11.130089-05	2	polish	1	[{"added": {}}]	8	1
15	2022-01-18 00:03:22.313252-05	6	Course- polish |  Lesson Title- pronouns1	1	[{"added": {}}]	7	1
16	2022-01-18 00:03:33.259199-05	7	Course- polish |  Lesson Title- verbs1	1	[{"added": {}}]	7	1
17	2022-01-18 02:51:49.888093-05	1	jmkryzanski	1	[{"added": {}}]	10	1
18	2022-01-18 03:11:27.846734-05	2	testuser1	1	[{"added": {}}]	10	1
19	2022-01-18 19:59:59.194091-05	4	Course- spanish |  Lesson Title- pronouns3	2	[{"changed": {"fields": ["OrderingID"]}}]	7	1
20	2022-01-18 20:00:15.799246-05	7	Course- polish |  Lesson Title- verbs1	2	[{"changed": {"fields": ["OrderingID"]}}]	7	1
21	2022-01-18 20:00:20.559655-05	8	Course- spanish |  Lesson Title- test body	2	[{"changed": {"fields": ["OrderingID"]}}]	7	1
22	2022-01-18 20:00:24.856575-05	9	Course- spanish |  Lesson Title- adwadwa	2	[{"changed": {"fields": ["OrderingID"]}}]	7	1
23	2022-01-18 20:02:37.814521-05	8	Course- spanish |  Lesson Title- test body	2	[{"changed": {"fields": ["OrderingID"]}}]	7	1
24	2022-01-18 20:02:53.594914-05	8	Course- spanish |  Lesson Title- test body	2	[{"changed": {"fields": ["OrderingID"]}}]	7	1
25	2022-01-19 00:10:48.181245-05	8	recent baby | jmkryzanski	2	[{"changed": {"fields": ["Caption"]}}]	9	1
26	2022-01-19 00:58:34.773994-05	2	polish	2	[{"changed": {"fields": ["Icon"]}}]	8	1
27	2022-01-19 00:58:42.282818-05	1	spanish	2	[{"changed": {"fields": ["Icon"]}}]	8	1
28	2022-01-19 01:18:46.897916-05	3	russian	1	[{"added": {}}]	8	1
29	2022-01-19 01:18:53.287723-05	4	italian	1	[{"added": {}}]	8	1
30	2022-01-19 01:19:13.170792-05	10	Course- russian |  Lesson Title- pronouns1	1	[{"added": {}}]	7	1
31	2022-01-19 01:19:25.201726-05	11	Course- russian |  Lesson Title- pronouns2	1	[{"added": {}}]	7	1
32	2022-01-19 01:19:39.744942-05	12	Course- italian |  Lesson Title- verbs1	1	[{"added": {}}]	7	1
33	2022-01-19 01:19:56.120328-05	13	Course- italian |  Lesson Title- verbs2	1	[{"added": {}}]	7	1
34	2022-01-19 21:01:39.888948-05	4	testuser3	3		4	1
35	2022-01-19 21:01:39.891951-05	5	testuser4	3		4	1
36	2022-01-19 21:01:39.891951-05	6	testuser5	3		4	1
37	2022-01-20 02:03:30.797337-05	1	title1 | jmkryzanski	1	[{"added": {}}]	11	1
38	2022-01-20 02:14:34.274056-05	1	jmkryzanski	1	[{"added": {}}]	12	1
39	2022-01-20 03:06:53.339548-05	13	testsayin	3		4	1
40	2022-01-20 03:06:53.340549-05	12	testuser123	3		4	1
41	2022-01-20 03:06:53.34155-05	7	testuser3	3		4	1
42	2022-01-20 03:06:53.34155-05	8	testuser4	3		4	1
43	2022-01-20 03:06:53.342551-05	9	testuser5	3		4	1
44	2022-01-20 03:06:53.342551-05	10	testuser55	3		4	1
45	2022-01-20 03:06:53.342551-05	11	testuser555	3		4	1
46	2022-01-20 17:41:40.075012-05	1	Course- spanish |  Lesson Title- guide1	1	[{"added": {}}]	13	1
47	2022-01-20 17:41:55.98447-05	2	Course- spanish |  Lesson Title- guide2	1	[{"added": {}}]	13	1
48	2022-01-20 18:49:08.603912-05	2	Course- spanish |  Lesson Title- guide2	3		13	1
49	2022-01-20 18:49:27.836895-05	1	Course- spanish |  Lesson Title- guide1	3		13	1
50	2022-01-20 18:53:14.67518-05	3	Course- spanish |  Lesson Title- pronouns-	1	[{"added": {}}]	13	1
51	2022-01-20 18:57:23.900669-05	4	Course- spanish |  Lesson Title- personal-pronouns	1	[{"added": {}}]	13	1
52	2022-01-20 19:02:36.728498-05	13	Course- italian |  Lesson Title- verbs2	3		7	1
53	2022-01-20 19:02:36.731501-05	12	Course- italian |  Lesson Title- verbs1	3		7	1
54	2022-01-20 19:02:36.731501-05	11	Course- russian |  Lesson Title- pronouns2	3		7	1
55	2022-01-20 19:02:36.732502-05	10	Course- russian |  Lesson Title- pronouns1	3		7	1
56	2022-01-20 19:02:36.732502-05	9	Course- spanish |  Lesson Title- adwadwa	3		7	1
57	2022-01-20 19:02:36.733502-05	8	Course- spanish |  Lesson Title- test body	3		7	1
58	2022-01-20 19:02:36.733502-05	7	Course- polish |  Lesson Title- verbs1	3		7	1
59	2022-01-20 19:02:36.733502-05	6	Course- polish |  Lesson Title- pronouns1	3		7	1
60	2022-01-20 19:02:36.734503-05	4	Course- spanish |  Lesson Title- pronouns3	3		7	1
61	2022-01-20 19:05:24.325259-05	14	Course- polish |  Lesson Title- personal	1	[{"added": {}}]	7	1
62	2022-01-20 19:28:00.851769-05	14	testuser123	3		4	1
63	2022-01-20 19:28:00.854772-05	3	testuser2	3		4	1
64	2022-01-20 19:28:21.778291-05	2	testuser1	1	[{"added": {}}]	12	1
65	2022-01-20 19:37:17.635425-05	2	testuser1	3		4	1
66	2022-01-20 19:38:10.161159-05	1	jmkryzanski	2	[{"changed": {"fields": ["Username"]}}]	12	1
67	2022-01-20 19:40:01.92773-05	1	jmkryzanski	2	[{"changed": {"fields": ["Slug"]}}]	12	1
68	2022-01-20 19:45:00.642587-05	3	testuser1	1	[{"added": {}}]	12	1
69	2022-01-20 19:48:58.368654-05	1	jmkryzanski	2	[]	12	1
70	2022-01-20 19:56:31.143098-05	5	Course- polish |  Guide Title- Personal Pronouns	1	[{"added": {}}]	13	1
71	2022-01-20 19:59:10.747824-05	5	Course- polish |  Guide Title- Possessive Pronouns	2	[{"changed": {"fields": ["GuideTitle", "OrderingID", "Slug"]}}]	13	1
72	2022-01-20 19:59:31.046271-05	5	Course- polish |  Guide Title- Personal Pronouns	2	[{"changed": {"fields": ["GuideTitle", "OrderingID", "Slug"]}}]	13	1
73	2022-01-20 19:59:44.011053-05	6	Course- polish |  Guide Title- Possessive Pronouns	1	[{"added": {}}]	13	1
74	2022-01-22 15:17:47.836186-05	5	Course- polish |  Guide Title- Personal Pronouns	2	[{"changed": {"fields": ["OrderingID"]}}]	13	1
75	2022-01-22 15:17:50.639736-05	6	Course- polish |  Guide Title- Possessive Pronouns	2	[]	13	1
76	2022-01-22 15:17:52.687598-05	5	Course- polish |  Guide Title- Personal Pronouns	2	[]	13	1
77	2022-01-22 15:22:15.903611-05	6	Course- polish |  Guide Title- Possessive Pronouns	2	[{"changed": {"fields": ["Content"]}}]	13	1
78	2022-01-22 15:24:11.168037-05	7	Course- polish |  Guide Title- Present Verbs	1	[{"added": {}}]	13	1
79	2022-01-22 15:26:54.267378-05	8	Course- polish |  Guide Title- Pronouns 3	1	[{"added": {}}]	13	1
80	2022-01-22 15:28:15.352681-05	8	Course- polish |  Guide Title- Pronouns 3	2	[]	13	1
81	2022-01-22 15:28:29.247318-05	8	Course- polish |  Guide Title- Personal Pronouns	2	[{"changed": {"fields": ["GuideTitle"]}}]	13	1
82	2022-01-22 15:30:09.945224-05	8	Course- polish |  Guide Title- Personal Pronouns	2	[{"changed": {"fields": ["OrderingID"]}}]	13	1
83	2022-01-22 15:30:40.913597-05	8	Course- polish |  Guide Title- Personal Pronouns	2	[{"changed": {"fields": ["OrderingID"]}}]	13	1
84	2022-01-22 15:31:15.266091-05	9	Course- polish |  Guide Title- Verbs1	1	[{"added": {}}]	13	1
85	2022-01-22 17:17:42.870931-05	8	Course- polish |  Guide Title- Personal Pronouns	2	[{"changed": {"fields": ["Content"]}}]	13	1
86	2022-01-22 17:36:29.503155-05	3	Course- spanish |  Guide Title- pronouns-	3		13	1
87	2022-01-22 17:45:39.6789-05	10	Course- polish |  Guide Title- pronounstest	1	[{"added": {}}]	13	1
88	2022-01-22 17:45:49.305655-05	10	Course- polish |  Guide Title- pronounstest	2	[{"changed": {"fields": ["Content"]}}]	13	1
89	2022-01-22 17:45:54.371262-05	5	Course- polish |  Guide Title- Personal Pronouns	2	[{"changed": {"fields": ["Content"]}}]	13	1
90	2022-01-22 17:46:42.72624-05	8	Course- polish |  Guide Title- Personal Pronouns	3		13	1
91	2022-01-22 17:48:47.061828-05	10	Course- polish |  Guide Title- pronounstest	2	[{"changed": {"fields": ["OrderingID"]}}]	13	1
92	2022-01-22 17:49:01.7642-05	6	Course- polish |  Guide Title- Possessive Pronouns	2	[{"changed": {"fields": ["OrderingID"]}}]	13	1
93	2022-01-22 17:49:20.074971-05	6	Course- polish |  Guide Title- Possessive Pronouns	2	[]	13	1
94	2022-01-22 17:49:23.573153-05	6	Course- polish |  Guide Title- Possessive Pronouns	2	[{"changed": {"fields": ["Content"]}}]	13	1
95	2022-01-22 17:49:39.775489-05	10	Course- polish |  Guide Title- pronounstest	2	[]	13	1
96	2022-01-22 17:49:43.700058-05	10	Course- polish |  Guide Title- pronounstest	2	[{"changed": {"fields": ["Content"]}}]	13	1
97	2022-01-22 17:50:12.896612-05	11	Course- polish |  Guide Title- pronounsbet	1	[{"added": {}}]	13	1
98	2022-01-22 17:50:52.072242-05	12	Course- polish |  Guide Title- adjs1	1	[{"added": {}}]	13	1
99	2022-01-22 17:51:19.240952-05	13	Course- polish |  Guide Title- verbs22	1	[{"added": {}}]	13	1
100	2022-01-22 17:51:55.751158-05	13	Course- polish |  Guide Title- verbs22	2	[]	13	1
101	2022-01-22 17:52:19.120521-05	14	Course- polish |  Guide Title- verbs33	1	[{"added": {}}]	13	1
102	2022-01-22 17:53:23.908787-05	15	Course- polish |  Guide Title- pronouns33	1	[{"added": {}}]	13	1
103	2022-01-22 18:01:00.326168-05	16	Course- spanish |  Guide Title- pronouns1	1	[{"added": {}}]	13	1
104	2022-01-22 18:06:17.386014-05	11	Course- polish |  Guide Title- pronounsbet	2	[{"changed": {"fields": ["Content"]}}]	13	1
105	2022-01-22 18:24:44.940758-05	5	Course- polish |  Guide Category- pronouns | Guide TitlePersonal Pronouns	2	[]	13	1
106	2022-01-22 18:24:46.569239-05	6	Course- polish |  Guide Category- pronouns | Guide TitlePossessive Pronouns	2	[{"changed": {"fields": ["OrderingID"]}}]	13	1
107	2022-01-22 18:24:47.876428-05	10	Course- polish |  Guide Category- pronouns | Guide Titlepronounstest	2	[{"changed": {"fields": ["OrderingID"]}}]	13	1
108	2022-01-22 18:24:49.133571-05	11	Course- polish |  Guide Category- pronouns | Guide Titlepronounsbet	2	[]	13	1
109	2022-01-22 18:24:50.496811-05	15	Course- polish |  Guide Category- pronouns | Guide Titlepronouns33	2	[]	13	1
110	2022-01-22 18:25:17.572436-05	5	Course- polish |  Guide Category- pronouns | Guide TitlePersonal Pronouns	2	[{"changed": {"fields": ["Content"]}}]	13	1
111	2022-01-22 18:28:15.195138-05	5	Course- polish |  Guide Category- pronouns | Guide TitlePersonal Pronouns	2	[{"changed": {"fields": ["Content"]}}]	13	1
112	2022-01-22 18:29:24.344028-05	6	Course- polish |  Guide Category- pronouns | Guide TitlePossessive Pronouns	2	[{"changed": {"fields": ["OrderingID"]}}]	13	1
113	2022-01-22 18:29:30.992075-05	6	Course- polish |  Guide Category- pronouns | Guide TitlePossessive Pronouns	2	[{"changed": {"fields": ["OrderingID"]}}]	13	1
114	2022-01-22 18:34:00.262558-05	17	Course- polish |  Guide Category- cases | Guide TitleNominative Case	1	[{"added": {}}]	13	1
115	2022-01-22 18:44:47.616525-05	15	Course- polish |  Lesson Title- lesson1	1	[{"added": {}}]	7	1
116	2022-01-22 19:00:57.195681-05	17	Course- polish |  Guide Category- cases | Guide Title- Nominative Case	2	[]	13	1
117	2022-01-22 19:46:06.730413-05	23	Course- polish |  Guide Category- cases2 | Guide Title- Vocative Case	2	[{"changed": {"fields": ["Category"]}}]	13	1
118	2022-01-22 19:46:55.781024-05	24	Course- polish |  Guide Category- other | Guide Title- Numbers	1	[{"added": {}}]	13	1
119	2022-01-22 19:47:29.162384-05	23	Course- polish |  Guide Category- cases | Guide Title- Vocative Case	2	[{"changed": {"fields": ["Category"]}}]	13	1
120	2022-01-23 01:38:18.787735-05	4	testuserski	1	[{"added": {}}]	12	1
121	2022-01-23 01:51:53.665914-05	1	jmkryzanski	2	[{"changed": {"fields": ["Bio"]}}]	12	1
122	2022-01-23 03:44:12.433877-05	4	testuserski	2	[{"changed": {"fields": ["Username"]}}]	12	1
123	2022-01-24 19:44:46.146974-05	15	testuser1ss	3		4	1
124	2022-01-24 19:45:06.696664-05	5	testuserski1	1	[{"added": {}}]	12	1
125	2022-01-25 19:12:40.000134-05	1	QuestionAnswer object (1)	1	[{"added": {}}]	14	1
126	2022-01-25 19:12:49.706998-05	2	QuestionAnswer object (2)	1	[{"added": {}}]	14	1
127	2022-01-25 19:12:57.438545-05	3	QuestionAnswer object (3)	1	[{"added": {}}]	14	1
128	2022-01-25 19:59:35.455594-05	4	Lesson lesson1 | Question gdzie jeste┼¢ | Answer | where are you	1	[{"added": {}}]	14	1
129	2022-01-26 00:09:52.760195-05	21	baby	3		4	1
130	2022-01-26 00:09:52.761196-05	20	sayin	3		4	1
131	2022-01-26 00:09:52.762197-05	18	test123	3		4	1
132	2022-01-26 00:09:52.762197-05	19	testbaby	3		4	1
133	2022-01-26 00:09:52.763197-05	17	testuserski1	3		4	1
134	2022-01-28 20:55:00.058869-05	15	Course- polish |  Lesson Title- Introduction and Greetings	2	[{"changed": {"fields": ["Content"]}}]	7	1
135	2022-01-28 20:59:08.699669-05	15	Course- polish |  Lesson Title- Introduction and Greetings	2	[{"changed": {"fields": ["Slug"]}}]	7	1
136	2022-01-28 21:00:05.355119-05	17	Course- polish |  Lesson Title- Personal Pronouns	1	[{"added": {}}]	7	1
137	2022-01-28 21:47:26.68293-05	4	Lesson Introduction and Greetings | Question gdzie jeste┼¢ | Answer | where are you	2	[]	14	1
138	2022-01-28 21:47:28.457541-05	2	Lesson Introduction and Greetings | Question do widzenia | Answer | goodbye	2	[]	14	1
139	2022-01-28 21:47:29.772736-05	1	Lesson Introduction and Greetings | Question jak si─Ö masz | Answer | how are you	2	[]	14	1
140	2022-01-28 21:48:32.242466-05	5	Lesson Introduction and Greetings | Question cze┼¢─ç | Answer | hello	1	[{"added": {}}]	14	1
141	2022-02-01 23:52:46.315268-05	6	Lesson Introduction and Greetings | Question test1 | Answer | test1	1	[{"added": {}}]	14	1
142	2022-02-01 23:52:55.217347-05	7	Lesson Introduction and Greetings | Question test2 | Answer | test2	1	[{"added": {}}]	14	1
143	2022-02-02 23:15:32.996353-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
144	2022-02-02 23:15:38.85367-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
145	2022-02-02 23:15:42.924364-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
146	2022-02-02 23:34:57.825037-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
147	2022-02-02 23:35:00.850783-05	4	testuserski	2	[{"changed": {"fields": ["Course"]}}]	12	1
148	2022-02-02 23:35:03.491179-05	7	baby	2	[{"changed": {"fields": ["Course"]}}]	12	1
149	2022-02-02 23:50:17.496211-05	7	baby	2	[{"changed": {"fields": ["Course"]}}]	12	1
150	2022-02-03 00:03:19.589018-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
151	2022-02-03 00:31:10.57256-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
152	2022-02-03 00:39:40.28316-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
153	2022-02-03 00:39:54.497061-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
154	2022-02-03 00:40:47.699346-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
155	2022-02-03 00:46:15.158539-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
156	2022-02-03 00:47:05.583303-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
157	2022-02-03 00:47:11.427608-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
158	2022-02-03 00:47:40.760229-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
159	2022-02-03 00:49:16.548164-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
160	2022-02-03 16:27:50.457076-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
161	2022-02-04 16:09:51.502261-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
162	2022-02-04 16:15:29.168719-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
163	2022-02-04 16:16:57.156574-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
164	2022-02-04 16:18:06.78777-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
165	2022-02-04 16:20:25.579734-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
166	2022-02-04 16:22:13.094311-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
167	2022-02-04 16:26:45.281341-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
168	2022-02-04 17:01:11.443091-05	22	baby	3		4	1
169	2022-02-04 17:01:11.444092-05	16	testuserski	3		4	1
170	2022-02-10 18:31:46.084553-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
171	2022-02-10 20:55:57.272203-05	8	Lesson Introduction and Greetings | Question where are you going | Answer | adonde vas	1	[{"added": {}}]	14	1
172	2022-02-10 20:56:14.84114-05	9	Lesson Introduction and Greetings | Question where do  you live | Answer | donde vives	1	[{"added": {}}]	14	1
173	2022-02-10 20:56:26.647849-05	10	Lesson Introduction and Greetings | Question what is your name | Answer | como te llamas	1	[{"added": {}}]	14	1
174	2022-02-10 20:56:50.36136-05	11	Lesson Introduction and Greetings | Question do you speak english | Answer | hablas ingles	1	[{"added": {}}]	14	1
175	2022-02-11 04:20:12.90605-05	12	Lesson Introduction and Greetings | Question donde vives | Answer | where do you live	1	[{"added": {}}]	14	1
176	2022-02-11 04:20:24.784825-05	13	Lesson Introduction and Greetings | Question que te gusta hacer | Answer | what do you like to do	1	[{"added": {}}]	14	1
177	2022-02-11 04:23:42.070844-05	13	Lesson Introduction and Greetings | Question que te gusta hacer? | Answer | what do you like to do	2	[{"changed": {"fields": ["Question"]}}]	14	1
178	2022-02-11 04:24:17.024566-05	13	Lesson Introduction and Greetings | Question ┬┐que te gusta hacer? | Answer | what do you like to do	2	[{"changed": {"fields": ["Question"]}}]	14	1
179	2022-02-15 01:52:53.892255-05	6	Lesson Introduction and Greetings | Question test1 | Answer | test1	2	[]	14	1
180	2022-02-15 01:56:04.208395-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
181	2022-02-15 01:57:38.299745-05	14	Lesson Interrogative Pronouns | Question ja id─Ö do parku | Answer | i am going to the park	1	[{"added": {}}]	14	1
182	2022-02-15 02:09:43.435512-05	15	Lesson Interrogative Pronouns | Question gdzie ty idziesz? | Answer | where are you going	1	[{"added": {}}]	14	1
183	2022-02-15 02:10:03.296528-05	16	Lesson Interrogative Pronouns | Question kogo ty lubisz? | Answer | who do you like?	1	[{"added": {}}]	14	1
184	2022-02-15 02:19:24.923977-05	15	Lesson Interrogative Pronouns | Question gdzie ty idziesz? | Answer | where are you going	2	[]	14	1
185	2022-02-15 02:19:27.372198-05	14	Lesson Interrogative Pronouns | Question ja id─Ö do parku | Answer | i am going to the park	2	[]	14	1
186	2022-02-19 22:34:31.036342-05	17	Lesson Alphabet and Pronunciation | Question how are you | Answer | jak si─Ö masz	1	[{"added": {}}]	14	1
187	2022-02-19 22:35:12.06764-05	18	Lesson Alphabet and Pronunciation | Question where do you live | Answer | gdzie mieszkasz	1	[{"added": {}}]	14	1
188	2022-02-19 22:38:21.122493-05	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
189	2022-02-22 19:02:51.212988-05	15	polish | Introduction and Greetings	2	[{"changed": {"fields": ["RichContent"]}}]	7	1
190	2022-02-22 19:38:07.748988-05	19	Lesson Introduction and Greetings | Question dzie┼ä dobry | Answer | good day	1	[{"added": {}}]	14	1
191	2022-02-22 19:38:24.69239-05	20	Lesson Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening	1	[{"added": {}}]	14	1
192	2022-02-22 19:39:11.543979-05	21	Lesson Introduction and Greetings | Question dobranoc | Answer | good night	1	[{"added": {}}]	14	1
193	2022-02-22 19:39:31.074732-05	22	Lesson Introduction and Greetings | Question do widzenia | Answer | goodbye	1	[{"added": {}}]	14	1
194	2022-02-22 19:40:43.790832-05	19	Lesson Introduction and Greetings | Question dzie┼ä dobry | Answer | good day	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
195	2022-02-22 19:40:45.861715-05	20	Lesson Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
196	2022-02-22 19:40:48.22186-05	21	Lesson Introduction and Greetings | Question dobranoc | Answer | good night	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
197	2022-02-22 19:40:50.291742-05	22	Lesson Introduction and Greetings | Question do widzenia | Answer | goodbye	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
198	2022-02-22 19:41:18.566444-05	22	Lesson Introduction and Greetings | Question do widzenia | Answer | goodbye	3		14	1
199	2022-02-22 19:41:18.568446-05	21	Lesson Introduction and Greetings | Question dobranoc | Answer | good night	3		14	1
200	2022-02-22 19:41:18.569446-05	20	Lesson Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening	3		14	1
201	2022-02-22 19:41:18.569446-05	19	Lesson Introduction and Greetings | Question dzie┼ä dobry | Answer | good day	3		14	1
316	2022-03-06 16:03:51.115347-05	26	What is your favourite IDE?	3		17	1
202	2022-02-22 19:41:49.818853-05	2	Lesson Introduction and Greetings | Question do widzenia | Answer | goodbye	3		14	1
203	2022-02-22 19:42:25.600378-05	7	Lesson Introduction and Greetings | Question test2 | Answer | test2	3		14	1
204	2022-02-22 19:42:27.759341-05	6	Lesson Introduction and Greetings | Question test1 | Answer | test1	3		14	1
205	2022-02-22 19:42:29.808203-05	5	Lesson Introduction and Greetings | Question cze┼¢─ç | Answer | hello	3		14	1
206	2022-02-22 19:42:51.358793-05	4	Lesson Introduction and Greetings | Question gdzie jeste┼¢ | Answer | where are you	3		14	1
207	2022-02-22 19:42:51.361796-05	1	Lesson Introduction and Greetings | Question jak si─Ö masz | Answer | how are you	3		14	1
208	2022-02-22 19:45:01.678255-05	23	Lesson Introduction and Greetings | Question dzie┼ä dobry | Answer | good day	1	[{"added": {}}]	14	1
209	2022-02-22 19:45:42.236123-05	24	Lesson Introduction and Greetings | Question jak pan ma na imi─Ö | Answer | what's your name	1	[{"added": {}}]	14	1
210	2022-02-22 19:46:09.236667-05	25	Lesson Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening	1	[{"added": {}}]	14	1
211	2022-02-22 19:46:21.186529-05	26	Lesson Introduction and Greetings | Question dobranoc | Answer | good night	1	[{"added": {}}]	14	1
212	2022-02-22 19:46:33.520741-05	27	Lesson Introduction and Greetings | Question cze┼¢─ç | Answer | hello/bye	1	[{"added": {}}]	14	1
213	2022-02-22 19:47:29.574695-05	27	Lesson Introduction and Greetings | Question cze┼¢─ç | Answer | hello/bye	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
214	2022-02-22 19:47:31.689618-05	26	Lesson Introduction and Greetings | Question dobranoc | Answer | good night	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
215	2022-02-22 19:47:33.695441-05	25	Lesson Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
216	2022-02-22 19:47:35.631201-05	24	Lesson Introduction and Greetings | Question jak pan ma na imi─Ö | Answer | what's your name	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
217	2022-02-22 19:47:37.716096-05	23	Lesson Introduction and Greetings | Question dzie┼ä dobry | Answer | good day	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
218	2022-02-22 19:48:01.569779-05	27	Lesson Introduction and Greetings | Question cze┼¢─ç | Answer | hello/bye	3		14	1
219	2022-02-22 19:48:01.572781-05	26	Lesson Introduction and Greetings | Question dobranoc | Answer | good night	3		14	1
220	2022-02-22 19:48:01.572781-05	25	Lesson Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening	3		14	1
221	2022-02-22 19:48:01.572781-05	24	Lesson Introduction and Greetings | Question jak pan ma na imi─Ö | Answer | what's your name	3		14	1
222	2022-02-22 19:48:01.573783-05	23	Lesson Introduction and Greetings | Question dzie┼ä dobry | Answer | good day	3		14	1
223	2022-02-22 19:48:20.445938-05	28	Lesson Introduction and Greetings | Question dzie┼ä dobry | Answer | good day	1	[{"added": {}}]	14	1
224	2022-02-22 19:48:30.650213-05	29	Lesson Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening	1	[{"added": {}}]	14	1
225	2022-02-22 19:49:28.276596-05	29	Lesson Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
226	2022-02-22 19:49:33.368225-05	28	Lesson Introduction and Greetings | Question dzie┼ä dobry | Answer | good day	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
227	2022-02-22 19:49:57.502163-05	29	Lesson Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
228	2022-02-22 19:51:03.486143-05	30	Lesson Introduction and Greetings | Question cze┼¢─ç | Answer | hello/bye	1	[{"added": {}}]	14	1
229	2022-02-22 19:55:36.631436-05	29	Lesson Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening	3		14	1
230	2022-02-22 19:55:36.648451-05	28	Lesson Introduction and Greetings | Question dzie┼ä dobry | Answer | good day	3		14	1
231	2022-02-22 19:56:03.324701-05	30	Lesson Introduction and Greetings | Question cze┼¢─ç | Answer | hello//bye//hi	2	[{"changed": {"fields": ["Answer"]}}]	14	1
232	2022-02-22 20:12:54.803148-05	16	Lesson Interrogative Pronouns | Question kogo ty lubisz? | Answer | who do you like?//whom do you like?	2	[{"changed": {"fields": ["Answer"]}}]	14	1
233	2022-02-22 20:17:26.639758-05	15	Lesson Interrogative Pronouns | Question gdzie ty idziesz? | Answer | where are you going//where do you go	2	[{"changed": {"fields": ["Answer"]}}]	14	1
234	2022-02-22 20:17:32.795354-05	14	Lesson Interrogative Pronouns | Question ja id─Ö do parku | Answer | i am going to the park//i go to the park	2	[{"changed": {"fields": ["Answer"]}}]	14	1
235	2022-03-01 15:41:21.96026-05	31	Lesson Introduction and Greetings | Question dzie┼ä dobry | Answer | hello//goodday	1	[{"added": {}}]	14	1
236	2022-03-01 15:41:33.265536-05	32	Lesson Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening//hello	1	[{"added": {}}]	14	1
237	2022-03-01 15:41:43.758075-05	33	Lesson Introduction and Greetings | Question do widzenia | Answer | goodbye//bye//see you	1	[{"added": {}}]	14	1
238	2022-03-01 15:41:54.462805-05	34	Lesson Introduction and Greetings | Question jak si─Ö masz | Answer | how are you//how are you doing	1	[{"added": {}}]	14	1
239	2022-03-01 15:56:43.047541-05	35	Lesson Interrogative Pronouns | Question jak si─Ö masz | Answer | how are you	1	[{"added": {}}]	14	1
240	2022-03-01 16:00:45.394837-05	35	Lesson Interrogative Pronouns | Question jak si─Ö masz | Answer | how are you	3		14	1
241	2022-03-01 16:00:45.397842-05	18	Lesson Alphabet and Pronunciation | Question where do you live | Answer | gdzie mieszkasz	3		14	1
242	2022-03-01 16:00:45.397842-05	17	Lesson Alphabet and Pronunciation | Question how are you | Answer | jak si─Ö masz	3		14	1
243	2022-03-01 16:00:45.398841-05	16	Lesson Interrogative Pronouns | Question kogo ty lubisz? | Answer | who do you like?//whom do you like?	3		14	1
244	2022-03-01 16:00:45.398841-05	15	Lesson Interrogative Pronouns | Question gdzie ty idziesz? | Answer | where are you going//where do you go	3		14	1
245	2022-03-01 16:00:45.398841-05	14	Lesson Interrogative Pronouns | Question ja id─Ö do parku | Answer | i am going to the park//i go to the park	3		14	1
246	2022-03-01 16:00:45.399842-05	13	Lesson Introduction and Greetings | Question ┬┐que te gusta hacer? | Answer | what do you like to do	3		14	1
247	2022-03-01 16:00:45.399842-05	12	Lesson Introduction and Greetings | Question donde vives | Answer | where do you live	3		14	1
248	2022-03-01 16:00:45.400843-05	11	Lesson Introduction and Greetings | Question do you speak english | Answer | hablas ingles	3		14	1
249	2022-03-01 16:00:45.400843-05	10	Lesson Introduction and Greetings | Question what is your name | Answer | como te llamas	3		14	1
250	2022-03-01 16:00:45.400843-05	9	Lesson Introduction and Greetings | Question where do  you live | Answer | donde vives	3		14	1
251	2022-03-01 16:00:45.401844-05	8	Lesson Introduction and Greetings | Question where are you going | Answer | adonde vas	3		14	1
252	2022-03-01 16:01:02.54843-05	36	Lesson Introduction and Greetings | Question prosz─Ö | Answer | please//youre welcome	1	[{"added": {}}]	14	1
253	2022-03-01 16:08:32.242713-05	37	Lesson Introduction and Greetings | Question dzi─Ökuj─Ö | Answer | thank you//thanks	1	[{"added": {}}]	14	1
254	2022-03-01 16:09:22.706585-05	38	Lesson Introduction and Greetings | Question przepraszam | Answer | sorry//excuse me	1	[{"added": {}}]	14	1
255	2022-03-01 16:55:32.363248-05	39	Lesson Interrogative Pronouns | Question co to jest? | Answer | what is this//what is this	1	[{"added": {}}]	14	1
256	2022-03-01 16:55:54.287177-05	40	Lesson Interrogative Pronouns | Question kto to jest? | Answer | who is this//who is it	1	[{"added": {}}]	14	1
257	2022-03-01 16:56:03.16825-05	41	Lesson Interrogative Pronouns | Question kiedy | Answer | when	1	[{"added": {}}]	14	1
258	2022-03-01 16:56:27.109012-05	42	Lesson Interrogative Pronouns | Question tak | Answer | yes//yeah	1	[{"added": {}}]	14	1
259	2022-03-01 16:56:39.898638-05	43	Lesson Interrogative Pronouns | Question nie | Answer | no//nope	1	[{"added": {}}]	14	1
260	2022-03-01 16:56:57.970066-05	44	Lesson Interrogative Pronouns | Question dobrze | Answer | yes//yeah	1	[{"added": {}}]	14	1
261	2022-03-01 16:57:30.513648-05	45	Lesson Interrogative Pronouns | Question ┼║le | Answer | bad//poor//not good	1	[{"added": {}}]	14	1
262	2022-03-01 16:57:50.202546-05	46	Lesson Interrogative Pronouns | Question dlaczego, czemu | Answer | why	1	[{"added": {}}]	14	1
263	2022-03-01 16:59:41.358588-05	47	Lesson Interrogative Pronouns | Question jak si─Ö masz | Answer | how are you//how are you doing	1	[{"added": {}}]	14	1
264	2022-03-01 17:02:46.887297-05	41	Lesson Interrogative Pronouns | Question kiedy? | Answer | when	2	[{"changed": {"fields": ["Question"]}}]	14	1
265	2022-03-01 17:04:52.502989-05	48	Lesson Interrogative Pronouns | Question mo┼╝e | Answer | maybe//perhaps	1	[{"added": {}}]	14	1
266	2022-03-01 17:06:15.763674-05	47	Lesson Interrogative Pronouns | Question jak si─Ö masz? | Answer | how are you//how are you doing	2	[{"changed": {"fields": ["Question"]}}]	14	1
267	2022-03-01 17:06:24.085238-05	34	Lesson Introduction and Greetings | Question jak si─Ö masz? | Answer | how are you//how are you doing	2	[{"changed": {"fields": ["Question"]}}]	14	1
268	2022-03-01 18:13:54.065371-05	49	Lesson Interrogative Pronouns | Question jak? | Answer | how	1	[{"added": {}}]	14	1
269	2022-03-01 18:14:01.866462-05	50	Lesson Interrogative Pronouns | Question kto | Answer | who	1	[{"added": {}}]	14	1
270	2022-03-01 18:14:08.934887-05	51	Lesson Interrogative Pronouns | Question co | Answer | what	1	[{"added": {}}]	14	1
271	2022-03-01 18:14:20.85172-05	52	Lesson Interrogative Pronouns | Question gdzie | Answer | where	1	[{"added": {}}]	14	1
272	2022-03-01 18:14:50.306495-05	40	Lesson Interrogative Pronouns | Question kto to jest? | Answer | who is this//who is it	3		14	1
273	2022-03-01 18:14:50.308497-05	39	Lesson Interrogative Pronouns | Question co to jest? | Answer | what is this//what is this	3		14	1
274	2022-03-01 19:05:46.640651-05	53	Lesson Personal Pronouns | Question ja jestem Polakiem | Answer | i am polish//i am a pole//i am a polish	1	[{"added": {}}]	14	1
275	2022-03-01 19:05:57.786783-05	54	Lesson Personal Pronouns | Question czy ty jeste┼¢ Polk─à? | Answer | are you polish//are you a pole//are you a polish	1	[{"added": {}}]	14	1
276	2022-03-01 19:06:08.518538-05	55	Lesson Personal Pronouns | Question on jest ch┼éopcem | Answer | he is a boy	1	[{"added": {}}]	14	1
277	2022-03-01 19:06:18.638737-05	56	Lesson Personal Pronouns | Question ona jest dziewczyn─à | Answer | she is a girl	1	[{"added": {}}]	14	1
278	2022-03-01 19:06:33.665396-05	57	Lesson Personal Pronouns | Question on jest m─Ö┼╝yczn─à | Answer | he is a man	1	[{"added": {}}]	14	1
279	2022-03-01 19:06:45.174859-05	58	Lesson Personal Pronouns | Question ona jest kobiet─à | Answer | she is a woman	1	[{"added": {}}]	14	1
280	2022-03-01 19:06:57.858389-05	59	Lesson Personal Pronouns | Question my jeste┼¢my z Polski | Answer | we are from poland	1	[{"added": {}}]	14	1
281	2022-03-01 19:07:16.654474-05	60	Lesson Personal Pronouns | Question czy wy jeste┼¢cie z Polski? | Answer | are you from poland//are you all from poland//are yall from poland	1	[{"added": {}}]	14	1
282	2022-03-01 19:07:25.770761-05	61	Lesson Personal Pronouns | Question one s─à kobietami | Answer | they are women	1	[{"added": {}}]	14	1
283	2022-03-01 19:07:36.922898-05	62	Lesson Personal Pronouns | Question oni s─à ch┼éopcami | Answer | they are boys	1	[{"added": {}}]	14	1
284	2022-03-06 15:27:51.795545-05	64	 | Question test | Answer | test	1	[{"added": {}}]	14	1
285	2022-03-06 15:38:18.863106-05	2	What is your favourite IDE?	3		17	1
286	2022-03-06 15:38:18.866109-05	1	What is your favourite programming language?	3		17	1
287	2022-03-06 15:38:47.498116-05	4	What is your favourite IDE?	3		17	1
288	2022-03-06 15:38:47.501118-05	3	What is your favourite programming language?	3		17	1
289	2022-03-06 15:41:26.439481-05	6	What is your favourite IDE?	3		17	1
290	2022-03-06 15:41:26.442484-05	5	What is your favourite programming language?	3		17	1
291	2022-03-06 15:45:34.063396-05	8	What is your favourite IDE?	3		17	1
292	2022-03-06 15:45:34.064397-05	7	What is your favourite programming language?	3		17	1
293	2022-03-06 15:49:38.512428-05	10	What is your favourite IDE?	3		17	1
294	2022-03-06 15:49:38.51543-05	9	What is your favourite programming language?	3		17	1
295	2022-03-06 15:49:52.998585-05	64	 | Question test | Answer | test	3		14	1
296	2022-03-06 15:52:02.116863-05	12	What is your favourite IDE?	3		17	1
297	2022-03-06 15:52:02.131876-05	11	What is your favourite programming language?	3		17	1
298	2022-03-06 15:52:59.961402-05	14	What is your favourite IDE?	3		17	1
299	2022-03-06 15:52:59.963404-05	13	What is your favourite programming language?	3		17	1
300	2022-03-06 15:55:56.486739-05	55	PyCharm	3		16	1
301	2022-03-06 15:55:56.502754-05	54	Visual Studio	3		16	1
302	2022-03-06 15:55:56.503755-05	53	Eclipse	3		16	1
303	2022-03-06 15:55:56.503755-05	52	C	3		16	1
304	2022-03-06 15:55:56.503755-05	51	C++	3		16	1
305	2022-03-06 15:55:56.504756-05	50	Java	3		16	1
306	2022-03-06 15:55:59.705663-05	16	What is your favourite IDE?	3		17	1
307	2022-03-06 15:55:59.707665-05	15	What is your favourite programming language?	3		17	1
308	2022-03-06 16:00:05.658566-05	18	What is your favourite IDE?	3		17	1
309	2022-03-06 16:00:05.659567-05	17	What is your favourite programming language?	3		17	1
310	2022-03-06 16:00:46.445612-05	20	What is your favourite IDE?	3		17	1
311	2022-03-06 16:00:46.448615-05	19	What is your favourite programming language?	3		17	1
312	2022-03-06 16:02:13.405598-05	22	What is your favourite IDE?	3		17	1
313	2022-03-06 16:02:13.4086-05	21	What is your favourite programming language?	3		17	1
314	2022-03-06 16:02:41.424046-05	24	What is your favourite IDE?	3		17	1
315	2022-03-06 16:02:41.42805-05	23	What is your favourite programming language?	3		17	1
317	2022-03-06 16:03:51.117348-05	25	What is your favourite programming language?	3		17	1
318	2022-03-06 16:09:53.138179-05	67	 | Question dd | Answer | dawda	3		14	1
319	2022-03-06 16:09:53.13918-05	66	 | Question ad | Answer | dsad	3		14	1
320	2022-03-06 16:09:53.140181-05	65	 | Question te | Answer | adw	3		14	1
321	2022-03-06 16:11:25.373461-05	70	 | Question dd | Answer | dawda	3		14	1
322	2022-03-06 16:11:25.376464-05	69	 | Question ad | Answer | dsad	3		14	1
323	2022-03-06 16:11:25.376464-05	68	 | Question te | Answer | adw	3		14	1
324	2022-03-06 16:15:15.878332-05	73	 | Question dd | Answer | dawda	3		14	1
325	2022-03-06 16:15:15.882335-05	72	 | Question ad | Answer | dsad	3		14	1
326	2022-03-06 16:15:15.882335-05	71	 | Question te | Answer | adw	3		14	1
327	2022-03-06 16:21:12.324102-05	76	 | Question dd | Answer | dawda	3		14	1
328	2022-03-06 16:21:12.327105-05	75	 | Question ad | Answer | dsad	3		14	1
329	2022-03-06 16:21:12.327105-05	74	 | Question te | Answer | adw	3		14	1
330	2022-03-06 16:22:03.840399-05	79	 | Question dd | Answer | dawda	3		14	1
331	2022-03-06 16:22:03.843402-05	78	 | Question ad | Answer | dsad	3		14	1
332	2022-03-06 16:22:03.843402-05	77	 | Question te | Answer | adw	3		14	1
333	2022-03-06 16:26:16.040975-05	82	 | Question dd | Answer | dawda	3		14	1
334	2022-03-06 16:26:16.041976-05	81	 | Question ad | Answer | dsad	3		14	1
335	2022-03-06 16:26:16.042977-05	80	 | Question te | Answer | adw	3		14	1
336	2022-03-06 16:28:09.898392-05	85	 | Question dd | Answer | dawda	3		14	1
337	2022-03-06 16:28:09.912404-05	84	 | Question ad | Answer | dsad	3		14	1
338	2022-03-06 16:28:09.913405-05	83	 | Question te | Answer | adw	3		14	1
339	2022-03-06 16:28:48.08908-05	88	 | Question dd | Answer | dawda	3		14	1
340	2022-03-06 16:28:48.092082-05	87	 | Question ad | Answer | dsad	3		14	1
341	2022-03-06 16:28:48.092082-05	86	 | Question te | Answer | adw	3		14	1
342	2022-03-06 23:32:17.858918-05	7	testcourse	3		8	1
343	2022-03-06 23:32:21.647862-05	6	testcourse	3		8	1
344	2022-03-06 23:37:56.208991-05	8	testcourse	3		8	1
345	2022-03-06 23:43:23.700356-05	9	testcourse	3		8	1
346	2022-03-06 23:48:41.554005-05	10	testcourse	3		8	1
347	2022-03-06 23:51:06.30766-05	40	testcourse | testlessontitle	3		7	1
348	2022-03-06 23:51:10.780233-05	11	testcourse	3		8	1
349	2022-03-06 23:53:12.045468-05	41	testcourse | testlessontitle	3		7	1
350	2022-03-06 23:53:16.940424-05	12	testcourse	3		8	1
351	2022-03-06 23:54:16.02063-05	42	testcourse | testlessontitle	3		7	1
352	2022-03-06 23:54:19.459752-05	13	testcourse	3		8	1
353	2022-03-06 23:55:23.401511-05	14	testcourse	3		8	1
354	2022-03-06 23:57:22.350166-05	44	polish | testlessontitle	3		7	1
355	2022-03-06 23:57:25.472514-05	15	polish	3		8	1
356	2022-03-06 23:58:05.667564-05	5	polish	3		8	1
357	2022-03-06 23:59:40.354674-05	16	test	3		8	1
358	2022-03-06 23:59:49.739706-05	45	polish | testlessontitle	3		7	1
359	2022-03-07 00:02:38.685293-05	46	polish | Introduction and Greetings	3		7	1
360	2022-03-07 00:03:31.669474-05	18	test	3		8	1
361	2022-03-07 00:03:31.672477-05	17	test	3		8	1
362	2022-03-07 00:03:35.92384-05	47	polish | test2	3		7	1
363	2022-03-07 00:04:16.138415-05	19	test	3		8	1
364	2022-03-07 00:04:20.602482-05	48	polish | test2	3		7	1
365	2022-03-07 00:04:26.453298-05	100	 | Question dd | Answer | dawda	3		14	1
366	2022-03-07 00:04:26.457301-05	99	 | Question ad | Answer | dsad	3		14	1
367	2022-03-07 00:04:26.457301-05	98	 | Question te | Answer | adw	3		14	1
368	2022-03-07 00:05:47.250233-05	33	polish | pl-Interrogative Pronouns	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
369	2022-03-07 00:15:10.000281-05	36	polish | pl-Reflexive Pronouns	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
370	2022-03-07 00:15:20.624438-05	35	polish | pl-Indefinite Pronouns	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
371	2022-03-07 00:18:43.693001-05	36	polish | pl//Reflexive Pronouns	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
372	2022-03-07 00:20:25.00359-05	103	 | Question dd | Answer | dawda	3		14	1
373	2022-03-07 00:20:25.019604-05	102	 | Question ad | Answer | dsad	3		14	1
374	2022-03-07 00:20:25.020605-05	101	 | Question te | Answer | adw	3		14	1
375	2022-03-07 00:20:28.663416-05	49	polish | test2	3		7	1
376	2022-03-07 00:20:32.73962-05	20	test	3		8	1
377	2022-03-07 00:20:56.249475-05	34	polish | pl//Relative Pronouns	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
378	2022-03-07 00:20:59.391832-05	32	polish | pl//Demonstrative Pronouns	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
379	2022-03-07 00:21:02.085277-05	31	polish | pl//Possessive Pronouns	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
380	2022-03-07 00:21:05.268671-05	30	polish | pl//Verbs- Conditional Tense	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
381	2022-03-07 00:21:08.038699-05	29	polish | pl//Verbs- Future Tense	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
382	2022-03-07 00:21:11.307698-05	28	polish | pl//Verbs- Past Tense	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
383	2022-03-07 00:21:15.008562-05	27	polish | pl//Verbs- Present Tense	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
384	2022-03-07 00:21:18.100874-05	26	polish | pl//Introduction To Verbs	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
385	2022-03-07 00:21:23.924683-05	25	polish | pl//Vocative Case	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
386	2022-03-07 00:21:26.712214-05	24	polish | pl//Locative Case	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
387	2022-03-07 00:21:30.972081-05	23	polish | pl//Instrumental Case	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
388	2022-03-07 00:21:39.425764-05	22	polish | pl//Accusative Case	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
389	2022-03-07 00:21:49.25871-05	21	polish | pl//Dative Case	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
390	2022-03-07 00:21:52.359525-05	20	polish | pl//Genitive Case	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
391	2022-03-07 00:21:56.207531-05	19	polish | pl//Nominative Case	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
392	2022-03-07 00:22:10.432966-05	18	polish | pl//Alphabet and Pronunciation	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
393	2022-03-07 00:22:12.671999-05	17	polish | pl//Personal Pronouns	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
394	2022-03-07 00:22:15.100708-05	15	polish | pl//Introduction and Greetings	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
395	2022-03-07 00:22:31.493615-05	33	polish | pl//Interrogative Pronouns	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
396	2022-03-07 00:22:42.957556-05	35	polish | pl//Indefinite Pronouns	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
397	2022-03-07 00:25:38.894585-05	38	Lesson pl//Introduction and Greetings | Question przepraszam | Answer | sorry//excuse me	3		14	1
398	2022-03-07 00:25:38.909599-05	37	Lesson pl//Introduction and Greetings | Question dzi─Ökuj─Ö | Answer | thank you//thanks	3		14	1
399	2022-03-07 00:25:38.9106-05	36	Lesson pl//Introduction and Greetings | Question prosz─Ö | Answer | please//youre welcome	3		14	1
400	2022-03-07 00:25:38.9106-05	34	Lesson pl//Introduction and Greetings | Question jak si─Ö masz? | Answer | how are you//how are you doing	3		14	1
401	2022-03-07 00:25:38.9106-05	33	Lesson pl//Introduction and Greetings | Question do widzenia | Answer | goodbye//bye//see you	3		14	1
402	2022-03-07 00:25:38.911601-05	32	Lesson pl//Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening//hello	3		14	1
403	2022-03-07 00:25:38.911601-05	31	Lesson pl//Introduction and Greetings | Question dzie┼ä dobry | Answer | hello//goodday	3		14	1
404	2022-03-07 00:25:38.911601-05	30	Lesson pl//Introduction and Greetings | Question cze┼¢─ç | Answer | hello//bye//hi	3		14	1
405	2022-03-07 00:26:01.392054-05	50	polish | test2	3		7	1
406	2022-03-07 00:26:05.067897-05	21	test	3		8	1
407	2022-03-07 00:26:58.302805-05	111	Lesson pl//Introduction and Greetings | Question przepraszam | Answer | sorry//excuse me	3		14	1
408	2022-03-07 00:26:58.306809-05	110	Lesson pl//Introduction and Greetings | Question dzi─Ökuj─Ö | Answer | thank you//thanks	3		14	1
409	2022-03-07 00:26:58.30781-05	109	Lesson pl//Introduction and Greetings | Question prosz─Ö | Answer | please//youre welcome	3		14	1
410	2022-03-07 00:26:58.30781-05	108	Lesson pl//Introduction and Greetings | Question jak si─Ö masz | Answer | how are you//how are you doing	3		14	1
411	2022-03-07 00:26:58.30781-05	107	Lesson pl//Introduction and Greetings | Question do widzenia | Answer | goodbye//bye//see you	3		14	1
412	2022-03-07 00:26:58.308811-05	106	Lesson pl//Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening//hello	3		14	1
413	2022-03-07 00:26:58.308811-05	105	Lesson pl//Introduction and Greetings | Question dzie┼ä dobry | Answer | hello//goodday	3		14	1
414	2022-03-07 00:26:58.309812-05	104	Lesson pl//Introduction and Greetings | Question cze┼¢─ç | Answer | hello//bye//hi	3		14	1
415	2022-03-07 00:28:37.931427-05	51	polish | test2	3		7	1
416	2022-03-07 00:28:41.649803-05	22	test	3		8	1
417	2022-03-07 00:30:26.062741-05	36	polish | pl//Reflexive Pronouns	2	[{"changed": {"fields": ["OrderingID"]}}]	7	1
418	2022-03-07 00:30:33.610603-05	36	polish | pl//Reflexive Pronouns	2	[{"changed": {"fields": ["OrderingID"]}}]	7	1
419	2022-03-07 23:13:20.192227-05	116	Lesson pl//Introduction and Greetings | Question jak si─Ö masz//czesc//tak | Answer | how are you//how are you doing	2	[{"changed": {"fields": ["Question"]}}]	14	1
420	2022-03-07 23:13:22.652461-05	115	Lesson pl//Introduction and Greetings | Question do widzenia//czesc//tak | Answer | goodbye//bye//see you	2	[{"changed": {"fields": ["Question"]}}]	14	1
421	2022-03-07 23:13:24.813423-05	114	Lesson pl//Introduction and Greetings | Question dobry wiecz├│r//czesc//tak | Answer | good evening//hello	2	[{"changed": {"fields": ["Question"]}}]	14	1
422	2022-03-07 23:13:27.13453-05	113	Lesson pl//Introduction and Greetings | Question dzie┼ä dobry//czesc//tak | Answer | hello//goodday	2	[{"changed": {"fields": ["Question"]}}]	14	1
423	2022-03-07 23:13:29.339532-05	112	Lesson pl//Introduction and Greetings | Question cze┼¢─ç//czesc//tak | Answer | hello//bye//hi	2	[{"changed": {"fields": ["Question"]}}]	14	1
424	2022-03-09 20:07:53.509995-05	119	Lesson pl//Introduction and Greetings | Question przepraszam | Answer | sorry//excuse me	3		14	1
425	2022-03-09 20:07:53.530013-05	118	Lesson pl//Introduction and Greetings | Question dzi─Ökuj─Ö | Answer | thank you//thanks	3		14	1
426	2022-03-09 20:07:53.531014-05	117	Lesson pl//Introduction and Greetings | Question prosz─Ö | Answer | please//youre welcome	3		14	1
427	2022-03-09 20:07:53.531014-05	116	Lesson pl//Introduction and Greetings | Question jak si─Ö masz//czesc//tak | Answer | how are you//how are you doing	3		14	1
428	2022-03-09 20:07:53.531014-05	115	Lesson pl//Introduction and Greetings | Question do widzenia//czesc//tak | Answer | goodbye//bye//see you	3		14	1
429	2022-03-09 20:07:53.532015-05	114	Lesson pl//Introduction and Greetings | Question dobry wiecz├│r//czesc//tak | Answer | good evening//hello	3		14	1
430	2022-03-09 20:07:53.532015-05	113	Lesson pl//Introduction and Greetings | Question dzie┼ä dobry//czesc//tak | Answer | hello//goodday	3		14	1
431	2022-03-09 20:07:53.533016-05	112	Lesson pl//Introduction and Greetings | Question cze┼¢─ç//czesc//tak | Answer | hello//bye//hi	3		14	1
432	2022-03-09 20:07:53.533016-05	62	Lesson pl//Personal Pronouns | Question oni s─à ch┼éopcami | Answer | they are boys	3		14	1
433	2022-03-09 20:07:53.533016-05	61	Lesson pl//Personal Pronouns | Question one s─à kobietami | Answer | they are women	3		14	1
434	2022-03-09 20:07:53.534017-05	60	Lesson pl//Personal Pronouns | Question czy wy jeste┼¢cie z Polski? | Answer | are you from poland//are you all from poland//are yall from poland	3		14	1
435	2022-03-09 20:07:53.534017-05	59	Lesson pl//Personal Pronouns | Question my jeste┼¢my z Polski | Answer | we are from poland	3		14	1
436	2022-03-09 20:07:53.534017-05	58	Lesson pl//Personal Pronouns | Question ona jest kobiet─à | Answer | she is a woman	3		14	1
437	2022-03-09 20:07:53.535018-05	57	Lesson pl//Personal Pronouns | Question on jest m─Ö┼╝yczn─à | Answer | he is a man	3		14	1
438	2022-03-09 20:07:53.535018-05	56	Lesson pl//Personal Pronouns | Question ona jest dziewczyn─à | Answer | she is a girl	3		14	1
439	2022-03-09 20:07:53.535018-05	55	Lesson pl//Personal Pronouns | Question on jest ch┼éopcem | Answer | he is a boy	3		14	1
440	2022-03-09 20:07:53.536019-05	54	Lesson pl//Personal Pronouns | Question czy ty jeste┼¢ Polk─à? | Answer | are you polish//are you a pole//are you a polish	3		14	1
441	2022-03-09 20:07:53.536019-05	53	Lesson pl//Personal Pronouns | Question ja jestem Polakiem | Answer | i am polish//i am a pole//i am a polish	3		14	1
442	2022-03-09 20:07:53.536019-05	52	Lesson pl//Interrogative Pronouns | Question gdzie | Answer | where	3		14	1
443	2022-03-09 20:07:53.53702-05	51	Lesson pl//Interrogative Pronouns | Question co | Answer | what	3		14	1
444	2022-03-09 20:07:53.53702-05	50	Lesson pl//Interrogative Pronouns | Question kto | Answer | who	3		14	1
445	2022-03-09 20:07:53.53702-05	49	Lesson pl//Interrogative Pronouns | Question jak? | Answer | how	3		14	1
446	2022-03-09 20:07:53.538021-05	48	Lesson pl//Interrogative Pronouns | Question mo┼╝e | Answer | maybe//perhaps	3		14	1
447	2022-03-09 20:07:53.538021-05	47	Lesson pl//Interrogative Pronouns | Question jak si─Ö masz? | Answer | how are you//how are you doing	3		14	1
448	2022-03-09 20:07:53.538021-05	46	Lesson pl//Interrogative Pronouns | Question dlaczego, czemu | Answer | why	3		14	1
449	2022-03-09 20:07:53.539022-05	45	Lesson pl//Interrogative Pronouns | Question ┼║le | Answer | bad//poor//not good	3		14	1
450	2022-03-09 20:07:53.539022-05	44	Lesson pl//Interrogative Pronouns | Question dobrze | Answer | yes//yeah	3		14	1
451	2022-03-09 20:07:53.539022-05	43	Lesson pl//Interrogative Pronouns | Question nie | Answer | no//nope	3		14	1
452	2022-03-09 20:07:53.540023-05	42	Lesson pl//Interrogative Pronouns | Question tak | Answer | yes//yeah	3		14	1
453	2022-03-09 20:07:53.540023-05	41	Lesson pl//Interrogative Pronouns | Question kiedy? | Answer | when	3		14	1
454	2022-03-09 21:33:58.833286-05	23	temp	3		8	1
455	2022-03-09 21:34:03.067125-05	52	polish | test2	3		7	1
456	2022-03-12 20:31:12.117735-05	147	Lesson pl//Personal Pronouns | Question oni nie s─à Polakami | Answer | they are not polish//they are not poles | Level 1	3		14	1
457	2022-03-12 20:31:12.121739-05	146	Lesson pl//Personal Pronouns | Question one s─à dziewczynami | Answer | they are women | Level 1	3		14	1
458	2022-03-12 20:31:12.12274-05	145	Lesson pl//Personal Pronouns | Question oni s─à ch┼éopcami | Answer | they are boys | Level 1	3		14	1
459	2022-03-12 20:31:12.12274-05	144	Lesson pl//Personal Pronouns | Question one s─à kobietami | Answer | they are women | Level 1	3		14	1
460	2022-03-12 20:31:12.12274-05	143	Lesson pl//Personal Pronouns | Question wy jeste┼¢cie Polakami//wy jeste┼¢cie Polkami | Answer | you are polish//you are all polish//you all are polish//you are poles//you are all poles//you all are pol	3		14	1
461	2022-03-12 20:31:12.123741-05	142	Lesson pl//Personal Pronouns | Question czy wy jeste┼¢cie z Polski? | Answer | are you from poland//are you all from poland//are yall from poland | Level 1	3		14	1
462	2022-03-12 20:31:12.123741-05	141	Lesson pl//Personal Pronouns | Question my jeste┼¢my m─Ö┼╝czyznami | Answer | we are men | Level 1	3		14	1
463	2022-03-12 20:31:12.123741-05	140	Lesson pl//Personal Pronouns | Question my nie jeste┼¢my w Polsce | Answer | we are not in poland//we arent in poland | Level 1	3		14	1
464	2022-03-12 20:31:12.124742-05	139	Lesson pl//Personal Pronouns | Question ona jest Polk─à | Answer | she is polish//she is a pole//she is a polish//she is a polish person | Level 1	3		14	1
465	2022-03-12 20:31:12.124742-05	138	Lesson pl//Personal Pronouns | Question on jest Polakiem | Answer | he is polish//he is a pole//he is a polish//he is a polish person | Level 1	3		14	1
466	2022-03-12 20:31:12.124742-05	137	Lesson pl//Personal Pronouns | Question ona jest dziewczyn─à | Answer | she is a girl | Level 1	3		14	1
467	2022-03-12 20:31:12.125743-05	136	Lesson pl//Personal Pronouns | Question on jest ch┼éopcem | Answer | he is a boy | Level 1	3		14	1
468	2022-03-12 20:31:12.125743-05	135	Lesson pl//Personal Pronouns | Question ty jeste┼¢ kobiet─à | Answer | you are a woman | Level 1	3		14	1
469	2022-03-12 20:31:12.125743-05	134	Lesson pl//Personal Pronouns | Question czy ty jeste┼¢ z Polski?//jeste┼¢ z Polski? | Answer | are you from Poland? | Level 1	3		14	1
470	2022-03-12 20:31:12.126744-05	133	Lesson pl//Personal Pronouns | Question ja nie jestem z Polski | Answer | i am not from Poland//im not from Poland | Level 1	3		14	1
471	2022-03-12 20:31:12.126744-05	132	Lesson pl//Personal Pronouns | Question ja jestem Polakiem | Answer | i am polish//i am a pole//i am a polish | Level 1	3		14	1
472	2022-03-12 20:31:12.126744-05	131	Lesson pl//Introduction and Greetings | Question nie ma za co | Answer | youre welcome//not at all | Level 3	3		14	1
473	2022-03-12 20:31:12.127745-05	130	Lesson pl//Introduction and Greetings | Question dzi─Öki | Answer | thanks//thank you | Level 3	3		14	1
474	2022-03-12 20:31:12.127745-05	129	Lesson pl//Introduction and Greetings | Question jak tam?//jak leci?//co s┼éycha─ç?//co tam? | Answer | how are you//how are you doing//how is it going | Level 2	3		14	1
475	2022-03-12 20:31:12.127745-05	128	Lesson pl//Introduction and Greetings | Question dobranoc | Answer | goodnight | Level 2	3		14	1
476	2022-03-12 20:31:12.128745-05	127	Lesson pl//Introduction and Greetings | Question przepraszam | Answer | sorry//excuse me | Level 2	3		14	1
477	2022-03-12 20:31:12.128745-05	126	Lesson pl//Introduction and Greetings | Question dzi─Ökuj─Ö | Answer | thank you//thanks | Level 2	3		14	1
478	2022-03-12 20:31:12.128745-05	125	Lesson pl//Introduction and Greetings | Question prosz─Ö | Answer | please//youre welcome | Level 2	3		14	1
479	2022-03-12 20:31:12.129746-05	124	Lesson pl//Introduction and Greetings | Question jak si─Ö masz? | Answer | how are you//how are you doing//how is it going | Level 1	3		14	1
480	2022-03-12 20:31:12.129746-05	123	Lesson pl//Introduction and Greetings | Question do widzenia | Answer | goodbye//bye//see you | Level 1	3		14	1
481	2022-03-12 20:31:12.129746-05	122	Lesson pl//Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening//hello | Level 1	3		14	1
482	2022-03-12 20:31:12.130748-05	121	Lesson pl//Introduction and Greetings | Question dzie┼ä dobry | Answer | hello//goodday | Level 1	3		14	1
483	2022-03-12 20:31:12.130748-05	120	Lesson pl//Introduction and Greetings | Question cze┼¢─ç | Answer | hello//bye//hi | Level 1	3		14	1
484	2022-03-24 14:31:29.33715-04	18	polish | pl//Alphabet and Pronunciation	2	[{"changed": {"fields": ["NumLevels"]}}]	7	1
485	2022-03-24 14:42:19.883285-04	53	polish | pl//Test	2	[{"changed": {"fields": ["LessonTitle", "RichContent"]}}]	7	1
486	2022-03-24 16:09:23.83893-04	1	Level object (1)	1	[{"added": {}}]	18	1
487	2022-03-24 16:09:31.066509-04	1	Level object (1)	3		18	1
488	2022-03-24 16:10:52.945036-04	4	pl//Introduction and Greetings | 1	1	[{"added": {}}]	18	1
489	2022-03-24 16:11:01.559877-04	5	pl//Introduction and Greetings | 2	1	[{"added": {}}]	18	1
490	2022-03-24 16:35:52.219693-04	5	pl//Introduction and Greetings | 2	2	[]	18	1
491	2022-03-24 17:00:31.332999-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
492	2022-03-24 17:00:55.738213-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
493	2022-03-24 17:01:46.885768-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
494	2022-03-24 17:05:53.607338-04	6	pl//Personal Pronouns | 1	1	[{"added": {}}]	18	1
495	2022-03-24 17:06:28.7223-04	7	pl//Interrogative Pronouns | 1	1	[{"added": {}}]	18	1
496	2022-03-24 17:06:31.989273-04	8	pl//Interrogative Pronouns | 2	1	[{"added": {}}]	18	1
497	2022-03-24 17:08:18.550266-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
498	2022-03-25 00:59:40.989361-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
499	2022-03-25 00:59:55.733782-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
500	2022-03-25 01:00:03.431788-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
501	2022-03-25 01:00:15.491766-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
502	2022-03-25 01:00:29.173219-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
503	2022-03-25 01:00:51.804818-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
504	2022-03-25 01:00:59.395727-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
505	2022-03-25 01:01:04.032948-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
506	2022-03-25 01:02:27.941323-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
507	2022-03-25 01:04:12.117145-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
508	2022-03-25 01:04:46.812725-04	9	pl//Nominative Case | 1	1	[{"added": {}}]	18	1
509	2022-03-25 01:04:52.060502-04	10	pl//Genitive Case | 1	1	[{"added": {}}]	18	1
510	2022-03-25 01:04:55.981071-04	11	pl//Dative Case | 1	1	[{"added": {}}]	18	1
511	2022-03-25 01:05:00.730393-04	12	pl//Accusative Case | 1	1	[{"added": {}}]	18	1
512	2022-03-25 01:05:04.906194-04	13	pl//Instrumental Case | 1	1	[{"added": {}}]	18	1
513	2022-03-25 01:05:16.133413-04	14	pl//Locative Case | 1	1	[{"added": {}}]	18	1
514	2022-03-25 01:05:18.387465-04	15	pl//Vocative Case | 1	1	[{"added": {}}]	18	1
515	2022-03-25 01:05:24.803305-04	16	pl//Introduction To Verbs | 1	1	[{"added": {}}]	18	1
516	2022-03-25 01:05:31.256178-04	17	pl//Verbs- Present Tense | 1	1	[{"added": {}}]	18	1
517	2022-03-25 01:05:36.661098-04	18	pl//Verbs- Past Tense | 1	1	[{"added": {}}]	18	1
518	2022-03-25 01:05:40.484578-04	19	pl//Verbs- Past Tense | 1	1	[{"added": {}}]	18	1
519	2022-03-25 01:05:47.549008-04	18	pl//Verbs- Past Tense | 1	3		18	1
520	2022-03-25 01:05:54.913711-04	20	pl//Verbs- Conditional Tense | 1	1	[{"added": {}}]	18	1
521	2022-03-25 01:05:58.243743-04	21	pl//Verbs- Future Tense | 1	1	[{"added": {}}]	18	1
522	2022-03-25 01:06:05.047936-04	22	pl//Possessive Pronouns | 1	1	[{"added": {}}]	18	1
523	2022-03-25 01:06:10.712091-04	23	pl//Demonstrative Pronouns | 1	1	[{"added": {}}]	18	1
524	2022-03-25 01:06:17.218013-04	24	pl//Relative Pronouns | 1	1	[{"added": {}}]	18	1
525	2022-03-25 01:06:21.238673-04	25	pl//Indefinite Pronouns | 1	1	[{"added": {}}]	18	1
526	2022-03-25 01:06:27.431309-04	26	pl//Reflexive Pronouns | 1	1	[{"added": {}}]	18	1
527	2022-03-25 01:06:30.362978-04	27	pl//Test | 1	1	[{"added": {}}]	18	1
528	2022-03-25 01:06:39.480276-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
529	2022-03-25 01:06:58.915967-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
530	2022-03-25 01:07:15.789325-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
531	2022-03-25 01:08:56.916372-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
532	2022-03-25 01:20:16.760679-04	28	pl//Introduction and Greetings | 3	1	[{"added": {}}]	18	1
533	2022-03-25 01:37:10.903764-04	29	pl//Genitive Case | 2	1	[{"added": {}}]	18	1
534	2022-03-25 01:38:52.050333-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
535	2022-03-25 01:52:00.482982-04	24	testuser	3		4	1
536	2022-03-25 01:52:00.485984-04	25	testuser2	3		4	1
537	2022-03-25 02:02:48.883669-04	26	testuser1	3		4	1
538	2022-03-25 02:02:48.886671-04	27	testuser2	3		4	1
539	2022-03-25 02:02:48.886671-04	28	testuser3	3		4	1
540	2022-03-25 02:02:48.887672-04	29	testuser4	3		4	1
541	2022-03-25 02:02:48.887672-04	30	testuser5	3		4	1
542	2022-03-25 02:02:48.887672-04	31	testuser6	3		4	1
543	2022-03-25 02:18:58.869562-04	19	testuser9	3		12	1
544	2022-03-25 02:18:58.871563-04	18	testuser7	3		12	1
545	2022-03-25 02:18:58.872564-04	17	testuser6	3		12	1
546	2022-03-25 02:18:58.872564-04	16	testuser5	3		12	1
547	2022-03-25 02:18:58.873565-04	15	testuser4	3		12	1
548	2022-03-25 02:19:10.630266-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
549	2022-03-25 02:19:22.171771-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
550	2022-03-25 03:03:58.549019-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
551	2022-03-25 03:29:12.149221-04	40	sayin	3		4	1
552	2022-03-25 03:29:12.150222-04	32	testuser1	3		4	1
553	2022-03-25 03:29:12.150222-04	33	testuser2	3		4	1
554	2022-03-25 03:29:12.150222-04	34	testuser4	3		4	1
555	2022-03-25 03:29:12.151223-04	35	testuser5	3		4	1
556	2022-03-25 03:29:12.151223-04	36	testuser6	3		4	1
557	2022-03-25 03:29:12.152224-04	37	testuser7	3		4	1
558	2022-03-25 03:29:12.152224-04	38	testuser8	3		4	1
559	2022-03-25 03:29:12.152224-04	39	testuser9	3		4	1
560	2022-03-26 14:33:10.063495-04	152	Lesson pl//Introduction and Greetings | Question jak si─Ö masz? | Answer | how are you//how are you doing//how is it going | Level 1	2	[{"changed": {"fields": ["LevelModel"]}}]	14	1
561	2022-03-26 14:33:15.106085-04	151	Lesson pl//Introduction and Greetings | Question do widzenia | Answer | goodbye//bye//see you | Level 1	2	[{"changed": {"fields": ["LevelModel"]}}]	14	1
562	2022-03-26 14:33:17.548308-04	150	Lesson pl//Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening//hello | Level 1	2	[{"changed": {"fields": ["LevelModel"]}}]	14	1
563	2022-03-26 14:33:19.851404-04	149	Lesson pl//Introduction and Greetings | Question dzie┼ä dobry | Answer | hello//goodday | Level 1	2	[{"changed": {"fields": ["LevelModel"]}}]	14	1
564	2022-03-26 14:33:22.086439-04	148	Lesson pl//Introduction and Greetings | Question cze┼¢─ç | Answer | hello//bye//hi | Level 1	2	[{"changed": {"fields": ["LevelModel"]}}]	14	1
565	2022-03-26 14:33:55.638979-04	152	Lesson pl//Introduction and Greetings | Question jak si─Ö masz? | Answer | how are you//how are you doing//how is it going | Level 1	2	[]	14	1
566	2022-03-26 14:53:47.136505-04	152	Lesson pl//Introduction and Greetings | Question jak si─Ö masz? | Answer | how are you//how are you doing//how is it going | Level 1	2	[{"changed": {"fields": ["LevelModel", "Level"]}}]	14	1
567	2022-03-26 14:53:50.355435-04	151	Lesson pl//Introduction and Greetings | Question do widzenia | Answer | goodbye//bye//see you | Level 1	2	[{"changed": {"fields": ["LevelModel", "Level"]}}]	14	1
568	2022-03-26 14:53:53.220041-04	150	Lesson pl//Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening//hello | Level 1	2	[{"changed": {"fields": ["LevelModel", "Level"]}}]	14	1
569	2022-03-26 14:53:55.825413-04	149	Lesson pl//Introduction and Greetings | Question dzie┼ä dobry | Answer | hello//goodday | Level 1	2	[{"changed": {"fields": ["LevelModel", "Level"]}}]	14	1
570	2022-03-26 14:53:58.397755-04	148	Lesson pl//Introduction and Greetings | Question cze┼¢─ç | Answer | hello//bye//hi | Level 1	2	[{"changed": {"fields": ["LevelModel", "Level"]}}]	14	1
571	2022-03-26 14:57:09.750934-04	218	Lesson pl//Verbs- Present Tense | Question Czy wy m├│wicie po angielsku?//Czy m├│wicie po angielsku?//M├│wicie po angielsku? | Answer | Do you speak English?//Do you all speak English//Do yall speak Engl	3		14	1
572	2022-03-26 14:57:09.754938-04	217	Lesson pl//Verbs- Present Tense | Question My idziemy do pracy//Idziemy do pracy//My jedziemy do pracy//Jedziemy do pracy | Answer | We are going to work//We go to work | Level None	3		14	1
573	2022-03-26 14:57:09.754938-04	216	Lesson pl//Verbs- Present Tense | Question My uczymy si─Ö Polskiego//Uczymy si─Ö Polskiego//My uczymy si─Ö Polski//My uczymy si─Ö Polski j─Özyk//Uczymy si─Ö Polski//Uczymy si─Ö Polski j─Özyk | Answer | We are	3		14	1
574	2022-03-26 14:57:09.754938-04	215	Lesson pl//Verbs- Present Tense | Question Ona lubi gra─ç w pi┼ék─Ö no┼╝n─à//Ona lubi gra─ç w pi┼éka no┼╝na//Ona lubi gra─ç pi┼éka no┼╝na | Answer | She likes to play soccer//She likes playing soccer | Level Non	3		14	1
575	2022-03-26 14:57:09.755939-04	214	Lesson pl//Verbs- Present Tense | Question Ona ma rodzin─Ö w Polsce//Ona ma rodzina w Polsce | Answer | She has family in Poland | Level None	3		14	1
576	2022-03-26 14:57:09.755939-04	213	Lesson pl//Verbs- Present Tense | Question On nie chce tam i┼¢─ç//On nie chce i┼¢─ç tam | Answer | He does not want to go there//He doesnt want to go there | Level None	3		14	1
577	2022-03-26 14:57:09.75694-04	212	Lesson pl//Verbs- Present Tense | Question On czyta ksi─à┼╝k─Ö//On czyta ksi─à┼╝ka | Answer | He is reading a book//He reads a book | Level None	3		14	1
578	2022-03-26 14:57:09.75694-04	211	Lesson pl//Verbs- Present Tense | Question Co ty robisz?//Co robisz? | Answer | What are you doing//Whatre you doing?//What do you do? | Level None	3		14	1
579	2022-03-26 14:57:09.757941-04	210	Lesson pl//Verbs- Present Tense | Question Gdzie ty idziesz?//Gdzie idziesz? | Answer | Where are you going?//Where do you go? | Level None	3		14	1
580	2022-03-26 14:57:09.757941-04	209	Lesson pl//Verbs- Present Tense | Question Ja nie mieszkam w Polsce//Nie mieszkam w Polsce | Answer | I do not live in Poland//I dont live in Poland | Level None	3		14	1
581	2022-03-26 14:57:09.757941-04	208	Lesson pl//Verbs- Present Tense | Question Ja m├│wi─Ö po polsku//M├│wi─Ö po polsku | Answer | I speak Polish//I am speaking Polish | Level None	3		14	1
582	2022-03-26 14:57:09.758942-04	207	Lesson pl//Nominative Case | Question To jest m├│j ojciec//To m├│j ojciec | Answer | This is my father//This is my dad//That is my father//That is my dad | Level None	3		14	1
583	2022-03-26 14:57:09.758942-04	206	Lesson pl//Nominative Case | Question Ksi─à┼╝ka jest dobra. | Answer | The book is good//The books good//A book is good | Level None	3		14	1
584	2022-03-26 14:57:09.758942-04	205	Lesson pl//Nominative Case | Question Moje siostry s─à m─àdre | Answer | My sisters are smart//My sisters are intelligent | Level None	3		14	1
585	2022-03-26 14:57:09.759944-04	204	Lesson pl//Nominative Case | Question Jego kuzyn to Polak.//Jego kuzyn jest Polakiem//Jego kuznka to Polka//Jest kuzynka jest Polka. | Answer | His cousin is Polish//His cousin is a Pole | Level None	3		14	1
586	2022-03-26 14:57:09.759944-04	203	Lesson pl//Nominative Case | Question Moja matka to Polka.//Moja matka jest Polk─à | Answer | My mother is Polish//My mother is a Pole//My mothers Polish//My mothers a Pole | Level None	3		14	1
587	2022-03-26 14:57:09.759944-04	202	Lesson pl//Nominative Case | Question Samoch├│d jest stary. | Answer | The car is old//The cars old | Level None	3		14	1
588	2022-03-26 14:57:09.760944-04	201	Lesson pl//Nominative Case | Question Dom jest du┼╝y. | Answer | The house is big//House is big//A house is big | Level None	3		14	1
589	2022-03-26 14:57:09.760944-04	200	Lesson pl//Nominative Case | Question Polska jest pi─Ökna. | Answer | Poland is beautiful//Poland is pretty. | Level None	3		14	1
590	2022-03-26 14:57:09.760944-04	199	Lesson pl//Nominative Case | Question Polski jest trudny.//J─Özyk Polski jest trudny. | Answer | Polish is hard//Polish is tough//The Polish language is hard | Level None	3		14	1
591	2022-03-26 14:57:09.761945-04	198	Lesson pl//Nominative Case | Question To jest m├│j brat.//To m├│j brat. | Answer | This is my brother//That is my brother | Level None	3		14	1
592	2022-03-26 14:57:09.761945-04	197	Lesson pl//Interrogative Pronouns | Question kiedy ty b─Ödziesz w Polsce?//kiedy b─Ödziesz w Polsce? | Answer | when will you be in Poland? | Level None	3		14	1
593	2022-03-26 14:57:09.761945-04	196	Lesson pl//Interrogative Pronouns | Question Czy ty mieszkasz w Polsce? Nie, ja nie mieszkam w Polsce. | Answer | do you live in Poland? No, I do not live in Poland. | Level None	3		14	1
594	2022-03-26 14:57:09.762945-04	195	Lesson pl//Interrogative Pronouns | Question Czy ty m├│wisz po polsku? Tak, ja m├│wi─Ö po polsku. | Answer | do you speak Polish? Yes, I speak Polish | Level None	3		14	1
595	2022-03-26 14:57:09.762945-04	194	Lesson pl//Interrogative Pronouns | Question dlaczego uczysz si─Ö Polskiego??dlaczego uczysz si─Ö Polski?///czemu uczysz si─Ö Polskiego??czemu uczysz si─Ö Polski?//dlaczego ty uczysz si─Ö Polskiego??dlacze	3		14	1
596	2022-03-26 14:57:09.762945-04	193	Lesson pl//Interrogative Pronouns | Question kto to jest?//kto jest? | Answer | who is this?//who is that? | Level None	3		14	1
597	2022-03-26 14:57:09.763946-04	192	Lesson pl//Interrogative Pronouns | Question jak si─Ö masz?//jak tam?//co tam? | Answer | how are you?//how are you doing? | Level None	3		14	1
598	2022-03-26 14:57:09.763946-04	191	Lesson pl//Interrogative Pronouns | Question co to jest?//co jest? | Answer | what is this?//what is that? | Level None	3		14	1
599	2022-03-26 14:57:09.763946-04	190	Lesson pl//Interrogative Pronouns | Question gdzie jeste┼¢?//gdzie ty jeste┼¢? | Answer | where are you? | Level None	3		14	1
600	2022-03-26 14:57:09.764947-04	189	Lesson pl//Interrogative Pronouns | Question ile? | Answer | how much?//how many? | Level None	3		14	1
601	2022-03-26 14:57:09.764947-04	188	Lesson pl//Interrogative Pronouns | Question czemu? | Answer | why? | Level None	3		14	1
602	2022-03-26 14:57:09.764947-04	187	Lesson pl//Interrogative Pronouns | Question gdzie? | Answer | where? | Level None	3		14	1
603	2022-03-26 14:57:09.765948-04	186	Lesson pl//Interrogative Pronouns | Question co? | Answer | what? | Level None	3		14	1
604	2022-03-26 14:57:09.765948-04	185	Lesson pl//Interrogative Pronouns | Question kto? | Answer | who? | Level None	3		14	1
605	2022-03-26 14:57:09.765948-04	184	Lesson pl//Interrogative Pronouns | Question jak? | Answer | how?//like//as | Level None	3		14	1
606	2022-03-26 14:57:09.766949-04	183	Lesson pl//Interrogative Pronouns | Question dlaczego?//czemu? | Answer | why? | Level None	3		14	1
607	2022-03-26 14:57:09.766949-04	182	Lesson pl//Interrogative Pronouns | Question mo┼╝e | Answer | maybe//perhaps | Level None	3		14	1
608	2022-03-26 14:57:09.766949-04	181	Lesson pl//Interrogative Pronouns | Question ┼║le | Answer | bad//poor//not good | Level None	3		14	1
609	2022-03-26 14:57:09.76795-04	180	Lesson pl//Interrogative Pronouns | Question dobrze | Answer | good//fine | Level None	3		14	1
610	2022-03-26 14:57:09.76795-04	179	Lesson pl//Interrogative Pronouns | Question nie | Answer | no//nope | Level None	3		14	1
611	2022-03-26 14:57:09.76795-04	178	Lesson pl//Interrogative Pronouns | Question tak | Answer | yes//yeah | Level None	3		14	1
612	2022-03-26 14:57:09.768951-04	177	Lesson pl//Interrogative Pronouns | Question kiedy? | Answer | when? | Level None	3		14	1
613	2022-03-26 14:57:09.768951-04	176	Lesson pl//Personal Pronouns | Question oni nie s─à Polakami//nie s─à Polakami | Answer | they are not polish//they are not poles | Level None	3		14	1
614	2022-03-26 14:57:09.768951-04	175	Lesson pl//Personal Pronouns | Question one s─à dziewczynami//s─à dziewczynami | Answer | they are women | Level None	3		14	1
721	2022-03-26 15:21:22.035862-04	320	Lesson pl//Interrogative Pronouns | Question kiedy? | Answer | when? | Level 1	3		14	1
615	2022-03-26 14:57:09.769952-04	174	Lesson pl//Personal Pronouns | Question oni s─à ch┼éopcami//s─à ch┼éopcami | Answer | they are boys | Level None	3		14	1
616	2022-03-26 14:57:09.769952-04	173	Lesson pl//Personal Pronouns | Question one s─à kobietami//s─à kobietami | Answer | they are women | Level None	3		14	1
617	2022-03-26 14:57:09.769952-04	172	Lesson pl//Personal Pronouns | Question wy jeste┼¢cie Polakami//wy jeste┼¢cie Polkami//jeste┼¢cie Polakami//jeste┼¢cie Polkami | Answer | you are polish//you are all polish//you all are polish//you are po	3		14	1
618	2022-03-26 14:57:09.770953-04	171	Lesson pl//Personal Pronouns | Question czy wy jeste┼¢cie z Polski?//jeste┼¢cie z Polski? | Answer | are you from poland//are you all from poland//are yall from poland | Level None	3		14	1
619	2022-03-26 14:57:09.770953-04	170	Lesson pl//Personal Pronouns | Question my jeste┼¢my m─Ö┼╝czyznami//jeste┼¢my m─Ö┼╝czyznami | Answer | we are men | Level None	3		14	1
620	2022-03-26 14:57:09.770953-04	169	Lesson pl//Personal Pronouns | Question my nie jeste┼¢my w Polsce//nie jeste┼¢my w Polsce | Answer | we are not in poland//we arent in poland | Level None	3		14	1
621	2022-03-26 14:57:09.771954-04	168	Lesson pl//Personal Pronouns | Question ona jest Polk─à//jest Polk─à | Answer | she is polish//she is a pole//she is a polish//she is a polish person | Level None	3		14	1
622	2022-03-26 14:57:09.771954-04	167	Lesson pl//Personal Pronouns | Question on jest Polakiem//jest Polakiem | Answer | he is polish//he is a pole//he is a polish//he is a polish person | Level None	3		14	1
623	2022-03-26 14:57:09.771954-04	166	Lesson pl//Personal Pronouns | Question ona jest dziewczyn─à//jest dziewczyn─à | Answer | she is a girl | Level None	3		14	1
624	2022-03-26 14:57:09.772954-04	165	Lesson pl//Personal Pronouns | Question on jest ch┼éopcem//jest ch┼éopcem | Answer | he is a boy | Level None	3		14	1
625	2022-03-26 14:57:09.772954-04	164	Lesson pl//Personal Pronouns | Question ty jeste┼¢ kobiet─à//jeste┼¢ kobiet─à | Answer | you are a woman | Level None	3		14	1
626	2022-03-26 14:57:09.772954-04	163	Lesson pl//Personal Pronouns | Question czy ty jeste┼¢ z Polski?//jeste┼¢ z Polski?//czy jeste┼¢ z Polski? | Answer | are you from Poland? | Level None	3		14	1
627	2022-03-26 14:57:09.773955-04	162	Lesson pl//Personal Pronouns | Question ja nie jestem z Polski//nie jestem z Polski | Answer | i am not from Poland//im not from Poland | Level None	3		14	1
628	2022-03-26 14:57:09.773955-04	161	Lesson pl//Personal Pronouns | Question ja jestem Polakiem//jestem Polakiem | Answer | i am polish//i am a pole//i am a polish | Level None	3		14	1
629	2022-03-26 14:57:09.773955-04	160	Lesson pl//Introduction and Greetings | Question jak masz na imi─Ö? | Answer | what is your name?//whats your name//what are you called? | Level None	3		14	1
630	2022-03-26 14:57:09.774956-04	159	Lesson pl//Introduction and Greetings | Question nie ma za co | Answer | youre welcome//not at all | Level None	3		14	1
631	2022-03-26 14:57:09.774956-04	158	Lesson pl//Introduction and Greetings | Question dzi─Öki | Answer | thanks//thank you | Level None	3		14	1
632	2022-03-26 14:57:09.774956-04	157	Lesson pl//Introduction and Greetings | Question jak tam?//jak leci?//co s┼éycha─ç?//co tam? | Answer | how are you//how are you doing//how is it going | Level None	3		14	1
633	2022-03-26 14:57:09.775957-04	156	Lesson pl//Introduction and Greetings | Question dobranoc | Answer | goodnight | Level None	3		14	1
634	2022-03-26 14:57:09.775957-04	155	Lesson pl//Introduction and Greetings | Question przepraszam | Answer | sorry//excuse me | Level None	3		14	1
635	2022-03-26 14:57:09.775957-04	154	Lesson pl//Introduction and Greetings | Question dzi─Ökuj─Ö | Answer | thank you//thanks | Level None	3		14	1
636	2022-03-26 14:57:09.776958-04	153	Lesson pl//Introduction and Greetings | Question prosz─Ö | Answer | please//youre welcome | Level None	3		14	1
637	2022-03-26 14:57:09.776958-04	152	Lesson pl//Introduction and Greetings | Question jak si─Ö masz? | Answer | how are you//how are you doing//how is it going | Level 1	3		14	1
638	2022-03-26 14:57:09.776958-04	151	Lesson pl//Introduction and Greetings | Question do widzenia | Answer | goodbye//bye//see you | Level 1	3		14	1
639	2022-03-26 14:57:09.777959-04	150	Lesson pl//Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening//hello | Level 1	3		14	1
640	2022-03-26 14:57:09.777959-04	149	Lesson pl//Introduction and Greetings | Question dzie┼ä dobry | Answer | hello//goodday | Level 1	3		14	1
641	2022-03-26 14:57:09.777959-04	148	Lesson pl//Introduction and Greetings | Question cze┼¢─ç | Answer | hello//bye//hi | Level 1	3		14	1
642	2022-03-26 14:57:53.78001-04	27	pl//Test | 1	3		18	1
643	2022-03-26 14:57:58.518323-04	53	polish | pl//Test	3		7	1
644	2022-03-26 14:58:02.913324-04	25	temp	3		8	1
645	2022-03-26 14:58:02.916326-04	24	temp	3		8	1
646	2022-03-26 15:00:44.097035-04	55	polish | test2	3		7	1
647	2022-03-26 15:01:13.947711-04	27	temp	3		8	1
648	2022-03-26 15:01:13.950713-04	26	temp	3		8	1
649	2022-03-26 15:01:18.932248-04	56	polish | test2	3		7	1
650	2022-03-26 15:02:10.543225-04	29	temp	3		8	1
651	2022-03-26 15:02:10.546227-04	28	temp	3		8	1
652	2022-03-26 15:02:32.435151-04	57	polish | test2	3		7	1
653	2022-03-26 15:04:48.296319-04	59	polish | test2	3		7	1
654	2022-03-26 15:04:52.321983-04	30	temp	3		8	1
655	2022-03-26 15:07:22.851006-04	33	temp	3		8	1
656	2022-03-26 15:07:22.852007-04	32	temp	3		8	1
657	2022-03-26 15:07:22.852007-04	31	temp	3		8	1
658	2022-03-26 15:07:26.637452-04	60	polish | test2	3		7	1
659	2022-03-26 15:07:48.857677-04	63	polish | test2	3		7	1
660	2022-03-26 15:10:09.812986-04	64	polish | test2	3		7	1
661	2022-03-26 15:10:28.926384-04	65	polish | test2	3		7	1
662	2022-03-26 15:11:08.052997-04	66	polish | test2	3		7	1
663	2022-03-26 15:11:22.187119-04	67	polish | test2	3		7	1
664	2022-03-26 15:11:26.367667-04	38	temp	3		8	1
665	2022-03-26 15:11:26.368668-04	37	temp	3		8	1
666	2022-03-26 15:11:26.369669-04	36	temp	3		8	1
667	2022-03-26 15:11:26.369669-04	35	temp	3		8	1
668	2022-03-26 15:11:26.37067-04	34	temp	3		8	1
669	2022-03-26 15:13:02.714363-04	68	polish | test2	3		7	1
670	2022-03-26 15:13:30.321492-04	40	temp	3		8	1
671	2022-03-26 15:13:30.323493-04	39	temp	3		8	1
672	2022-03-26 15:15:22.693774-04	70	polish | test2	3		7	1
673	2022-03-26 15:16:47.773215-04	71	polish | test2	3		7	1
674	2022-03-26 15:16:55.282049-04	42	temp	3		8	1
675	2022-03-26 15:16:55.28305-04	41	temp	3		8	1
676	2022-03-26 15:19:55.448049-04	31	test2 | 90	3		18	1
677	2022-03-26 15:19:59.280538-04	43	temp	3		8	1
678	2022-03-26 15:20:03.468349-04	72	polish | test2	3		7	1
679	2022-03-26 15:20:46.571583-04	73	polish | test2	3		7	1
722	2022-03-26 15:21:22.035862-04	319	Lesson pl//Personal Pronouns | Question oni nie s─à Polakami//nie s─à Polakami | Answer | they are not polish//they are not poles | Level 1	3		14	1
680	2022-03-26 15:21:22.018847-04	361	Lesson pl//Verbs- Present Tense | Question Czy wy m├│wicie po angielsku?//Czy m├│wicie po angielsku?//M├│wicie po angielsku? | Answer | Do you speak English?//Do you all speak English//Do yall speak Engl	3		14	1
681	2022-03-26 15:21:22.020848-04	360	Lesson pl//Verbs- Present Tense | Question My idziemy do pracy//Idziemy do pracy//My jedziemy do pracy//Jedziemy do pracy | Answer | We are going to work//We go to work | Level 1	3		14	1
682	2022-03-26 15:21:22.020848-04	359	Lesson pl//Verbs- Present Tense | Question My uczymy si─Ö Polskiego//Uczymy si─Ö Polskiego//My uczymy si─Ö Polski//My uczymy si─Ö Polski j─Özyk//Uczymy si─Ö Polski//Uczymy si─Ö Polski j─Özyk | Answer | We are	3		14	1
683	2022-03-26 15:21:22.021849-04	358	Lesson pl//Verbs- Present Tense | Question Ona lubi gra─ç w pi┼ék─Ö no┼╝n─à//Ona lubi gra─ç w pi┼éka no┼╝na//Ona lubi gra─ç pi┼éka no┼╝na | Answer | She likes to play soccer//She likes playing soccer | Level 1	3		14	1
684	2022-03-26 15:21:22.021849-04	357	Lesson pl//Verbs- Present Tense | Question Ona ma rodzin─Ö w Polsce//Ona ma rodzina w Polsce | Answer | She has family in Poland | Level 1	3		14	1
685	2022-03-26 15:21:22.021849-04	356	Lesson pl//Verbs- Present Tense | Question On nie chce tam i┼¢─ç//On nie chce i┼¢─ç tam | Answer | He does not want to go there//He doesnt want to go there | Level 1	3		14	1
686	2022-03-26 15:21:22.022851-04	355	Lesson pl//Verbs- Present Tense | Question On czyta ksi─à┼╝k─Ö//On czyta ksi─à┼╝ka | Answer | He is reading a book//He reads a book | Level 1	3		14	1
687	2022-03-26 15:21:22.022851-04	354	Lesson pl//Verbs- Present Tense | Question Co ty robisz?//Co robisz? | Answer | What are you doing//Whatre you doing?//What do you do? | Level 1	3		14	1
688	2022-03-26 15:21:22.023851-04	353	Lesson pl//Verbs- Present Tense | Question Gdzie ty idziesz?//Gdzie idziesz? | Answer | Where are you going?//Where do you go? | Level 1	3		14	1
689	2022-03-26 15:21:22.023851-04	352	Lesson pl//Verbs- Present Tense | Question Ja nie mieszkam w Polsce//Nie mieszkam w Polsce | Answer | I do not live in Poland//I dont live in Poland | Level 1	3		14	1
690	2022-03-26 15:21:22.023851-04	351	Lesson pl//Verbs- Present Tense | Question Ja m├│wi─Ö po polsku//M├│wi─Ö po polsku | Answer | I speak Polish//I am speaking Polish | Level 1	3		14	1
691	2022-03-26 15:21:22.024852-04	350	Lesson pl//Nominative Case | Question To jest m├│j ojciec//To m├│j ojciec | Answer | This is my father//This is my dad//That is my father//That is my dad | Level 1	3		14	1
692	2022-03-26 15:21:22.024852-04	349	Lesson pl//Nominative Case | Question Ksi─à┼╝ka jest dobra. | Answer | The book is good//The books good//A book is good | Level 1	3		14	1
693	2022-03-26 15:21:22.024852-04	348	Lesson pl//Nominative Case | Question Moje siostry s─à m─àdre | Answer | My sisters are smart//My sisters are intelligent | Level 1	3		14	1
694	2022-03-26 15:21:22.025853-04	347	Lesson pl//Nominative Case | Question Jego kuzyn to Polak.//Jego kuzyn jest Polakiem//Jego kuznka to Polka//Jest kuzynka jest Polka. | Answer | His cousin is Polish//His cousin is a Pole | Level 1	3		14	1
695	2022-03-26 15:21:22.025853-04	346	Lesson pl//Nominative Case | Question Moja matka to Polka.//Moja matka jest Polk─à | Answer | My mother is Polish//My mother is a Pole//My mothers Polish//My mothers a Pole | Level 1	3		14	1
696	2022-03-26 15:21:22.025853-04	345	Lesson pl//Nominative Case | Question Samoch├│d jest stary. | Answer | The car is old//The cars old | Level 1	3		14	1
697	2022-03-26 15:21:22.026854-04	344	Lesson pl//Nominative Case | Question Dom jest du┼╝y. | Answer | The house is big//House is big//A house is big | Level 1	3		14	1
698	2022-03-26 15:21:22.026854-04	343	Lesson pl//Nominative Case | Question Polska jest pi─Ökna. | Answer | Poland is beautiful//Poland is pretty. | Level 1	3		14	1
699	2022-03-26 15:21:22.027855-04	342	Lesson pl//Nominative Case | Question Polski jest trudny.//J─Özyk Polski jest trudny. | Answer | Polish is hard//Polish is tough//The Polish language is hard | Level 1	3		14	1
700	2022-03-26 15:21:22.027855-04	341	Lesson pl//Nominative Case | Question To jest m├│j brat.//To m├│j brat. | Answer | This is my brother//That is my brother | Level 1	3		14	1
701	2022-03-26 15:21:22.027855-04	340	Lesson pl//Interrogative Pronouns | Question kiedy ty b─Ödziesz w Polsce?//kiedy b─Ödziesz w Polsce? | Answer | when will you be in Poland? | Level 2	3		14	1
702	2022-03-26 15:21:22.028856-04	339	Lesson pl//Interrogative Pronouns | Question Czy ty mieszkasz w Polsce? Nie, ja nie mieszkam w Polsce. | Answer | do you live in Poland? No, I do not live in Poland. | Level 2	3		14	1
703	2022-03-26 15:21:22.028856-04	338	Lesson pl//Interrogative Pronouns | Question Czy ty m├│wisz po polsku? Tak, ja m├│wi─Ö po polsku. | Answer | do you speak Polish? Yes, I speak Polish | Level 2	3		14	1
704	2022-03-26 15:21:22.028856-04	337	Lesson pl//Interrogative Pronouns | Question dlaczego uczysz si─Ö Polskiego??dlaczego uczysz si─Ö Polski?///czemu uczysz si─Ö Polskiego??czemu uczysz si─Ö Polski?//dlaczego ty uczysz si─Ö Polskiego??dlacze	3		14	1
705	2022-03-26 15:21:22.029857-04	336	Lesson pl//Interrogative Pronouns | Question kto to jest?//kto jest? | Answer | who is this?//who is that? | Level 2	3		14	1
706	2022-03-26 15:21:22.029857-04	335	Lesson pl//Interrogative Pronouns | Question jak si─Ö masz?//jak tam?//co tam? | Answer | how are you?//how are you doing? | Level 2	3		14	1
707	2022-03-26 15:21:22.030858-04	334	Lesson pl//Interrogative Pronouns | Question co to jest?//co jest? | Answer | what is this?//what is that? | Level 2	3		14	1
708	2022-03-26 15:21:22.030858-04	333	Lesson pl//Interrogative Pronouns | Question gdzie jeste┼¢?//gdzie ty jeste┼¢? | Answer | where are you? | Level 2	3		14	1
709	2022-03-26 15:21:22.030858-04	332	Lesson pl//Interrogative Pronouns | Question ile? | Answer | how much?//how many? | Level 2	3		14	1
710	2022-03-26 15:21:22.031859-04	331	Lesson pl//Interrogative Pronouns | Question czemu? | Answer | why? | Level 2	3		14	1
711	2022-03-26 15:21:22.031859-04	330	Lesson pl//Interrogative Pronouns | Question gdzie? | Answer | where? | Level 1	3		14	1
712	2022-03-26 15:21:22.031859-04	329	Lesson pl//Interrogative Pronouns | Question co? | Answer | what? | Level 1	3		14	1
713	2022-03-26 15:21:22.032859-04	328	Lesson pl//Interrogative Pronouns | Question kto? | Answer | who? | Level 1	3		14	1
714	2022-03-26 15:21:22.032859-04	327	Lesson pl//Interrogative Pronouns | Question jak? | Answer | how?//like//as | Level 1	3		14	1
715	2022-03-26 15:21:22.033861-04	326	Lesson pl//Interrogative Pronouns | Question dlaczego?//czemu? | Answer | why? | Level 1	3		14	1
716	2022-03-26 15:21:22.033861-04	325	Lesson pl//Interrogative Pronouns | Question mo┼╝e | Answer | maybe//perhaps | Level 1	3		14	1
717	2022-03-26 15:21:22.033861-04	324	Lesson pl//Interrogative Pronouns | Question ┼║le | Answer | bad//poor//not good | Level 1	3		14	1
718	2022-03-26 15:21:22.034861-04	323	Lesson pl//Interrogative Pronouns | Question dobrze | Answer | good//fine | Level 1	3		14	1
719	2022-03-26 15:21:22.034861-04	322	Lesson pl//Interrogative Pronouns | Question nie | Answer | no//nope | Level 1	3		14	1
720	2022-03-26 15:21:22.035862-04	321	Lesson pl//Interrogative Pronouns | Question tak | Answer | yes//yeah | Level 1	3		14	1
723	2022-03-26 15:21:22.036863-04	318	Lesson pl//Personal Pronouns | Question one s─à dziewczynami//s─à dziewczynami | Answer | they are women | Level 1	3		14	1
724	2022-03-26 15:21:22.036863-04	317	Lesson pl//Personal Pronouns | Question oni s─à ch┼éopcami//s─à ch┼éopcami | Answer | they are boys | Level 1	3		14	1
725	2022-03-26 15:21:22.037864-04	316	Lesson pl//Personal Pronouns | Question one s─à kobietami//s─à kobietami | Answer | they are women | Level 1	3		14	1
726	2022-03-26 15:21:22.037864-04	315	Lesson pl//Personal Pronouns | Question wy jeste┼¢cie Polakami//wy jeste┼¢cie Polkami//jeste┼¢cie Polakami//jeste┼¢cie Polkami | Answer | you are polish//you are all polish//you all are polish//you are po	3		14	1
727	2022-03-26 15:21:22.038865-04	314	Lesson pl//Personal Pronouns | Question czy wy jeste┼¢cie z Polski?//jeste┼¢cie z Polski? | Answer | are you from poland//are you all from poland//are yall from poland | Level 1	3		14	1
728	2022-03-26 15:21:22.038865-04	313	Lesson pl//Personal Pronouns | Question my jeste┼¢my m─Ö┼╝czyznami//jeste┼¢my m─Ö┼╝czyznami | Answer | we are men | Level 1	3		14	1
729	2022-03-26 15:21:22.038865-04	312	Lesson pl//Personal Pronouns | Question my nie jeste┼¢my w Polsce//nie jeste┼¢my w Polsce | Answer | we are not in poland//we arent in poland | Level 1	3		14	1
730	2022-03-26 15:21:22.039866-04	311	Lesson pl//Personal Pronouns | Question ona jest Polk─à//jest Polk─à | Answer | she is polish//she is a pole//she is a polish//she is a polish person | Level 1	3		14	1
731	2022-03-26 15:21:22.039866-04	310	Lesson pl//Personal Pronouns | Question on jest Polakiem//jest Polakiem | Answer | he is polish//he is a pole//he is a polish//he is a polish person | Level 1	3		14	1
732	2022-03-26 15:21:22.040867-04	309	Lesson pl//Personal Pronouns | Question ona jest dziewczyn─à//jest dziewczyn─à | Answer | she is a girl | Level 1	3		14	1
733	2022-03-26 15:21:22.040867-04	308	Lesson pl//Personal Pronouns | Question on jest ch┼éopcem//jest ch┼éopcem | Answer | he is a boy | Level 1	3		14	1
734	2022-03-26 15:21:22.040867-04	307	Lesson pl//Personal Pronouns | Question ty jeste┼¢ kobiet─à//jeste┼¢ kobiet─à | Answer | you are a woman | Level 1	3		14	1
735	2022-03-26 15:21:22.041868-04	306	Lesson pl//Personal Pronouns | Question czy ty jeste┼¢ z Polski?//jeste┼¢ z Polski?//czy jeste┼¢ z Polski? | Answer | are you from Poland? | Level 1	3		14	1
736	2022-03-26 15:21:22.041868-04	305	Lesson pl//Personal Pronouns | Question ja nie jestem z Polski//nie jestem z Polski | Answer | i am not from Poland//im not from Poland | Level 1	3		14	1
737	2022-03-26 15:21:22.041868-04	304	Lesson pl//Personal Pronouns | Question ja jestem Polakiem//jestem Polakiem | Answer | i am polish//i am a pole//i am a polish | Level 1	3		14	1
738	2022-03-26 15:21:22.042869-04	303	Lesson pl//Introduction and Greetings | Question jak masz na imi─Ö? | Answer | what is your name?//whats your name//what are you called? | Level 3	3		14	1
739	2022-03-26 15:21:22.042869-04	302	Lesson pl//Introduction and Greetings | Question nie ma za co | Answer | youre welcome//not at all | Level 3	3		14	1
740	2022-03-26 15:21:22.04387-04	301	Lesson pl//Introduction and Greetings | Question dzi─Öki//dzi─Ökuj─Ö | Answer | thanks//thank you | Level 3	3		14	1
741	2022-03-26 15:21:22.04387-04	300	Lesson pl//Introduction and Greetings | Question jak tam?//jak leci?//co s┼éycha─ç?//co tam? | Answer | how are you//how are you doing//how is it going | Level 2	3		14	1
742	2022-03-26 15:21:22.04503-04	299	Lesson pl//Introduction and Greetings | Question dobranoc | Answer | goodnight | Level 2	3		14	1
743	2022-03-26 15:21:22.04503-04	298	Lesson pl//Introduction and Greetings | Question przepraszam | Answer | sorry//excuse me | Level 2	3		14	1
744	2022-03-26 15:21:22.045872-04	297	Lesson pl//Introduction and Greetings | Question dzi─Ökuj─Ö//dzi─Öki | Answer | thank you//thanks | Level 2	3		14	1
745	2022-03-26 15:21:22.045872-04	296	Lesson pl//Introduction and Greetings | Question prosz─Ö | Answer | please//youre welcome | Level 2	3		14	1
746	2022-03-26 15:21:22.046872-04	295	Lesson pl//Introduction and Greetings | Question jak si─Ö masz? | Answer | how are you//how are you doing//how is it going | Level 1	3		14	1
747	2022-03-26 15:21:22.046872-04	294	Lesson pl//Introduction and Greetings | Question do widzenia | Answer | goodbye//bye//see you | Level 1	3		14	1
748	2022-03-26 15:21:22.046872-04	293	Lesson pl//Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening//hello | Level 1	3		14	1
749	2022-03-26 15:21:22.047873-04	292	Lesson pl//Introduction and Greetings | Question dzie┼ä dobry | Answer | hello//goodday | Level 1	3		14	1
750	2022-03-26 15:21:22.047873-04	291	Lesson pl//Introduction and Greetings | Question cze┼¢─ç | Answer | hello//bye//hi | Level 1	3		14	1
751	2022-03-26 15:21:22.047873-04	289	Lesson pl//Verbs- Present Tense | Question Czy wy m├│wicie po angielsku?//Czy m├│wicie po angielsku?//M├│wicie po angielsku? | Answer | Do you speak English?//Do you all speak English//Do yall speak Engl	3		14	1
752	2022-03-26 15:21:22.048874-04	288	Lesson pl//Verbs- Present Tense | Question My idziemy do pracy//Idziemy do pracy//My jedziemy do pracy//Jedziemy do pracy | Answer | We are going to work//We go to work | Level 1	3		14	1
753	2022-03-26 15:21:22.048874-04	287	Lesson pl//Verbs- Present Tense | Question My uczymy si─Ö Polskiego//Uczymy si─Ö Polskiego//My uczymy si─Ö Polski//My uczymy si─Ö Polski j─Özyk//Uczymy si─Ö Polski//Uczymy si─Ö Polski j─Özyk | Answer | We are	3		14	1
754	2022-03-26 15:21:22.048874-04	286	Lesson pl//Verbs- Present Tense | Question Ona lubi gra─ç w pi┼ék─Ö no┼╝n─à//Ona lubi gra─ç w pi┼éka no┼╝na//Ona lubi gra─ç pi┼éka no┼╝na | Answer | She likes to play soccer//She likes playing soccer | Level 1	3		14	1
755	2022-03-26 15:21:22.049875-04	285	Lesson pl//Verbs- Present Tense | Question Ona ma rodzin─Ö w Polsce//Ona ma rodzina w Polsce | Answer | She has family in Poland | Level 1	3		14	1
756	2022-03-26 15:21:22.049875-04	284	Lesson pl//Verbs- Present Tense | Question On nie chce tam i┼¢─ç//On nie chce i┼¢─ç tam | Answer | He does not want to go there//He doesnt want to go there | Level 1	3		14	1
757	2022-03-26 15:21:22.050876-04	283	Lesson pl//Verbs- Present Tense | Question On czyta ksi─à┼╝k─Ö//On czyta ksi─à┼╝ka | Answer | He is reading a book//He reads a book | Level 1	3		14	1
758	2022-03-26 15:21:22.050876-04	282	Lesson pl//Verbs- Present Tense | Question Co ty robisz?//Co robisz? | Answer | What are you doing//Whatre you doing?//What do you do? | Level 1	3		14	1
759	2022-03-26 15:21:22.051877-04	281	Lesson pl//Verbs- Present Tense | Question Gdzie ty idziesz?//Gdzie idziesz? | Answer | Where are you going?//Where do you go? | Level 1	3		14	1
760	2022-03-26 15:21:22.051877-04	280	Lesson pl//Verbs- Present Tense | Question Ja nie mieszkam w Polsce//Nie mieszkam w Polsce | Answer | I do not live in Poland//I dont live in Poland | Level 1	3		14	1
761	2022-03-26 15:21:22.051877-04	279	Lesson pl//Verbs- Present Tense | Question Ja m├│wi─Ö po polsku//M├│wi─Ö po polsku | Answer | I speak Polish//I am speaking Polish | Level 1	3		14	1
762	2022-03-26 15:21:22.052878-04	278	Lesson pl//Nominative Case | Question To jest m├│j ojciec//To m├│j ojciec | Answer | This is my father//This is my dad//That is my father//That is my dad | Level 1	3		14	1
763	2022-03-26 15:21:22.052878-04	277	Lesson pl//Nominative Case | Question Ksi─à┼╝ka jest dobra. | Answer | The book is good//The books good//A book is good | Level 1	3		14	1
764	2022-03-26 15:21:22.053879-04	276	Lesson pl//Nominative Case | Question Moje siostry s─à m─àdre | Answer | My sisters are smart//My sisters are intelligent | Level 1	3		14	1
765	2022-03-26 15:21:22.053879-04	275	Lesson pl//Nominative Case | Question Jego kuzyn to Polak.//Jego kuzyn jest Polakiem//Jego kuznka to Polka//Jest kuzynka jest Polka. | Answer | His cousin is Polish//His cousin is a Pole | Level 1	3		14	1
766	2022-03-26 15:21:22.053879-04	274	Lesson pl//Nominative Case | Question Moja matka to Polka.//Moja matka jest Polk─à | Answer | My mother is Polish//My mother is a Pole//My mothers Polish//My mothers a Pole | Level 1	3		14	1
767	2022-03-26 15:21:22.05488-04	273	Lesson pl//Nominative Case | Question Samoch├│d jest stary. | Answer | The car is old//The cars old | Level 1	3		14	1
768	2022-03-26 15:21:22.05488-04	272	Lesson pl//Nominative Case | Question Dom jest du┼╝y. | Answer | The house is big//House is big//A house is big | Level 1	3		14	1
769	2022-03-26 15:21:22.05488-04	271	Lesson pl//Nominative Case | Question Polska jest pi─Ökna. | Answer | Poland is beautiful//Poland is pretty. | Level 1	3		14	1
770	2022-03-26 15:21:22.055881-04	270	Lesson pl//Nominative Case | Question Polski jest trudny.//J─Özyk Polski jest trudny. | Answer | Polish is hard//Polish is tough//The Polish language is hard | Level 1	3		14	1
771	2022-03-26 15:21:22.055881-04	269	Lesson pl//Nominative Case | Question To jest m├│j brat.//To m├│j brat. | Answer | This is my brother//That is my brother | Level 1	3		14	1
772	2022-03-26 15:21:22.056881-04	268	Lesson pl//Interrogative Pronouns | Question kiedy ty b─Ödziesz w Polsce?//kiedy b─Ödziesz w Polsce? | Answer | when will you be in Poland? | Level 2	3		14	1
773	2022-03-26 15:21:22.056881-04	267	Lesson pl//Interrogative Pronouns | Question Czy ty mieszkasz w Polsce? Nie, ja nie mieszkam w Polsce. | Answer | do you live in Poland? No, I do not live in Poland. | Level 2	3		14	1
774	2022-03-26 15:21:22.057882-04	266	Lesson pl//Interrogative Pronouns | Question Czy ty m├│wisz po polsku? Tak, ja m├│wi─Ö po polsku. | Answer | do you speak Polish? Yes, I speak Polish | Level 2	3		14	1
775	2022-03-26 15:21:22.058883-04	265	Lesson pl//Interrogative Pronouns | Question dlaczego uczysz si─Ö Polskiego??dlaczego uczysz si─Ö Polski?///czemu uczysz si─Ö Polskiego??czemu uczysz si─Ö Polski?//dlaczego ty uczysz si─Ö Polskiego??dlacze	3		14	1
776	2022-03-26 15:21:22.058883-04	264	Lesson pl//Interrogative Pronouns | Question kto to jest?//kto jest? | Answer | who is this?//who is that? | Level 2	3		14	1
777	2022-03-26 15:21:22.058883-04	263	Lesson pl//Interrogative Pronouns | Question jak si─Ö masz?//jak tam?//co tam? | Answer | how are you?//how are you doing? | Level 2	3		14	1
778	2022-03-26 15:21:22.059884-04	262	Lesson pl//Interrogative Pronouns | Question co to jest?//co jest? | Answer | what is this?//what is that? | Level 2	3		14	1
779	2022-03-26 15:21:22.059884-04	261	Lesson pl//Interrogative Pronouns | Question gdzie jeste┼¢?//gdzie ty jeste┼¢? | Answer | where are you? | Level 2	3		14	1
780	2022-03-26 15:21:22.059884-04	260	Lesson pl//Interrogative Pronouns | Question ile? | Answer | how much?//how many? | Level 2	3		14	1
781	2022-03-26 15:21:22.060885-04	259	Lesson pl//Interrogative Pronouns | Question czemu? | Answer | why? | Level 2	3		14	1
782	2022-03-26 15:21:22.060885-04	258	Lesson pl//Interrogative Pronouns | Question gdzie? | Answer | where? | Level 1	3		14	1
783	2022-03-26 15:21:22.060885-04	257	Lesson pl//Interrogative Pronouns | Question co? | Answer | what? | Level 1	3		14	1
784	2022-03-26 15:21:22.061886-04	256	Lesson pl//Interrogative Pronouns | Question kto? | Answer | who? | Level 1	3		14	1
785	2022-03-26 15:21:22.061886-04	255	Lesson pl//Interrogative Pronouns | Question jak? | Answer | how?//like//as | Level 1	3		14	1
786	2022-03-26 15:21:22.061886-04	254	Lesson pl//Interrogative Pronouns | Question dlaczego?//czemu? | Answer | why? | Level 1	3		14	1
787	2022-03-26 15:21:22.062887-04	253	Lesson pl//Interrogative Pronouns | Question mo┼╝e | Answer | maybe//perhaps | Level 1	3		14	1
788	2022-03-26 15:21:22.062887-04	252	Lesson pl//Interrogative Pronouns | Question ┼║le | Answer | bad//poor//not good | Level 1	3		14	1
789	2022-03-26 15:21:22.063888-04	251	Lesson pl//Interrogative Pronouns | Question dobrze | Answer | good//fine | Level 1	3		14	1
790	2022-03-26 15:21:22.063888-04	250	Lesson pl//Interrogative Pronouns | Question nie | Answer | no//nope | Level 1	3		14	1
791	2022-03-26 15:21:22.063888-04	249	Lesson pl//Interrogative Pronouns | Question tak | Answer | yes//yeah | Level 1	3		14	1
792	2022-03-26 15:21:22.064889-04	248	Lesson pl//Interrogative Pronouns | Question kiedy? | Answer | when? | Level 1	3		14	1
793	2022-03-26 15:21:22.064889-04	247	Lesson pl//Personal Pronouns | Question oni nie s─à Polakami//nie s─à Polakami | Answer | they are not polish//they are not poles | Level 1	3		14	1
794	2022-03-26 15:21:22.064889-04	246	Lesson pl//Personal Pronouns | Question one s─à dziewczynami//s─à dziewczynami | Answer | they are women | Level 1	3		14	1
795	2022-03-26 15:21:22.06589-04	245	Lesson pl//Personal Pronouns | Question oni s─à ch┼éopcami//s─à ch┼éopcami | Answer | they are boys | Level 1	3		14	1
796	2022-03-26 15:21:22.06589-04	244	Lesson pl//Personal Pronouns | Question one s─à kobietami//s─à kobietami | Answer | they are women | Level 1	3		14	1
797	2022-03-26 15:21:22.06589-04	243	Lesson pl//Personal Pronouns | Question wy jeste┼¢cie Polakami//wy jeste┼¢cie Polkami//jeste┼¢cie Polakami//jeste┼¢cie Polkami | Answer | you are polish//you are all polish//you all are polish//you are po	3		14	1
798	2022-03-26 15:21:22.06689-04	242	Lesson pl//Personal Pronouns | Question czy wy jeste┼¢cie z Polski?//jeste┼¢cie z Polski? | Answer | are you from poland//are you all from poland//are yall from poland | Level 1	3		14	1
799	2022-03-26 15:21:22.06689-04	241	Lesson pl//Personal Pronouns | Question my jeste┼¢my m─Ö┼╝czyznami//jeste┼¢my m─Ö┼╝czyznami | Answer | we are men | Level 1	3		14	1
800	2022-03-26 15:21:22.067891-04	240	Lesson pl//Personal Pronouns | Question my nie jeste┼¢my w Polsce//nie jeste┼¢my w Polsce | Answer | we are not in poland//we arent in poland | Level 1	3		14	1
801	2022-03-26 15:21:22.067891-04	239	Lesson pl//Personal Pronouns | Question ona jest Polk─à//jest Polk─à | Answer | she is polish//she is a pole//she is a polish//she is a polish person | Level 1	3		14	1
802	2022-03-26 15:21:22.068892-04	238	Lesson pl//Personal Pronouns | Question on jest Polakiem//jest Polakiem | Answer | he is polish//he is a pole//he is a polish//he is a polish person | Level 1	3		14	1
803	2022-03-26 15:21:22.068892-04	237	Lesson pl//Personal Pronouns | Question ona jest dziewczyn─à//jest dziewczyn─à | Answer | she is a girl | Level 1	3		14	1
804	2022-03-26 15:21:22.068892-04	236	Lesson pl//Personal Pronouns | Question on jest ch┼éopcem//jest ch┼éopcem | Answer | he is a boy | Level 1	3		14	1
805	2022-03-26 15:21:22.069893-04	235	Lesson pl//Personal Pronouns | Question ty jeste┼¢ kobiet─à//jeste┼¢ kobiet─à | Answer | you are a woman | Level 1	3		14	1
806	2022-03-26 15:21:22.069893-04	234	Lesson pl//Personal Pronouns | Question czy ty jeste┼¢ z Polski?//jeste┼¢ z Polski?//czy jeste┼¢ z Polski? | Answer | are you from Poland? | Level 1	3		14	1
807	2022-03-26 15:21:22.069893-04	233	Lesson pl//Personal Pronouns | Question ja nie jestem z Polski//nie jestem z Polski | Answer | i am not from Poland//im not from Poland | Level 1	3		14	1
808	2022-03-26 15:21:22.070894-04	232	Lesson pl//Personal Pronouns | Question ja jestem Polakiem//jestem Polakiem | Answer | i am polish//i am a pole//i am a polish | Level 1	3		14	1
809	2022-03-26 15:21:22.070894-04	231	Lesson pl//Introduction and Greetings | Question jak masz na imi─Ö? | Answer | what is your name?//whats your name//what are you called? | Level 3	3		14	1
810	2022-03-26 15:21:22.071895-04	230	Lesson pl//Introduction and Greetings | Question nie ma za co | Answer | youre welcome//not at all | Level 3	3		14	1
811	2022-03-26 15:21:22.071895-04	229	Lesson pl//Introduction and Greetings | Question dzi─Öki//dzi─Ökuj─Ö | Answer | thanks//thank you | Level 3	3		14	1
812	2022-03-26 15:21:22.071895-04	228	Lesson pl//Introduction and Greetings | Question jak tam?//jak leci?//co s┼éycha─ç?//co tam? | Answer | how are you//how are you doing//how is it going | Level 2	3		14	1
813	2022-03-26 15:21:22.072896-04	227	Lesson pl//Introduction and Greetings | Question dobranoc | Answer | goodnight | Level 2	3		14	1
814	2022-03-26 15:21:22.072896-04	226	Lesson pl//Introduction and Greetings | Question przepraszam | Answer | sorry//excuse me | Level 2	3		14	1
815	2022-03-26 15:21:22.072896-04	225	Lesson pl//Introduction and Greetings | Question dzi─Ökuj─Ö//dzi─Öki | Answer | thank you//thanks | Level 2	3		14	1
816	2022-03-26 15:21:22.073897-04	224	Lesson pl//Introduction and Greetings | Question prosz─Ö | Answer | please//youre welcome | Level 2	3		14	1
817	2022-03-26 15:21:22.073897-04	223	Lesson pl//Introduction and Greetings | Question jak si─Ö masz? | Answer | how are you//how are you doing//how is it going | Level 1	3		14	1
818	2022-03-26 15:21:22.073897-04	222	Lesson pl//Introduction and Greetings | Question do widzenia | Answer | goodbye//bye//see you | Level 1	3		14	1
819	2022-03-26 15:21:22.074898-04	221	Lesson pl//Introduction and Greetings | Question dobry wiecz├│r | Answer | good evening//hello | Level 1	3		14	1
820	2022-03-26 15:21:22.074898-04	220	Lesson pl//Introduction and Greetings | Question dzie┼ä dobry | Answer | hello//goodday | Level 1	3		14	1
821	2022-03-26 15:21:22.074898-04	219	Lesson pl//Introduction and Greetings | Question cze┼¢─ç | Answer | hello//bye//hi | Level 1	3		14	1
822	2022-03-26 15:21:26.203656-04	74	polish | test2	3		7	1
823	2022-03-26 15:21:34.10785-04	45	temp	3		8	1
824	2022-03-26 15:21:34.110853-04	44	temp	3		8	1
825	2022-03-26 15:21:52.972021-04	46	temp	3		8	1
826	2022-03-26 15:22:01.913159-04	75	polish | test2	3		7	1
827	2022-03-26 15:31:20.276114-04	32	Introduction and Greetings | 1	1	[{"added": {}}]	18	1
828	2022-03-26 15:31:37.89415-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
829	2022-03-26 15:32:00.537761-04	38	spanish | es//Introduction and Greetings	2	[{"changed": {"fields": ["LessonTitle"]}}]	7	1
830	2022-03-26 15:32:09.197643-04	1	jmkryzanski	2	[]	12	1
831	2022-03-26 15:45:11.571736-04	1	spanish	2	[{"changed": {"fields": ["Image"]}}]	8	1
832	2022-03-26 15:47:10.613602-04	2	polish	2	[{"changed": {"fields": ["Image"]}}]	8	1
833	2022-03-26 15:50:16.821129-04	3	russian	2	[{"changed": {"fields": ["Image"]}}]	8	1
834	2022-03-26 15:50:29.367549-04	1	spanish	2	[{"changed": {"fields": ["Image"]}}]	8	1
835	2022-03-26 15:50:38.210598-04	4	italian	2	[{"changed": {"fields": ["Image"]}}]	8	1
836	2022-03-26 15:56:27.312402-04	1	jmkryzanski	2	[{"changed": {"fields": ["Course"]}}]	12	1
837	2022-03-26 16:13:48.930496-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
838	2022-03-26 16:18:19.857096-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
839	2022-03-26 16:20:13.140208-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
840	2022-03-28 23:07:35.797339-04	42	sayin	3		4	1
841	2022-03-28 23:07:35.800341-04	43	testemail	3		4	1
842	2022-03-28 23:07:35.800341-04	41	testuser1	3		4	1
843	2022-03-28 23:07:49.778052-04	44	walker	3		4	1
844	2022-03-28 23:09:50.437276-04	45	alanwalker	3		4	1
845	2022-03-28 23:09:50.438276-04	23	user1	3		4	1
846	2022-03-28 23:09:50.439277-04	46	user2	3		4	1
847	2022-03-28 23:10:41.744931-04	48	user2	3		4	1
848	2022-03-28 23:11:10.07269-04	47	user1	3		4	1
849	2022-03-28 23:18:30.942641-04	53	alan	3		4	1
850	2022-03-28 23:18:30.944643-04	49	user1	3		4	1
851	2022-03-28 23:18:30.944643-04	50	user2	3		4	1
852	2022-03-28 23:18:30.944643-04	51	user3	3		4	1
853	2022-03-28 23:18:30.945644-04	52	user4	3		4	1
854	2022-03-28 23:20:40.919337-04	57	alan	3		4	1
855	2022-03-28 23:20:40.92234-04	56	bet	3		4	1
856	2022-03-28 23:20:40.92234-04	54	user1	3		4	1
857	2022-03-28 23:20:40.92234-04	55	user2	3		4	1
858	2022-03-28 23:22:07.487575-04	37	2	3		12	1
859	2022-03-28 23:22:12.652272-04	58	2	3		4	1
860	2022-03-28 23:22:12.655274-04	59	3	3		4	1
861	2022-03-28 23:23:03.737726-04	62	3	3		4	1
862	2022-03-29 00:09:04.090557-04	374	Lesson pl//Introduction and Greetings | Question nie ma za co | Answer | youre welcome//not at all | Level 3	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
863	2022-03-29 00:09:08.212305-04	374	Lesson pl//Introduction and Greetings | Question nie ma za co | Answer | youre welcome//not at all | Level 3	2	[]	14	1
864	2022-03-29 00:09:13.084736-04	375	Lesson pl//Introduction and Greetings | Question jak masz na imi─Ö? | Answer | what is your name?//whats your name//what are you called? | Level 3	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
865	2022-03-29 00:14:27.487137-04	374	Lesson pl//Introduction and Greetings | Question nie ma za co | Answer | youre welcome//not at all | Level 3	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
866	2022-03-29 00:14:31.014849-04	375	Lesson pl//Introduction and Greetings | Question jak masz na imi─Ö? | Answer | what is your name?//whats your name//what are you called? | Level 3	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
867	2022-03-29 00:15:23.852401-04	373	Lesson pl//Introduction and Greetings | Question dzi─Öki//dzi─Ökuj─Ö | Answer | thanks//thank you | Level 3	3		14	1
868	2022-03-29 00:17:37.151626-04	374	Lesson pl//Introduction and Greetings | Question nie ma za co | Answer | youre welcome//not at all | Level 3	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
869	2022-03-29 00:17:49.316688-04	375	Lesson pl//Introduction and Greetings | Question jak masz na imi─Ö? | Answer | what is your name?//whats your name//what are you called? | Level 3	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
870	2022-03-29 00:30:02.841219-04	374	Lesson pl//Introduction and Greetings | Question nie ma za co | Answer | youre welcome//not at all | Level 3	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
871	2022-03-29 00:30:07.361329-04	375	Lesson pl//Introduction and Greetings | Question jak masz na imi─Ö? | Answer | what is your name?//whats your name//what are you called? | Level 3	2	[{"changed": {"fields": ["QuestionKeyword"]}}]	14	1
872	2022-03-29 00:31:42.084969-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
873	2022-03-29 00:31:56.777834-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
874	2022-03-30 20:28:08.227855-04	1	jmkryzanski	2	[{"changed": {"fields": ["Levels"]}}]	12	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                3538.dat                                                                                            0000600 0004000 0002000 00000000513 14231652720 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	learning	lesson
8	learning	course
9	learning	post
10	learning	profile
11	blog	post
12	userprofile	profile
13	learning	guide
14	learning	questionanswer
15	gTTS	speech
16	excel	choice
17	excel	question
18	learning	level
\.


                                                                                                                                                                                     3536.dat                                                                                            0000600 0004000 0002000 00000011702 14231652720 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	contenttypes	0001_initial	2022-01-17 20:46:43.377541-05
2	auth	0001_initial	2022-01-17 20:46:43.446603-05
3	admin	0001_initial	2022-01-17 20:46:43.464619-05
4	admin	0002_logentry_remove_auto_add	2022-01-17 20:46:43.469624-05
5	admin	0003_logentry_add_action_flag_choices	2022-01-17 20:46:43.474629-05
6	contenttypes	0002_remove_content_type_name	2022-01-17 20:46:43.487641-05
7	auth	0002_alter_permission_name_max_length	2022-01-17 20:46:43.492645-05
8	auth	0003_alter_user_email_max_length	2022-01-17 20:46:43.496649-05
9	auth	0004_alter_user_username_opts	2022-01-17 20:46:43.501653-05
10	auth	0005_alter_user_last_login_null	2022-01-17 20:46:43.506658-05
11	auth	0006_require_contenttypes_0002	2022-01-17 20:46:43.507659-05
12	auth	0007_alter_validators_add_error_messages	2022-01-17 20:46:43.511662-05
13	auth	0008_alter_user_username_max_length	2022-01-17 20:46:43.521672-05
14	auth	0009_alter_user_last_name_max_length	2022-01-17 20:46:43.527677-05
15	auth	0010_alter_group_name_max_length	2022-01-17 20:46:43.533683-05
16	auth	0011_update_proxy_permissions	2022-01-17 20:46:43.538687-05
17	auth	0012_alter_user_first_name_max_length	2022-01-17 20:46:43.544693-05
18	sessions	0001_initial	2022-01-17 20:46:43.555702-05
19	learning	0001_initial	2022-01-17 20:48:22.296941-05
20	learning	0002_alter_course_title	2022-01-17 21:33:41.513278-05
21	learning	0003_alter_course_title	2022-01-17 21:35:52.839624-05
22	learning	0002_alter_lesson_course	2022-01-17 21:41:01.426113-05
23	learning	0003_alter_lesson_course	2022-01-17 21:42:36.075137-05
24	learning	0004_blogpost	2022-01-17 22:19:44.849076-05
25	learning	0005_remove_blogpost_created_at	2022-01-17 23:29:53.418587-05
26	learning	0006_rename_blogpost_post	2022-01-18 00:17:50.297308-05
27	learning	0007_lesson_content	2022-01-18 02:25:23.699805-05
28	learning	0008_profile	2022-01-18 02:51:21.90266-05
29	learning	0009_post_post_date	2022-01-18 18:47:06.64537-05
30	learning	0010_lesson_orderingid	2022-01-18 19:59:32.739-05
31	learning	0011_post_caption	2022-01-19 00:09:04.273313-05
32	learning	0012_course_icon	2022-01-19 00:58:01.370652-05
33	learning	0013_remove_course_icon	2022-01-19 01:02:16.102256-05
34	learning	0014_alter_lesson_orderingid	2022-01-19 23:39:46.839858-05
35	blog	0001_initial	2022-01-20 02:02:33.09219-05
36	learning	0015_delete_post	2022-01-20 02:02:33.097194-05
37	learning	0016_delete_profile	2022-01-20 02:13:36.599996-05
38	userprofile	0001_initial	2022-01-20 02:13:36.624018-05
39	learning	0017_guide	2022-01-20 17:37:46.595439-05
40	blog	0002_post_slug	2022-01-20 18:33:37.40833-05
41	learning	0018_guide_slug	2022-01-20 18:52:43.080467-05
42	learning	0019_lesson_slug	2022-01-20 19:04:18.992405-05
43	userprofile	0002_profile_slug	2022-01-20 19:18:14.582731-05
44	userprofile	0003_remove_profile_slug	2022-01-20 19:22:36.539034-05
45	userprofile	0004_profile_slug	2022-01-20 19:37:36.280369-05
46	userprofile	0005_alter_profile_slug	2022-01-20 19:44:33.296736-05
47	userprofile	0006_alter_profile_slug	2022-01-20 19:48:46.812136-05
48	userprofile	0007_alter_profile_slug	2022-01-20 19:49:11.368468-05
49	learning	0020_guide_category	2022-01-22 14:57:21.575558-05
50	learning	0021_alter_guide_content_alter_lesson_content	2022-01-22 18:42:39.628417-05
51	learning	0022_qanda	2022-01-25 19:10:12.327265-05
52	learning	0023_rename_qanda_questionanswer	2022-01-25 19:11:56.183161-05
53	learning	0002_remove_guide_language_remove_lesson_language	2022-01-26 00:16:14.47045-05
54	gTTS	0001_initial	2022-02-01 19:42:45.528031-05
55	gTTS	0002_alter_speech_id	2022-02-01 19:42:45.546047-05
56	learning	0003_questionanswer_level	2022-02-01 21:35:09.572502-05
57	userprofile	0008_profile_course	2022-02-02 23:15:02.365554-05
58	userprofile	0009_alter_profile_course	2022-02-15 01:49:11.500525-05
59	learning	0004_questionanswer_questionkeyword	2022-02-15 01:56:53.848424-05
60	learning	0005_lesson_richcontent	2022-02-22 19:01:47.503076-05
61	learning	0006_alter_lesson_content	2022-02-22 19:16:21.360951-05
62	learning	0007_alter_lesson_content	2022-02-22 19:16:42.825463-05
63	learning	0008_alter_questionanswer_questionkeyword	2022-02-22 19:47:12.465143-05
64	excel	0001_initial	2022-03-06 14:54:42.264954-05
65	learning	0009_alter_questionanswer_lesson	2022-03-06 15:27:09.476106-05
66	excel	0002_choice_test	2022-03-06 15:54:26.604099-05
67	excel	0003_delete_choice_delete_question	2022-03-06 16:14:45.539776-05
68	learning	0010_lesson_numlevels	2022-03-24 14:26:29.444184-04
69	learning	0011_level	2022-03-24 16:08:39.998026-04
70	userprofile	0010_profile_levels	2022-03-24 16:31:39.644797-04
71	learning	0012_questionanswer_levelmodel	2022-03-26 14:29:40.291558-04
72	learning	0013_alter_questionanswer_level	2022-03-26 14:54:21.949192-04
73	learning	0014_alter_level_lesson	2022-03-26 15:12:47.020078-04
74	learning	0012_course_image	2022-03-26 15:42:10.390989-04
75	userprofile	0011_profile_email	2022-03-28 22:50:45.344466-04
76	userprofile	0012_alter_profile_email	2022-03-28 23:10:46.933649-04
77	learning	0013_guide_richcontent	2022-04-16 16:04:24.514497-04
\.


                                                              3553.dat                                                                                            0000600 0004000 0002000 00000030077 14231652720 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        7cmdu2cj1v85mj3bfz0sp2geekez00ct	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1n9dcQ:RTG5oU-k5S354Xg4PpUHM4Lj3yMC75V7R2tqjwEXp60	2022-01-31 20:49:06.572682-05
63l5hmap51mjl8aim646njuuueaiiyp4	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1n9ffy:HtyOW0w7ld3i7T0k5Em3AEHyIINjY5bTXfb_3AFV8Xo	2022-01-31 23:00:54.352017-05
qhp1jahcsl4s8lpvs4ramlcxa9chg6vc	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1n9hUS:kdEos0StQydyx4CVP5PQ_azO3D1uA4imdjNi_Q40ER4	2022-02-01 00:57:08.481048-05
h4plsh71twlx9x1a3z6xkqazy45xzu6k	e30:1nCaUw:VMl6eRfQKMDNsn8WxDwB52J5P3cy7BS_3i7gsqigbpM	2022-02-09 00:05:34.228678-05
s7dnlaryqhhka1mmhdtfcrnftualsosf	e30:1nCaVj:R75_rxiPkrb9v5azaDVVyDvVX_2jNbeUeR5HRBYU2p4	2022-02-09 00:06:23.690664-05
5rx1gr2l0i9x7ja5p6lb16c4mzhiumtc	e30:1nCaWc:xTnNDNZLPM0e0ZsTNE1zbjgFee3y-fxm_OVLRYurQoU	2022-02-09 00:07:18.614616-05
16a60o8hbvax36p64p2pr27nymnm53be	.eJxVjEEOwiAQRe_C2hAYmBZcuvcMZIBRqgaS0q6Md7dNutDtf-_9twi0LiWsnecwZXEWehCn3zFSenLdSX5QvTeZWl3mKcpdkQft8toyvy6H-3dQqJetNuwQGYxXCNGCZ5PQJsOKtIMNjUAaI9IIkAd7Mx5U9J61cSkqUEl8vtmtNtk:1nBYTz:xIjTZiCstvrmOGNYShahzctcKOKm4OPQg36f2UCbnXU	2022-02-06 03:44:19.170004-05
zyiqiyfn0ktw8pfl5vtptmmry0n7fvjj	e30:1nC8j5:4r3iIC0At4l8BixJeyqC-ZSkFZczwYhDBG9sbmnCioU	2022-02-07 18:26:19.999656-05
s00of7ylfpm6t2ivv8a658b5c19e5vga	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nCaag:HXkj2TGDXd5wSQsrX2KgqM_Amx09XbZao3C89BI0zAg	2022-02-09 00:11:30.834412-05
7fm54g76yyyrb1xtbc2vawoaxqiiqkp8	.eJxVjDsOwjAQBe_iGlkm_sWU9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIiBnH63RDSg-sO6A711mRqdV1mlLsiD9rl1Iif18P9OyjQy7d2iMEY8ioFT8lpzt5pYpM8aDAWYQwpsw0-jABnQwo1ZmTGwSujrBLvDwEBOJc:1n9v3M:Ne1aLwgU_uSMjgPf-kpwEG5kOD4fFxaPYLj12nCkZEo	2022-02-01 15:26:04.965593-05
3xxdt0t6opbo5h0qf0f608aut8wz3vqz	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nDdla:-Q7ssRoMDxDp8ShmJNdqG6V6pdB6Hb2zHa32J2mQQuE	2022-02-11 21:47:06.70779-05
1kmlpbfvqj1wsifb1i7oy73t22d2ngx6	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nF5Ub:gZFA9OdUW1xGz6PhehX4SmaatCrqchpwgk4w3yofhoc	2022-02-15 21:35:33.240983-05
5212k2bz16hou47fx0jyn5r6h1dhpmla	.eJxVjEEOwiAQRe_C2hAYmBZcuvcMZIBRqgaS0q6Md7dNutDtf-_9twi0LiWsnecwZXEWehCn3zFSenLdSX5QvTeZWl3mKcpdkQft8toyvy6H-3dQqJetNuwQGYxXCNGCZ5PQJsOKtIMNjUAaI9IIkAd7Mx5U9J61cSkqUEl8vtmtNtk:1nFU8U:k9kRQsYHWWB3PmCKMEoVgZ-f9lWIXzh55z0llEN7618	2022-02-16 23:54:22.936967-05
w806ymtce6oesdk3s2egxx1oge4x6y95	.eJxVjEEOwiAQRe_C2hAYmBZcuvcMZIBRqgaS0q6Md7dNutDtf-_9twi0LiWsnecwZXEWehCn3zFSenLdSX5QvTeZWl3mKcpdkQft8toyvy6H-3dQqJetNuwQGYxXCNGCZ5PQJsOKtIMNjUAaI9IIkAd7Mx5U9J61cSkqUEl8vtmtNtk:1nFV2B:fY_AuIeyKtY2SIQtvEZfr00x0qSjHAn7arNNyFmqudI	2022-02-17 00:51:55.304752-05
mczu96l5tzhi5q9cjdo7pd1irclua3zy	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nFjZu:agwT3w0_bjePZ4YxFwHROqLvdMhi1ANJbU88seeQRf4	2022-02-17 16:23:42.328882-05
xir5j996exyl4mlv7xbnjfgd523wp624	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nFplO:0z2T4bvm3zB71ccNMBKZNc6Xcsrb2zvZv-J15Rj-8Jg	2022-02-17 22:59:58.287638-05
259xhqq324q7s8d0socbzyw9krw2up78	.eJxVjEEOwiAQRe_C2hAGaAGX7j0DGZhBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4kTgLbcTpd0yYH9x2Qndst1nmua3LlOSuyIN2eZ2Jn5fD_Tuo2Ou39sqzh-JQeUiOEyVbQrHBWzPAqDIwGQQHxrIfrQ5oS-ISBkIkCFqL9wcC1DgO:1nG6e9:5xOci96bgrOw84kua5fgE1JzHZIVI2Jvusz1IUowRtc	2022-02-18 17:01:37.399648-05
qmruu3o59rmqi4yqh2tnmn7k1g83wulh	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nIRMI:ediDoW_fm6LIQBPiFpdo9vYNqhH_zo3MdPbE_GBhxso	2022-02-25 03:32:50.135843-05
b8oc8dko8a9x574tb97cuotkigownu3o	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nJrbl:T-d7H-v7VH34oaDAQFK_XSQ9T4KrGxqSWIm64QehrLY	2022-03-01 01:46:41.823745-05
fjyy33nkqh5y3bwo1z438383e5pkx53j	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nMebF:FmEZg8w5Z9PVMOJkoOqb9k6LeiDnFjW5OxlgrMbm6x0	2022-03-08 18:29:41.361938-05
za8a9klszu6eqy1e50ymyoyp916lsikp	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nO556:djEmyftjNhyKkx_wIoDa4jqZdJh4pf7IynWNTCrGcLA	2022-03-12 16:58:24.239756-05
b4yu3ambt8gho8kgv8cy5r15nhrvn4ca	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nO5CC:V3CA5k7BYL7BQQ1BW9o9eSD9WIyd82hJ1mwJwG-Qa0g	2022-03-12 17:05:44.990404-05
r1f6o6hla97yhkgrt3pj4a34u8zjjahp	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nP9EA:wjnUnNXVMLuOLQ-uD0H7hk1ruVOzEzHeSyi0dNKnU0E	2022-03-15 16:36:10.989078-04
jvl6w7j0571khv6sflkdvcrc2585bv4s	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nPBek:HsZXBYv0gOKUM5xNiwiefmLIbnfAjVQI7rfBSLQt5v0	2022-03-15 19:11:46.905782-04
0dogxaeffjovhoveqabnumdn3z86o2wn	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nQwvD:feuQZdqIhsotpTXi9eofux9VuYhamj0Eun2RY7bbycA	2022-03-20 15:52:03.72195-04
kfeuo0tjpk4ycu6sizsskpjdweluuiia	.eJxVjEEKwyAQAP_iuYgaV02PvecNortLTVsUYnIq_XsRcmivM8O8RUzHXuLReYsriavQIC6_MCd8ch2GHqnem8RW923NciTytF0ujfh1O9u_QUm9jC8xAxKgViEFZVATeuWU9RPOCJxnoyefFXlrMiRvglbg2bIF5zQ48fkCBSQ3OA:1nBWkC:jQ0siRlkClGwpW98vZKngtENkIZBk2yvSIrzbrTO--E	2022-02-06 01:52:56.866394-05
i1y9724v3h1nno0zfmx09qn0jyc3dk4i	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nQx5k:xDyEIrmN3ZfY5kLnmANpm29KbggPbepvHW9FzSqOLCA	2022-03-20 16:02:56.456825-04
kj523m6ihzq89lbockrdkb3cmwwp5755	e30:1nXcrG:ltY-QCP5WIHtnk6E8BEZFbwLcHGmkhdMbak6_c4LV2Y	2022-04-08 01:51:34.551378-04
8gj88eauvnpy8duza4z80cjitq2ix6h6	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nR4UG:bOUMCLVbiJ8BDh9Ii_2qC32rusdLcdf-KDCx-S3snsA	2022-03-20 23:56:44.113212-04
cxtu0g4ed2boeyp1ix7jiqx7rd32m812	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nbZOm:v9iIDk_UroWZu9YIujOW9NP-4xDH1--nnIrslfyaU6k	2022-04-18 22:58:28.289959-04
i9idglpki7stwadmeq69p1dqpl270gs8	e30:1nZ2Pm:lc7v3sAhlmtSznIQMXiKyT4-fumcjeVnG5CqW-Kui2U	2022-04-11 23:21:02.954374-04
wq78zgu07x3mjizv1ge18jq63i2pb0qs	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1neqLn:k5jvRvDh73QmdwKHL72YZtInAHOxRB1kRh25hkovlu0	2022-04-27 23:40:55.540687-04
ptiih0z0x5pmshcjjgeww48js71foh33	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nSDjK:N1Py6CXYupNsbgoCaxiEfJFn_cYkz17-j2ocHcjzOQA	2022-03-24 04:01:02.448961-04
5jyrxi48rrdrmuc9vkeqp89yuydf36gr	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1ngdfa:HtlIXM_loo5pMhaJBtG5jbpqcP_6GexyHtUCHFALCII	2022-05-02 22:32:46.392518-04
og4qep0v8sk6kwqrvulrhy124ugchbgl	e30:1nZ2Gh:k5ZgroYajua7DPcZsO7pwJma-a5cSfLuw1BhmhKEbyk	2022-04-11 23:11:39.83075-04
njjrls4hplxp1h9txwnjwc2heafe31cs	e30:1nZ2O7:WYMa1mGFgoGfLv96aLgqSEk5jXfmxp4XJlM_iR2Bsyc	2022-04-11 23:19:19.14798-04
x6oct6zqqb84zpabi5qxh6vue5igyuq6	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nhOx3:z9fFVnBQVsQI3bFDa8Wipvx62NF0pqPojsNgvSeuDFg	2022-05-05 01:01:57.316952-04
gkhrueaeanb01bk7u906yxntiwqyq9k0	e30:1nZ2L3:jbbYIkYctpX3nFGK2JZ00yIquBO8FErYfYpPRKiw8Ao	2022-04-11 23:16:09.90738-04
ak5om0krwu11jkwe8nf5govkbt1yhnfo	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nYB3w:0m9hVKWgpvPU8N-bhKwsncjZvsmQ2f6hvqmiNbHifMg	2022-04-09 14:22:56.955287-04
vhzmh9z7f43k5mxuirtkoftj1qa4q97t	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nhkmD:ll65YMHNDHiVvg-n-fpdidFBhtlXlNrJUS1yzc_3kGA	2022-05-06 00:20:13.436509-04
qs3q8zp0zl9ddhmtizv7mpln0yqirmt3	e30:1nZ2PF:5FvEK2f1lHP76Td-wLofA664aTUAikGhm5tthriIJZE	2022-04-11 23:20:29.000499-04
6vnaskxy2uhrdl0kq0j3neiwrtbt47i5	e30:1nZ2RJ:IZS1i2yEgrisqFlIsu8s3Dc74GXx4SztI6VRY2KC950	2022-04-11 23:22:37.219612-04
8c1u6thwuyco0uwnkzz5q3ndsqb8bekq	e30:1nZ2Ay:Lfm3Vv8XigNoG04sKJESr_7Q7FQI9y7XKlSQCLeSfBE	2022-04-11 23:05:44.374018-04
46rq2tvzak5dcmq6vqcfcop9i30zh5sf	e30:1nZ2Lh:KMduDFR79YpruNbkhwCoMQa-3xip_te7rtb1Y8Ro-VI	2022-04-11 23:16:49.849701-04
md9m08rnl5fzl7vt314ej3l5hp24a6pp	e30:1nXcum:do7kUE9iPYtyv87kVtYuH2rEQ5kir10sy02kfCquWSk	2022-04-08 01:55:12.37064-04
rael6cgt3gb728g4j6pirs3hqmsb85x5	e30:1nXcyR:6-yhuBy-VTcN5e8-_LgCShYyS2IpbqlGSsnmkxAgORg	2022-04-08 01:58:59.636005-04
3e1f3ey0ta2ukilguagypvcr5vsc4esv	e30:1nXczg:sR6zn6XOQ9qq6Etq8KnoOUJI5bmGeX_Xa-6rjPJhKkg	2022-04-08 02:00:16.632088-04
88q58fs6h1npegue52jkc5w9jit44y6t	e30:1nXd0O:A9F9hdk-kBv5VZMVaUc6eq7AiuB6LUIZOazrJmk_4iw	2022-04-08 02:01:00.115667-04
50g6kngmwzyv80n193i5blakv7i086hj	e30:1nXd0k:mreoCOBjv3vutqqO7YkFqDc5eh_cdCNgBYoybqsSc08	2022-04-08 02:01:22.555092-04
mmq6kkevvflb0u1lrgg31uza3mnkh7iv	.eJxVjDsOwjAQBe_iGlnrv01JzxmsdXaNAyiW8qkQd4dIKaB9M_NeIuO2trwtPOeRxFkocfrdCg4PnnZAd5xuXQ59WuexyF2RB13ktRM_L4f7d9Bwad-aHUBK1SXDJWltAnuHhDEAs0WlXQlkrKXiS4RYIUQE0p4AlSVfUbw_1l03zQ:1nZRv7:GsDjuuz4MzmpmKXZX0M16qeyg9fx3Aazg7e79DJfrV8	2022-04-13 02:35:05.086241-04
624nb12hz0zjhdtjnip7i0gultxjk3yd	e30:1nZ2MF:6yb4r1rUc9kaQJDwooS1eDKGiPIGKRnacMs94zgentc	2022-04-11 23:17:23.777552-04
h480gsica8mwnb97gd66ie6mr8y3g4f6	e30:1nXd2M:UMilR71QPMZ04_LKTTsjHHydR4Hp9Afbn7Q0ZdJ2eb0	2022-04-08 02:03:02.41999-04
dtwehfsvi537j12t9n0o230ab6z6xt4p	e30:1nXd2h:73vA1CDI9PUfcY7TG17iNjm4luWBD2AAVX9b1YHg2BE	2022-04-08 02:03:23.347038-04
080khy5lvk1vy5nii0ooq5qs3shkl99b	e30:1nXd6E:nnh8hmPQhyr6A8yTD8rhag6pRZqZqaSbWNGnqDv0wUE	2022-04-08 02:07:02.959932-04
a2fe8lv2k9t0mujohxx1wcumbmapg8te	e30:1nXd6Z:7AazZI8msF1x43MGZJRM250u6HTXZqGRHh-fmKW7vBI	2022-04-08 02:07:23.421556-04
d2d808rhhguyuhk9wuxbp27qaqyw1hzv	e30:1nXd7D:pkBRgzMw8QmCQT5RW0UPHeRQUTsYSNeNq2M6LM-puuU	2022-04-08 02:08:03.765278-04
98k7schbabu8vocxhgvckqtndifodwtc	e30:1nXd8N:QTyDXZaGzYLIyZr5VlqsCruF-I4uhNaohp_ySwkahOY	2022-04-08 02:09:15.48756-04
u6ylhve0nkjqoplfq96n5lijp1nsx5wy	e30:1nXd8d:AZn0hDEK9IV4jMu_qor2Vfneu4LaOt1O3LvtU2gys2c	2022-04-08 02:09:31.036713-04
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                 3566.dat                                                                                            0000600 0004000 0002000 00000035312 14231652720 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Artyku┼é publicystyczny to taka forma pisemnej wypowiedzi, kt├│rej przeznaczeniem jest publikacja w r├│┼╝nego rodzaju czasopismach lub Internecie. Myli si─Ö jednak ten, kto uwa┼╝a, ┼╝e umiej─Ötno┼¢─ç napisania artyku┼éu powinien posi─à┼¢─ç jedynie dziennikarz ΓÇö wymaga si─Ö jej tak┼╝e od ucznia przyst─Öpuj─àcego do matury z j─Özyka angielskiego. Na szcz─Ö┼¢cie zadanie to nie nale┼╝y do najtrudniejszych. Z tego wpisu dowiecie si─Ö jak poprawnie napisa─ç artyku┼é publicystyczny w j─Özyku angielskim ΓÇö jakich zasad nale┼╝y przestrzega─ç, jaka jest poprawna budowa tej formy wypowiedzi pisemnej i co ka┼╝da cz─Ö┼¢─ç artyku┼éu powinna zawiera─ç. Podpowiemy Wam r├│wnie┼╝ jakich zwrot├│w warto u┼╝ywa─ç przy pisaniu artyku┼éu. Zach─Öcamy do lektury.ARTYKU┼ü PUBLICYSTYCZNY ΓÇö CZYM JEST I JAK JEST ZBUDOWANY?	pl	da51c198-a3f6-4807-9b37-1ec34690bb83.mp3
2	Artyku┼é publicystyczny to taka forma pisemnej wypowiedzi, kt├│rej przeznaczeniem jest publikacja w r├│┼╝nego rodzaju czasopismach lub Internecie. Myli si─Ö jednak ten, kto uwa┼╝a, ┼╝e umiej─Ötno┼¢─ç napisania artyku┼éu powinien posi─à┼¢─ç jedynie dziennikarz ΓÇö wymaga si─Ö jej tak┼╝e od ucznia przyst─Öpuj─àcego do matury z j─Özyka angielskiego. Na szcz─Ö┼¢cie zadanie to nie nale┼╝y do najtrudniejszych. Z tego wpisu dowiecie si─Ö jak poprawnie napisa─ç artyku┼é publicystyczny w j─Özyku angielskim ΓÇö jakich zasad nale┼╝y przestrzega─ç, jaka jest poprawna budowa tej formy wypowiedzi pisemnej i co ka┼╝da cz─Ö┼¢─ç artyku┼éu powinna zawiera─ç. Podpowiemy Wam r├│wnie┼╝ jakich zwrot├│w warto u┼╝ywa─ç przy pisaniu artyku┼éu. Zach─Öcamy do lektury.ARTYKU┼ü PUBLICYSTYCZNY ΓÇö CZYM JEST I JAK JEST ZBUDOWANY?	pl	2e69a75e-054c-45f8-b36d-676c1f4068dc.mp3
3	Artyku┼é publicystyczny to taka forma pisemnej wypowiedzi, kt├│rej przeznaczeniem jest publikacja w r├│┼╝nego rodzaju czasopismach lub Internecie. Myli si─Ö jednak ten, kto uwa┼╝a, ┼╝e umiej─Ötno┼¢─ç napisania artyku┼éu powinien posi─à┼¢─ç jedynie dziennikarz ΓÇö wymaga si─Ö jej tak┼╝e od ucznia przyst─Öpuj─àcego do matury z j─Özyka angielskiego. Na szcz─Ö┼¢cie zadanie to nie nale┼╝y do najtrudniejszych. Z tego wpisu dowiecie si─Ö jak poprawnie napisa─ç artyku┼é publicystyczny w j─Özyku angielskim ΓÇö jakich zasad nale┼╝y przestrzega─ç, jaka jest poprawna budowa tej formy wypowiedzi pisemnej i co ka┼╝da cz─Ö┼¢─ç artyku┼éu powinna zawiera─ç. Podpowiemy Wam r├│wnie┼╝ jakich zwrot├│w warto u┼╝ywa─ç przy pisaniu artyku┼éu. Zach─Öcamy do lektury.ARTYKU┼ü PUBLICYSTYCZNY ΓÇö CZYM JEST I JAK JEST ZBUDOWANY?	pl	905fd720-08e9-471a-9b6e-d998b990131d.mp3
4	Artyku┼é publicystyczny to taka forma pisemnej wypowiedzi, kt├│rej przeznaczeniem jest publikacja w r├│┼╝nego rodzaju czasopismach lub Internecie. Myli si─Ö jednak ten, kto uwa┼╝a, ┼╝e umiej─Ötno┼¢─ç napisania artyku┼éu powinien posi─à┼¢─ç jedynie dziennikarz ΓÇö wymaga si─Ö jej tak┼╝e od ucznia przyst─Öpuj─àcego do matury z j─Özyka angielskiego. Na szcz─Ö┼¢cie zadanie to nie nale┼╝y do najtrudniejszych. Z tego wpisu dowiecie si─Ö jak poprawnie napisa─ç artyku┼é publicystyczny w j─Özyku angielskim ΓÇö jakich zasad nale┼╝y przestrzega─ç, jaka jest poprawna budowa tej formy wypowiedzi pisemnej i co ka┼╝da cz─Ö┼¢─ç artyku┼éu powinna zawiera─ç. Podpowiemy Wam r├│wnie┼╝ jakich zwrot├│w warto u┼╝ywa─ç przy pisaniu artyku┼éu. Zach─Öcamy do lektury.ARTYKU┼ü PUBLICYSTYCZNY ΓÇö CZYM JEST I JAK JEST ZBUDOWANY?	pl	fe2b00c1-ebe6-4681-9048-1501a15d0a89.mp3
5	Artyku┼é publicystyczny to taka forma pisemnej wypowiedzi, kt├│rej przeznaczeniem jest publikacja w r├│┼╝nego rodzaju czasopismach lub Internecie. Myli si─Ö jednak ten, kto uwa┼╝a, ┼╝e umiej─Ötno┼¢─ç napisania artyku┼éu powinien posi─à┼¢─ç jedynie dziennikarz ΓÇö wymaga si─Ö jej tak┼╝e od ucznia przyst─Öpuj─àcego do matury z j─Özyka angielskiego. Na szcz─Ö┼¢cie zadanie to nie nale┼╝y do najtrudniejszych. Z tego wpisu dowiecie si─Ö jak poprawnie napisa─ç artyku┼é publicystyczny w j─Özyku angielskim ΓÇö jakich zasad nale┼╝y przestrzega─ç, jaka jest poprawna budowa tej formy wypowiedzi pisemnej i co ka┼╝da cz─Ö┼¢─ç artyku┼éu powinna zawiera─ç. Podpowiemy Wam r├│wnie┼╝ jakich zwrot├│w warto u┼╝ywa─ç przy pisaniu artyku┼éu. Zach─Öcamy do lektury.ARTYKU┼ü PUBLICYSTYCZNY ΓÇö CZYM JEST I JAK JEST ZBUDOWANY?	pl	49f31fe4-014f-460f-a194-3d92d9a8fa13.mp3
6	Artyku┼é publicystyczny to taka forma pisemnej wypowiedzi, kt├│rej przeznaczeniem jest publikacja w r├│┼╝nego rodzaju czasopismach lub Internecie. Myli si─Ö jednak ten, kto uwa┼╝a, ┼╝e umiej─Ötno┼¢─ç napisania artyku┼éu powinien posi─à┼¢─ç jedynie dziennikarz ΓÇö wymaga si─Ö jej tak┼╝e od ucznia przyst─Öpuj─àcego do matury z j─Özyka angielskiego. Na szcz─Ö┼¢cie zadanie to nie nale┼╝y do najtrudniejszych. Z tego wpisu dowiecie si─Ö jak poprawnie napisa─ç artyku┼é publicystyczny w j─Özyku angielskim ΓÇö jakich zasad nale┼╝y przestrzega─ç, jaka jest poprawna budowa tej formy wypowiedzi pisemnej i co ka┼╝da cz─Ö┼¢─ç artyku┼éu powinna zawiera─ç. Podpowiemy Wam r├│wnie┼╝ jakich zwrot├│w warto u┼╝ywa─ç przy pisaniu artyku┼éu. Zach─Öcamy do lektury.ARTYKU┼ü PUBLICYSTYCZNY ΓÇö CZYM JEST I JAK JEST ZBUDOWANY?	pl	d8915dbb-bf45-49ed-8596-7f336aa3e164.mp3
7	Artyku┼é publicystyczny to taka forma pisemnej wypowiedzi, kt├│rej przeznaczeniem jest publikacja w r├│┼╝nego rodzaju czasopismach lub Internecie. Myli si─Ö jednak ten, kto uwa┼╝a, ┼╝e umiej─Ötno┼¢─ç napisania artyku┼éu powinien posi─à┼¢─ç jedynie dziennikarz ΓÇö wymaga si─Ö jej tak┼╝e od ucznia przyst─Öpuj─àcego do matury z j─Özyka angielskiego. Na szcz─Ö┼¢cie zadanie to nie nale┼╝y do najtrudniejszych. Z tego wpisu dowiecie si─Ö jak poprawnie napisa─ç artyku┼é publicystyczny w j─Özyku angielskim ΓÇö jakich zasad nale┼╝y przestrzega─ç, jaka jest poprawna budowa tej formy wypowiedzi pisemnej i co ka┼╝da cz─Ö┼¢─ç artyku┼éu powinna zawiera─ç. Podpowiemy Wam r├│wnie┼╝ jakich zwrot├│w warto u┼╝ywa─ç przy pisaniu artyku┼éu. Zach─Öcamy do lektury.ARTYKU┼ü PUBLICYSTYCZNY ΓÇö CZYM JEST I JAK JEST ZBUDOWANY?	pl	9ed5b523-45a1-44e6-8614-710d857f2050.mp3
8	Artyku┼é publicystyczny to taka forma pisemnej wypowiedzi, kt├│rej przeznaczeniem jest publikacja w r├│┼╝nego rodzaju czasopismach lub Internecie. Myli si─Ö jednak ten, kto uwa┼╝a, ┼╝e umiej─Ötno┼¢─ç napisania artyku┼éu powinien posi─à┼¢─ç jedynie dziennikarz ΓÇö wymaga si─Ö jej tak┼╝e od ucznia przyst─Öpuj─àcego do matury z j─Özyka angielskiego. Na szcz─Ö┼¢cie zadanie to nie nale┼╝y do najtrudniejszych. Z tego wpisu dowiecie si─Ö jak poprawnie napisa─ç artyku┼é publicystyczny w j─Özyku angielskim ΓÇö jakich zasad nale┼╝y przestrzega─ç, jaka jest poprawna budowa tej formy wypowiedzi pisemnej i co ka┼╝da cz─Ö┼¢─ç artyku┼éu powinna zawiera─ç. Podpowiemy Wam r├│wnie┼╝ jakich zwrot├│w warto u┼╝ywa─ç przy pisaniu artyku┼éu. Zach─Öcamy do lektury.ARTYKU┼ü PUBLICYSTYCZNY ΓÇö CZYM JEST I JAK JEST ZBUDOWANY?	pl	b3d6cd5f-4805-4a63-b4b1-e389bfce9449.mp3
9	dzie┼ä dobry	pl	b904c805-bf36-470a-b0c8-d38d3b8a79fa.mp3
10	dzie┼ä dobry	pl	2d068abd-4129-4b6d-a680-2401f1cf87af.mp3
11	dzie┼ä dobry	pl	7975e35e-b450-45ec-878f-a3da6edb7025.mp3
12	dzie┼ä dobry	pl	e617871f-18af-4c4b-9687-376753ef9a60.mp3
13	dzie┼ä dobry	pl	c0edee63-5077-4aa0-8de8-d5edcc5403d7.mp3
14	dzie┼ä dobry	pl	c957dfed-b426-435b-85bc-1669613368c6.mp3
15	dzie┼ä dobry	pl	befe7a72-b236-4aa7-a011-124af9689b71.mp3
16	dzie┼ä dobry	pl	26a0203b-3b3a-431b-9fda-f541f7c55a69.mp3
17	dzie┼ä dobry	pl	6ffa524f-95f4-494f-b001-020918752889.mp3
18	dzie┼ä dobry	pl	cc3f2556-99a4-4e37-bd84-fa54f4f40be2.mp3
19	dzie┼ä dobry	pl	c3f506d5-9204-4fd3-a220-9099a9de854e.mp3
20	dzie┼ä dobry	pl	61a61c62-87ab-47ed-ae32-092dea4d9646.mp3
21	dzie┼ä dobry	pl	588fc533-cab1-49fa-9120-aaca96714d9e.mp3
22	dzie┼ä dobry	pl	3a718374-ffb2-4a49-9810-37aaf34e7092.mp3
23	dzie┼ä dobry	pl	97049ccf-8559-49b1-86a2-46231cb8639e.mp3
24	dzie┼ä dobry	pl	d9782e5d-9922-4764-bcb7-4e2dfba8ce65.mp3
25	dzie┼ä dobry	pl	f047f1f1-db6c-487d-9185-df470c6b59cd.mp3
26	dzie┼ä dobry	pl	7945bc63-e3ff-4ea8-b2cd-5d5fa6192c27.mp3
27	dzie┼ä dobry	pl	7d6602c1-6c20-4d21-9857-892f69db1a8e.mp3
28	dzie┼ä dobry	pl	792523a5-1724-4178-b640-3729579b6098.mp3
29	dzie┼ä dobry	pl	17cf3592-09a5-4e7d-a3b0-00de14a1927e.mp3
30	dzie┼ä dobry	pl	f679af20-b4cf-4f46-802b-469a4e3b0e76.mp3
31	dzie┼ä dobry	pl	a101fd6f-2c05-4d26-afbb-f3dd87a1b545.mp3
32	dzie┼ä dobry	pl	5cdb5302-4ffa-4afa-a450-925f1e5fb8db.mp3
33	dzie┼ä dobry	pl	bfbab58b-c7f1-4b48-9110-d481e8e15bee.mp3
34	dzie┼ä dobry	pl	aa4078a3-d142-47c0-8004-78c7cb2c9543.mp3
35	dzie┼ä dobry	pl	21ddc43f-370a-4bf9-8a47-a2d27a255e55.mp3
36	dzie┼ä dobry	pl	359a4126-46e5-4114-9fef-088c6919082c.mp3
37	dzie┼ä dobry	pl	e64f761a-9503-4066-9bc5-7a43cd5159cd.mp3
38	dzie┼ä dobry	pl	4fbd1df3-2129-44c4-8998-70dd6cec235c.mp3
39	dzie┼ä dobry	pl	c1581706-20c3-4e3f-b79b-221a86f8dafb.mp3
40	dzie┼ä dobry panie	pl	24e8ab40-c16b-489b-81b0-9dcedf4420d3.mp3
41	dzie┼ä dobry	pl	b6e56cad-f0d4-4b50-b5c5-4b49350af821.mp3
42	dzie┼ä dobry panie	pl	d423406f-f7e9-4939-a2a2-70fa21790e90.mp3
43	dzie┼ä dobry	pl	550bff5a-8cb9-46c2-bd2d-6dbfbffab526.mp3
44	dzie┼ä dobry	pl	f378fe3e-d228-430b-8208-5112e000a721.mp3
45	$(questionLabel.innerHTML)	pl	623014c6-a72d-488c-9618-43583a41602b.mp3
46	dzie┼ä dobry	pl	9e8e4599-abd1-427c-a7f4-6603ac6d3f3c.mp3
47	dzie┼ä dobry	pl	8eda0ba1-5bb7-4741-92a8-de3c82b75e85.mp3
48	dzie┼ä dobry panie	pl	483e82db-c30a-427e-a681-532453c81796.mp3
49	$(questionLabel.innerHTML)	pl	ea1843af-50f7-4a3c-9d9d-2e12c530bd14.mp3
50	dzie┼ä dobry	pl	47fdcbf7-9694-4e49-8d11-082f4d1bc78f.mp3
51	dzie┼ä dobry	pl	5b11e089-dc15-4e77-b5ce-dcc0abaca27b.mp3
52	dzie┼ä dobry panie	pl	6b1398a6-18be-4dcf-bb43-11128cb0d3e4.mp3
53	${questionLabel.innerHTML}	pl	5edf3fd8-aa58-4f49-bf66-943660c70325.mp3
54	dzie┼ä dobry	pl	21dab406-567c-4393-82e6-61e8f3e4442f.mp3
55	dzie┼ä dobry	pl	94d24b1a-7117-4ab5-a55e-6f694b94af26.mp3
56	dzie┼ä dobry panie	pl	6b80211b-ca09-42c8-addf-dbd3fafd84d1.mp3
57	${randomQuestion}	pl	e582e8ea-3591-454d-82ae-c954cf9f01cb.mp3
58	dzie┼ä dobry	pl	7232d628-fb55-4cf7-bf69-1c2fe2dbc384.mp3
59	dzie┼ä dobry	pl	594e4902-9656-413d-9c3f-04d721c9088e.mp3
60	dzie┼ä dobry panie	pl	3fcb906d-33ff-4a87-9fa8-4d86bba91cb5.mp3
61	%s	pl	cbd92361-1f18-47c2-8c1f-0761b8bf0f79.mp3
62	dzie┼ä dobry	pl	663a7e81-d13f-410f-8322-cee5b616ec54.mp3
63	dzie┼ä dobry	pl	14223e36-4bc6-44a1-b9ff-4ffbbf3cc561.mp3
64	dzie┼ä dobry panie	pl	cfd19739-3ebd-4511-9736-2d995dc3f35c.mp3
65	%s	pl	fd264587-a23e-4039-a72d-db2c84f3ce25.mp3
66	dzie┼ä dobry	pl	a357bdf5-e3a7-4bd7-b77d-22cefd54ceb7.mp3
67	dzie┼ä dobry	pl	d759148c-98a3-4e18-88c1-400905e11440.mp3
68	dzie┼ä dobry panie	pl	89fb1bad-ff65-41b0-aae6-bfd781b7428d.mp3
69	${randomQuestion}	pl	1e7fc0e0-c62c-4698-9d57-29d1b98613aa.mp3
70	dzie┼ä dobry	pl	1fcfab0d-4ee3-4387-b34a-35e8b98bd796.mp3
71	dzie┼ä dobry	pl	883d9451-f00a-4456-8b72-0a4121383c16.mp3
72	dzie┼ä dobry panie	pl	c1a11a02-ca05-4e08-a55c-d3193c87ee0d.mp3
73	${randomQuestion}	pl	eb1e6d9f-b2ba-4851-a295-f24bc8ada692.mp3
74	dzie┼ä dobry	pl	466ee428-bef9-4148-8ab5-33ed66adbf05.mp3
75	dzie┼ä dobry	pl	1d3bc90b-9664-4718-ad90-d7e191e1f340.mp3
76	dzie┼ä dobry panie	pl	c1a40753-156c-4449-8735-cb3d2d1cf01c.mp3
77	dzie┼ä dobry	pl	4f903d8f-168d-4184-9bf4-a140d447ffc3.mp3
78	dzie┼ä dobry	pl	ac785c08-5faa-4d5d-8cbc-5f737de6a5db.mp3
79	dzie┼ä dobry panie	pl	ad8e0048-a9a5-45aa-8693-ea4862739707.mp3
80	dzie┼ä dobry	pl	4039b4bf-4938-4d90-8c0e-923b7481d013.mp3
81	dzie┼ä dobry panie	pl	c497b9ed-6e89-4ceb-9d07-df3356333402.mp3
82	dzie┼ä dobry	pl	55a840aa-428a-4a31-9fe8-b4127f8c72e8.mp3
83	dzie┼ä dobry panie	pl	58e1edb5-db67-42bc-b0cc-f2994ccf8ca6.mp3
84	dzie┼ä dobry	pl	5e7c3493-92da-425a-9f29-8e480580ee54.mp3
85	dzie┼ä dobry	pl	ed3d8986-0723-4377-897a-ded99c913d7d.mp3
86	dzie┼ä dobry panie	pl	acb10407-0c91-4d98-a5e0-8e46dcac752f.mp3
87	dzie┼ä dobry	pl	2d6f5c31-21d1-47e6-8569-f6543dae2bd8.mp3
88	dzie┼ä dobry	pl	03791a8b-2b47-48d0-8708-081a304ab89d.mp3
89	dzie┼ä dobry panie	pl	988c9ebd-3606-46e3-b5ec-4f3f9021d0cf.mp3
90	dzie┼ä dobry	pl	5d346804-e293-4399-b16f-936138993521.mp3
91	dzie┼ä dobry	pl	bdc3ab61-5c18-427b-baca-fec55041d2ff.mp3
92	dzie┼ä dobry panie	pl	bed362eb-c5ce-424e-b84c-3545a30b58d9.mp3
93	dzie┼ä dobry	pl	5fed5119-b804-4d36-b74a-966b7e780ce9.mp3
94	dzie┼ä dobry	pl	fd2782ff-9f18-4e49-8655-5d225434ed3e.mp3
95	dzie┼ä dobry panie	pl	4d5a6485-4d8b-4314-86d1-c3cbe008e2e7.mp3
96	dzie┼ä dobry	pl	81aff4af-ae01-4bba-8136-cd4583495ac7.mp3
97	dzie┼ä dobry	pl	4e78a116-195f-4462-9172-efffd8ec72c8.mp3
98	dzie┼ä dobry panie	pl	d656a318-5b47-4789-a88d-2d88ca2d094a.mp3
99	dzie┼ä dobry	pl	16be61ad-6e1c-44b1-a326-8f5718cc4b98.mp3
100	dzie┼ä dobry	pl	95126e44-884c-4470-b18c-107bee3ff3db.mp3
101	dzie┼ä dobry panie	pl	ff9166f2-509c-49db-8ada-2b31c4ecd707.mp3
102	dzie┼ä dobry	pl	fd595eff-c0fa-4e6b-8fa0-954ea80540ac.mp3
103	dzie┼ä dobry	pl	c83eb933-13df-477f-a2af-7f9b9a5af88f.mp3
104	dzie┼ä dobry panie	pl	dc6d518a-55ee-489a-b0e6-b453fbefbd10.mp3
105	dzie┼ä dobry	pl	cdc53d29-a635-4408-8390-b859e162631f.mp3
106	dzie┼ä dobry	pl	a99cf2c7-12a4-43f3-be3f-5caa19597643.mp3
107	dzie┼ä dobry panie	pl	08b0358f-82c5-4273-810e-8879ae379ef7.mp3
108	dzie┼ä dobry	pl	6b65b0c1-cd13-4743-b18b-9a66408ca33b.mp3
109	dzie┼ä dobry	pl	096473ec-46e0-4ad5-8154-d2bc88572841.mp3
110	dzie┼ä dobry panie	pl	3229d8c9-d54f-45aa-b5b0-12dcbd2e514d.mp3
111	dzie┼ä dobry	pl	fa7a4f4f-b3d3-4e8e-ba49-a0775b538367.mp3
112	dzie┼ä dobry	pl	1ffa5fb3-75d9-4552-b712-4bcda638e2f1.mp3
113	dzie┼ä dobry panie	pl	093050b6-0cf5-4c60-94b5-bb466aae02d5.mp3
114	dzie┼ä dobry	pl	4ff4cf0e-2285-4b5d-8217-bcb1bbfc241f.mp3
115	dzie┼ä dobry	pl	fa0a3d7c-b494-452e-82c6-29690caa15ad.mp3
116	dzie┼ä dobry panie	pl	b2d01e10-460a-4d20-850b-bebbc1a5177f.mp3
117	dzie┼ä dobry	pl	d71a48f2-da56-4185-8408-555b59d2db96.mp3
118	dzie┼ä dobry	pl	956b1dfb-6c2e-4d44-aadc-f5c6fdd46929.mp3
119	dzie┼ä dobry panie	pl	3d6ad2fb-d180-484e-96ee-5306ec31ff02.mp3
120	dzie┼ä dobry	pl	662f1a40-1769-42d6-bc7d-a70b61379a40.mp3
121	dzie┼ä dobry	pl	58a579a3-abf7-4895-8832-bd0925b21bcf.mp3
122	dzie┼ä dobry panie	pl	38e5531e-f0d1-4549-94d5-51d3e9318f7c.mp3
123	dzie┼ä dobry	pl	23fc0ddf-a801-40c1-bb93-f4e520110e11.mp3
124	dzie┼ä dobry	pl	19a7a603-ad80-447f-8f4b-dc3e99dd50e2.mp3
125	dzie┼ä dobry panie	pl	5c913c51-d643-48d3-a18f-f476ff6a9d0b.mp3
126	dzie┼ä dobry	pl	1c4a356a-1fa1-4a96-af5b-5131b0bd243a.mp3
127	dzie┼ä dobry	pl	b94af0ff-9ebc-4199-b292-b1fe86afddd7.mp3
128	dzie┼ä dobry panie	pl	220dd704-68f3-4cfd-a719-3cdca22ecba3.mp3
129	dzie┼ä dobry	pl	33108610-2e52-4fce-aeb1-e8255969600f.mp3
130	dzie┼ä dobry	pl	79dce236-90ce-4666-852b-f56f2aba90e9.mp3
131	dzie┼ä dobry panie	pl	700bff71-83b7-4b4d-96dc-5634b66a0edd.mp3
132	dzie┼ä dobry	pl	eee319e8-f7b1-479f-837c-c0abcc734199.mp3
133	dzie┼ä dobry	pl	55ac9715-35c4-4b92-a752-c3eae02d4938.mp3
134	dzie┼ä dobry panie	pl	4553f85a-ad91-4410-8ea5-25045954be0b.mp3
135	dzie┼ä dobry	pl	e063252a-a737-457d-87cd-8c0b79c03859.mp3
136	dzie┼ä dobry	pl	ff3253a2-ac2d-4da9-be67-b02b4cd4fd2e.mp3
137	dzie┼ä dobry panie	pl	2f27a283-e2ed-4f0e-9cf0-f502d9f0def4.mp3
138	dzie┼ä dobry	pl	58d37e2d-e7e2-422b-9c5d-fce28d4db353.mp3
139	dzie┼ä dobry	pl	25dceaa8-dc1f-4b26-b559-4ae2002f3086.mp3
140	dzie┼ä dobry panie	pl	83fb64a0-64b1-43aa-9620-cfedff21ff98.mp3
\.


                                                                                                                                                                                                                                                                                                                      3555.dat                                                                                            0000600 0004000 0002000 00000000206 14231652720 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	polish	images/flag_poland.png
3	russian	images/flag_russia.png
1	spanish	images/flag_spain.png
4	italian	images/flag_italy.png
\.


                                                                                                                                                                                                                                                                                                                                                                                          3563.dat                                                                                            0000600 0004000 0002000 00000351637 14231652720 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        24	Numbers	content	1	2	numbers	other	\N
23	Vocative Case	<h2>Content</h2>\r\n<div class="guide-top-text">\r\n<ul>\r\n   <li><a class="third-theme" href="#usage">Usage</a></li>\r\n   <li>\r\n      <a class="third-theme" href="#noun-singular">Singular Nouns</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#noun-singular-masculine">Masculine</a></li>\r\n         <li><a class="third-theme" href="#noun-singular-feminine">Feminine</a></li>\r\n         <li><a class="third-theme" href="#noun-singular-neuter">Neuter</a></li>\r\n      </ul>\r\n   </li>\r\n   <li><a class="third-theme" href="#other">Singular Adjectives, Plural Nouns, Plural Adjectives</a></li>\r\n</ul>\r\n</div>\r\n<div class="third-theme">\r\n<p>\r\nThe vocative is the last of the 7 cases.\r\nIt is used to address people. It's plural forms are the same as the nominative plural forms.\r\n</p>\r\n<h2><a id="usage"></a>Vocative Case Usage</h2>\r\n<h4>1. Addressing something by name, usually people. This is used mostly for job titles, first names, and other titles.</h4>\r\n<p>Kocham ci─Ö, <strong>synu</strong>.\r\n(I love you, <strong>son</strong>)\r\nTak jest, <strong>panie majorze</strong>.\r\n(Yes, <strong>sir</strong>)\r\n</p>\r\n</div>\r\n<h2>Vocative Case Declension</h2>\r\n<h3><a id="noun-singular"></a>Vocative Singular Nouns</h3>\r\n<h4><a id="noun-singular-masculine"></a>Masculine</h4>\r\n<p>- These have the same endings as the masculine locative singular, with a few exceptions.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Vocative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>pan (man)\r\n            pies (dog)\r\n            wuj (uncle)\r\n         </td>\r\n         <td>pa<strong>nie</strong>\r\n            p<strong>sie</strong>\r\n            wuj<strong>u</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- Here are some exceptions to this rule.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Vocative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>ch┼éopiec (boy)\r\n            ojciec (father)\r\n            B├│g (God)\r\n         </td>\r\n         <td>ch┼éop<strong>cze</strong>\r\n            oj<strong>cze</strong>\r\n            Bo<strong>┼╝e</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-singular-feminine"></a>Feminine</h4>\r\n<p>- If it ends with "a", usually receives <strong>o</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Vocative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>babk<strong>a</strong> (grandmother)\r\n            ciotk<strong>a</strong> (aunt)\r\n            m─Ö┼╝czyzna (man)\r\n         </td>\r\n         <td>babk<strong>o</strong>\r\n            ciotk<strong>o</strong>\r\n            m─Ö┼╝czyzn<strong>o</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- Some diminutive forms receive <strong>u</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Vocative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>babcia (gramma)\r\n            ciocia (aunty)\r\n         </td>\r\n         <td>babci<strong>u</strong>\r\n            cioci<strong>u</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If it ends with "i", there is no change.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Vocative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>pani (lady)\r\n            sprzedawczyni (seller (woman))\r\n         </td>\r\n         <td>pani\r\n            sprzedawczyni\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-singular-neuter"></a>Neuter</h4>\r\n<p>- Have same endings as neuter nominative singular nouns.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Vocative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>dziecko (child)</td>\r\n         <td>dziecko</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n</p>\r\n<h3><a id="other"></a>Vocative Singular Adjectives, Plural Nouns, Plural Adjectives</h3>\r\nAll the rest of these forms are the same as in the nominative case.	7	2	vocative-case	cases	\N
9	Verbs1	content	2	2	verbs2	verbs	\N
12	adjs1	content	1	2	adjs1	adjectives	\N
13	verbs22	content	2	2	verbs22	verbs	\N
14	verbs33	content	3	2	verbs33	verbs	\N
16	pronouns1	content	1	1	pronouns1	pronouns	\N
7	Present Verbs	contentd	1	2	verbs-present	verbs	\N
17	Nominative Case	<h2>Content</h2>\r\n<div class="guide-top-text">\r\n   <ul>\r\n      <li><a class="third-theme" href="#usage">Usage</a></li>\r\n      <li>\r\n         <a class="third-theme" href="#noun-singular">Singular Nouns</a>\r\n         <ul>\r\n            <li><a class="third-theme" href="#noun-singular-masculine">Masculine</a></li>\r\n            <li><a class="third-theme" href="#noun-singular-feminine">Feminine</a></li>\r\n            <li><a class="third-theme" href="#noun-singular-neuter">Neuter</a></li>\r\n         </ul>\r\n      </li>\r\n      <li>\r\n         <a class="third-theme" href="#adj-singular">Singular Adjectives</a>\r\n         <ul>\r\n            <li><a class="third-theme" href="#adj-singular-masculine">Masculine</a></li>\r\n            <li><a class="third-theme" href="#adj-singular-feminine">Feminine</a></li>\r\n            <li><a class="third-theme" href="#adj-singular-neuter">Neuter</a></li>\r\n         </ul>\r\n      </li>\r\n      <li>\r\n         <a class="third-theme" href="#noun-plural">Plural Nouns</a>\r\n         <ul>\r\n            <li><a class="third-theme" href="#noun-plural-masculine-pers">Masculine Personal</a></li>\r\n            <li><a class="third-theme" href="#noun-plural-masculine-nonpers">Masculine Non-Personal</a></li>\r\n            <li><a class="third-theme" href="#noun-plural-feminine">Feminine</a></li>\r\n            <li><a class="third-theme" href="#noun-plural-neuter">Neuter</a></li>\r\n         </ul>\r\n      </li>\r\n      <li>\r\n         <a class="third-theme" href="#adj-plural">Plural Adjectives</a>\r\n         <ul>\r\n            <li><a class="third-theme" href="#adj-plural-masculine-pers">Masculine Personal</a></li>\r\n            <li><a class="third-theme" href="#adj-plural-masculine-nonpers">Masculine Non-Personal</a></li>\r\n            <li><a class="third-theme" href="#adj-plural-feminine">Feminine</a></li>\r\n            <li><a class="third-theme" href="#adj-plural-neuter">Neuter</a></li>\r\n         </ul>\r\n      </li>\r\n      <li><a class="third-theme" href="#declension-tables">Declension Tables</a></li>\r\n   </ul>\r\n</div>\r\n<div class="third-theme">\r\n<p>The nominative is the first of the 7 cases.It's main function is as the subject of the sentence.\r\nIt answers the questions:\r\n- <strong>kto?</strong> (who?)\r\n- <strong>co?</strong> (what?)</p>\r\n\r\n<h2><a id="usage"></a> Nominative Case Usage</h2>\r\n<h4>1. Subject of the sentence</h4>\r\n<p><strong>Kto</strong> jest wysoki? <strong>On</strong> jest wysoki.\r\n(<strong>Who</strong> is tall? <strong>He</strong> is tall)\r\n<br><br><strong>Co</strong> jest nudne? <strong>Szko┼éa</strong> jest nudna.\r\n(<strong>What</strong> is boring? <strong>School</strong> is boring)</p>\r\n\r\n<h4>2. In constructions with ΓÇ£to jestΓÇ¥</h4>\r\n<p>"To jest" in English translates to the verb "be".\r\n<strong>M├│j kuzyn</strong> to jest <strong>m├│j przyjaciel</strong>.\r\n(<strong>My cousin</strong> is <strong>my friend</strong>)\r\nTo jest <strong>m├│j syn</strong>.\r\n(This is <strong>my son</strong>)</p>\r\n<h4>3. With the verb "by─ç" to express an </h4>\r\n<p>Note: When "by─ç" (be) expresses another noun, the instrumental case is used. But when only an adjective is expressed, the nominative case is used.\r\n<strong>Moja ┼╝ona</strong> jest <strong>mi┼éa</strong>.\r\n<strong>(My wife</strong> is <strong>nice</strong>)\r\nMoja ┼╝ona jest mi┼é─à osob─à.\r\n(My wife is a nice  person)\r\nSince "jest" describes another noun, the instrumental case is used above.</p>\r\n\r\n<h2>Nominative Case Declension</h2>\r\n<h3><a id="noun-singular"></a>Nominative Singular Nouns</h3>\r\n<p>These are the dictionary forms of nouns. All nouns in their respective cases decline based of off this form.</p>\r\n<h4><a id="noun-singular-masculine"></a>Masculine</h4>\r\n<p>- Mostly end with a <b>consonant</b>. If a noun ends with an <b>a</b> but denotes a male person, the noun is still masculine.\r\n<br><br>sy<strong>n </strong>(son)<br>\r\n<br>samoch├│<strong>d </strong>(car)<br>\r\n<br>m─Ö┼╝czyzn<strong>a </strong>(man)</p><br>\r\n<h4><a id="noun-singular-feminine"></a>Feminine</h4>\r\n\r\n<p>\r\n- Mostly end with <b>a</b>. Some end with a <b>consonant</b>. Many abstract nouns that end in <strong>-┼¢─ç</strong> are also feminine.\r\n<br><br>c├│rk<strong>a</strong> (daughter)<br>\r\n<br>pi┼ék<strong>a</strong> (ball)<br>\r\n<br>no<strong>c</strong> (night)<br>\r\n<br>wolno<strong>┼¢─ç</strong> (freedom)<br>\r\n<br>d┼éugo<strong>┼¢─ç</strong> (length)</p><br>\r\n<h4><a id="noun-singular-neuter"></a>Neuter</h4>\r\n<p>- End with <b>e</b>, <b>o</b>, <b>─Ö</b>, or foreign words ending with  <strong>-</strong><b>um</b>.\r\n<br><br>pol<strong>e</strong> (field)<br>\r\n<br>okn<strong>o</strong> (window)<br>\r\n<br>imi<strong>─Ö</strong> (name)<br>\r\n<br>muze<strong>um</strong> (museum)<br>\r\n</p>\r\n\r\n<h3><a id="adj-singular"></a>Nominative Singular Adjectives</h3>\r\n<p>The endings of adjectives are based on the <strong>gender</strong>, <strong>case</strong>, and <strong>number</strong> (singular or plural) of the nouns that they are modifying. Their dictionary forms are in the masculine gender, ending in either y or i.\r\n</p>\r\n<h4><a id="adj-singular-masculine"></a>Masculine</h4>\r\n<p>- Adjectives that modify a masculine, singular noun in the nominative case and end with a hard consonant, except k or g, or hardened consonant receive <strong>y</strong> ending.\r\ndu┼╝y (big)               Dom jest <strong>du┼╝y</strong> (The house is <strong>big</strong>).\r\n- Adjectives that modify a masculine, singular noun in the nominative case and end with a soft consonant, or k or g receive <strong>i</strong> ending.\r\ntani (cheap)            Samoch├│d jest <strong>tani</strong> (The car is <strong>cheap</strong>).\r\n</p>\r\n<h4><a id="adj-singular-feminine"></a>Feminine</h4>\r\n<p>- Adjectives that modify a feminine, singular noun in the nominative case end receive <b>a</b> ending.\r\ndu┼╝y (big)               Pi┼éka jest <strong>du┼╝a</strong> (The ball is <strong>big</strong>).\r\ndrogi (expensive)    Szko┼éa jest <strong>droga</strong> (School is <strong>expensive</strong>).\r\n<h4><a id="adj-singular-neuter"></a>Neuter</h4>\r\n<span>- Adjectives that modify a neuter, singular noun in the nominative case end receive <b>e</b> ending.\r\n<span>du┼╝y (big)                Pole jest <strong>du┼╝e</strong> (The field is <strong>big</strong>).\r\n<span>tani (cheap)              Auto nie jest <strong>tanie</strong> (The car is not <strong>cheap</strong>).\r\n</p>\r\n<h3><a id="noun-plural"></a>Nominative Plural Nouns</h3>\r\n<p>Masculine nouns in the nominative plural are divided into masculine personal and masculine non-personal declensions.\r\n</p>\r\n<h4><a id="noun-plural-masculine-pers"></a>Masculine Personal</h4>\r\n<p>- Masculine personal nouns that end with a hard consonant except k, g, and r receive <b>i</b> ending. The hard consonant softens.\r\nstuden<strong>t</strong> (student) ΓåÆ studen<strong>ci</strong> (students)\r\nkuzy<strong>n</strong> (cousin) ΓåÆ kuzyn<strong>i</strong> (cousins)\r\n- Masculine personal nouns that end with k, g, r, or sometimes c receive <b>y</b> ending. K, g, and r soften.\r\ndokto<strong>r</strong> (doctor) ΓåÆ dokto<strong>rzy</strong> (doctors)\r\nAngli<strong>k</strong> (Englishman) ΓåÆ Anglic<strong>y</strong> (Englishmen)\r\nch┼éopie<strong>c</strong> (boy) ΓåÆ ch┼éopc<strong>y</strong> (boys) (*notice the removal of the "ie")\r\nkole<strong>g</strong>a (colleague) ΓåÆ kole<strong>dzy</strong> (colleagues)\r\n- Masculine personal nouns that end with a hardened or soft consonant receive <b>e</b> ending.\r\nrodzi<strong>c</strong> (parent) ΓåÆ rodzic<strong>e</strong> (parents)\r\nnauczycie<strong>l</strong> (teacher) ΓåÆ nauczyciel<strong>e</strong> (teachers)\r\nleka<strong>rz</strong> (doctor) ΓåÆ lekarz<strong>e</strong> (doctors)\r\n- Masculine personal nouns that end with -anin receive <b>-anie</b> ending. These verbs usually represent nationalities.\r\nRosj<strong>anin</strong> (Russian) ΓåÆ Rosj<strong>anie</strong> (Russians)\r\nAmeryk<strong>anin</strong> (American) ΓåÆ Ameryk<strong>anie</strong> (Americans)\r\n- Some masculine personal nouns receive <b>-owie</b> ending. There is no completely strict rule for which nouns have this ending, but it is usually for nouns referring to family relations and titles.\r\nsyn ΓåÆ syn<strong>owie</strong> (sons)\r\npan ΓåÆ pan<strong>owie</strong> (men)\r\nojciec ΓåÆ ojc<strong>owie</strong> (men) (*notice the stem change)\r\noficer ΓåÆ oficer<strong>owie</strong> (officers)\r\n- Some masculine personal nouns are irregular:\r\nbrat ΓåÆ bra<strong>cia</strong> (brothers)\r\ncz┼éowiek ΓåÆ <strong>ludzie</strong> (humans)\r\n</p>\r\n<h4><a id="noun-plural-masculine-nonpers"></a>Masculine Non-Personal</h4>\r\n<p>- Masculine non-personal nouns that end with a hard consonant except k and g receive <b>y</b> ending.\r\ndo<strong>m</strong> (home) ΓåÆ dom<strong>y</strong> (houses)\r\nkompute<strong>r</strong> (computer) ΓåÆ komputer<strong>y</strong> (computers)\r\nreki<strong>n</strong> (shark) ΓåÆ rekin<strong>y</strong> (sharks)\r\n- Masculine non-personal nouns that end with a k or g receive <b>i</b> ending.\r\npoci─à<strong>g</strong> (train) ΓåÆ poci─àg<strong>i</strong> (trains)\r\no┼é├│we<strong>k</strong> (pencil) ΓåÆ o┼é├│wk<strong>i</strong> (pencils) (*notice the removal of e)\r\nguzi<strong>k</strong> (button) ΓåÆ guzik<strong>i</strong> (buttons)\r\n- Masculine non-personal nouns that end with a hardened or soft consonant receive <b>e</b> ending.\r\nfote<strong>l</strong> (armchair) ΓåÆ fotel<strong>e</strong> (armchairs)\r\npale<strong>c</strong> (finger) ΓåÆ palc<strong>e</strong> (fingers) (*notice the removal of e)\r\nmie<strong>cz</strong> (sword) ΓåÆ miecz<strong>e</strong> (swords)\r\n</p>\r\n<h4><a id="noun-plural-feminine"></a>Feminine</h4>\r\n<p>- Feminine nouns that end with a hard consonant except k and g receive <b>y</b> ending.\r\nkobie<strong>t</strong>a (woman) ΓåÆ kobiet<strong>y</strong> (women)\r\ndziewczy<strong>n</strong>a (girl) ΓåÆ dziewczyn<strong>y</strong> (girls)\r\noso<strong>b</strong>a (person) ΓåÆ osob<strong>y</strong> (people)\r\n- Feminine nouns that end with a k or g, and most with -┼¢─ç, receive <b>i</b> ending. Some other feminine nouns ending in a consonant also receive <strong>i</strong>.\r\npi┼é<strong>k</strong>a (ball) ΓåÆ pi┼ék<strong>i</strong> (balls)\r\nwar<strong>g</strong>a (lip) ΓåÆ warg<strong>i</strong> (lips)\r\nc├│r<strong>k</strong>a (daughter) ΓåÆ c├│rk<strong>i</strong> (daughters)\r\nmo┼╝liwo<strong>┼¢─ç</strong> (possibility) ΓåÆ mo┼╝liwo┼¢c<strong>i</strong> (possibilities)\r\nwi─Ö<strong>┼║</strong> (bond) ΓåÆ wi─Öz<strong>i</strong> (bonds)\r\n- Feminine nouns that end with a hardened or soft consonant receive <b>e</b> ending.\r\nlekc<strong>j</strong>a (lesson) ΓåÆ lekcj<strong>e</strong> (lessons)\r\nno<strong>c</strong> (night) ΓåÆ noc<strong>e</strong> (nights)\r\nsmy<strong>cz</strong> (leash) ΓåÆ smycz<strong>e</strong>\r\n</p>\r\n<h4><a id="noun-plural-neuter"></a>Neuter</h4>\r\n<p>- All neuter nominative plural nouns receive <b>a</b> ending. Some have stem changes.\r\nokno (window) ΓåÆ okn<strong>a</strong> (windows)\r\npole (field) ΓåÆ pol<strong>a</strong> (fields)\r\nbiuro (office) ΓåÆ biur<strong>a</strong> (offices)\r\n- Neuter nouns ending with ─Ö receive either <b>-ta</b> or <b>-ona</b> endings.\r\nimi<strong>─Ö</strong> (name) ΓåÆ imi<strong>ona</strong> (names)\r\nzwierz<strong>─Ö</strong> (animal) ΓåÆ zwierz─Ö<strong>ta</strong> (animals)\r\n- Neuter nouns ending with um remove the um and replace it with <strong>a</strong> ending.\r\nmuze<strong>um</strong> (museum) ΓåÆ muze<strong>a</strong> (museums)\r\nlice<strong>um</strong> (high school) ΓåÆ lice<strong>a</strong> (high schools)\r\n</p>\r\n<h3><a id="adj-plural"></a>Nominative Plural Adjectives</h3>\r\n<p>Masculine plural nominative adjectives are also divided into masculine personal and masculine non-personal declension.\r\n</p>\r\n<h4><a id="adj-plural-masculine-pers"></a>Masculine Personal</h4>\r\n<p>- Masculine personal adjectives ending with a k, g, r, c, cz, or dz receive <b>y</b> ending. K, g, and r soften.\r\nM├│j syn jest <b>wysoki</b> (My son is <strong>tal</strong>l) ΓåÆ Moi synowie s─à <b>wysocy</b> (My sons are <strong>tall</strong>).\r\n- Masculine personal adjectives ending with another consonant receive <b>i</b> ending. Sz changes into si, and ┼╝ changes into zi.\r\n<b>Nasz</b> kolega jest <b>du┼╝y</b> (<strong>Our</strong> colleague is <strong>big</strong>) ΓåÆ <b>Nasi</b> koledzy s─à <b>duzi</b> (<strong>Our</strong> colleagues are <strong>big</strong>).\r\n</p>\r\n<h4><a id="adj-plural-masculine-nonpers" =": #000000; text-decoration: underline;"></a>Masculine Non-Personal</h4>\r\n<p>- Masculine non-personal adjectives receive <b>e </b>ending.\r\nDom jest <strong>du┼╝y</strong> (The house is <strong>big</strong>) ΓåÆ Domy s─à <strong>du┼╝e</strong> (The houses are <strong>big</strong>).\r\nSamoch├│d jest <strong>tani</strong> (The car is <strong>cheap</strong>) ΓåÆ Samochody s─à <strong>tanie</strong> (The cars are <strong>cheap</strong>).\r\n</p>\r\n<h4><a id="adj-plural-feminine" =": #000000; text-decoration: underline;"></a>Feminine</h4>\r\n<p>- Feminine plural adjectives receive <b>e</b> ending.\r\nPi┼éka jest <strong>du┼╝a</strong> (The ball is <strong>big</strong>) ΓåÆ Pi┼éki s─à <strong>du┼╝e</strong> (The balls are <strong>big).</strong>\r\n</p>\r\n<h4><a id="adj-plural-neuter"></a>Neuter</h4>\r\n<p>- Neuter plural adjectives receive <b>e</b> ending.\r\nPole jest <strong>du┼╝e</strong> (The field is <strong>big</strong>) ΓåÆ Pola s─à <strong>du┼╝e</strong> (The fields are <strong>big</strong>).\r\n</p>\r\n</div>\r\n\r\n<a id="declension-tables"></a><h2 class="text-center">Declension Tables</h2>\r\n<h3 class="text-center">Singular Nouns</h3>\r\n<table class="third-theme third-theme-border" style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr>\r\n         <td class="third-theme-border">Gender</td>\r\n         <td class="third-theme-border">Stem Ending</td>\r\n      </tr>\r\n      <tr>\r\n         <td class="third-theme-border">Masculine</td>\r\n         <td class="third-theme-border">consonant, a</td>\r\n      </tr>\r\n      <tr>\r\n         <td class="third-theme-border">Feminine</td>\r\n         <td class="third-theme-border">a, ┼¢─ç, consonant</td>\r\n      </tr>\r\n      <tr>\r\n         <td class="third-theme-border">Neuter</td>\r\n         <td class="third-theme-border">─Ö, e, o, um</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3 class="text-center">Singular Adjectives</h3>\r\n<table class="third-theme third-theme-border" style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr style="height: 21px;" class="third-theme">\r\n         <td class="third-theme-border" style="height: 21px;">Gender</td>\r\n         <td class="third-theme-border" style="height: 21px;">Stem Ending</td>\r\n         <td class="third-theme-border" style="height: 21px;">Add Ending</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td class="third-theme-border" style="height: 21px;">Masculine</td>\r\n         <td class="third-theme-border" style="height: 21px;">any</td>\r\n         <td class="third-theme-border" style="height: 21px;">i, y</td>\r\n      </tr>\r\n      <tr style="height: 21.5px;">\r\n         <td class="third-theme-border" style="height: 21.5px;">Feminine</td>\r\n         <td class="third-theme-border" style="height: 21.5px;">any</td>\r\n         <td class="third-theme-border" style="height: 21.5px;">a</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td class="third-theme-border" style="height: 21px;">Neuter</td>\r\n         <td class="third-theme-border" style="height: 21px;">any</td>\r\n         <td class="third-theme-border" style="height: 21px;">e</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p></p>\r\n<h3 class="text-center">Plural Nouns</h3>\r\n<table class="third-theme third-theme-border" style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="height: 23px;">Gender</td>\r\n         <td class="third-theme-border" style="height: 23px;">Stem Ending</td>\r\n         <td class="third-theme-border" style="height: 23px;">Add Ending</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="border-bottom: none; height: 23px;">Masculine Personal</td>\r\n         <td class="third-theme-border" style="height: 23px;">hard consonant except k, g, and r</td>\r\n         <td class="third-theme-border" style="height: 23px;">'i</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="border-top: none; border-bottom: none; height: 23px;"></td>\r\n         <td class="third-theme-border" style="height: 23px;">k, g, r, and c</td>\r\n         <td class="third-theme-border" style="height: 23px;">'y</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="border-top: none; border-bottom: none; height: 23px;"></td>\r\n         <td class="third-theme-border" style="height: 23px;">hardened or soft consonant</td>\r\n         <td class="third-theme-border" style="height: 23px;">e</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="border-top: none; border-bottom: none; height: 23px;"></td>\r\n         <td class="third-theme-border" style="height: 23px;">anin</td>\r\n         <td class="third-theme-border" style="height: 23px;">anie</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="border-top: none; height: 23px;"></td>\r\n         <td class="third-theme-border" style="height: 23px;"></td>\r\n         <td class="third-theme-border" style="height: 23px;">owie</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="border-bottom: none; height: 23px;">Masculine Non-Personal</td>\r\n         <td class="third-theme-border" style="height: 23px;">hard consonant except k and g</td>\r\n         <td class="third-theme-border" style="height: 23px;">y</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" tyle="border-top: none; border-bottom: none; height: 23px;"></td>\r\n         <td class="third-theme-border" tyle="height: 23px;">k and g</td>\r\n         <td class="third-theme-border" tyle="height: 23px;">i</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23.5px;">\r\n         <td class="third-theme-border" style="height: 23.5px;"></td>\r\n         <td class="third-theme-border" style="border-top: none; border-bottom: none; height: 23.5px;">hardened or soft consonant</td>\r\n         <td class="third-theme-border" style="height: 23.5px;">e</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="border-bottom: none; height: 23px;">Feminine</td>\r\n         <td class="third-theme-border" style="height: 23px;">hard consonant except k and g</td>\r\n         <td class="third-theme-border" style="height: 23px;">y</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="border-top: none; border-bottom: none; height: 23px;"></td>\r\n         <td class="third-theme-border" style="height: 23px;">k and g</td>\r\n         <td class="third-theme-border" style="height: 23px;">i</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="border-top: none; border-bottom: none; height: 23px;"></td>\r\n         <td class="third-theme-border" style="height: 23px;">hardened or soft consonant</td>\r\n         <td class="third-theme-border" style="height: 23px;">e</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="height: 23px;">Neuter</td>\r\n         <td class="third-theme-border" style="height: 23px;">any</td>\r\n         <td class="third-theme-border" style="height: 23px;">a</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3 class="text-center">Plural Adjectives</h3>\r\n<table class="third-theme third-theme-border" style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr>\r\n         <td class="third-theme-border">Gender</td>\r\n         <td class="third-theme-border">Stem Ending</td>\r\n         <td class="third-theme-border">Add Ending</td>\r\n      </tr>\r\n      <tr>\r\n         <td class="third-theme-border" style="border-bottom: none;">Masculine Personal</td>\r\n         <td class="third-theme-border">k, g, r, c, cz, dz</td>\r\n         <td class="third-theme-border">'y</td>\r\n      </tr>\r\n      <tr>\r\n         <td class="third-theme-border" style="border-top: none; border-bottom: none;"></td>\r\n         <td class="third-theme-border">other consonants</td>\r\n         <td class="third-theme-border">i</td>\r\n      </tr>\r\n      <tr>\r\n         <td class="third-theme-border">Masculine Non-Personal, Feminine, Neuter</td>\r\n         <td class="third-theme-border">any</td>\r\n         <td class="third-theme-border">e</td>\r\n      </tr>\r\n   </tbody>\r\n</table>	1	2	nominative-case	cases	\N
10	pronounstest	contentddddd	4	2	pronounstest	pronouns	\N
11	pronounsbet	contffffent	3	2	pronounsbet	pronouns	\N
15	pronouns33	contentd	2	2	pronouns33	pronouns	\N
6	Possessive Pronouns	<h1>sDDDaeefyin</h1>	5	2	possessive-pronouns	pronouns	\N
18	Genitive Case	<h2>Content</h2>\r\n<div class="guide-top-text">\r\n<ul>\r\n   <li><a class="third-theme" href="#usage">Usage</a></li>\r\n   <li>\r\n      <a class="third-theme" href="#noun-singular">Singular Nouns</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#noun-singular-masculine-anim">Masculine Animate</a></li>\r\n         <li><a class="third-theme" href="#noun-singular-masculine-inanim">Masculine Inanimate</a></li>\r\n         <li><a class="third-theme" href="#noun-singular-feminine">Feminine</a></li>\r\n         <li><a class="third-theme" href="#noun-singular-neuter">Neuter</a></li>\r\n      </ul>\r\n   </li>\r\n   <li>\r\n      <a class="third-theme" href="#adj-singular">Singular Adjectives</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#adj-singular-masculine">Masculine</a></li>\r\n         <li><a class="third-theme" href="#adj-singular-feminine">Feminine</a></li>\r\n         <li><a class="third-theme" href="#adj-singular-neuter">Neuter</a></li>\r\n      </ul>\r\n   </li>\r\n   <li>\r\n      <a class="third-theme" href="#noun-plural">Plural Nouns</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#noun-plural-masculine">Masculine</a></li>\r\n         <li><a class="third-theme" href="#noun-plural-feminine">Feminine</a></li>\r\n         <li><a class="third-theme" href="#noun-plural-neuter">Neuter</a></li>\r\n      </ul>\r\n   </li>\r\n   <li>\r\n      <a class="third-theme" href="#adj-plural">Plural Adjectives</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#adj-plural-allgenders">All Genders</a></li>\r\n      </ul>\r\n   </li>\r\n   <li><a class="third-theme" href="#declension-tables">Declension Tables</a></li>\r\n</ul>\r\n</div>\r\n<div class="third-theme">\r\n<p>\r\nThe genitive is the second of the 7 cases.\r\nIt has many different uses, including possession. It literally means "of".\r\nIt answers the questions:\r\n- <strong>kogo?</strong> (who?)\r\n- <strong>czego?</strong> (what?)\r\n</p>\r\n<h2><a id="usage"></a>Genitive Case Usage</h2>\r\n<h4>1. Possession</h4>\r\n<p>In English, the genitive is expressed by adding <strong>'s</strong> to the end of nouns, or by using <strong>of</strong>.\r\nTo jest dom <strong>mojego brata</strong>.\r\n(This is <strong>my brother's</strong> house / This is the house <strong>of my brother</strong>)\r\nWidz─Ö samoch├│d<strong> mojego przyjaciela</strong>.\r\n(I see <strong>my friend's</strong> car / I see the car <strong>of my friend</strong>)\r\n</p>\r\n<h4>2. As the direct object of all negated verbs<b>\r\n   </b>\r\n</h4>\r\n<p>For verbs that are not negated, the accusative is used instead.\r\nNie lubi─Ö<strong> szko┼éy</strong>.\r\n(I do not like <strong>school</strong>)\r\nNie znam <strong>jej</strong>.\r\n(I do not know <strong>her</strong>)\r\nThis sentence is in the genitive because <strong>nie</strong> (not) negates the verb.\r\nZnam j─à.\r\n(I know her)\r\nThis sentence is in the accusative because the verb is not negated.\r\n</p>\r\n<h4>3. After certain verbs, even if they are not negated.</h4>\r\n<p>There are many such verbs. These include <strong>szuka─ç</strong> (look for), <strong>potrzebowa─ç</strong> (need), <strong>ba─ç si─Ö</strong> (be afraid of), <strong>dotyka─ç </strong>(touch), <strong>nienawidzi─ç</strong> (hate), <strong>pr├│bowa─ç</strong> (attempt/try), <strong>uczy─ç si─Ö </strong>(study), <strong>s┼éucha─ç </strong>(listen to), <strong>unika─ç</strong> (avoid) and many more. Most dictionaries indicate if a verb requires the genitive, so that is the best place to learn these verbs.\r\nFor a longer list of verbs that use the genitive, visit <a href="https://learneasypolish.com/grammar/verbs/verbs-by-cases/#genitive">Verbs by Cases</a>.\r\nSzukam <strong>czego┼¢</strong>.\r\n(I am looking for <strong>something</strong>)\r\nPotrzebuj─Ö <strong>pomocy</strong>.\r\n(I need <strong>help</strong>)\r\n</p>\r\n<h4>4. With certain prepositions</h4>\r\n<p>These include: <strong>wed┼éug</strong> (according to), <strong>obok</strong> (alongside, next to), <strong>wsr├│d</strong> (among), <strong>oko┼éo</strong> (around, about), <strong>u</strong> (at), <strong>opr├│cz</strong> (besides), <strong>podczas</strong> (during), <strong>dla</strong> (for), <strong>od</strong> (from, since, then), <strong>z</strong> (from), <strong>zamiast</strong> (instead of), <strong>do</strong> (to) and more.\r\nFor more genitive prepositions, visit this <a href="https://learneasypolish.com/grammar/other-parts-of-speech/prepositions/#genitive">list of prepositions</a>.\r\n<strong>Wed┼éug kobiety</strong>, on nie ma racji.\r\n(<strong>According to the woman</strong>, he is wrong)\r\nMia┼éo to miejsce <strong>oko┼éo tamtego roku</strong>.\r\n(That happened <strong>around that year</strong>)\r\nCa┼éa rodzina jest <strong>u babci</strong>.\r\n(The whole family is <strong>at gramma's</strong>)\r\n<strong>Opr├│cz tej opcji</strong>, nie ma innej.\r\n(<strong>Besides this option</strong>, there is not another one)\r\nJa go widzia┼éem <strong>podczas meczu</strong>.\r\n(I saw him during the game)\r\nZrobi┼éem to <strong>dla brata</strong>.\r\n(I did this for my brother))\r\nJad─Ö <strong>do domu</strong>.\r\n(I am going <strong>home</strong>)\r\n</p>\r\n<h4>5. With quantities</h4>\r\n<p>Wiele <strong>os├│b</strong>.\r\n(Many <strong>people</strong>.)\r\nButelka <strong>soku</strong>.\r\n(A bottle <strong>of juice</strong>.)\r\nFunt <strong>jedzenia</strong>.\r\n(A pound<strong> of food</strong>.)\r\n</p>\r\n<h4>6. With certain numbers</h4>\r\n<p>Siedem <strong>os├│b</strong>.\r\n(Seven <strong>people</strong>.)\r\nSto <strong>ksi─à┼╝ek</strong>.\r\n(One hundred <strong>books</strong>.)\r\n</p>\r\n<h4>7. With certain phrases related to time and day</h4>\r\n<p><strong>Pewnego dnia</strong>.\r\n(<strong>One day</strong>.)\r\n<strong>Ka┼╝dego dnia</strong>.\r\n(<strong>Every day</strong>.)\r\n</p>\r\n<h2><b>Genitive Case Declension</b></h2>\r\n<h3><a id="noun-singular"></a>Genitive Singular Nouns</h3>\r\n<p>Masculine genitive singular nouns are divided into masculine animate and masculine inanimate nouns.\r\n</p>\r\n    <h4><a id="noun-singular-masculine-anim"></a>Masculine Animate</h4>\r\n<p>- Receive <strong>a</strong> ending.</p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>rekin (shark)\r\n            s─Öp (vulture)\r\n            ssak (mammal)\r\n         </td>\r\n         <td>rekin<b>a</b>\r\n            s─Öp<b>a</b>\r\n            ssak<strong>a</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-singular-masculine-inanim"></a>Masculine Inanimate</h4>\r\n<p>- Most receive <strong>u</strong> ending, but some receive <strong>a</strong> ending. There is no strict rule as to which masculine inanimate nouns receive which ending, so the endings of these nouns should be memorized.\r\n</p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>dom (house)\r\n            m┼éot (hammer)\r\n            d┼éugopis (pen)\r\n            komputer (computer)\r\n         </td>\r\n         <td>dom<strong>u</strong>\r\n            m┼éot<strong>a</strong>\r\n            d┼éugopis<strong>u</strong>\r\n            komputer<strong>a</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-singular-feminine"></a>Feminine</h4>\r\n<p>- If it ends with a hard consonant, except k and g, or with a hardened consonant, receives <strong>y</strong> ending.\r\n</p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>kobie<strong>t</strong>a (woman)\r\n            no<strong>c</strong> (night)\r\n            dziewczy<strong>n</strong>a (girl)\r\n         </td>\r\n         <td>kobiet<strong>y</strong>\r\n            noc<strong>y</strong>\r\n            dziewczyn<strong>y</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If it ends with a soft consonant or k or g, receive <strong>i</strong> ending.\r\n</p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>war<strong>g</strong>a (lip)\r\n            pi┼é<strong>k</strong>a (ball)\r\n            lekc<strong>j</strong>a (lesson)\r\n         </td>\r\n         <td>warg<strong>i</strong>\r\n            pi┼ék<strong>i</strong>\r\n            lekcj<strong>i</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-singular-neuter"></a>Neuter</h4>\r\n<p>- Receive <strong>a</strong> ending.\r\n</p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>okno (window)\r\n            pole (field)\r\n            biuro (office)\r\n         </td>\r\n         <td>okn<strong>a</strong>\r\n            pol<strong>a</strong>\r\n            biur<strong>a</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n\r\n<h3><a id="adj-singular"></a>Genitive Singular Adjectives</h3>\r\n<h4><a id="adj-singular-masculine"></a>Masculine</h4>\r\n<p>- Receive <strong>ego</strong> ending.\r\n</p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            tani (cheap)\r\n         </td>\r\n         <td>du┼╝<strong>ego</strong>\r\n            tani<strong>ego</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="adj-singular-feminine"></a>Feminine</h4>\r\n<p>- Receive <strong>ej</strong> ending.\r\n<p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            tani (cheap)\r\n         </td>\r\n         <td>du┼╝<strong>ej</strong>\r\n            tani<strong>ej</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="adj-singular-neuter"></a>Neuter</h4>\r\n<p>- Receive <strong>ego</strong> ending.\r\n<p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            tani (cheap)\r\n         </td>\r\n         <td>du┼╝<strong>ego</strong>\r\n            tani<strong>ego</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3><b><a id="noun-plural"></a>Genitive Plural Nouns\r\n   </b>\r\n</h3>\r\n<p>For the genitive plurals feminine and neuter nouns, it is important to understand the role of the <a href="#https://learneasypolish.com/grammar/polish-vowel-consonant-changes/#mobilee">mobile e</a> in polish.\r\n</p>\r\n<h4><a id="noun-plural-masculine"></a>Masculine</h4>\r\n<p>- If it ends with a hard consonant or sometimes c, receives <strong>├│w</strong> ending.\r\n</p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>studen<strong>t</strong> (student)\r\n            widele<strong>c</strong> (fork)\r\n            kuzy<strong>n</strong> (cousin)\r\n            ch┼éopie<strong>c</strong> (boy)\r\n         </td>\r\n         <td>student<strong>├│w</strong>\r\n            widelc<strong>├│w</strong> (*notice the removal of e)\r\n            kuzyn<strong>├│w</strong>\r\n            ch┼éopc<strong>├│w</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If it ends with a hardened consonant, usually receives <strong>y</strong> ending, but sometimes <strong>├│w</strong>.\r\n    <p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>klu<strong>cz</strong> (key)\r\n            me<strong>cz</strong> (match)\r\n         </td>\r\n         <td>klucz<strong>y</strong>\r\n            mecz<strong>├│w</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If it ends with a soft consonant, receives <strong>i</strong> or <strong>├│w</strong> ending.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>go┼¢<strong>─ç</strong> (guest)\r\n            ce<strong>l</strong> (goal)\r\n            nauczycie<strong>l</strong> (teacher)\r\n         </td>\r\n         <td>go┼¢c<strong>i</strong>\r\n            cel<strong>├│w</strong>\r\n            nauczyciel<strong>i</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- For just a couple masculine nouns ending with -anin, simply remove the <strong>-in</strong>.\r\n</p>\r\n    <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Rosj<strong>anin</strong> (Russian)\r\n            S┼éowi<strong>anin</strong> (Slav)\r\n         </td>\r\n         <td>Rosjan\r\n            S┼éowian\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>However, some of these nouns get the <strong>├│w</strong> ending.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Ameryk<strong>anin</strong> (American)\r\n            chrze┼¢cij<strong>anin</strong> (Christian)\r\n         </td>\r\n         <td>Amerykan<strong>├│w</strong>\r\n            chrze┼¢cijan<strong>├│w</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-plural-feminine"></a>Feminine</h4>\r\n<p>- If it ends with an a, most of the time <strong>drop the a</strong>. Many vowel changes can occur as a result, such as <strong>o</strong> ΓåÆ <strong>├│</strong>, <strong>ni</strong> ΓåÆ <strong>┼ä</strong>, <strong>si ΓåÆ ┼¢, ci ΓåÆ</strong> <strong>─ç</strong>, and an insertion of the letter <strong>e</strong>.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>kobiet<strong>a</strong> (woman)\r\n            osoba (person)\r\n            ksi─à┼╝k<strong>a</strong> (book)\r\n            jaskini<strong>a</strong> (cave)\r\n            babci<strong>a</strong> (gramma)\r\n         </td>\r\n         <td>kobiet\r\n            os<strong>├│</strong>b\r\n            ksi─à┼╝<strong>e</strong>k\r\n            jaski<strong>┼ä</strong>\r\n            bab<strong>─ç</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If it ends with ja, it has the <strong>same ending as the feminine singular genitive</strong>.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Genitive Singular</td>\r\n         <td>Genitive Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>lekc<strong>ja</strong> (lesson)\r\n            audyc<strong>j</strong>a (broadcast)\r\n         </td>\r\n         <td>lekcj<strong>i</strong>\r\n            audycj<strong>i</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If it ends with ia and is of foreign origin, <strong>drop the a and replace with i</strong><strong> (i.e. ending with "ii")</strong>\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>histor<strong>ia</strong> (history, story)\r\n            chirurg<strong>ia</strong> (surgery)\r\n            gospos<strong>ia</strong> (maid)\r\n         </td>\r\n         <td>histor<strong>ii</strong>\r\n            chirurg<strong>ii</strong>\r\n            gospo┼¢\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>Note: the noun gosposia ends with "ia", but is not of foreign origin, so does not receive the double ii.\r\n- If it ends with a consonant, it has the <strong>same ending as the feminine singular genitive</strong>.\r\n</p><table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Genitive Singular</td>\r\n         <td>Genitive Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>noc<strong>y</strong> (night)\r\n            pow├│d<strong>┼║</strong> (flood)\r\n            smycz<strong>y</strong> (leash)\r\n            ┼é├│d<strong>┼║</strong> (boat)\r\n         </td>\r\n         <td>noc<strong>y</strong>\r\n            powodz<strong>i</strong>\r\n            smycz<strong>y</strong>\r\n            ┼éodz<strong>i</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-plural-neuter"></a>Neuter</h4>\r\n<p>- Usually, <strong>drop</strong><strong> the last letter</strong>. Like in the feminine plural, vowel changes can occur, such as <strong>o ΓåÆ ├│</strong>, <strong>ni</strong> ΓåÆ <strong>┼ä</strong>, <strong>ci</strong> ΓåÆ <strong>─ç</strong>, <strong>si ΓåÆ ┼¢</strong>, <strong>─Ö ΓåÆ ─à</strong>, and an insertion of <strong>e</strong>.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>miasto (town)\r\n            mieszkanie (flat)\r\n            biurko (desk)\r\n            ┼¢wi─Öto (holiday)\r\n            pole (field)\r\n         </td>\r\n         <td>miast\r\n            mieszka<strong>┼ä</strong>\r\n            biur<strong>e</strong>k\r\n            ┼¢wi<strong>─à</strong>t\r\n            p<strong>├│</strong>l\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- Some ending in a hardened consonant receive <strong>y</strong> ending.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>wybrze<strong>┼╝</strong>e (seacoast)\r\n            zbo<strong>cz</strong>e (slope)\r\n         </td>\r\n         <td>wybrze┼╝<strong>y</strong>\r\n            zbocz<strong>y</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If it ends with um, remove <strong>um</strong> and add <strong>├│w</strong>.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>muzeum (museum)</td>\r\n         <td>muze<strong>├│w</strong></td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n\r\n<h3><b><a id="adj-plural"></a>Genitive Plural Adjectives</b></h3>\r\n<p>The genitive plural adjectives are the same for each gender.\r\n</p>\r\n    <h4><a id="adj-plural-allgenders"></a>All Genders</h4>\r\n<p>- If it ends in a hard consonant, except k or g, or hardened consonant, receives <strong>ych</strong> ending.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            inny (different)\r\n         </td>\r\n         <td>du┼╝<strong>ych</strong>\r\n            inn<strong>ych</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If it ends in soft consonant, or k or g, receives <strong>ich</strong> ending.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Genitive Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>tani (cheap)\r\n            wysoki (tall)\r\n         </td>\r\n         <td>tan<strong>ich</strong>\r\n            wysok<strong>ich</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n</div>\r\n<a id="declension-tables"></a><h2 class="text-center">Declension Tables</h2>\r\n<h3 class="text-center">Singular Nouns</h3>\r\n<table style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr>\r\n         <td>Gender</td>\r\n         <td>Stem Ending</td>\r\n         <td>Add Ending</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Masculine Animate</td>\r\n         <td>any</td>\r\n         <td>a</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Masculine Inanimate</td>\r\n         <td>any</td>\r\n         <td>u, a</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-bottom: none;">Feminine</td>\r\n         <td>hard or hardened consonant, except k and g</td>\r\n         <td>y</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none; border-bottom: none;"></td>\r\n         <td>soft consonant, k and g</td>\r\n         <td>i</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Neuter</td>\r\n         <td>any</td>\r\n         <td>a</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3 class="text-center">Singular Adjectives</h3>\r\n<table style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr>\r\n         <td>Gender</td>\r\n         <td>Stem Ending</td>\r\n         <td>Add Ending</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Masculine</td>\r\n         <td>any</td>\r\n         <td>ego</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Feminine</td>\r\n         <td>any</td>\r\n         <td>ej</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Neuter</td>\r\n         <td>any</td>\r\n         <td>ego</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3 class="text-center">Plural Nouns</h3>\r\n<table style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr>\r\n         <td>Gender</td>\r\n         <td>Stem Ending</td>\r\n         <td>Add Ending</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-bottom: none;">Masculine</td>\r\n         <td>hard consonant, c</td>\r\n         <td>\r\n            <p>&oacute;w</p>\r\n         </td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none;border-bottom: none;"></td>\r\n         <td>hardened consonant</td>\r\n         <td>y, &oacute;w</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none; border-bottom: none;"></td>\r\n         <td>soft consonant</td>\r\n         <td>i, &oacute;w</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-bottom: none;">Feminine</td>\r\n         <td>ja</td>\r\n         <td>ji</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none; border-bottom: none;"></td>\r\n         <td>ia</td>\r\n         <td>ii</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none; border-bottom: none;"></td>\r\n         <td>other</td>\r\n         <td>drop e</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-bottom: none;">Neuter</td>\r\n         <td>um</td>\r\n         <td>&oacute;w</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none; border-bottom: none;"></td>\r\n         <td>some hardened consonants</td>\r\n         <td>y</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none; border-bottom: none;"></td>\r\n         <td>other</td>\r\n         <td>drop e</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3 class="text-center">Plural Adjectives</h3>\r\n<table style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr>\r\n         <td>Gender</td>\r\n         <td>Stem Ending</td>\r\n         <td>Add Ending</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-bottom: none;">Any</td>\r\n         <td>hard or hardened consonant, except k and g</td>\r\n         <td>ych</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none; border-bottom: none;"></td>\r\n         <td>other consonants</td>\r\n         <td>ich</td>\r\n      </tr>\r\n   </tbody>\r\n</table>	2	2	genitive-case	cases	\N
20	Dative Case	<h2>Content</h2>\r\n<div class="guide-top-text">\r\n<ul>\r\n   <li><a class="third-theme" href="#usage">Usage</a></li>\r\n   <li>\r\n      <a class="third-theme" href="#noun-singular">Singular Nouns</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#noun-singular-masculine">Masculine</a></li>\r\n         <li><a class="third-theme" href="#noun-singular-feminine">Feminine</a></li>\r\n         <li><a class="third-theme" href="#noun-singular-neuter">Neuter</a></li>\r\n      </ul>\r\n   </li>\r\n   <li>\r\n      <a class="third-theme" href="#adj-singular">Singular Adjectives</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#adj-singular-masculine">Masculine</a></li>\r\n         <li><a class="third-theme" href="#adj-singular-feminine">Feminine</a></li>\r\n         <li><a class="third-theme" href="#adj-singular-neuter">Neuter</a></li>\r\n      </ul>\r\n   </li>\r\n   <li>\r\n      <a class="third-theme" href="#noun-plural">Plural Nouns</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#noun-plural-allgenders">All Genders</a></li>\r\n      </ul>\r\n   </li>\r\n   <li>\r\n      <a class="third-theme" href="#adj-plural">Plural Adjectives</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#adj-plural-allgenders">All Genders</a></li>\r\n      </ul>\r\n   </li>\r\n   <li><a class="third-theme" href="#declension-tables">Declension Tables</a></li>\r\n</ul>\r\n</div>\r\n<div class="third-theme">\r\n<p>\r\n   The dative is the third of the 7 cases.\r\n   Its main use is as the indirect object.\r\n   It answers the questions:\r\n   - <strong>komu</strong><strong>? </strong>(to/for who)\r\n   - <strong>czemu?</strong> (to/for what)\r\n</p>\r\n<h2><a id="usage"></a>Dative Case Usage</h2>\r\n<h4>1. Indirect object</h4>\r\n<p>Da┼éem <strong>ch┼éopcu</strong> pi┼ék─Ö.\r\n   (I gave <strong>the boy</strong> the ball)\r\n   Opowiedzia┼éem <strong>dzieciom</strong> histori─Ö.\r\n   (I told <strong>the kids</strong> a story)\r\n</p>\r\n<h4>2. In impersonal expressions</h4>\r\n<p>Jest <strong>kobietom</strong> zimno.\r\n   (<strong>The women</strong> are cold)\r\n   Jest <strong>im</strong> trudno.\r\n   (It is difficult <strong>for them</strong>).\r\n</p>\r\n<h4>3. With certain prepositions</h4>\r\n<p>These include: <strong>dzi─Öki</strong> (thanks to), <strong>ku</strong> (towards, to), <strong>przeciw/przeciwko</strong> (against), and more.\r\n   Dzi─Öki <strong>szkole</strong>, mam du┼╝o wiedzy.\r\n   (Thanks to school, I have a lot of knowledge)\r\n   Ku <strong>mojemu zdziwieniu</strong>.\r\n   (To my surprise)\r\n</p>\r\n<h2>Dative Case Declension</h2>\r\n<h3><a id="noun-singular"></a>Dative Singular Nouns</h3>\r\n<h4><a id="noun-singular-masculine"></a>Masculine</h4>\r\n<p>- Mostly receive <strong>owi</strong> ending.\r\n</p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Dative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Marek\r\n            syn (son)\r\n            budynek (building)\r\n         </td>\r\n         <td>Mark<strong>owi</strong>\r\n            syn<strong>owi</strong>\r\n            budynk<strong>owi</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- A few nouns, mostly monosyllabic ones, receive <strong>u</strong> ending.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Dative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>B├│g (God)\r\n            pies (dog)\r\n            ch┼éopiec (boy)\r\n         </td>\r\n         <td>Bog<strong>u</strong>\r\n            ps<strong>u</strong>\r\n            ch┼éopc<strong>u</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-singular-feminine"></a>Feminine</h4>\r\n<p>- If it ends with a hard consonant, the hard consonant softens and receives <strong>e</strong> ending.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Dative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>c├│r<strong>k</strong>a (daughter)\r\n            kobie<strong>t</strong>a (woman)\r\n            dziu<strong>r</strong>a (hole)\r\n         </td>\r\n         <td>c├│r<strong>ce</strong>\r\n            kobie<strong>cie</strong>\r\n            dziu<strong>rze</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If it ends with a hardened consonant, receives <strong>y</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Dative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>pra<strong>c</strong>a (work)\r\n            no<strong>c</strong> (night)\r\n            smy<strong>cz</strong> (leash)\r\n         </td>\r\n         <td>prac<strong>y</strong>\r\n            noc<strong>y</strong>\r\n            smycz<strong>y</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>Praca (work)               Po┼¢wi─Öcam si─Ö mojej prac<strong>y</strong> (I devote myself to my work).\r\n- If it ends with a soft consonant, receives <strong>i</strong> ending.\r\n</p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative</td>\r\n         <td>Dative</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Dar<strong>i</strong>a\r\n            lekc<strong>j</strong>a (lesson)\r\n            filozof<strong>i</strong>a (philosophy)\r\n         </td>\r\n         <td>Dari<strong>i</strong>\r\n            lekcj<strong>i</strong>\r\n            filozofi<strong>i</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-singular-neuter"></a>Neuter</h4>\r\n<p>- Receive <strong>u</strong> ending.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Dative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>dziecko (child)\r\n            pole (field)\r\n            ciep┼éo (warmth)\r\n         </td>\r\n         <td>dzieck<strong>u</strong>\r\n            pol<strong>u</strong>\r\n            ciep┼é<strong>u</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3><a id="adj-singular"></a>Dative Singular Adjectives</h3>\r\n<h4><a id="adj-singular-masculine"></a>Masculine</h4>\r\n<p>- Receive <strong>emu</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Dative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            tani (cheap)\r\n         </td>\r\n         <td>du┼╝<strong>emu</strong>\r\n            tani<strong>emu</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="adj-singular-feminine"></a>Feminine</h4>\r\n<p>- Receive <strong>ej</strong> ending\r\n</p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Dative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            tani (cheap)\r\n         </td>\r\n         <td>du┼╝<strong>ej</strong>\r\n            tani<strong>ej</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="adj-singular-neuter"></a>Neuter</h4>\r\n<p>- Receive <strong>emu</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Dative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            tani (cheap)\r\n         </td>\r\n         <td>du┼╝<strong>emu</strong>\r\n            tani<strong>emu</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3><a id="noun-plural"></a>Dative Plural Nouns<b>\r\n   </b>\r\n</h3>\r\n<p>All dative plural nouns receive the same ending.\r\n</p>\r\n    <h4><a id="noun-plural-allgenders"></a>All Genders</h4>\r\n    <p>- Receive <strong>om</strong> ending.\r\n        </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Dative Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>osoba (person)\r\n            syn (son)\r\n            dziewczyna (girl)\r\n         </td>\r\n         <td>osob<strong>om</strong>\r\n            syn<strong>om</strong>\r\n            dziewczyn<strong>om</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3><a id="adj-plural"></a>Dative Plural Adjectives</h3>\r\n<h4><a id="adj-plural-allgenders"></a>All Genders</h4>\r\n<p>- If it ends with a hard consonant, except k and g, or a hardened consonant, receives <strong>ym</strong> ending.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Dative Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            inny (different)\r\n         </td>\r\n         <td>du┼╝<strong>ym</strong>\r\n            inn<strong>ym</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If it ends with a soft consonant, or k or g, receives <strong>im</strong> ending.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Dative Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>tani (cheap)\r\n            wysoki (tall)\r\n         </td>\r\n         <td>tan<strong>im</strong>\r\n            wysok<strong>im</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n</div>\r\n<a id="declension-tables"></a><h2 class="text-center">Declension Tables</h2>\r\n<h3 class="text-center">Singular Nouns</h3>\r\n<table style="width: 50%;" border="2">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Gender</td>\r\n<td>&nbsp;Stem Ending</td>\r\n<td>Add Ending&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Masculine</td>\r\n<td>any&nbsp;</td>\r\n<td>owi, y&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style="border-bottom: none;">Feminine&nbsp;</td>\r\n<td>hard consonant&nbsp;</td>\r\n<td>'e&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style="border-top: none; border-bottom: none;">&nbsp;</td>\r\n<td>hardened consonant&nbsp;</td>\r\n<td>y&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style="border-top: none; border-bottom: none;">&nbsp;</td>\r\n<td>soft consonant&nbsp;</td>\r\n<td>i&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Neuter&nbsp;</td>\r\n<td>any&nbsp;</td>\r\n<td>e&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3 class="text-center">Singular Adjectives</h3>\r\n<table style="width: 50%;" border="2">\r\n    <tbody>\r\n    <tr>\r\n    <td>&nbsp;Gender</td>\r\n    <td>&nbsp;Stem Ending</td>\r\n    <td>&nbsp;Add Ending</td>\r\n    </tr>\r\n    <tr>\r\n    <td>&nbsp;Masculine</td>\r\n    <td>any</td>\r\n    <td>emu&nbsp;</td>\r\n    </tr>\r\n    <tr>\r\n    <td>Feminine&nbsp;</td>\r\n    <td>any&nbsp;</td>\r\n    <td>ej&nbsp;</td>\r\n    </tr>\r\n    <tr>\r\n    <td>Neuter&nbsp;</td>\r\n    <td>any&nbsp;</td>\r\n    <td>emu&nbsp;</td>\r\n    </tr>\r\n    </tbody>\r\n    </table>\r\n    <h3 class="text-center">Plural Nouns</h3>\r\n    <table style="width: 50%;" border="2">\r\n        <tbody>\r\n        <tr>\r\n        <td>&nbsp;Gender</td>\r\n        <td>&nbsp;Stem Ending</td>\r\n        <td>&nbsp;Add Ending</td>\r\n        </tr>\r\n        <tr>\r\n        <td>&nbsp;Any</td>\r\n        <td>any&nbsp;</td>\r\n        <td>om&nbsp;</td>\r\n        </tr>\r\n        </tbody>\r\n        </table>\r\n\r\n        <h3 class="text-center">Plural Adjectives</h3>\r\n        <table style="width: 50%;" border="2">\r\n            <tbody>\r\n            <tr>\r\n            <td>&nbsp;Gender</td>\r\n            <td>&nbsp;Stem Ending</td>\r\n            <td>&nbsp;Add Ending</td>\r\n            </tr>\r\n            <tr>\r\n            <td style="border-bottom: none;">&nbsp;Any</td>\r\n            <td>&nbsp;hard or hardened consonant, except k and g</td>\r\n            <td>&nbsp;ym</td>\r\n            </tr>\r\n            <tr>\r\n            <td style="border-top: none; border-bottom: none;">&nbsp;</td>\r\n            <td>&nbsp;other consonant</td>\r\n            <td>im&nbsp;</td>\r\n            </tr>\r\n            </tbody>\r\n            </table>	3	2	dative-case	cases	\N
19	Accusative Case	<h2>Content</h2>\r\n<div class="guide-top-text">\r\n<ul>\r\n   <li><a class="third-theme" href="#usage">Usage</a></li>\r\n   <li>\r\n      <a class="third-theme" href="#noun-singular">Singular Nouns</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#noun-singular-masculine-anim">Masculine Animate</a></li>\r\n         <li><a class="third-theme" href="#noun-singular-masculine-inanim">Masculine Inanimate</a></li>\r\n         <li><a class="third-theme" href="#noun-singular-feminine">Feminine</a></li>\r\n         <li><a class="third-theme" href="#noun-singular-neuter">Neuter</a></li>\r\n      </ul>\r\n   </li>\r\n   <li>\r\n      <a class="third-theme" href="#noun-adj">Singular Adjectives</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#noun-adj-masculine-anim">Masculine Animate</a></li>\r\n         <li><a class="third-theme" href="#adj-singular-masculine-inanim">Masculine Inanimate</a></li>\r\n         <li><a class="third-theme" href="#adj-singular-feminine">Feminine</a></li>\r\n         <li><a class="third-theme" href="#adj-singular-neuter">Neuter</a></li>\r\n      </ul>\r\n   </li>\r\n   <li>\r\n      <a class="third-theme" href="#noun-plural">Plural Nouns</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#noun-plural-masculine-pers">Masculine Personal</a></li>\r\n         <li><a class="third-theme" href="#noun-plural-masculine-nonpers">Masculine Non-Personal</a></li>\r\n         <li><a class="third-theme" href="#noun-plural-feminine">Feminine</a></li>\r\n         <li><a class="third-theme" href="#noun-plural-neuter">Neuter</a></li>\r\n      </ul>\r\n   </li>\r\n   <li>\r\n      <a class="third-theme" href="#adj-plural">Plural Adjectives</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#adj-plural-masculine-pers">Masculine Personal</a></li>\r\n         <li><a class="third-theme" href="#adj-plural-othergenders">Masculine Non-Personal, Feminine, and Neuter</a></li>\r\n      </ul>\r\n   </li>\r\n   <li><a class="third-theme" href="#declension-tables">Declension Tables</a></li>\r\n</ul>\r\n</div>\r\n<div class="third-theme">\r\n<p>\r\nThe accusative is the fourth of the 7 cases.\r\nIt is mainly used as the direct object.\r\nIt answers the questions:\r\n- <strong>kogo?</strong> (who?)\r\n- <strong>co</strong><strong>?</strong> (what?)\r\n</p>\r\n<h2><a id="usage"></a>Accusative Case Usage</h2>\r\n<h4>1. Direct object in affirmative sentences</h4>\r\n<p>For verbs that are negated, the genitive is used instead.\r\nKopn─à┼éem <strong>pi┼ék─Ö</strong>.\r\n(I kicked <strong>the ball</strong>)\r\nKupi┼éem <strong>nowy dom</strong>.\r\n(I bought <strong>a new house</strong>)\r\n</p>\r\n<h4>2. With certain prepositions</h4>\r\n<p>These include: <strong>o</strong> (against, up against), <strong>na</strong> (for), <strong>po</strong> (for), <strong>w</strong> (into, on), <strong>przez</strong> (through, across, for), and more. Note that the prepositions o, na, po, and w are also used in the locative case. However, these prepositions are used in the accusative to put more emphasis on <span style="text-decoration: underline;">motion.\r\nA list of more <a href="https://learneasypolish.com/grammar/other-parts-of-speech/prepositions/#accusative">accusative prepositions</a> is provided.\r\nKsi─à┼╝ka jest oparta o <strong>┼¢cian─Ö</strong>.\r\n(The book is leaning <strong>against the wall</strong>)\r\nWyje┼╝d┼╝am <strong>po piwo</strong>.\r\n(I am going <strong>for beer</strong>)\r\n<strong>W</strong> <strong>poniedzia┼éek</strong>, mam szko┼é─Ö.\r\n(<strong>On monday</strong>, I have school)\r\nRobi┼éem to <strong>przez</strong> <strong>ca┼ée ┼╝ycie</strong>.\r\n(I have been doing this for my whole life)\r\nAccusative vs Locative Prepositions\r\n1. Jad─Ö <strong>na</strong> <strong>mecz</strong>.\r\n(I am going <strong>for the game</strong>)\r\n2. Jestem na meczu.\r\n(I am at the game).\r\nThe word mecz (match) in sentence 1 is in the accusative after the preposition na because there is motion; "I" am <span style="text-decoration: underline;">going to the game. In sentence 2, mecz is in the locative because there is no motion.\r\n</p>\r\n    <h4>3. With certain phrases regarding time</h4>\r\n<p>Pracowa┼éem <strong>ca┼é─à noc</strong>.\r\n(I worked the whole night)\r\nTen sklep jest otwarty <strong>ca┼é─à dob─Ö</strong>.\r\n(This store is open 24 hours a day)\r\n</p>\r\n<h2>Accusative Case Declension</h2>\r\n<h3><a id="noun-singular"></a>Accusative Singular Nouns</h3>\r\n<p>Masculine accusative singular nouns are divided into animate and inanimate.\r\n    </p>\r\n<h4><a id="noun-singular-masculine-anim"></a>Masculine Animate</h4>\r\n<p>- Receive <strong>a</strong> ending\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Accusative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>jastrz─àb (hawk)\r\n            kret (mole)\r\n            je┼╝ (hedgehog)\r\n         </td>\r\n         <td>jastrz─Öb<strong>a</strong>\r\n            kret<strong>a</strong>\r\n            je┼╝<strong>a</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="#noun-singular-masculine-inanim" style="color: #000000; text-decoration: underline;"></a>Masculine Inanimate</h4>\r\n<p>- Receive no ending (same form as the nominative masculine singular).\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Accusative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>komputer (computer)\r\n            st├│┼é (table)\r\n            sweter (sweater)\r\n         </td>\r\n         <td>komputer\r\n            st├│┼é\r\n            sweter\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-singular-feminine"></a>Feminine</h4>\r\n<p>- If it ends with an "a", receives <strong>─Ö</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Accusative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>bluzk<strong>a</strong> (blouse)\r\n            stop<strong>a</strong> (foot)\r\n            r─Ök<strong>a</strong> (hand)\r\n         </td>\r\n         <td>bluzk<strong>─Ö</strong>\r\n            stop<strong>─Ö</strong>\r\n            r─Ök<strong>─Ö</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If it ends with a consonant, receives no ending (same form as the nominative feminine singular).\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Accusative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>no<strong>c</strong> (night)\r\n            ┼é├│d<strong>┼║</strong> (boat)\r\n            pow├│d<strong>┼║</strong> (flood)\r\n         </td>\r\n         <td>noc\r\n            ┼é├│d┼║\r\n            pow├│d┼║\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-singular-neuter"></a>Neuter</h4>\r\n<p>- Receive no ending (same form as the nominative neuter singular)\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Accusative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>cia┼éo (body)\r\n            czo┼éo (forehead)\r\n            gniazdo (nest)\r\n         </td>\r\n         <td>cia┼éo\r\n            czo┼éo\r\n            gniazdo\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n\r\n<h3><a id="adj-singular"></a>Accusative Singular Adjectives</h3>\r\n<p>Masculine accusative singular adjectives are divided into animate and inanimate.\r\n    </p>\r\n<h4><a id="adj-singular-masculine-anim"></a>Masculine Animate</h4>\r\n<p>- Receive <strong>ego</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Accusative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            tani (cheap)\r\n         </td>\r\n         <td>du┼╝<strong>ego</strong>\r\n            tani<strong>ego</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="adj-singular-masculine-inanim"></a>Masculine Inanimate</h4>\r\n<p>- Receive <strong>y</strong> or <strong>i</strong> ending (same form as masculine nominative singular adjective)\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Accusative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            tani (cheap)\r\n         </td>\r\n         <td>du┼╝<strong>y</strong>\r\n            tan<strong>i</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="adj-singular-feminine"></a>Feminine</h4>\r\n<p>- Receive <strong>─à</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Accusative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            tani (cheap)\r\n         </td>\r\n         <td>du┼╝<strong>─à</strong>\r\n            tani<strong>─à</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="adj-singular-neuter"></a>Neuter</h4>\r\n<p>- Receive <strong>e</strong> ending (same form as neuter nominative singular adjective)\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Accusative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            tani (cheap)\r\n         </td>\r\n         <td>du┼╝<strong>e</strong>\r\n            tani<strong>e</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n\r\n<h3><a id="noun-plural"></a>Accusative Plural Nouns</h3>\r\n<p>Masculine accusative plural nouns are divided into personal and non-personal.\r\n    </p>\r\n<h4><a id="noun-plural-masculine-pers"></a>Masculine Personal</h4>\r\n<p>- These have the same endings as the genitive plural nouns.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Accusative Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>┼╝o┼énierz (soldier)\r\n            ch┼éopiec (boy)\r\n            syn (son)\r\n         </td>\r\n         <td>┼╝o┼énierz<strong>y</strong>\r\n            ch┼éopc<strong>├│w</strong>\r\n            syn<strong>├│w</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-plural-masculine-nonpers"></a>Masculine Non-Personal</h4>\r\n<p>- These have the same endings as the masculine nominative plural nouns.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Accusative Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>klucz (key)\r\n            strz─Öp (scrap)\r\n            przycisk (button)\r\n         </td>\r\n         <td>klucz<strong>e</strong>\r\n            strz─Öp<strong>y</strong>\r\n            przycisk<strong>i</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-plural-feminine"></a>Feminine</h4>\r\n<p>- These have the same endings as the feminine nominative plural nouns.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Accusative Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>osoba (person)\r\n            ┼¢ciana (wall)\r\n            pi┼éka (ball)\r\n         </td>\r\n         <td>osob<strong>y</strong>\r\n            ┼¢cian<strong>y</strong>\r\n            pi┼ék<strong>i</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-plural-neuter"></a>Neuter</h4>\r\n<p>- These have the same endings as the neuter nominative plural nouns.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Accusative Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>mieszkanie (flat)\r\n            ┼¢rodowisko (environment)\r\n            muzeum (museum)\r\n         </td>\r\n         <td>mieszkani<strong>a</strong>\r\n            ┼¢rodowisk<strong>a</strong>\r\n            muze<strong>a</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3><a id="adj-plural"></a>Accusative Plural Adjectives</h3>\r\n<p>Masculine plural accusative adjectives are also divided into masculine personal and masculine non-personal declension.\r\n    </p>\r\n<h4><a id="adj-plural-masculine-pers"></a>Masculine Personal</h4>\r\n<p>- If it ends with a hard consonant, except k and g, or a hardened consonant, receives <strong>ych</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Accusative Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            inny (different)\r\n         </td>\r\n         <td>du┼╝<strong>ych</strong>\r\n            inn<strong>ych</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If it ends with a soft consonant, or k or g, receives <strong>ich</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Accusative Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>tani (cheap)\r\n            wysoki (tall)\r\n         </td>\r\n         <td>tan<strong>ich</strong>\r\n            wysok<strong>ich</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="adj-plural-othergenders"></a>Masculine Non-Personal, Feminine, and Neuter</h4>\r\n<p>- Receive <strong>e</strong> ending (same form as masculine non-personal, feminine, and neuter nominative plural nouns).\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Accusative Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            tani (cheap)\r\n         </td>\r\n         <td>du┼╝<strong>e</strong>\r\n            tani<strong>e</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n</div>\r\n<a id="declension-tables"></a><h2 class="text-center">Declension Tables</h2>\r\n<h3 class="text-center">Singular Nouns</h3>\r\n<table style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr>\r\n         <td>Gender</td>\r\n         <td>Stem Ending</td>\r\n         <td>Add Ending</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Masculine Animate</td>\r\n         <td>any</td>\r\n         <td>a</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Masculine Inanimate</td>\r\n         <td>any</td>\r\n         <td>-</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-bottom: none;">Feminine</td>\r\n         <td>a</td>\r\n         <td>─Ö</td>\r\n      </tr>\r\n      <tr>\r\n         <td></td>\r\n         <td>consonant</td>\r\n         <td>-</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none; border-bottom: none;">Neuter</td>\r\n         <td>any</td>\r\n         <td>-</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3 class="text-center">Singular Adjectives</h3>\r\n<table style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr style="height: 21.5px;">\r\n         <td style="height: 21.5px;">Gender</td>\r\n         <td style="height: 21.5px;">Stem Ending</td>\r\n         <td style="height: 21.5px;">Add Ending</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td style="height: 21px;">Masculine Animate</td>\r\n         <td style="height: 21px;">any</td>\r\n         <td style="height: 21px;">ego</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td style="height: 21px;">Masculine Inanimate</td>\r\n         <td style="height: 21px;">any</td>\r\n         <td style="height: 21px;">i, y</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td style="height: 21px;">Feminine</td>\r\n         <td style="height: 21px;">any</td>\r\n         <td style="height: 21px;">─à</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td style="height: 21px;">Neuter</td>\r\n         <td style="height: 21px;">any</td>\r\n         <td style="height: 21px;">e</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3 class="text-center">Plural Nouns</h3>\r\n<table style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr style="height: 18.5px;">\r\n         <td style="height: 18.5px;">Gender</td>\r\n         <td style="height: 18.5px;">Stem Ending</td>\r\n         <td style="height: 18.5px;">Add Ending</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td style="height: 21px; border-bottom: none;">Masculine Personal</td>\r\n         <td style="height: 21px;">hard consonant, c</td>\r\n         <td style="height: 21px;">&oacute;w</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td style="height: 21px; border-top: none; border-bottom: none;"></td>\r\n         <td style="height: 21px;">hardened consonant</td>\r\n         <td style="height: 21px;">y, &oacute;w</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td style="height: 21px; border-top: none; border-bottom: none;"></td>\r\n         <td style="height: 21px;">soft consonant</td>\r\n         <td style="height: 21px;">i, &oacute;w</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td style="height: 21px; border-bottom: none;">Masculine Non-Personal</td>\r\n         <td style="height: 21px;">hard consonant except k and g</td>\r\n         <td style="height: 21px;">y</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td style="height: 21px; border-top: none; border-bottom: none;"></td>\r\n         <td style="height: 21px;">k and g</td>\r\n         <td style="height: 21px;">i</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td style="height: 21px; border-top: none; border-bottom: none;"></td>\r\n         <td style="height: 21px;">hardened or soft consonant</td>\r\n         <td style="height: 21px;">e</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td style="height: 21px; border-bottom: none;">Feminine</td>\r\n         <td style="height: 21px;">hard consonant except k and g</td>\r\n         <td style="height: 21px;">y</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td style="height: 21px; border-top: none; border-bottom: none;"></td>\r\n         <td style="height: 21px;">k and g</td>\r\n         <td style="height: 21px;">i</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td style="height: 21px; border-top: none; border-bottom: none;"></td>\r\n         <td style="height: 21px;">hardened or soft consonant</td>\r\n         <td style="height: 21px;">e</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td style="height: 21px;">Neuter</td>\r\n         <td style="height: 21px;">any</td>\r\n         <td style="height: 21px;">a</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3 class="text-center">Plural Nouns</h3>\r\n<table style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr>\r\n         <td>Gender</td>\r\n         <td>Stem Ending</td>\r\n         <td>Add Ending</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-bottom: none;">Masculine Personal</td>\r\n         <td>hard or hardened consonant except k and g</td>\r\n         <td>ych</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none; border-bottom: none;"></td>\r\n         <td>other consonant</td>\r\n         <td>ich</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Masculine Non-Personal, Feminine, Neuter</td>\r\n         <td>any</td>\r\n         <td>e</td>\r\n      </tr>\r\n   </tbody>\r\n</table>	4	2	accusative-case	cases	\N
21	Instrumental Case	<h2>Content</h2>\r\n<div class="guide-top-text">\r\n<ul>\r\n   <li><a class="third-theme" href="#usage">Usage</a></li>\r\n   <li>\r\n      <a href="#noun-singular">Singular Nouns</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#noun-singular-masculine">Masculine</a></li>\r\n         <li><a class="third-theme" href="#noun-singular-feminine">Feminine</a></li>\r\n         <li><a class="third-theme" href="#noun-singular-neuter">Neuter</a></li>\r\n      </ul>\r\n   </li>\r\n   <li>\r\n      <a class="third-theme" href="#adj-singular">Singular Adjectives</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#adj-singular-masculine">Masculine</a></li>\r\n         <li><a class="third-theme" href="#adj-singular-feminine">Feminine</a></li>\r\n         <li><a class="third-theme" href="#adj-singular-neuter">Neuter</a></li>\r\n      </ul>\r\n   </li>\r\n   <li>\r\n      <a class="third-theme" href="#noun-plural">Plural Nouns</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#noun-plural-masculine">Masculine</a></li>\r\n         <li><a class="third-theme" href="#noun-plural-feminine">Feminine</a></li>\r\n         <li><a class="third-theme" href="#noun-plural-neuter">Neuter</a></li>\r\n      </ul>\r\n   </li>\r\n   <li>\r\n      <a class="third-theme" href="#adj-plural">Plural Adjectives</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#adj-plural-allgenders">All Genders</a></li>\r\n      </ul>\r\n   </li>\r\n   <li><a class="third-theme" href="#declension-tables">Declension Tables</a></li>\r\n</ul>\r\n</div>\r\n<div class="third-theme">\r\n<p>\r\nThe instrumental is the fifth of the 7 cases.\r\nIts main use is to represent the tool/instrument being used in the instrument. It is also used with the verb by─ç (to be).\r\nIt answers the questions:\r\n- <strong>kim?</strong> (who?)\r\n- <strong>czym?</strong> (what?)\r\n</p>\r\n<h2><a id="usage"></a>Instrumental Case Usage</h2>\r\n<h4>1. Represent the tool/instrument being used</h4>\r\n<p>\r\nNapisa┼éem ksi─à┼╝k─Ö <strong>d┼éugopisem</strong>.\r\n(I wrote the book <strong>with a pen</strong> / I wrote the book <strong>using a pen</strong>)\r\nJe┼╝d┼╝─Ö do pracy <strong>poci─àgiem</strong>.\r\n(I go to work <strong>by train</strong>)\r\n</p>\r\n<h4>2. With the verb "by─ç" to express another noun (By─ç to express only an adjective is used in the nominative case)</h4>\r\n<p>When by─ç (be) is used to express only an adjective, the nominative is used instead.\r\nM├│j przyjaciel jest <strong>lekarzem</strong>.\r\n(My friend is a <strong>doctor</strong>)\r\n<strong>Kim</strong> jeste┼¢?\r\n(<strong>Who</strong> are you?)\r\n</p>\r\n<h4>3. With certain prepositions</h4>\r\n<p>These include: <strong>z</strong> (with), <strong>poza</strong> (besides, behind), <strong>przed</strong> (before, in front of), <strong>mi─Ödzy</strong> (between, among), <strong>nad</strong> (over, above), <strong>za</strong> (beyond, behind), <strong>pod</strong> (under), and more.\r\n<a href="https://learneasypolish.com/grammar/other-parts-of-speech/prepositions/#instrumental">Click here</a> for more of these prepositions.\r\nId─Ö <strong>z przyjacielem</strong>.\r\n(I am going <strong>with a friend</strong>)\r\n<strong>Poza tym</strong>.\r\n(<strong>Besides this</strong>)\r\nSamoch├│d jest zaparkowany <strong>przed szko┼é─à</strong>.\r\n(The car is parked<strong> in front of the school</strong>)\r\nStoj─Ö <strong>mi─Ödzy nimi</strong>.\r\n(I am standing <strong>between them</strong>)\r\nTelewizja si─Ö znaduj─Ö <strong>nad p├│┼ék─à</strong>.\r\n(The television is located <strong>above the shelf</strong>)\r\nOn jest <strong>za mn─à</strong>.\r\n(He is <strong>behind me</strong>)\r\nPiwnica jest <strong>pod domem</strong>.\r\n(The basement is <strong>under the house</strong>)\r\n</p>\r\n<h4>4. With certain verbs</h4>\r\n<p>\r\nSome verbs require verbs in the instrumental case. More of these verbs are listed <a href="https://learneasypolish.com/grammar/verbs/verbs-by-cases/#instrumental">here</a>.\r\n<strong>Interesuj─Ö si─Ö histori─à</strong>.\r\n(<strong>I am interested in history</strong>)\r\n<strong>Ciesz─Ö si─Ö ┼╝yciem</strong>.\r\n(<strong>I enjoy life</strong>)\r\n</p>\r\n<h4>5. With certain phrases expressing time</h4>\r\n<p>\r\n<strong>Noc─à.</strong>\r\n(<strong>By night</strong>)\r\n<strong>Dniem.</strong>\r\n(<strong>By day</strong>)\r\n<strong>Ca┼éymi dniami.</strong>\r\n(<strong>Days on end</strong>)\r\n</p>\r\n<h2>Instrumental Case Declension</h2>\r\n<h3><a id="noun-singular"></a>Instrumental Singular Nouns</h3>\r\n<h4><a id="noun-singular-masculine"></a>Masculine</h4>\r\n<p>- Receive <strong>em</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Instrumental Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>samoch├│d (car)\r\n            obraz (picture)\r\n            guzik (button)\r\n         </td>\r\n         <td>samochod<strong>em</strong>\r\n            obraz<strong>em</strong>\r\n            guzik<strong>iem</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-singular-feminine"></a>Feminine</h4>\r\n<p>- Receive <strong>─à</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Instrumental Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>c├│rka (daughter)\r\n            pod┼éoga (floor)\r\n            flaga (flag)\r\n         </td>\r\n         <td>c├│rk<strong>─à</strong>\r\n            pod┼éog<strong>─à</strong>\r\n            flag<strong>─à</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="#noun-singular-neuter"></a>Neuter</h4>\r\n<p>- Receive <strong>em</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Instrumental Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>auto (car)\r\n            dziecko (child)\r\n            drzewo (tree)\r\n         </td>\r\n         <td>aut<strong>em</strong>\r\n            dzieck<strong>iem</strong>\r\n            drzew<strong>em</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n\r\n<h3><a id="adj-singular"></a>Instrumental Singular Adjectives</h3>\r\n<h4><a id="adj-singular-masculine"></a>Masculine</h4>\r\n<p>- If it ends with a hard or hardened consonant, except k and g, receives <strong>ym</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Instrumental Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            inny (different)\r\n         </td>\r\n         <td>du┼╝<strong>ym</strong>\r\n            inn<strong>ym</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If it ends with a soft consonant, or k or g, receive <strong>im</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Instrumental Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>tani (cheap)\r\n            wysoki (tall)\r\n         </td>\r\n         <td>tan<strong>im</strong>\r\n            wysok<strong>im</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="adj-singular-feminine"></a>Feminine</h4>\r\n<p>- Receive <strong>─à</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Instrumental Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            tani (cheap)\r\n         </td>\r\n         <td>du┼╝<strong>─à</strong>\r\n            tani<strong>─à</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="adj-singular-neuter"></a>Neuter</h4>\r\n<p>- If it ends with a hard or hardened consonant, except k and g, receives <strong>ym</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Instrumental Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            inny (different)\r\n         </td>\r\n         <td>du┼╝<strong>ym</strong>\r\n            inn<strong>ym</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If it ends with a soft consonant, or k or g, receive <strong>im</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Instrumental Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>tani (cheap)\r\n            wysoki (tall)\r\n         </td>\r\n         <td>tan<strong>im</strong>\r\n            wysok<strong>im</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n\r\n<h3><a id="noun-plural"></a>Instrumental Plural Nouns</h3>\r\n<h4><a id="noun-plural-masculine"></a>Masculine</h4>\r\n<p>- Most receive <strong>ami</strong> ending\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Instrumental Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>kolega (colleague)\r\n            znak (sign)\r\n            zegar (clock)\r\n         </td>\r\n         <td>koleg<strong>ami</strong>\r\n            znak<strong>ami</strong>\r\n            zegar<strong>ami</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- Only a few receive <strong>mi</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Instrumental Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>przyjaciel (friend)\r\n            li┼¢─ç (leaf)\r\n         </td>\r\n         <td>przyjaci├│┼é<strong>mi</strong>\r\n            li┼¢─ç<strong>mi</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-plural-feminine"></a>Feminine</h4>\r\n<p>- Most receive <strong>ami</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Instrumental Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>kobieta (woman)\r\n            koszula (shirt)\r\n            rzecz (thing)\r\n         </td>\r\n         <td>kobiet<strong>ami</strong>\r\n            koszul<strong>ami</strong>\r\n            rzecz<strong>ami</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- Only a few receive <strong>mi</strong> ending.\r\n</p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Instrumental Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>ko┼¢─ç (bone)</td>\r\n         <td>ko┼¢─çmi</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-plural-neuter"></a>Neuter</h4>\r\n<p>- Receive <strong>ami</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Instrumental Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>krzes┼éo (chair)\r\n            ┼¢wiat┼éo (light)\r\n            nozdrze (nostril)\r\n         </td>\r\n         <td>krzes┼é<strong>ami</strong>\r\n            ┼¢wiat┼é<strong>ami</strong>\r\n            nozdrz<strong>ami</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n\r\n<h3><a id="adj-plural"></a>Instrumental Plural Adjectives</h3>\r\n<p>Masculine, feminine, and neuter instrumental plural adjectives receive the same endings.\r\n    </p>\r\n<h4><a id="adj-plural-allgenders"></a>All Genders</h4>\r\n<p>- If it ends with a hard consonant, except k and g, or a hardened consonant, receives <strong>ymi </strong>ending.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Instrumental Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            inny (different)\r\n         </td>\r\n         <td>du┼╝<strong>ymi</strong>\r\n            inn<strong>ymi</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If it ends with a soft consonant, or k or g, receives <strong>imi</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Instrumental Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>tani (cheap)\r\n            wysoki (tall)\r\n         </td>\r\n         <td>tan<strong>imi</strong>\r\n            wysok<strong>imi</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n</div>\r\n<a id="declension-tables"></a><h2 class="text-center">Declension Tables</h2>\r\n<h3 class="text-center">Singular Nouns</h3>\r\n<table style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr>\r\n         <td>Gender</td>\r\n         <td>Stem Ending</td>\r\n         <td>Add Ending</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Masculine</td>\r\n         <td>any</td>\r\n         <td>em</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Feminine</td>\r\n         <td>any</td>\r\n         <td>─à</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Neuter</td>\r\n         <td>any</td>\r\n         <td>em</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3 class="text-center">Singular Adjectives</h3>\r\n<table style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr>\r\n         <td>Gender</td>\r\n         <td>Stem Ending</td>\r\n         <td>Add Ending</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-bottom: none;">Masculine</td>\r\n         <td>hard or hardened consonant, except k and g</td>\r\n         <td>ym</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none; border-bottom: none;"></td>\r\n         <td>other consonants</td>\r\n         <td>im</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Feminine</td>\r\n         <td>any</td>\r\n         <td>─à</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-bottom: none;">Neuter</td>\r\n         <td>hard or hardened consonant, except k and g</td>\r\n         <td>ym</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none; border-bottom: none;"></td>\r\n         <td>other consonants</td>\r\n         <td>im</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3 class="text-center">Plural Nouns</h3>\r\n<table style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr>\r\n         <td>Gender</td>\r\n         <td>Stem Ending</td>\r\n         <td>Add Ending</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Any</td>\r\n         <td>any</td>\r\n         <td>ami</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3 class="text-center">Plural Nouns</h3>\r\n<table style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr>\r\n         <td>Gender</td>\r\n         <td>Stem Ending</td>\r\n         <td>Add Ending</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-bottom: none;">Any</td>\r\n         <td>hard or hardened consonant, except k and g</td>\r\n         <td>ymi</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none; border-bottom: none;"></td>\r\n         <td>other consonants</td>\r\n         <td>imi</td>\r\n      </tr>\r\n   </tbody>\r\n</table>	5	2	instrumental-case	cases	\N
22	Locative Case	<h2>Content</h2>\r\n<div class="guide-top-text">\r\n<ul>\r\n   <li><a class="third-theme" href="#usage">Usage</a></li>\r\n   <li>\r\n      <a class="third-theme" href="#noun-singular">Singular Nouns</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#noun-singular-masculine">Masculine</a></li>\r\n         <li><a class="third-theme" href="#noun-singular-feminine">Feminine</a></li>\r\n         <li><a class="third-theme" href="#noun-singular-neuter">Neuter</a></li>\r\n      </ul>\r\n   </li>\r\n   <li>\r\n      <a class="third-theme" href="#adj-singular">Singular Adjectives</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#adj-singular-masculine">Masculine</a></li>\r\n         <li><a class="third-theme" href="#adj-singular-feminine">Feminine</a></li>\r\n         <li><a class="third-theme" href="#adj-singular-neuter">Neuter</a></li>\r\n      </ul>\r\n   </li>\r\n   <li>\r\n      <a class="third-theme" href="#noun-plural">Plural Nouns</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#noun-plural-allgenders">All Genders</a></li>\r\n      </ul>\r\n   </li>\r\n   <li>\r\n      <a class="third-theme" href="#adj-plural">Plural Adjectives</a>\r\n      <ul>\r\n         <li><a class="third-theme" href="#adj-plural-allgenders">All Genders</a></li>\r\n      </ul>\r\n   </li>\r\n   <li><a class="third-theme" href="#declension-tables">Declension Tables</a></li>\r\n</ul>\r\n</div>\r\n<div class="third-theme">\r\n<p>\r\nThe locative is the sixth of the 7 cases.\r\nIt is used only after one of 5 prepositions. These prepositions mostly represent location.\r\nIt answers the questions:\r\n- <strong>kim?</strong> (who?)\r\n- <strong>czym?</strong> (what?)\r\n</p>\r\n<h2><a id="usage"></a>Locative Case Usage</h2>\r\n<p>Nouns and adjectives in this case must be followed by a preposition. The prepositions <strong>o</strong>, <strong>na</strong>, <strong>w</strong>, and <strong>po</strong> are also used in the accusative case, but have different meanings. The preposition <strong>przy</strong> is only used in the locative case.\r\n</p>\r\n    <h4>1. After prepositions "o", "na", "w", "po" and "przy"</h4>\r\n<p>Definitions:\r\n<strong>o</strong> (about, with), <strong>na</strong> (on, at), <strong>w</strong> (in, at), <strong>po</strong> (after, along/around), <strong>przy</strong> (near, at).\r\n<strong>O czym</strong> chcesz rozmawia─ç.\r\n(<strong>What</strong> do you want to talk <strong>about</strong>?)\r\nTo jest dom <strong>o du┼╝ych oknach</strong>.\r\n(This is a house <strong>with big windows</strong>)\r\nJestem <strong>na polu</strong>.\r\n(I am <strong>on the field</strong>)\r\nOni s─à <strong>na strychu</strong>.\r\n(They are <strong>in the attic</strong>)\r\nJestem <strong>w szkole</strong>.\r\n(I am <strong>in school</strong>)\r\n<strong>Po tej grze</strong>, pojd─Ö spa─ç.\r\n(After this game, I will go to sleep)\r\nChodzi┼éem <strong>po mie┼¢cie</strong>\r\n(I was walking around town)\r\nJestem <strong>przy stole</strong>.\r\n(I am <strong>near the table</strong>).\r\n</p>\r\n<h2>Locative Case Declension</h2>\r\n<h3><a id="noun-singular"></a>Locative Singular Nouns</h3>\r\n<h4><a id="noun-singular-masculine"></a>Masculine</h4>\r\n<p>- If ends with a hard consonant, except k, g, and ch, receives <strong>e</strong> ending. The hard consonant softens.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Locative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>dywa<strong>n</strong> (carpet)\r\n            papie<strong>r</strong> (paper)\r\n            kompute<strong>r</strong> (computer)\r\n         </td>\r\n         <td>dywa<strong>nie</strong>\r\n            papie<strong>rze</strong>\r\n            kompute<strong>rze</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If ends with a hardened consonant, soft consonant, or k, g, or ch, receive <strong>u</strong> ending.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Locative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>brelocze<strong>k</strong> (keychain)\r\n            ┼éa┼äcu<strong>ch</strong> (chain)\r\n            stopie<strong>┼ä</strong> (degree)\r\n         </td>\r\n         <td>breloczk<strong>u</strong>\r\n            ┼éa┼äcuch<strong>u</strong>\r\n            stopni<strong>u</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-singular-feminine"></a>Feminine</h4>\r\n<p>Note: The locative singular feminine declensions are the same as the dative singular feminine.\r\n- If ends with a hard consonant, receives <strong>e</strong> ending. The hard consonant softens.\r\n</p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Locative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>ksi─à┼╝<strong>k</strong>a (book)\r\n            kar<strong>t</strong>a (card)\r\n            \r\n         </td>\r\n         <td></td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If ends with a hard consonant, receives <strong>y</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Locative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>rze<strong>cz</strong> (thing)\r\n            no<strong>c</strong> (night)\r\n            smy<strong>cz</strong> (leash)\r\n         </td>\r\n         <td>rzecz<strong>y</strong>\r\n            noc<strong>y</strong>\r\n            smycz<strong>y</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If ends with a soft consonant, receives <strong>i</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Locative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>lekc<strong>j</strong>a (lesson)\r\n            histor<strong>i</strong>a (story, history)\r\n            wolno┼¢<strong>─ç</strong> (freedom)\r\n         </td>\r\n         <td>lekcj<strong>i</strong>\r\n            histori<strong>i</strong>\r\n            wolno┼¢c<strong>i</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="noun-singular-neuter"></a>Neuter</h4>\r\n<p>- If ends with a hard consonant, except k, g, and ch, receives <strong>e</strong> ending. The hard consonant softens.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Locative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>biu<strong>r</strong>o (office)\r\n            pis<strong>m</strong>o (writing)\r\n            dzi─às<strong>┼é</strong>o (gum)\r\n         </td>\r\n         <td>biu<strong>rze</strong>\r\n            pi<strong>┼¢mie</strong>\r\n            dzi─à<strong>┼¢le</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If ends with a hardened consonant, soft consonant, or k, g, or ch, receive <strong>u</strong> ending.\r\n</p>\r\n    <table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Locative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>miejs<strong>c</strong>e (place)\r\n            biur<strong>k</strong>o (desk)\r\n            po<strong>l</strong>e (field)\r\n         </td>\r\n         <td>miejsc<strong>u</strong>\r\n            biurk<strong>u</strong>\r\n            pol<strong>u</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n\r\n<h3><a id="adj-singular"></a>Locative Singular Adjectives</h3>\r\n<h4><a id="adj-singular-masculine"></a>Masculine</h4>\r\n<p>- If it ends with a hard consonant, except k and g, receives <strong>ym</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Locative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            inny (different)\r\n         </td>\r\n         <td>du┼╝<strong>ym</strong>\r\n            inn<strong>ym</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If it ends with a hardened or soft consonant, or k or g, receive <strong>im</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Locative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>tani (cheap)\r\n            wysoki (tall)\r\n         </td>\r\n         <td>tan<strong>im</strong>\r\n            wysok<strong>im</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="adj-singular-feminine"></a>Feminine</h4>\r\n<p>- Receive <strong>ej</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Locative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            tani (cheap)\r\n         </td>\r\n         <td>du┼╝<strong>ej</strong>\r\n            tani<strong>ej</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h4><a id="adj-singular-neuter"></a>Neuter</h4>\r\n<p>- If it ends with a hard consonant, except k and g, receives <strong>ym</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Locative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            inny (different)\r\n         </td>\r\n         <td>du┼╝<strong>ym</strong>\r\n            inn<strong>ym</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If it ends with a hardened or soft consonant, or k or g, receive <strong>im</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Locative Singular</td>\r\n      </tr>\r\n      <tr>\r\n         <td>tani (cheap)\r\n            wysoki (tall)\r\n         </td>\r\n         <td>tan<strong>im</strong>\r\n            wysok<strong>im</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n\r\n<h3><a id="noun-plural"></a>Locative Plural Nouns</h3>\r\n<h4><a id="noun-plural-allgenders"></a>All Genders</h4>\r\n<p>- All receive <strong>ach</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Locative Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>sklep (store)\r\n            strona (page)\r\n            pude┼éko (box)\r\n         </td>\r\n         <td>sklep<strong>ach</strong>\r\n            stron<strong>ach</strong>\r\n            pude┼ék<strong>ach</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n\r\n<h3><a id="adj-plural"></a>Locative Plural Adjectives</h3>\r\n<p>Masculine, feminine, and neuter intrumental plural adjectives receive the same endings.\r\n    </p>\r\n<h4><a id="adj-plural-allgenders"></a>All Genders</h4>\r\n<p>- If it ends with a hard consonant, except k and g, or a hardened consonant, receives <strong>ych </strong>ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Locative Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>du┼╝y (big)\r\n            inny (different)\r\n         </td>\r\n         <td>du┼╝<strong>ych</strong>\r\n            inn<strong>ych</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p>- If it ends with a soft consonant, or k or g, receives <strong>ich</strong> ending.\r\n    </p>\r\n<table>\r\n   <tbody>\r\n      <tr>\r\n         <td>Nominative Singular</td>\r\n         <td>Locative Plural</td>\r\n      </tr>\r\n      <tr>\r\n         <td>tani (cheap)\r\n            wysoki (tall)\r\n         </td>\r\n         <td>tan<strong>ich</strong>\r\n            wysok<strong>ich</strong>\r\n         </td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n</div>\r\n<a id="declension-tables"></a><h2 class="text-center">Declension Tables</h2>\r\n<h3 class="text-center">Singular Nouns</h3>\r\n<table style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr>\r\n         <td>Gender</td>\r\n         <td>Stem Ending</td>\r\n         <td>Add Ending</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-bottom: none;">Masculine</td>\r\n         <td>hard consonant except k, g and ch</td>\r\n         <td>'e</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none; border-bottom: none;"></td>\r\n         <td>hardened or soft consonant, k, g, and ch</td>\r\n         <td>u</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-bottom: none;">Feminine</td>\r\n         <td>hard consonant</td>\r\n         <td>'e</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none; border-bottom: none;"></td>\r\n         <td>hardened consonant</td>\r\n         <td>y</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none; border-bottom: none;"></td>\r\n         <td>soft consonant</td>\r\n         <td>i</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-bottom: none;">Neuter</td>\r\n         <td>hard consonant except k, g and ch</td>\r\n         <td>'e</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none; border-bottom: none;"></td>\r\n         <td>hardened or soft consonant, k, g, and ch</td>\r\n         <td>u</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3 class="text-center">Singular Adjectives</h3>\r\n<table style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr>\r\n         <td>Gender</td>\r\n         <td>Stem Ending</td>\r\n         <td>Add Ending</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-bottom: none;">Masculine</td>\r\n         <td>hard or hardened consonant, except k and g</td>\r\n         <td>ym</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none; border-bottom: none;"></td>\r\n         <td>other consonants</td>\r\n         <td>im</td>\r\n      </tr>\r\n      <tr>\r\n         <td>Feminine</td>\r\n         <td>any</td>\r\n         <td>eh</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-bottom: none;">Neuter</td>\r\n         <td>hard or hardened consonant, except k and g</td>\r\n         <td>ym</td>\r\n      </tr>\r\n      <tr>\r\n         <td style="border-top: none; border-bottom: none;"></td>\r\n         <td>other consonants</td>\r\n         <td>im</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3 class="text-center">Plural Nouns</h3>\r\n<table style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr style="height: 21.5px;">\r\n         <td style="height: 21.5px;">Gender</td>\r\n         <td style="height: 21.5px;">Stem Ending</td>\r\n         <td style="height: 21.5px;">Add Ending</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td style="height: 21px;">Any</td>\r\n         <td style="height: 21px;">any</td>\r\n         <td style="height: 21px;">ach</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3 class="text-center">Plural Adjectives</h3>\r\n<table style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr style="height: 21.5px;">\r\n         <td style="height: 21.5px;">Gender</td>\r\n         <td style="height: 21.5px;">Stem Ending</td>\r\n         <td style="height: 21.5px;">Add Ending</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td style="height: 21px; border-bottom: none;">Any</td>\r\n         <td style="height: 21px;">hard or hardened consonant, except k and g</td>\r\n         <td style="height: 21px;">ych</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td style="height: 21px; border-top: none; border-bottom: none;"></td>\r\n         <td style="height: 21px;">other consonants</td>\r\n         <td style="height: 21px;">ich</td>\r\n      </tr>\r\n   </tbody>\r\n</table>	6	2	locative-case	cases	\N
5	Personal Pronouns	content	1	2	personal-pronouns	pronouns	<p>These pronouns are used to refer to a person or thing. Note that some pronouns have 2 and even 3 alternatives. The&nbsp;black&nbsp;forms represent the long form of the pronoun.<br />\r\nThe&nbsp;blue&nbsp;represents the short form,<br />\r\nand the&nbsp;red&nbsp;the prepositional forms.</p>\r\n\r\n<p>First of all, the long forms are used instead of the short ones after a prepositions. However, if the pronoun has a&nbsp;red prepositional form it takes priority.</p>\r\n\r\n<p>Dzi─Öki <strong>niemu</strong>.<br />\r\n(Thanks&nbsp;<strong>to him</strong>)</p>\r\n\r\n<p>NOT:<br />\r\nDzi─Öki jemu.<br />\r\nDzi─Öki mu.</p>\r\n\r\n<p>Long forms are also used to stress emphasis and at the beginning of the clause.</p>\r\n\r\n<p>Daj to&nbsp;<strong>jemu</strong>, a nie jej.<br />\r\n(Give this&nbsp;<strong>to him</strong>, not to her)</p>\r\n\r\n<p>NOT:<br />\r\nDaj to mu, a nie jej.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ciebie</strong> nie lubi─Ö.<br />\r\n(I don&#39;t like&nbsp;<strong>you</strong>)</p>\r\n\r\n<p>NOT:<br />\r\nCi─Ö nie lubi─Ö.</p>\r\n\r\n<p>Besides these types of constructions, either the long or short form is usually acceptable, but the short form can often sound more natural. Note that the prepositional forms are only ever used after prepositions, nothing else.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 style="text-align:center">First Person</h2>\r\n\r\n<p>The nominative singular form &quot;ja&quot; equates to &quot;I&quot; in English, and &quot;my&quot; means &quot;we&quot;, since these forms represent the subject. The rest of the singular forms means &quot;me&quot; and the plural ones mean &quot;us&quot;.</p>\r\n\r\n<table>\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t\t<td>Singular</td>\r\n\t\t\t<td>Plural</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Nominative</td>\r\n\t\t\t<td>ja</td>\r\n\t\t\t<td>my</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Genitive</td>\r\n\t\t\t<td>mnie</td>\r\n\t\t\t<td>nas</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Dative</td>\r\n\t\t\t<td>mnie/mi</td>\r\n\t\t\t<td>nam</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Accusative</td>\r\n\t\t\t<td>mnie</td>\r\n\t\t\t<td>nas</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Instrumental</td>\r\n\t\t\t<td>mn─à</td>\r\n\t\t\t<td>nami</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Locative</td>\r\n\t\t\t<td>mnie</td>\r\n\t\t\t<td>nas</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 style="text-align:center">Second Person</h2>\r\n\r\n<p>In English, all these forms translate to &quot;you&quot; because you is used both in the singular and plural.</p>\r\n\r\n<table>\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t\t<td>Singular</td>\r\n\t\t\t<td>Plural</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Nominative</td>\r\n\t\t\t<td>ty</td>\r\n\t\t\t<td>wy</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Genitive</td>\r\n\t\t\t<td>ciebie/ci─Ö</td>\r\n\t\t\t<td>was</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Dative</td>\r\n\t\t\t<td>tobie/ci</td>\r\n\t\t\t<td>wam</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Accusative</td>\r\n\t\t\t<td>ciebie/ci─Ö</td>\r\n\t\t\t<td>was</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Instrumental</td>\r\n\t\t\t<td>tob─à</td>\r\n\t\t\t<td>wami</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Locative</td>\r\n\t\t\t<td>tobie</td>\r\n\t\t\t<td>was</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 style="text-align:center">Third Person</h2>\r\n\r\n<p>Here, the English equivalents will be placed under each form to more easily demonstrate what each pronoun means.</p>\r\n\r\n<table>\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t\t<td>Masculine</td>\r\n\t\t\t<td>Feminine</td>\r\n\t\t\t<td>Neuter</td>\r\n\t\t\t<td>Masculine Personal</td>\r\n\t\t\t<td>Other</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Nominative</td>\r\n\t\t\t<td>\r\n\t\t\t<p>on</p>\r\n\r\n\t\t\t<p>he</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>ona</p>\r\n\r\n\t\t\t<p>she</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>ono</p>\r\n\r\n\t\t\t<p>it</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>oni</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>one</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Genitive</td>\r\n\t\t\t<td>\r\n\t\t\t<p>jego/go/niego</p>\r\n\r\n\t\t\t<p>him</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>jej/niej</p>\r\n\r\n\t\t\t<p>her</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>jego/go/niego</p>\r\n\r\n\t\t\t<p>it</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>ich/nich</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>ich/nich</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Dative</td>\r\n\t\t\t<td>\r\n\t\t\t<p>jemu/mu/niemu</p>\r\n\r\n\t\t\t<p>him</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>jej/niej</p>\r\n\r\n\t\t\t<p>her</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>jemu/mu/niemu</p>\r\n\r\n\t\t\t<p>it</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>im/nim</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>im/nim</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Accusative</td>\r\n\t\t\t<td>\r\n\t\t\t<p>jego/go/niego</p>\r\n\r\n\t\t\t<p>him</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>j─à/ni─à</p>\r\n\r\n\t\t\t<p>her</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>je/nie</p>\r\n\r\n\t\t\t<p>it</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>ich/nich</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>je/nie</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Instrumental</td>\r\n\t\t\t<td>\r\n\t\t\t<p>nim</p>\r\n\r\n\t\t\t<p>him</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>ni─à</p>\r\n\r\n\t\t\t<p>her</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>nim</p>\r\n\r\n\t\t\t<p>it</p>\r\n\t\t\t</td>\r\n\t\t\t<td>nimi</td>\r\n\t\t\t<td>nimi</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Locative</td>\r\n\t\t\t<td>\r\n\t\t\t<p>nim</p>\r\n\r\n\t\t\t<p>him</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>niej</p>\r\n\r\n\t\t\t<p>her</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>nim</p>\r\n\r\n\t\t\t<p>it</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>nich</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t\t<td>\r\n\t\t\t<p>nich</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>
\.


                                                                                                 3557.dat                                                                                            0000600 0004000 0002000 00000114607 14231652720 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        25	pl//Vocative Case	2	content	10	vocative-case		3
24	pl//Locative Case	2	content	9	locative-case		3
23	pl//Instrumental Case	2	content	8	instrumental-case		3
22	pl//Accusative Case	2	content	7	accusative-case		3
21	pl//Dative Case	2	content	6	dative-case		3
33	pl//Interrogative Pronouns	2	content	4	interrogative-pronouns	<h1 style="text-align:center">Interrogative Pronouns</h1>\r\n\r\n<p>These are used to ask questions. The personal forms mostly translate to &ldquo;who&rdquo; in English, and the impersonal to &ldquo;what&rdquo;.</p>\r\n\r\n<p>You can refer to this table to see which pronoun corresponds to which noun case.</p>\r\n\r\n<table>\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t\t<td>Personal</td>\r\n\t\t\t<td>Impersonal</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Nominative</td>\r\n\t\t\t<td>kto</td>\r\n\t\t\t<td>co</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Genitive</td>\r\n\t\t\t<td>kogo</td>\r\n\t\t\t<td>czego</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Dative</td>\r\n\t\t\t<td>komu</td>\r\n\t\t\t<td>czemu</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Accusative</td>\r\n\t\t\t<td>kogo</td>\r\n\t\t\t<td>co</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Instrumental</td>\r\n\t\t\t<td>kim</td>\r\n\t\t\t<td>czym</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Locative</td>\r\n\t\t\t<td>kim</td>\r\n\t\t\t<td>czym</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>Here are some examples:</p>\r\n\r\n<p>Kto m&oacute;wi?&nbsp;&rarr; Who is speaking?</p>\r\n\r\n<p>Co to jest?&nbsp;&rarr; What is this?</p>\r\n\r\n<p>Kogo nie lubisz?&nbsp;&rarr; Who do you not like?</p>\r\n\r\n<p>Czego szukasz? What are you looking for?</p>\r\n\r\n<p>Komu dasz ksi─à┼╝k─Ö?&nbsp;&rarr; Who will you give the book to?</p>\r\n\r\n<p>Czemu to s┼éu┼╝y?&nbsp;&rarr; What is it for?</p>\r\n\r\n<p>Na kogo czekasz?&nbsp;&rarr; Who are you waiting for?</p>\r\n\r\n<p>Co robicie?&nbsp;&rarr; What are you (plural) doing?</p>\r\n\r\n<p>Kim jeste┼¢&nbsp;&rarr; Who are you?</p>\r\n\r\n<p>Czym si─Ö interesujesz? What are you interested in?</p>\r\n\r\n<p>O kim my┼¢lisz?&nbsp;&rarr; Who are you thinking about?</p>\r\n\r\n<p>O czym my┼¢lisz?&nbsp;&rarr; What are you thinking about?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>There are other question words that are important to know. Take a look at them in the sentences below?</p>\r\n\r\n<p>&nbsp;</p>	3
20	pl//Genitive Case	2	content	5	genitive-case	<p>The genitive is the second of the 7 cases. It has many different uses, including possession. It literally means &quot;of&quot;. It answers the questions:</p>\r\n\r\n<p>-&nbsp;<strong>kogo?</strong>&nbsp;(who?) -&nbsp;<strong>czego?</strong>&nbsp;(what?)</p>\r\n\r\n<h2 style="text-align:center">Genitive Case Usage</h2>\r\n\r\n<h4>Possession</h4>\r\n\r\n<p>In English, the genitive is expressed by adding&nbsp;<strong>&#39;s</strong>&nbsp;to the end of nouns, or by using the word&nbsp;<strong>of</strong>.</p>\r\n\r\n<p>To jest dom&nbsp;<strong>mojego brata </strong>- This is&nbsp;<strong>my brother&#39;s</strong>&nbsp;house / This is the house&nbsp;<strong>of my brother</strong>.</p>\r\n\r\n<p>Widz─Ö samoch&oacute;d<strong>&nbsp;mojego przyjaciela&nbsp;</strong>- I see&nbsp;<strong>my friend&#39;s</strong>&nbsp;car / I see the car&nbsp;<strong>of my friend</strong>.</p>\r\n\r\n<h4>As the direct object of all negated verbs</h4>\r\n\r\n<p>Negated verbs take nouns in the genitive case. For&nbsp;verbs that are not negated, the accusative is used instead.</p>\r\n\r\n<p>Nie lubi─Ö<strong>&nbsp;szko┼éy </strong>- I do not like&nbsp;<strong>school</strong>.</p>\r\n\r\n<p>Nie znam&nbsp;<strong>jej -&nbsp;</strong>I do not know&nbsp;<strong>her</strong>.</p>\r\n\r\n<p>Znam j─à - I know her (This noun in this sentence is in the accusative because the verb is not negated.)</p>\r\n\r\n<h4>After certain verbs, even if they are not negated</h4>\r\n\r\n<p>There are many such verbs, including&nbsp;<strong>szuka─ç</strong>&nbsp;(look for),&nbsp;<strong>potrzebowa─ç</strong>&nbsp;(need),&nbsp;<strong>ba─ç si─Ö</strong>&nbsp;(be afraid of),&nbsp;<strong>dotyka─ç&nbsp;</strong>(touch),&nbsp;<strong>nienawidzi─ç</strong>&nbsp;(hate),&nbsp;<strong>pr&oacute;bowa─ç</strong>&nbsp;(attempt/try),&nbsp;<strong>uczy─ç si─Ö&nbsp;</strong>(study),&nbsp;<strong>s┼éucha─ç&nbsp;</strong>(listen to),&nbsp;<strong>unika─ç</strong>&nbsp;(avoid) and many more.<br />\r\nMost dictionaries indicate if a verb requires the genitive, so that is the best place to learn these verbs.</p>\r\n\r\n<p>Szukam&nbsp;<strong>czego┼¢</strong>. - I am looking for&nbsp;<strong>something</strong>.</p>\r\n\r\n<p>Potrzebuj─Ö&nbsp;<strong>pomocy </strong>- I need&nbsp;<strong>help</strong>.</p>\r\n\r\n<h4>With certain prepositions</h4>\r\n\r\n<p>These include:&nbsp;<strong>wed┼éug</strong>&nbsp;(according to),&nbsp;<strong>obok</strong>&nbsp;(alongside, next to),&nbsp;<strong>wsr&oacute;d</strong>&nbsp;(among),&nbsp;<strong>oko┼éo</strong>&nbsp;(around, about),&nbsp;<strong>u</strong>&nbsp;(at),&nbsp;<strong>opr&oacute;cz</strong>&nbsp;(besides),&nbsp;<strong>podczas</strong>&nbsp;(during),&nbsp;<strong>dla</strong>&nbsp;(for),&nbsp;<strong>od</strong>&nbsp;(from, since, then),&nbsp;<strong>z</strong>&nbsp;(from),&nbsp;<strong>zamiast</strong>&nbsp;(instead of),&nbsp;<strong>do</strong>&nbsp;(to) and more.</p>\r\n\r\n<p>Ca┼éa rodzina jest&nbsp;<strong>u babci </strong>- The whole family is&nbsp;<strong>at gramma&#39;s</strong>.</p>\r\n\r\n<p>Zrobi┼éem to&nbsp;<strong>dla brata</strong>&nbsp;- I did this for my brother.</p>\r\n\r\n<p>Jad─Ö&nbsp;<strong>do domu</strong>&nbsp;- I am going&nbsp;<strong>home</strong>.</p>\r\n\r\n<h4>With quantities</h4>\r\n\r\n<p>Wiele&nbsp;<strong>os&oacute;b</strong>&nbsp;- Many&nbsp;<strong>people</strong>.</p>\r\n\r\n<p>Butelka&nbsp;<strong>soku</strong>&nbsp;- A bottle&nbsp;<strong>of juice</strong>.</p>\r\n\r\n<p>Funt&nbsp;<strong>jedzenia</strong>&nbsp;- A pound<strong>&nbsp;of food</strong>.</p>\r\n\r\n<h4>With certain numbers</h4>\r\n\r\n<p>Siedem&nbsp;<strong>os&oacute;b</strong>. - Seven&nbsp;<strong>people</strong>.</p>\r\n\r\n<p>Sto&nbsp;<strong>ksi─à┼╝ek</strong>&nbsp;- One hundred&nbsp;<strong>books</strong>.</p>\r\n\r\n<h4>With certain phrases related to time and day</h4>\r\n\r\n<p><strong>Pewnego dnia</strong>&nbsp;-&nbsp;<strong>One day</strong>.</p>\r\n\r\n<p><strong>Ka┼╝dego dnia</strong>. -&nbsp;<strong>Every day</strong>.</p>\r\n\r\n<h2 style="text-align:center"><br />\r\nDeclension Tables</h2>\r\n\r\n<h3 style="text-align:center">&nbsp;</h3>\r\n\r\n<h3 style="text-align:center">Singular Nouns</h3>\r\n\r\n<table border="2">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>Gender</td>\r\n\t\t\t<td>Stem Ending</td>\r\n\t\t\t<td>Add Ending</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Masculine Animate</td>\r\n\t\t\t<td>any</td>\r\n\t\t\t<td>a</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Masculine Inanimate</td>\r\n\t\t\t<td>any</td>\r\n\t\t\t<td>u, a</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Feminine</td>\r\n\t\t\t<td>hard or hardened consonant, except k and g</td>\r\n\t\t\t<td>y</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t\t<td>soft consonant, k and g</td>\r\n\t\t\t<td>i</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Neuter</td>\r\n\t\t\t<td>any</td>\r\n\t\t\t<td>a</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<h3 style="text-align:center">&nbsp;</h3>\r\n\r\n<h3 style="text-align:center">Singular Adjectives</h3>\r\n\r\n<table border="2">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>Gender</td>\r\n\t\t\t<td>Stem Ending</td>\r\n\t\t\t<td>Add Ending</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Masculine</td>\r\n\t\t\t<td>any</td>\r\n\t\t\t<td>ego</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Feminine</td>\r\n\t\t\t<td>any</td>\r\n\t\t\t<td>ej</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Neuter</td>\r\n\t\t\t<td>any</td>\r\n\t\t\t<td>ego</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<h3 style="text-align:center">&nbsp;</h3>\r\n\r\n<h3 style="text-align:center">Plural Nouns</h3>\r\n\r\n<table border="2">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>Gender</td>\r\n\t\t\t<td>Stem Ending</td>\r\n\t\t\t<td>Add Ending</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Masculine</td>\r\n\t\t\t<td>hard consonant, c</td>\r\n\t\t\t<td>\r\n\t\t\t<p>&oacute;w</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t\t<td>hardened consonant</td>\r\n\t\t\t<td>y, &oacute;w</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t\t<td>soft consonant</td>\r\n\t\t\t<td>i, &oacute;w</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Feminine</td>\r\n\t\t\t<td>ja</td>\r\n\t\t\t<td>ji</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t\t<td>ia</td>\r\n\t\t\t<td>ii</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t\t<td>other</td>\r\n\t\t\t<td>drop e</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Neuter</td>\r\n\t\t\t<td>um</td>\r\n\t\t\t<td>&oacute;w</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t\t<td>some hardened consonants</td>\r\n\t\t\t<td>y</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t\t<td>other</td>\r\n\t\t\t<td>drop e</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<h3 style="text-align:center">&nbsp;</h3>\r\n\r\n<h3 style="text-align:center">Plural Adjectives</h3>\r\n\r\n<table border="2">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>Gender</td>\r\n\t\t\t<td>Stem Ending</td>\r\n\t\t\t<td>Add Ending</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Any</td>\r\n\t\t\t<td>hard or hardened consonant, except k and g</td>\r\n\t\t\t<td>ych</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&nbsp;</td>\r\n\t\t\t<td>other consonants</td>\r\n\t\t\t<td>ich</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>	3
34	pl//Relative Pronouns	2	content	18	relative-pronouns		3
32	pl//Demonstrative Pronouns	2	content	17	demonstrative-pronouns		3
31	pl//Possessive Pronouns	2	content	16	possessive-pronouns		3
30	pl//Verbs- Conditional Tense	2	content	15	verbs-conditional-tense		3
29	pl//Verbs- Future Tense	2	content	14	verbs-future-tense		3
28	pl//Verbs- Past Tense	2	content	13	verbs-past-tense		3
27	pl//Verbs- Present Tense	2	content	12	verbs-present-tense		3
26	pl//Introduction To Verbs	2	content	11	verbs-introduction		3
35	pl//Indefinite Pronouns	2	content	19	indefinite-pronouns		3
36	pl//Reflexive Pronouns	2	content	20	reflexive-pronouns		3
18	pl//Alphabet and Pronunciation	2	content	2	pronunciation	<h1 style="text-align:center">Polish Alphabet/Pronunciation</h1>\r\n\r\n<h2 style="text-align:center">Vowels</h2>\r\n\r\n<table>\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>Polish Letter</td>\r\n\t\t\t<td>Polish Example</td>\r\n\t\t\t<td>Pronunciation</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>a</td>\r\n\t\t\t<td><strong>a</strong>le</td>\r\n\t\t\t<td>as in English sm<strong>a</strong>rt</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>e</td>\r\n\t\t\t<td><strong>e</strong>n<strong>e</strong>rgia</td>\r\n\t\t\t<td>as in English m<strong>e</strong>t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>i</td>\r\n\t\t\t<td><strong>i</strong></td>\r\n\t\t\t<td>as in English sh<strong>e</strong>, but shorter</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>o</td>\r\n\t\t\t<td><strong>o</strong>pis</td>\r\n\t\t\t<td>as in English c<strong>o</strong>pper</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>&oacute;/u</td>\r\n\t\t\t<td>st<strong>&oacute;</strong>┼é,&nbsp;<strong>u</strong></td>\r\n\t\t\t<td>as in English m<strong>oo</strong>d, but shorter</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>y</td>\r\n\t\t\t<td>b<strong>y</strong>─ç</td>\r\n\t\t\t<td>as in English b<strong>i</strong>t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>─à</td>\r\n\t\t\t<td>dok<strong>─à</strong>d</td>\r\n\t\t\t<td>pronounced&nbsp;<strong>on</strong></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>─à before b or p</td>\r\n\t\t\t<td>z<strong>─à</strong>b</td>\r\n\t\t\t<td>pronounced&nbsp;<strong>om</strong></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>─à before ┼é</td>\r\n\t\t\t<td>wzi<strong>─à</strong>┼é</td>\r\n\t\t\t<td>pronounced&nbsp;<strong>o</strong></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>─Ö</td>\r\n\t\t\t<td>zakr<strong>─Ö</strong>t</td>\r\n\t\t\t<td>pronounced&nbsp;<strong>en</strong></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>─Ö before p or p</td>\r\n\t\t\t<td>s<strong>─Ö</strong>p</td>\r\n\t\t\t<td>pronounced&nbsp;<strong>em</strong></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>─Ö as last letter, or before ┼é or l</td>\r\n\t\t\t<td>imi<strong>─Ö</strong></td>\r\n\t\t\t<td>often pronounced&nbsp;<strong>e</strong></td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<h2 style="text-align:center">Consonants</h2>\r\n\r\n<table>\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td>Polish Letter</td>\r\n\t\t\t<td>Polish Example</td>\r\n\t\t\t<td>Pronunciation</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>b</td>\r\n\t\t\t<td><strong>B</strong>&oacute;g</td>\r\n\t\t\t<td>as in English&nbsp;<strong>b</strong>oy</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>c</td>\r\n\t\t\t<td><strong>c</strong>ena</td>\r\n\t\t\t<td>as in English bli<strong>tz</strong></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>─ç/ci</td>\r\n\t\t\t<td>┼╝y<strong>─ç</strong></td>\r\n\t\t\t<td>as in English&nbsp;<strong>ch</strong>oice</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>cz</td>\r\n\t\t\t<td><strong>cz</strong>y</td>\r\n\t\t\t<td>as in English&nbsp;<strong>ch</strong>op</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>d</td>\r\n\t\t\t<td><strong>d</strong>eszcz</td>\r\n\t\t\t<td>as in English wi<strong>d</strong>th</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>dz</td>\r\n\t\t\t<td>wi<strong>dz</strong>─Ö</td>\r\n\t\t\t<td>as in English woo<strong>ds</strong></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>d┼║/dzi</td>\r\n\t\t\t<td>┼é&oacute;<strong>d┼║</strong></td>\r\n\t\t\t<td>as in English&nbsp;<strong>j</strong>eep</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>d┼╝</td>\r\n\t\t\t<td>mia┼╝<strong>d┼╝</strong>y─ç</td>\r\n\t\t\t<td>as in English&nbsp;<strong>j</strong>am</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>f</td>\r\n\t\t\t<td><strong>f</strong>abryka</td>\r\n\t\t\t<td>as in English&nbsp;<strong>f</strong>ence</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>g</td>\r\n\t\t\t<td><strong>g</strong>orzej</td>\r\n\t\t\t<td>as in English&nbsp;<strong>g</strong>as</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>h</td>\r\n\t\t\t<td><strong>h</strong>erbata</td>\r\n\t\t\t<td>as in English&nbsp;<strong>h</strong>ope, but a little more raspier</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>ch</td>\r\n\t\t\t<td>ty<strong>ch</strong></td>\r\n\t\t\t<td>same as Polish&rsquo;s&nbsp;<strong>h</strong></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>j</td>\r\n\t\t\t<td><strong>j</strong>ak</td>\r\n\t\t\t<td>as in English&nbsp;<strong>y</strong>es</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>k</td>\r\n\t\t\t<td><strong>k</strong>u</td>\r\n\t\t\t<td>as in English&nbsp;<strong>k</strong>ill</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>l</td>\r\n\t\t\t<td><strong>l</strong>ubi─ç</td>\r\n\t\t\t<td>as in English&nbsp;<strong>l</strong>ock</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>┼é</td>\r\n\t\t\t<td>st&oacute;<strong>┼é</strong></td>\r\n\t\t\t<td>as in English&nbsp;<strong>w</strong>est</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>m</td>\r\n\t\t\t<td><strong>m</strong>─Ö┼╝czyzna</td>\r\n\t\t\t<td>as in English&nbsp;<strong>m</strong>ate</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>n</td>\r\n\t\t\t<td><strong>n</strong>uta</td>\r\n\t\t\t<td>as in English&nbsp;<strong>n</strong>ut</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>┼ä/ni</td>\r\n\t\t\t<td><strong>ni</strong>e</td>\r\n\t\t\t<td>as in English le<strong>n</strong>ient</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>p</td>\r\n\t\t\t<td><strong>p</strong>tak</td>\r\n\t\t\t<td>as in English&nbsp;<strong>p</strong>ale</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>r</td>\r\n\t\t\t<td><strong>r</strong>obi─ç</td>\r\n\t\t\t<td><strong>trilled r</strong></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>rz</td>\r\n\t\t\t<td>papie<strong>rz</strong>e</td>\r\n\t\t\t<td>as in English plea<strong>s</strong>ure</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>s</td>\r\n\t\t\t<td><strong>s</strong>┼éo┼äce</td>\r\n\t\t\t<td>as in English&nbsp;<strong>s</strong>un</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>┼¢/si</td>\r\n\t\t\t<td><strong>si</strong>erpie┼ä</td>\r\n\t\t\t<td>as in English&nbsp;<strong>sh</strong>ort</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>sz</td>\r\n\t\t\t<td>po<strong>sz</strong>uka─ç</td>\r\n\t\t\t<td>as in English&nbsp;<strong>sh</strong>op</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>t</td>\r\n\t\t\t<td><strong>t</strong>o</td>\r\n\t\t\t<td>as in English&nbsp;<strong>t</strong>ack</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>w</td>\r\n\t\t\t<td><strong>w</strong>sch&oacute;d</td>\r\n\t\t\t<td>as in English&nbsp;<strong>v</strong>et</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>z</td>\r\n\t\t\t<td>be<strong>z</strong></td>\r\n\t\t\t<td>as in English&nbsp;<strong>z</strong>oo</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>┼║/zi</td>\r\n\t\t\t<td>ga┼é─à<strong>┼║</strong></td>\r\n\t\t\t<td>as in Polish&nbsp;<strong>rz/┼╝</strong>, but softer</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>┼╝</td>\r\n\t\t\t<td><strong>┼╝</strong>e</td>\r\n\t\t\t<td>same as Polish&rsquo;s&nbsp;<strong>rz</strong></td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<h2 style="text-align:center">Important Rules</h2>\r\n\r\n<p>Here are some reference notes as to some rules of the alphabet.</p>\r\n\r\n<ul>\r\n\t<li>Nouns ending with&nbsp;<strong>k</strong>&nbsp;and&nbsp;<strong>g</strong>&nbsp;can&rsquo;t be followed directly by&nbsp;<strong>e</strong>&nbsp;or&nbsp;<strong>y</strong>. Usually, the k and g are followed first by an&nbsp;<strong>i.</strong><br />\r\n\tThis is important for noun declension. For example, in the instrumental case with a singular masculine noun, the suffix&nbsp;<strong>-em</strong>&nbsp;is added to the noun. However, if there is a k or g at the end of the noun, an&nbsp;<strong>i</strong>&nbsp;must be inserted before the -em.<br />\r\n\tpoci─àg (train) &rarr; poci─àg<strong>iem</strong>.<br />\r\n\tbank (bank) &rarr; bank<strong>iem</strong>.</li>\r\n\t<li>The consonants&nbsp;<strong>─ç</strong>,&nbsp;<strong>d┼║</strong>,&nbsp;<strong>┼ä</strong>,&nbsp;<strong>┼¢</strong>, and&nbsp;<strong>┼║</strong>&nbsp;(i.e. consonants with accent marks) only have their accent marks at the end of words and before consonants. When these consonants are in front of a vowel, they lose the accent mark and an&nbsp;<strong>i</strong>&nbsp;is added.<br />\r\n\tgo┼¢─ç (guest)&nbsp;&rarr; go┼¢cie. (Nominative plural form)</li>\r\n\t<li>The letter&nbsp;<strong>y</strong>&nbsp;may never directly follow&nbsp;<strong>l</strong>&nbsp;and&nbsp;<strong>j</strong>.</li>\r\n</ul>	0
38	es//Introduction and Greetings	1	contentddd	1	spanish-greetings		3
19	pl//Nominative Case	2	<p>It is important to have an understanding of what grammatical cases are and how they work. Polish officially has 7, although one of them is not too commonly used. Basically, cases categorize the role a word, usually a noun, adjective, or pronoun, have in a sentence. This may seem like a foreign and complex concept, but we actually use them everyday in English! Let's take a look at the simple sentence "I gave him the ball." If we break it down, we see that there is a subject, "I" and two objects, "him" and "the ball." These are called indirect and direct objects, which are two examples of cases. "I" (the subject) is giving "the ball" (the direct object) <strong><span style="text-decoration: underline;">to</span></strong> "him" (the indirect object). Each case has a different role in the sentence. Let's also look at the sentences "I gave he the ball" or "Me gave him the ball" Sound odd, right? Yes! The words "he" in the first sentence and "me" in the second are incorrectly <em>declined</em>, or changed to the appropriate grammatical case. The sentences sound awkward and are grammatically incorrect. These cases appear in Polish, but compared to English, much, much more frequently. It is important to understand how Polish grammatical cases work because their declensions are required in virtually all sentences.\r\n\r\nThe nominative case is used to denote the subject of the sentence. They are the dictionary forms of nouns. All nouns in their respective cases decline based off of this form.\r\n\r\nExamples:\r\nKto jest wysoki? On jest wysoki.\r\n(Who is tall? He is tall)\r\n\r\nCo jest nudne? Szko┼éa jest nudna.\r\n(What is boring? School is boring)\r\n</p>\r\n<br><br>\r\n<a id="declension-tables"></a><h2 class="text-center">Declension Tables</h2>\r\n<h3 class="text-center">Singular Nouns</h3>\r\n<table class="third-theme third-theme-border" style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr>\r\n         <td class="third-theme-border">Gender</td>\r\n         <td class="third-theme-border">Stem Ending</td>\r\n      </tr>\r\n      <tr>\r\n         <td class="third-theme-border">Masculine</td>\r\n         <td class="third-theme-border">consonant, a</td>\r\n      </tr>\r\n      <tr>\r\n         <td class="third-theme-border">Feminine</td>\r\n         <td class="third-theme-border">a, ┼¢─ç, consonant</td>\r\n      </tr>\r\n      <tr>\r\n         <td class="third-theme-border">Neuter</td>\r\n         <td class="third-theme-border">─Ö, e, o, um</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3 class="text-center">Singular Adjectives</h3>\r\n<table class="third-theme third-theme-border" style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr style="height: 21px;" class="third-theme">\r\n         <td class="third-theme-border" style="height: 21px;">Gender</td>\r\n         <td class="third-theme-border" style="height: 21px;">Stem Ending</td>\r\n         <td class="third-theme-border" style="height: 21px;">Add Ending</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td class="third-theme-border" style="height: 21px;">Masculine</td>\r\n         <td class="third-theme-border" style="height: 21px;">any</td>\r\n         <td class="third-theme-border" style="height: 21px;">i, y</td>\r\n      </tr>\r\n      <tr style="height: 21.5px;">\r\n         <td class="third-theme-border" style="height: 21.5px;">Feminine</td>\r\n         <td class="third-theme-border" style="height: 21.5px;">any</td>\r\n         <td class="third-theme-border" style="height: 21.5px;">a</td>\r\n      </tr>\r\n      <tr style="height: 21px;">\r\n         <td class="third-theme-border" style="height: 21px;">Neuter</td>\r\n         <td class="third-theme-border" style="height: 21px;">any</td>\r\n         <td class="third-theme-border" style="height: 21px;">e</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<p></p>\r\n<h3 class="text-center">Plural Nouns</h3>\r\n<table class="third-theme third-theme-border" style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="height: 23px;">Gender</td>\r\n         <td class="third-theme-border" style="height: 23px;">Stem Ending</td>\r\n         <td class="third-theme-border" style="height: 23px;">Add Ending</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="border-bottom: none; height: 23px;">Masculine Personal</td>\r\n         <td class="third-theme-border" style="height: 23px;">hard consonant except k, g, and r</td>\r\n         <td class="third-theme-border" style="height: 23px;">'i</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="border-top: none; border-bottom: none; height: 23px;"></td>\r\n         <td class="third-theme-border" style="height: 23px;">k, g, r, and c</td>\r\n         <td class="third-theme-border" style="height: 23px;">'y</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="border-top: none; border-bottom: none; height: 23px;"></td>\r\n         <td class="third-theme-border" style="height: 23px;">hardened or soft consonant</td>\r\n         <td class="third-theme-border" style="height: 23px;">e</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="border-top: none; border-bottom: none; height: 23px;"></td>\r\n         <td class="third-theme-border" style="height: 23px;">anin</td>\r\n         <td class="third-theme-border" style="height: 23px;">anie</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="border-top: none; height: 23px;"></td>\r\n         <td class="third-theme-border" style="height: 23px;"></td>\r\n         <td class="third-theme-border" style="height: 23px;">owie</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="border-bottom: none; height: 23px;">Masculine Non-Personal</td>\r\n         <td class="third-theme-border" style="height: 23px;">hard consonant except k and g</td>\r\n         <td class="third-theme-border" style="height: 23px;">y</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" tyle="border-top: none; border-bottom: none; height: 23px;"></td>\r\n         <td class="third-theme-border" tyle="height: 23px;">k and g</td>\r\n         <td class="third-theme-border" tyle="height: 23px;">i</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23.5px;">\r\n         <td class="third-theme-border" style="height: 23.5px;"></td>\r\n         <td class="third-theme-border" style="border-top: none; border-bottom: none; height: 23.5px;">hardened or soft consonant</td>\r\n         <td class="third-theme-border" style="height: 23.5px;">e</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="border-bottom: none; height: 23px;">Feminine</td>\r\n         <td class="third-theme-border" style="height: 23px;">hard consonant except k and g</td>\r\n         <td class="third-theme-border" style="height: 23px;">y</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="border-top: none; border-bottom: none; height: 23px;"></td>\r\n         <td class="third-theme-border" style="height: 23px;">k and g</td>\r\n         <td class="third-theme-border" style="height: 23px;">i</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="border-top: none; border-bottom: none; height: 23px;"></td>\r\n         <td class="third-theme-border" style="height: 23px;">hardened or soft consonant</td>\r\n         <td class="third-theme-border" style="height: 23px;">e</td>\r\n      </tr>\r\n      <tr class="third-theme-border" style="height: 23px;">\r\n         <td class="third-theme-border" style="height: 23px;">Neuter</td>\r\n         <td class="third-theme-border" style="height: 23px;">any</td>\r\n         <td class="third-theme-border" style="height: 23px;">a</td>\r\n      </tr>\r\n   </tbody>\r\n</table>\r\n<h3 class="text-center">Plural Adjectives</h3>\r\n<table class="third-theme third-theme-border" style="width: 50%;" border="2">\r\n   <tbody>\r\n      <tr>\r\n         <td class="third-theme-border">Gender</td>\r\n         <td class="third-theme-border">Stem Ending</td>\r\n         <td class="third-theme-border">Add Ending</td>\r\n      </tr>\r\n      <tr>\r\n         <td class="third-theme-border" style="border-bottom: none;">Masculine Personal</td>\r\n         <td class="third-theme-border">k, g, r, c, cz, dz</td>\r\n         <td class="third-theme-border">'y</td>\r\n      </tr>\r\n      <tr>\r\n         <td class="third-theme-border" style="border-top: none; border-bottom: none;"></td>\r\n         <td class="third-theme-border">other consonants</td>\r\n         <td class="third-theme-border">i</td>\r\n      </tr>\r\n      <tr>\r\n         <td class="third-theme-border">Masculine Non-Personal, Feminine, Neuter</td>\r\n         <td class="third-theme-border">any</td>\r\n         <td class="third-theme-border">e</td>\r\n      </tr>\r\n   </tbody>\r\n</table>	4	nominative-case		3
15	pl//Introduction and Greetings	2		1	greetings	<p style="text-align:center">Welcome to the Polish language course for English speakers! <span style="color:#e74c3c">Witamy!</span></p>\r\n\r\n<p style="text-align:center"><img alt="" src="https://i1.wp.com/learneasypolish.com/wp-content/uploads/2018/11/Polska_flag_map.png?resize=300%2C282&amp;ssl=1" style="height:282px; width:300px" /></p>\r\n\r\n<p style="text-align:center"><br />\r\nThis course is designed to help you learn Polish by focusing on the most common words and the most important grammar points so that you can start having meaningful conversations from the very beginning! Lessons are separated by topic and are all unlocked so that you can improve the skills you choose. However, if you are new to the language or want a guided approach, we recommend starting with the first lesson and working from there.</p>\r\n\r\n<p style="text-align:center">In addition to the lessons, we offer in-depth grammar guides with additional explanations and examples for your own reference. Let&#39;s get started!</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">In this first lesson, you will learn the most basic greetings and a couple more essential words needed to have your first conversation in Polish. Here is a list of the most important ones, with their English definitions:</p>\r\n\r\n<p>cze┼¢─ç - hello / bye<br />\r\ndzie┼ä dobry - good morning / good afternoon<br />\r\ndobry wiecz&oacute;r - good evening<br />\r\ndobranoc - goodnight<br />\r\ndo widzenia - goodbye<br />\r\ndzi─Ökuj─Ö - thank you<br />\r\nprosz─Ö - please / your&#39;e welcome<br />\r\nprzepraszam - sorry / excuse me</p>\r\n\r\n<p>Now that you have a list of these super important words, put your knowledge to the test by completing the lesson below!</p>	3
17	pl//Personal Pronouns	2		3	personal-pronouns	<p>Personal pronouns are used to replace people, places, and things. In English, some personal pronouns include I, you, he, she, we, and they. In Polish, personal pronouns get a little more complex because they are declined based on their role in a sentence.</p>\r\n\r\n<p>It is important to know that personal pronouns (mostly in the Nominative case) can be omitted in sentences because they can be inferred based on the verb&#39;s conjugation. Lastly, some pronouns have 1 or 2 alternatives.</p>\r\n\r\n<p>Here are some examples:</p>\r\n\r\n<p><strong>Ja</strong> jestem z Polski&nbsp;&rarr; I am from Poland.</p>\r\n\r\n<p>Co <strong>ty</strong>&nbsp;robisz? &rarr; What are you doing?</p>\r\n\r\n<p>Nie rozumiem&nbsp;<strong>ci─Ö</strong>&nbsp;&rarr; I do not understand you?<br />\r\n(Notice how we use the word <strong>ci─Ö </strong>instead of <strong>ty </strong>to mean &quot;you&quot; in this sentence. This is because&nbsp;<strong>ci─Ö</strong>&nbsp;is acting as a direct object instead of a subject. Don&#39;t worry if this sounds confusing for now, we will get more practice with this in future lessons)</p>\r\n\r\n<p><strong>Ona</strong>&nbsp;jest Polk─à. &rarr; She is Polish.</p>\r\n\r\n<p><strong>On</strong>&nbsp;jest Polakiem. &rarr; He is Polish.</p>\r\n\r\n<p><strong>My</strong>&nbsp;uczymy si─Ö polskiego.&nbsp;&rarr; We are learning Polish.</p>\r\n\r\n<p>Czy <strong>wy</strong>&nbsp;m&oacute;wicie po angielsku? / Czy m&oacute;wicie po angielsku? &rarr; Do you (plural) speak English?</p>\r\n\r\n<p><strong>Oni</strong>&nbsp;mieszkaj─à w Polsce. / Mieszkaj─à w Polsce. &rarr; They live in Poland. (The word&nbsp;<strong>oni</strong>&nbsp;can be omitted because its meaning is inferred from the verb&nbsp;<strong>mieszkaj─à</strong>)</p>\r\n\r\n<h2 style="text-align:center">First Person</h2>\r\n\r\n<p>The nominative singular form &quot;ja&quot; equates to &quot;I&quot; in English, and &quot;my&quot; means &quot;we&quot;, since these forms represent the subject. The rest of the singular forms means &quot;me&quot; and the plural ones mean &quot;us&quot;.</p>\r\n\r\n<table class="third-theme third-theme-border" style="width:208px">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">&nbsp;</td>\r\n\t\t\t<td class="third-theme-border">Singular</td>\r\n\t\t\t<td class="third-theme-border">Plural</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">Nominative</td>\r\n\t\t\t<td class="third-theme-border">ja</td>\r\n\t\t\t<td class="third-theme-border">my</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">Genitive</td>\r\n\t\t\t<td class="third-theme-border">mnie</td>\r\n\t\t\t<td class="third-theme-border">nas</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">Dative</td>\r\n\t\t\t<td class="third-theme-border">mnie/mi</td>\r\n\t\t\t<td class="third-theme-border">nam</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">Accusative</td>\r\n\t\t\t<td class="third-theme-border">mnie</td>\r\n\t\t\t<td class="third-theme-border">nas</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">Instrumental</td>\r\n\t\t\t<td class="third-theme-border">mn─à</td>\r\n\t\t\t<td class="third-theme-border">nami</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">Locative</td>\r\n\t\t\t<td class="third-theme-border">mnie</td>\r\n\t\t\t<td class="third-theme-border">nas</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 style="text-align:center">Second Person</h2>\r\n\r\n<p>In English, all these forms translate to &quot;you&quot; because you is used both in the singular and plural.</p>\r\n\r\n<table class="third-theme third-theme-border">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">&nbsp;</td>\r\n\t\t\t<td class="third-theme-border">Singular</td>\r\n\t\t\t<td class="third-theme-border">Plural</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">Nominative</td>\r\n\t\t\t<td class="third-theme-border">ty</td>\r\n\t\t\t<td class="third-theme-border">wy</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">Genitive</td>\r\n\t\t\t<td class="third-theme-border">ciebie/ci─Ö</td>\r\n\t\t\t<td class="third-theme-border">was</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">Dative</td>\r\n\t\t\t<td class="third-theme-border">tobie/ci</td>\r\n\t\t\t<td class="third-theme-border">wam</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">Accusative</td>\r\n\t\t\t<td class="third-theme-border">ciebie/ci─Ö</td>\r\n\t\t\t<td class="third-theme-border">was</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">Instrumental</td>\r\n\t\t\t<td class="third-theme-border">tob─à</td>\r\n\t\t\t<td class="third-theme-border">wami</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">Locative</td>\r\n\t\t\t<td class="third-theme-border">tobie</td>\r\n\t\t\t<td class="third-theme-border">was</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 style="text-align:center">Third Person</h2>\r\n\r\n<p>Here, the English equivalents will be placed under each form to more easily demonstrate what each pronoun means.</p>\r\n\r\n<table class="third-theme third-theme-border">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">&nbsp;</td>\r\n\t\t\t<td class="third-theme-border">Masculine</td>\r\n\t\t\t<td class="third-theme-border">Feminine</td>\r\n\t\t\t<td class="third-theme-border">Neuter</td>\r\n\t\t\t<td class="third-theme-border">Masculine Personal</td>\r\n\t\t\t<td class="third-theme-border">Other</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">Nominative</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>on</p>\r\n\r\n\t\t\t<p>he</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>ona</p>\r\n\r\n\t\t\t<p>she</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>ono</p>\r\n\r\n\t\t\t<p>it</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>oni</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>one</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">Genitive</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>jego/go/niego</p>\r\n\r\n\t\t\t<p>him</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>jej/niej</p>\r\n\r\n\t\t\t<p>her</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>jego/go/niego</p>\r\n\r\n\t\t\t<p>it</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>ich/nich</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>ich/nich</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">Dative</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>jemu/mu/niemu</p>\r\n\r\n\t\t\t<p>him</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>jej/niej</p>\r\n\r\n\t\t\t<p>her</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>jemu/mu/niemu</p>\r\n\r\n\t\t\t<p>it</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>im/nim</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>im/nim</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">Accusative</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>jego/go/niego</p>\r\n\r\n\t\t\t<p>him</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>j─à/ni─à</p>\r\n\r\n\t\t\t<p>her</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>je/nie</p>\r\n\r\n\t\t\t<p>it</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>ich/nich</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>je/nie</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">Instrumental</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>nim</p>\r\n\r\n\t\t\t<p>him</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>ni─à</p>\r\n\r\n\t\t\t<p>her</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>nim</p>\r\n\r\n\t\t\t<p>it</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">nimi</td>\r\n\t\t\t<td class="third-theme-border">nimi</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class="third-theme-border">Locative</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>nim</p>\r\n\r\n\t\t\t<p>him</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>niej</p>\r\n\r\n\t\t\t<p>her</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>nim</p>\r\n\r\n\t\t\t<p>it</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>nich</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t\t<td class="third-theme-border">\r\n\t\t\t<p>nich</p>\r\n\r\n\t\t\t<p>they</p>\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>	3
\.


                                                                                                                         3571.dat                                                                                            0000600 0004000 0002000 00000000307 14231652720 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        4	1	15
5	2	15
6	1	17
7	1	33
8	2	33
9	1	19
10	1	20
11	1	21
12	1	22
13	1	23
14	1	24
15	1	25
16	1	26
17	1	27
19	1	28
20	1	30
21	1	29
22	1	31
23	1	32
24	1	34
25	1	35
26	1	36
28	3	15
29	2	20
32	1	38
\.


                                                                                                                                                                                                                                                                                                                         3565.dat                                                                                            0000600 0004000 0002000 00000014362 14231652720 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        393	tak	yes//yeah	33	tak	\N	1	\N
394	nie	no//nope	33	nie	\N	1	\N
395	dobrze	good//fine	33	dobrze	\N	1	\N
396	┼║le	bad//poor//not good	33	┼║le	\N	1	\N
397	mo┼╝e	maybe//perhaps	33	mo┼╝e	\N	1	\N
398	dlaczego?//czemu?	why?	33	dlaczego	\N	1	\N
399	jak?	how?//like//as	33	jak	\N	1	\N
400	kto?	who?	33	kto	\N	1	\N
401	co?	what?	33	co	\N	1	\N
402	gdzie?	where?	33	gdzie	\N	1	\N
403	czemu?	why?	33	czemu	\N	2	\N
404	ile?	how much?//how many?	33	ile	\N	2	\N
405	gdzie jeste┼¢?//gdzie ty jeste┼¢?	where are you?	33	gdzie	\N	2	\N
406	co to jest?//co jest?	what is this?//what is that?	33	co	\N	2	\N
407	jak si─Ö masz?//jak tam?//co tam?	how are you?//how are you doing?	33	masz	\N	2	\N
408	kto to jest?//kto jest?	who is this?//who is that?	33	kto	\N	2	\N
409	dlaczego uczysz si─Ö Polskiego??dlaczego uczysz si─Ö Polski?///czemu uczysz si─Ö Polskiego??czemu uczysz si─Ö Polski?//dlaczego ty uczysz si─Ö Polskiego??dlaczego ty uczysz si─Ö Polski?///czemu ty uczysz si─Ö Polskiego??czemu ty uczysz si─Ö Polski?	why are you learning Polish?//why do you learn Polish?//why are you studying Polish?	33	dlaczego	\N	2	\N
410	Czy ty m├│wisz po polsku? Tak, ja m├│wi─Ö po polsku.	do you speak Polish? Yes, I speak Polish	33	tak	\N	2	\N
411	Czy ty mieszkasz w Polsce? Nie, ja nie mieszkam w Polsce.	do you live in Poland? No, I do not live in Poland.	33	nie	\N	2	\N
412	kiedy ty b─Ödziesz w Polsce?//kiedy b─Ödziesz w Polsce?	when will you be in Poland?	33	kiedy	\N	2	\N
413	To jest m├│j brat.//To m├│j brat.	This is my brother//That is my brother	19	brat	\N	1	\N
414	Polski jest trudny.//J─Özyk Polski jest trudny.	Polish is hard//Polish is tough//The Polish language is hard	19	polski	\N	1	\N
415	Polska jest pi─Ökna.	Poland is beautiful//Poland is pretty.	19	pi─Ökna	\N	1	\N
416	Dom jest du┼╝y.	The house is big//House is big//A house is big	19	du┼╝y	\N	1	\N
417	Samoch├│d jest stary.	The car is old//The cars old	19	stary	\N	1	\N
418	Moja matka to Polka.//Moja matka jest Polk─à	My mother is Polish//My mother is a Pole//My mothers Polish//My mothers a Pole	19	polka	\N	1	\N
419	Jego kuzyn to Polak.//Jego kuzyn jest Polakiem//Jego kuznka to Polka//Jest kuzynka jest Polka.	His cousin is Polish//His cousin is a Pole	19	kuzyn	\N	1	\N
420	Moje siostry s─à m─àdre	My sisters are smart//My sisters are intelligent	19	siostry	\N	1	\N
421	Ksi─à┼╝ka jest dobra.	The book is good//The books good//A book is good	19	dobra	\N	1	\N
422	To jest m├│j ojciec//To m├│j ojciec	This is my father//This is my dad//That is my father//That is my dad	19	ojciec	\N	1	\N
423	Ja m├│wi─Ö po polsku//M├│wi─Ö po polsku	I speak Polish//I am speaking Polish	27	m├│wi─Ö	\N	1	\N
424	Ja nie mieszkam w Polsce//Nie mieszkam w Polsce	I do not live in Poland//I dont live in Poland	27	mieszkam	\N	1	\N
425	Gdzie ty idziesz?//Gdzie idziesz?	Where are you going?//Where do you go?	27	idziesz	\N	1	\N
426	Co ty robisz?//Co robisz?	What are you doing//Whatre you doing?//What do you do?	27	robisz	\N	1	\N
427	On czyta ksi─à┼╝k─Ö//On czyta ksi─à┼╝ka	He is reading a book//He reads a book	27	czyta	\N	1	\N
428	On nie chce tam i┼¢─ç//On nie chce i┼¢─ç tam	He does not want to go there//He doesnt want to go there	27	chce	\N	1	\N
429	Ona ma rodzin─Ö w Polsce//Ona ma rodzina w Polsce	She has family in Poland	27	ma	\N	1	\N
430	Ona lubi gra─ç w pi┼ék─Ö no┼╝n─à//Ona lubi gra─ç w pi┼éka no┼╝na//Ona lubi gra─ç pi┼éka no┼╝na	She likes to play soccer//She likes playing soccer	27	lubi	\N	1	\N
431	My uczymy si─Ö Polskiego//Uczymy si─Ö Polskiego//My uczymy si─Ö Polski//My uczymy si─Ö Polski j─Özyk//Uczymy si─Ö Polski//Uczymy si─Ö Polski j─Özyk	We are learning Polish//We learn Polish//We study Polish	27	uczymy	\N	1	\N
432	My idziemy do pracy//Idziemy do pracy//My jedziemy do pracy//Jedziemy do pracy	We are going to work//We go to work	27	idziemy//jedziemy	\N	1	\N
433	Czy wy m├│wicie po angielsku?//Czy m├│wicie po angielsku?//M├│wicie po angielsku?	Do you speak English?//Do you all speak English//Do yall speak English?	27	m├│wicie	\N	1	\N
374	nie ma za co	youre welcome//not at all	15	za	\N	3	\N
375	jak masz na imi─Ö?	what is your name?//whats your name//what are you called?	15	jak	\N	3	\N
363	cze┼¢─ç	hello//bye//hi	15	cze┼¢─ç	\N	1	\N
364	dzie┼ä dobry	hello//goodday	15	dzie┼ä	\N	1	\N
365	dobry wiecz├│r	good evening//hello	15	wiecz├│r	\N	1	\N
366	do widzenia	goodbye//bye//see you	15	widzenia	\N	1	\N
367	jak si─Ö masz?	how are you//how are you doing//how is it going	15	masz	\N	1	\N
368	prosz─Ö	please//youre welcome	15	prosz─Ö	\N	2	\N
369	dzi─Ökuj─Ö//dzi─Öki	thank you//thanks	15	dzi─Ökuj─Ö	\N	2	\N
370	przepraszam	sorry//excuse me	15	przepraszam	\N	2	\N
371	dobranoc	goodnight	15	dobranoc	\N	2	\N
372	jak tam?//jak leci?//co s┼éycha─ç?//co tam?	how are you//how are you doing//how is it going	15	jak	\N	2	\N
376	ja jestem Polakiem//jestem Polakiem	i am polish//i am a pole//i am a polish	17	ja	\N	1	\N
377	ja nie jestem z Polski//nie jestem z Polski	i am not from Poland//im not from Poland	17	ja	\N	1	\N
378	czy ty jeste┼¢ z Polski?//jeste┼¢ z Polski?//czy jeste┼¢ z Polski?	are you from Poland?	17	ty	\N	1	\N
379	ty jeste┼¢ kobiet─à//jeste┼¢ kobiet─à	you are a woman	17	ty	\N	1	\N
380	on jest ch┼éopcem//jest ch┼éopcem	he is a boy	17	on	\N	1	\N
381	ona jest dziewczyn─à//jest dziewczyn─à	she is a girl	17	ona	\N	1	\N
382	on jest Polakiem//jest Polakiem	he is polish//he is a pole//he is a polish//he is a polish person	17	on	\N	1	\N
383	ona jest Polk─à//jest Polk─à	she is polish//she is a pole//she is a polish//she is a polish person	17	ona	\N	1	\N
384	my nie jeste┼¢my w Polsce//nie jeste┼¢my w Polsce	we are not in poland//we arent in poland	17	my	\N	1	\N
385	my jeste┼¢my m─Ö┼╝czyznami//jeste┼¢my m─Ö┼╝czyznami	we are men	17	my	\N	1	\N
386	czy wy jeste┼¢cie z Polski?//jeste┼¢cie z Polski?	are you from poland//are you all from poland//are yall from poland	17	wy	\N	1	\N
387	wy jeste┼¢cie Polakami//wy jeste┼¢cie Polkami//jeste┼¢cie Polakami//jeste┼¢cie Polkami	you are polish//you are all polish//you all are polish//you are poles//you are all poles//you all are poles	17	wy	\N	1	\N
388	one s─à kobietami//s─à kobietami	they are women	17	one	\N	1	\N
389	oni s─à ch┼éopcami//s─à ch┼éopcami	they are boys	17	oni	\N	1	\N
390	one s─à dziewczynami//s─à dziewczynami	they are women	17	one	\N	1	\N
391	oni nie s─à Polakami//nie s─à Polakami	they are not polish//they are not poles	17	oni	\N	1	\N
392	kiedy?	when?	33	kiedy	\N	1	\N
\.


                                                                                                                                                                                                                                                                              3561.dat                                                                                            0000600 0004000 0002000 00000000161 14231652720 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        39	1	bio...	60	1	1@gmail.com
40	2	bio...	61	2	2@gmail.com
1	jonaaadddddd	jonbd	1	jmkryzanski	test@gmail.com
\.


                                                                                                                                                                                                                                                                                                                                                                                                               3569.dat                                                                                            0000600 0004000 0002000 00000000032 14231652720 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        70	1	1
75	1	2
76	1	3
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      3573.dat                                                                                            0000600 0004000 0002000 00000001125 14231652720 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        270	39	4
271	39	6
272	39	7
273	39	9
274	39	10
275	39	11
276	39	12
277	39	13
278	39	14
279	39	15
280	39	16
281	39	17
282	39	19
283	39	20
284	39	21
16	1	6
17	1	4
285	39	22
19	1	7
286	39	23
21	1	9
22	1	10
23	1	11
24	1	12
25	1	13
26	1	14
27	1	15
28	1	16
29	1	17
30	1	19
31	1	20
32	1	21
33	1	22
34	1	23
35	1	24
36	1	25
37	1	26
287	39	24
288	39	25
289	39	26
290	39	32
291	40	4
292	40	6
293	40	7
294	40	9
295	40	10
296	40	11
297	40	12
298	40	13
299	40	14
300	40	15
301	40	16
302	40	17
303	40	19
304	40	20
305	40	21
306	40	22
307	40	23
308	40	24
309	40	25
310	40	26
311	40	32
316	1	5
319	1	8
93	1	32
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000144242 14231652720 0015375 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE websitepostgredb;
--
-- Name: websitepostgredb; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE websitepostgredb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';


ALTER DATABASE websitepostgredb OWNER TO postgres;

\connect websitepostgredb

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: blog_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_post (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    body text NOT NULL,
    caption text NOT NULL,
    post_date date NOT NULL,
    author_id integer NOT NULL,
    slug character varying(50) NOT NULL
);


ALTER TABLE public.blog_post OWNER TO postgres;

--
-- Name: blog_post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_post_id_seq OWNER TO postgres;

--
-- Name: blog_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_post_id_seq OWNED BY public.blog_post.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: gTTS_speech; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."gTTS_speech" (
    id bigint NOT NULL,
    text text NOT NULL,
    language text NOT NULL,
    file_name text NOT NULL
);


ALTER TABLE public."gTTS_speech" OWNER TO postgres;

--
-- Name: gTTS_speech_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."gTTS_speech_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."gTTS_speech_id_seq" OWNER TO postgres;

--
-- Name: gTTS_speech_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."gTTS_speech_id_seq" OWNED BY public."gTTS_speech".id;


--
-- Name: learning_course; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.learning_course (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    image character varying(100)
);


ALTER TABLE public.learning_course OWNER TO postgres;

--
-- Name: learning_course_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.learning_course_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.learning_course_id_seq OWNER TO postgres;

--
-- Name: learning_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.learning_course_id_seq OWNED BY public.learning_course.id;


--
-- Name: learning_guide; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.learning_guide (
    id bigint NOT NULL,
    "guideTitle" character varying(255) NOT NULL,
    content text NOT NULL,
    "orderingID" integer NOT NULL,
    course_id bigint NOT NULL,
    slug character varying(50) NOT NULL,
    category character varying(255) NOT NULL,
    "richContent" text
);


ALTER TABLE public.learning_guide OWNER TO postgres;

--
-- Name: learning_guide_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.learning_guide_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.learning_guide_id_seq OWNER TO postgres;

--
-- Name: learning_guide_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.learning_guide_id_seq OWNED BY public.learning_guide.id;


--
-- Name: learning_lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.learning_lesson (
    id bigint NOT NULL,
    "lessonTitle" character varying(255) NOT NULL,
    course_id bigint NOT NULL,
    content text,
    "orderingID" integer NOT NULL,
    slug character varying(50) NOT NULL,
    "richContent" text,
    "numLevels" integer
);


ALTER TABLE public.learning_lesson OWNER TO postgres;

--
-- Name: learning_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.learning_lesson_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.learning_lesson_id_seq OWNER TO postgres;

--
-- Name: learning_lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.learning_lesson_id_seq OWNED BY public.learning_lesson.id;


--
-- Name: learning_level; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.learning_level (
    id bigint NOT NULL,
    "levelNumber" integer NOT NULL,
    lesson_id bigint
);


ALTER TABLE public.learning_level OWNER TO postgres;

--
-- Name: learning_level_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.learning_level_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.learning_level_id_seq OWNER TO postgres;

--
-- Name: learning_level_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.learning_level_id_seq OWNED BY public.learning_level.id;


--
-- Name: learning_questionanswer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.learning_questionanswer (
    id bigint NOT NULL,
    question character varying(255) NOT NULL,
    answer character varying(255) NOT NULL,
    lesson_id bigint,
    "questionKeyword" character varying(100),
    level_id bigint,
    level bigint,
    "levelModel_id" bigint
);


ALTER TABLE public.learning_questionanswer OWNER TO postgres;

--
-- Name: learning_qanda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.learning_qanda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.learning_qanda_id_seq OWNER TO postgres;

--
-- Name: learning_qanda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.learning_qanda_id_seq OWNED BY public.learning_questionanswer.id;


--
-- Name: userprofile_profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userprofile_profile (
    id bigint NOT NULL,
    username character varying(20) NOT NULL,
    bio text NOT NULL,
    user_id integer,
    slug character varying(50) NOT NULL,
    email character varying(254) NOT NULL
);


ALTER TABLE public.userprofile_profile OWNER TO postgres;

--
-- Name: userprofile_profile_course; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userprofile_profile_course (
    id bigint NOT NULL,
    profile_id bigint NOT NULL,
    course_id bigint NOT NULL
);


ALTER TABLE public.userprofile_profile_course OWNER TO postgres;

--
-- Name: userprofile_profile_course_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.userprofile_profile_course_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.userprofile_profile_course_id_seq OWNER TO postgres;

--
-- Name: userprofile_profile_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.userprofile_profile_course_id_seq OWNED BY public.userprofile_profile_course.id;


--
-- Name: userprofile_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.userprofile_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.userprofile_profile_id_seq OWNER TO postgres;

--
-- Name: userprofile_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.userprofile_profile_id_seq OWNED BY public.userprofile_profile.id;


--
-- Name: userprofile_profile_levels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userprofile_profile_levels (
    id bigint NOT NULL,
    profile_id bigint NOT NULL,
    level_id bigint NOT NULL
);


ALTER TABLE public.userprofile_profile_levels OWNER TO postgres;

--
-- Name: userprofile_profile_levels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.userprofile_profile_levels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.userprofile_profile_levels_id_seq OWNER TO postgres;

--
-- Name: userprofile_profile_levels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.userprofile_profile_levels_id_seq OWNED BY public.userprofile_profile_levels.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: blog_post id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post ALTER COLUMN id SET DEFAULT nextval('public.blog_post_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: gTTS_speech id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."gTTS_speech" ALTER COLUMN id SET DEFAULT nextval('public."gTTS_speech_id_seq"'::regclass);


--
-- Name: learning_course id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_course ALTER COLUMN id SET DEFAULT nextval('public.learning_course_id_seq'::regclass);


--
-- Name: learning_guide id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_guide ALTER COLUMN id SET DEFAULT nextval('public.learning_guide_id_seq'::regclass);


--
-- Name: learning_lesson id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_lesson ALTER COLUMN id SET DEFAULT nextval('public.learning_lesson_id_seq'::regclass);


--
-- Name: learning_level id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_level ALTER COLUMN id SET DEFAULT nextval('public.learning_level_id_seq'::regclass);


--
-- Name: learning_questionanswer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_questionanswer ALTER COLUMN id SET DEFAULT nextval('public.learning_qanda_id_seq'::regclass);


--
-- Name: userprofile_profile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile_profile ALTER COLUMN id SET DEFAULT nextval('public.userprofile_profile_id_seq'::regclass);


--
-- Name: userprofile_profile_course id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile_profile_course ALTER COLUMN id SET DEFAULT nextval('public.userprofile_profile_course_id_seq'::regclass);


--
-- Name: userprofile_profile_levels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile_profile_levels ALTER COLUMN id SET DEFAULT nextval('public.userprofile_profile_levels_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.
COPY public.auth_group (id, name) FROM '$$PATH$$/3542.dat';

--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.
COPY public.auth_group_permissions (id, group_id, permission_id) FROM '$$PATH$$/3544.dat';

--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
\.
COPY public.auth_permission (id, name, content_type_id, codename) FROM '$$PATH$$/3540.dat';

--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.
COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM '$$PATH$$/3546.dat';

--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.
COPY public.auth_user_groups (id, user_id, group_id) FROM '$$PATH$$/3548.dat';

--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.
COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM '$$PATH$$/3550.dat';

--
-- Data for Name: blog_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_post (id, title, body, caption, post_date, author_id, slug) FROM stdin;
\.
COPY public.blog_post (id, title, body, caption, post_date, author_id, slug) FROM '$$PATH$$/3559.dat';

--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.
COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM '$$PATH$$/3552.dat';

--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
\.
COPY public.django_content_type (id, app_label, model) FROM '$$PATH$$/3538.dat';

--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
\.
COPY public.django_migrations (id, app, name, applied) FROM '$$PATH$$/3536.dat';

--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.
COPY public.django_session (session_key, session_data, expire_date) FROM '$$PATH$$/3553.dat';

--
-- Data for Name: gTTS_speech; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."gTTS_speech" (id, text, language, file_name) FROM stdin;
\.
COPY public."gTTS_speech" (id, text, language, file_name) FROM '$$PATH$$/3566.dat';

--
-- Data for Name: learning_course; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.learning_course (id, title, image) FROM stdin;
\.
COPY public.learning_course (id, title, image) FROM '$$PATH$$/3555.dat';

--
-- Data for Name: learning_guide; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.learning_guide (id, "guideTitle", content, "orderingID", course_id, slug, category, "richContent") FROM stdin;
\.
COPY public.learning_guide (id, "guideTitle", content, "orderingID", course_id, slug, category, "richContent") FROM '$$PATH$$/3563.dat';

--
-- Data for Name: learning_lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.learning_lesson (id, "lessonTitle", course_id, content, "orderingID", slug, "richContent", "numLevels") FROM stdin;
\.
COPY public.learning_lesson (id, "lessonTitle", course_id, content, "orderingID", slug, "richContent", "numLevels") FROM '$$PATH$$/3557.dat';

--
-- Data for Name: learning_level; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.learning_level (id, "levelNumber", lesson_id) FROM stdin;
\.
COPY public.learning_level (id, "levelNumber", lesson_id) FROM '$$PATH$$/3571.dat';

--
-- Data for Name: learning_questionanswer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.learning_questionanswer (id, question, answer, lesson_id, "questionKeyword", level_id, level, "levelModel_id") FROM stdin;
\.
COPY public.learning_questionanswer (id, question, answer, lesson_id, "questionKeyword", level_id, level, "levelModel_id") FROM '$$PATH$$/3565.dat';

--
-- Data for Name: userprofile_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userprofile_profile (id, username, bio, user_id, slug, email) FROM stdin;
\.
COPY public.userprofile_profile (id, username, bio, user_id, slug, email) FROM '$$PATH$$/3561.dat';

--
-- Data for Name: userprofile_profile_course; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userprofile_profile_course (id, profile_id, course_id) FROM stdin;
\.
COPY public.userprofile_profile_course (id, profile_id, course_id) FROM '$$PATH$$/3569.dat';

--
-- Data for Name: userprofile_profile_levels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userprofile_profile_levels (id, profile_id, level_id) FROM stdin;
\.
COPY public.userprofile_profile_levels (id, profile_id, level_id) FROM '$$PATH$$/3573.dat';

--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 62, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: blog_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_post_id_seq', 2, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 874, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 77, true);


--
-- Name: gTTS_speech_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."gTTS_speech_id_seq"', 140, true);


--
-- Name: learning_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.learning_course_id_seq', 46, true);


--
-- Name: learning_guide_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.learning_guide_id_seq', 24, true);


--
-- Name: learning_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.learning_lesson_id_seq', 75, true);


--
-- Name: learning_level_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.learning_level_id_seq', 32, true);


--
-- Name: learning_qanda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.learning_qanda_id_seq', 433, true);


--
-- Name: userprofile_profile_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.userprofile_profile_course_id_seq', 76, true);


--
-- Name: userprofile_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.userprofile_profile_id_seq', 41, true);


--
-- Name: userprofile_profile_levels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.userprofile_profile_levels_id_seq', 321, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: blog_post blog_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (id);


--
-- Name: blog_post blog_post_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_slug_key UNIQUE (slug);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: gTTS_speech gTTS_speech_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."gTTS_speech"
    ADD CONSTRAINT "gTTS_speech_pkey" PRIMARY KEY (id);


--
-- Name: learning_course learning_course_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_course
    ADD CONSTRAINT learning_course_pkey PRIMARY KEY (id);


--
-- Name: learning_guide learning_guide_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_guide
    ADD CONSTRAINT learning_guide_pkey PRIMARY KEY (id);


--
-- Name: learning_guide learning_guide_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_guide
    ADD CONSTRAINT learning_guide_slug_key UNIQUE (slug);


--
-- Name: learning_lesson learning_lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_pkey PRIMARY KEY (id);


--
-- Name: learning_lesson learning_lesson_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_slug_key UNIQUE (slug);


--
-- Name: learning_level learning_level_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_level
    ADD CONSTRAINT learning_level_pkey PRIMARY KEY (id);


--
-- Name: learning_questionanswer learning_qanda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_questionanswer
    ADD CONSTRAINT learning_qanda_pkey PRIMARY KEY (id);


--
-- Name: userprofile_profile_course userprofile_profile_course_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile_profile_course
    ADD CONSTRAINT userprofile_profile_course_pkey PRIMARY KEY (id);


--
-- Name: userprofile_profile_course userprofile_profile_course_profile_id_course_id_b1e95337_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile_profile_course
    ADD CONSTRAINT userprofile_profile_course_profile_id_course_id_b1e95337_uniq UNIQUE (profile_id, course_id);


--
-- Name: userprofile_profile userprofile_profile_email_2d4a7ae9_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile_profile
    ADD CONSTRAINT userprofile_profile_email_2d4a7ae9_uniq UNIQUE (email);


--
-- Name: userprofile_profile_levels userprofile_profile_levels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile_profile_levels
    ADD CONSTRAINT userprofile_profile_levels_pkey PRIMARY KEY (id);


--
-- Name: userprofile_profile_levels userprofile_profile_levels_profile_id_level_id_2f6a7b01_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile_profile_levels
    ADD CONSTRAINT userprofile_profile_levels_profile_id_level_id_2f6a7b01_uniq UNIQUE (profile_id, level_id);


--
-- Name: userprofile_profile userprofile_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile_profile
    ADD CONSTRAINT userprofile_profile_pkey PRIMARY KEY (id);


--
-- Name: userprofile_profile userprofile_profile_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile_profile
    ADD CONSTRAINT userprofile_profile_slug_key UNIQUE (slug);


--
-- Name: userprofile_profile userprofile_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile_profile
    ADD CONSTRAINT userprofile_profile_user_id_key UNIQUE (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: blog_post_author_id_dd7a8485; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_post_author_id_dd7a8485 ON public.blog_post USING btree (author_id);


--
-- Name: blog_post_slug_b95473f2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_post_slug_b95473f2_like ON public.blog_post USING btree (slug varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: learning_guide_course_id_bf79aab3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX learning_guide_course_id_bf79aab3 ON public.learning_guide USING btree (course_id);


--
-- Name: learning_guide_slug_6b6041ee_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX learning_guide_slug_6b6041ee_like ON public.learning_guide USING btree (slug varchar_pattern_ops);


--
-- Name: learning_lesson_course_id_55d253b7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX learning_lesson_course_id_55d253b7 ON public.learning_lesson USING btree (course_id);


--
-- Name: learning_lesson_slug_e238ab6f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX learning_lesson_slug_e238ab6f_like ON public.learning_lesson USING btree (slug varchar_pattern_ops);


--
-- Name: learning_level_lesson_id_775adba3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX learning_level_lesson_id_775adba3 ON public.learning_level USING btree (lesson_id);


--
-- Name: learning_qanda_lesson_id_9e3fd8c9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX learning_qanda_lesson_id_9e3fd8c9 ON public.learning_questionanswer USING btree (lesson_id);


--
-- Name: learning_questionanswer_levelModel_id_a897c76f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "learning_questionanswer_levelModel_id_a897c76f" ON public.learning_questionanswer USING btree (level_id);


--
-- Name: userprofile_profile_course_course_id_3ede5062; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX userprofile_profile_course_course_id_3ede5062 ON public.userprofile_profile_course USING btree (course_id);


--
-- Name: userprofile_profile_course_profile_id_87275d1d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX userprofile_profile_course_profile_id_87275d1d ON public.userprofile_profile_course USING btree (profile_id);


--
-- Name: userprofile_profile_email_2d4a7ae9_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX userprofile_profile_email_2d4a7ae9_like ON public.userprofile_profile USING btree (email varchar_pattern_ops);


--
-- Name: userprofile_profile_levels_level_id_b549465d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX userprofile_profile_levels_level_id_b549465d ON public.userprofile_profile_levels USING btree (level_id);


--
-- Name: userprofile_profile_levels_profile_id_1e6aef6b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX userprofile_profile_levels_profile_id_1e6aef6b ON public.userprofile_profile_levels USING btree (profile_id);


--
-- Name: userprofile_profile_slug_938b9244_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX userprofile_profile_slug_938b9244_like ON public.userprofile_profile USING btree (slug varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post blog_post_author_id_dd7a8485_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_author_id_dd7a8485_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_guide learning_guide_course_id_bf79aab3_fk_learning_course_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_guide
    ADD CONSTRAINT learning_guide_course_id_bf79aab3_fk_learning_course_id FOREIGN KEY (course_id) REFERENCES public.learning_course(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_lesson learning_lesson_course_id_55d253b7_fk_learning_course_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_lesson
    ADD CONSTRAINT learning_lesson_course_id_55d253b7_fk_learning_course_id FOREIGN KEY (course_id) REFERENCES public.learning_course(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_level learning_level_lesson_id_775adba3_fk_learning_lesson_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_level
    ADD CONSTRAINT learning_level_lesson_id_775adba3_fk_learning_lesson_id FOREIGN KEY (lesson_id) REFERENCES public.learning_lesson(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_questionanswer learning_questionans_lesson_id_63f0af84_fk_learning_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_questionanswer
    ADD CONSTRAINT learning_questionans_lesson_id_63f0af84_fk_learning_ FOREIGN KEY (lesson_id) REFERENCES public.learning_lesson(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: learning_questionanswer learning_questionans_levelModel_id_a897c76f_fk_learning_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_questionanswer
    ADD CONSTRAINT "learning_questionans_levelModel_id_a897c76f_fk_learning_" FOREIGN KEY (level_id) REFERENCES public.learning_level(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: userprofile_profile_course userprofile_profile__course_id_3ede5062_fk_learning_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile_profile_course
    ADD CONSTRAINT userprofile_profile__course_id_3ede5062_fk_learning_ FOREIGN KEY (course_id) REFERENCES public.learning_course(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: userprofile_profile_levels userprofile_profile__level_id_b549465d_fk_learning_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile_profile_levels
    ADD CONSTRAINT userprofile_profile__level_id_b549465d_fk_learning_ FOREIGN KEY (level_id) REFERENCES public.learning_level(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: userprofile_profile_levels userprofile_profile__profile_id_1e6aef6b_fk_userprofi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile_profile_levels
    ADD CONSTRAINT userprofile_profile__profile_id_1e6aef6b_fk_userprofi FOREIGN KEY (profile_id) REFERENCES public.userprofile_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: userprofile_profile_course userprofile_profile__profile_id_87275d1d_fk_userprofi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile_profile_course
    ADD CONSTRAINT userprofile_profile__profile_id_87275d1d_fk_userprofi FOREIGN KEY (profile_id) REFERENCES public.userprofile_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: userprofile_profile userprofile_profile_user_id_f37c6bb1_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile_profile
    ADD CONSTRAINT userprofile_profile_user_id_f37c6bb1_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
