PGDMP         #                |         	   cpen_dept    11.21    11.21 a               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16467 	   cpen_dept    DATABASE     �   CREATE DATABASE cpen_dept WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United Kingdom.1252' LC_CTYPE = 'English_United Kingdom.1252';
    DROP DATABASE cpen_dept;
             postgres    false                        2615    16468    cpen    SCHEMA        CREATE SCHEMA cpen;
    DROP SCHEMA cpen;
             postgres    false            �            1259    16494    courses    TABLE     �   CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course_name character varying(100) NOT NULL,
    credits integer NOT NULL
);
    DROP TABLE public.courses;
       public         postgres    false            �            1259    16492    courses_course_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.courses_course_id_seq;
       public       postgres    false    202            �           0    0    courses_course_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;
            public       postgres    false    201            �            1259    16502    enrollments    TABLE     �   CREATE TABLE public.enrollments (
    enrollment_id integer NOT NULL,
    student_id integer,
    course_id integer,
    enrollment_date date NOT NULL
);
    DROP TABLE public.enrollments;
       public         postgres    false            �            1259    16500    enrollments_enrollment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.enrollments_enrollment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.enrollments_enrollment_id_seq;
       public       postgres    false    204            �           0    0    enrollments_enrollment_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.enrollments_enrollment_id_seq OWNED BY public.enrollments.enrollment_id;
            public       postgres    false    203            �            1259    16481    fees    TABLE     �   CREATE TABLE public.fees (
    fee_id integer NOT NULL,
    student_id integer,
    amount numeric(10,2) NOT NULL,
    payment_date date
);
    DROP TABLE public.fees;
       public         postgres    false            �            1259    16479    fees_fee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fees_fee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.fees_fee_id_seq;
       public       postgres    false    200            �           0    0    fees_fee_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.fees_fee_id_seq OWNED BY public.fees.fee_id;
            public       postgres    false    199            �            1259    16530    lecture_course_assignment    TABLE     �   CREATE TABLE public.lecture_course_assignment (
    assignment_id integer NOT NULL,
    lecture_id integer,
    course_id integer
);
 -   DROP TABLE public.lecture_course_assignment;
       public         postgres    false            �            1259    16528 +   lecture_course_assignment_assignment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lecture_course_assignment_assignment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.lecture_course_assignment_assignment_id_seq;
       public       postgres    false    208            �           0    0 +   lecture_course_assignment_assignment_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.lecture_course_assignment_assignment_id_seq OWNED BY public.lecture_course_assignment.assignment_id;
            public       postgres    false    207            �            1259    16558    lecture_ta_assignment    TABLE     }   CREATE TABLE public.lecture_ta_assignment (
    assignment_id integer NOT NULL,
    lecture_id integer,
    ta_id integer
);
 )   DROP TABLE public.lecture_ta_assignment;
       public         postgres    false            �            1259    16556 '   lecture_ta_assignment_assignment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lecture_ta_assignment_assignment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.lecture_ta_assignment_assignment_id_seq;
       public       postgres    false    212            �           0    0 '   lecture_ta_assignment_assignment_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.lecture_ta_assignment_assignment_id_seq OWNED BY public.lecture_ta_assignment.assignment_id;
            public       postgres    false    211            �            1259    16594    lecturer_course_assignment    TABLE     �   CREATE TABLE public.lecturer_course_assignment (
    assignment_id integer NOT NULL,
    lecturer_id integer,
    course_id integer
);
 .   DROP TABLE public.lecturer_course_assignment;
       public         postgres    false            �            1259    16592 ,   lecturer_course_assignment_assignment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lecturer_course_assignment_assignment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.lecturer_course_assignment_assignment_id_seq;
       public       postgres    false    216            �           0    0 ,   lecturer_course_assignment_assignment_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.lecturer_course_assignment_assignment_id_seq OWNED BY public.lecturer_course_assignment.assignment_id;
            public       postgres    false    215            �            1259    16614    lecturer_ta_assignment    TABLE        CREATE TABLE public.lecturer_ta_assignment (
    assignment_id integer NOT NULL,
    lecturer_id integer,
    ta_id integer
);
 *   DROP TABLE public.lecturer_ta_assignment;
       public         postgres    false            �            1259    16612 (   lecturer_ta_assignment_assignment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lecturer_ta_assignment_assignment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.lecturer_ta_assignment_assignment_id_seq;
       public       postgres    false    218            �           0    0 (   lecturer_ta_assignment_assignment_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.lecturer_ta_assignment_assignment_id_seq OWNED BY public.lecturer_ta_assignment.assignment_id;
            public       postgres    false    217            �            1259    16584 	   lecturers    TABLE     �   CREATE TABLE public.lecturers (
    lecturer_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100) NOT NULL
);
    DROP TABLE public.lecturers;
       public         postgres    false            �            1259    16582    lecturers_lecturer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lecturers_lecturer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.lecturers_lecturer_id_seq;
       public       postgres    false    214            �           0    0    lecturers_lecturer_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.lecturers_lecturer_id_seq OWNED BY public.lecturers.lecturer_id;
            public       postgres    false    213            �            1259    16520    lectures    TABLE     �   CREATE TABLE public.lectures (
    lecture_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100) NOT NULL
);
    DROP TABLE public.lectures;
       public         postgres    false            �            1259    16518    lectures_lecture_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lectures_lecture_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.lectures_lecture_id_seq;
       public       postgres    false    206            �           0    0    lectures_lecture_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.lectures_lecture_id_seq OWNED BY public.lectures.lecture_id;
            public       postgres    false    205            �            1259    16471    students    TABLE     �   CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    dob date NOT NULL,
    email character varying(100) NOT NULL
);
    DROP TABLE public.students;
       public         postgres    false            �            1259    16469    students_student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.students_student_id_seq;
       public       postgres    false    198            �           0    0    students_student_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;
            public       postgres    false    197            �            1259    16548    tas    TABLE     �   CREATE TABLE public.tas (
    ta_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100) NOT NULL
);
    DROP TABLE public.tas;
       public         postgres    false            �            1259    16546    tas_ta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tas_ta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tas_ta_id_seq;
       public       postgres    false    210            �           0    0    tas_ta_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tas_ta_id_seq OWNED BY public.tas.ta_id;
            public       postgres    false    209            �
           2604    16497    courses course_id    DEFAULT     v   ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);
 @   ALTER TABLE public.courses ALTER COLUMN course_id DROP DEFAULT;
       public       postgres    false    201    202    202            �
           2604    16505    enrollments enrollment_id    DEFAULT     �   ALTER TABLE ONLY public.enrollments ALTER COLUMN enrollment_id SET DEFAULT nextval('public.enrollments_enrollment_id_seq'::regclass);
 H   ALTER TABLE public.enrollments ALTER COLUMN enrollment_id DROP DEFAULT;
       public       postgres    false    203    204    204            �
           2604    16484    fees fee_id    DEFAULT     j   ALTER TABLE ONLY public.fees ALTER COLUMN fee_id SET DEFAULT nextval('public.fees_fee_id_seq'::regclass);
 :   ALTER TABLE public.fees ALTER COLUMN fee_id DROP DEFAULT;
       public       postgres    false    199    200    200            �
           2604    16533 '   lecture_course_assignment assignment_id    DEFAULT     �   ALTER TABLE ONLY public.lecture_course_assignment ALTER COLUMN assignment_id SET DEFAULT nextval('public.lecture_course_assignment_assignment_id_seq'::regclass);
 V   ALTER TABLE public.lecture_course_assignment ALTER COLUMN assignment_id DROP DEFAULT;
       public       postgres    false    207    208    208            �
           2604    16561 #   lecture_ta_assignment assignment_id    DEFAULT     �   ALTER TABLE ONLY public.lecture_ta_assignment ALTER COLUMN assignment_id SET DEFAULT nextval('public.lecture_ta_assignment_assignment_id_seq'::regclass);
 R   ALTER TABLE public.lecture_ta_assignment ALTER COLUMN assignment_id DROP DEFAULT;
       public       postgres    false    212    211    212            �
           2604    16597 (   lecturer_course_assignment assignment_id    DEFAULT     �   ALTER TABLE ONLY public.lecturer_course_assignment ALTER COLUMN assignment_id SET DEFAULT nextval('public.lecturer_course_assignment_assignment_id_seq'::regclass);
 W   ALTER TABLE public.lecturer_course_assignment ALTER COLUMN assignment_id DROP DEFAULT;
       public       postgres    false    216    215    216            �
           2604    16617 $   lecturer_ta_assignment assignment_id    DEFAULT     �   ALTER TABLE ONLY public.lecturer_ta_assignment ALTER COLUMN assignment_id SET DEFAULT nextval('public.lecturer_ta_assignment_assignment_id_seq'::regclass);
 S   ALTER TABLE public.lecturer_ta_assignment ALTER COLUMN assignment_id DROP DEFAULT;
       public       postgres    false    218    217    218            �
           2604    16587    lecturers lecturer_id    DEFAULT     ~   ALTER TABLE ONLY public.lecturers ALTER COLUMN lecturer_id SET DEFAULT nextval('public.lecturers_lecturer_id_seq'::regclass);
 D   ALTER TABLE public.lecturers ALTER COLUMN lecturer_id DROP DEFAULT;
       public       postgres    false    214    213    214            �
           2604    16523    lectures lecture_id    DEFAULT     z   ALTER TABLE ONLY public.lectures ALTER COLUMN lecture_id SET DEFAULT nextval('public.lectures_lecture_id_seq'::regclass);
 B   ALTER TABLE public.lectures ALTER COLUMN lecture_id DROP DEFAULT;
       public       postgres    false    205    206    206            �
           2604    16474    students student_id    DEFAULT     z   ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);
 B   ALTER TABLE public.students ALTER COLUMN student_id DROP DEFAULT;
       public       postgres    false    197    198    198            �
           2604    16551 	   tas ta_id    DEFAULT     f   ALTER TABLE ONLY public.tas ALTER COLUMN ta_id SET DEFAULT nextval('public.tas_ta_id_seq'::regclass);
 8   ALTER TABLE public.tas ALTER COLUMN ta_id DROP DEFAULT;
       public       postgres    false    209    210    210            l          0    16494    courses 
   TABLE DATA               B   COPY public.courses (course_id, course_name, credits) FROM stdin;
    public       postgres    false    202   �v       n          0    16502    enrollments 
   TABLE DATA               \   COPY public.enrollments (enrollment_id, student_id, course_id, enrollment_date) FROM stdin;
    public       postgres    false    204   �v       j          0    16481    fees 
   TABLE DATA               H   COPY public.fees (fee_id, student_id, amount, payment_date) FROM stdin;
    public       postgres    false    200   �v       r          0    16530    lecture_course_assignment 
   TABLE DATA               Y   COPY public.lecture_course_assignment (assignment_id, lecture_id, course_id) FROM stdin;
    public       postgres    false    208   �v       v          0    16558    lecture_ta_assignment 
   TABLE DATA               Q   COPY public.lecture_ta_assignment (assignment_id, lecture_id, ta_id) FROM stdin;
    public       postgres    false    212   w       z          0    16594    lecturer_course_assignment 
   TABLE DATA               [   COPY public.lecturer_course_assignment (assignment_id, lecturer_id, course_id) FROM stdin;
    public       postgres    false    216   2w       |          0    16614    lecturer_ta_assignment 
   TABLE DATA               S   COPY public.lecturer_ta_assignment (assignment_id, lecturer_id, ta_id) FROM stdin;
    public       postgres    false    218   Ow       x          0    16584 	   lecturers 
   TABLE DATA               N   COPY public.lecturers (lecturer_id, first_name, last_name, email) FROM stdin;
    public       postgres    false    214   lw       p          0    16520    lectures 
   TABLE DATA               L   COPY public.lectures (lecture_id, first_name, last_name, email) FROM stdin;
    public       postgres    false    206   �w       h          0    16471    students 
   TABLE DATA               Q   COPY public.students (student_id, first_name, last_name, dob, email) FROM stdin;
    public       postgres    false    198   �w       t          0    16548    tas 
   TABLE DATA               B   COPY public.tas (ta_id, first_name, last_name, email) FROM stdin;
    public       postgres    false    210   �w       �           0    0    courses_course_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.courses_course_id_seq', 1, false);
            public       postgres    false    201            �           0    0    enrollments_enrollment_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.enrollments_enrollment_id_seq', 1, false);
            public       postgres    false    203            �           0    0    fees_fee_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.fees_fee_id_seq', 1, false);
            public       postgres    false    199            �           0    0 +   lecture_course_assignment_assignment_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.lecture_course_assignment_assignment_id_seq', 1, false);
            public       postgres    false    207            �           0    0 '   lecture_ta_assignment_assignment_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.lecture_ta_assignment_assignment_id_seq', 1, false);
            public       postgres    false    211            �           0    0 ,   lecturer_course_assignment_assignment_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.lecturer_course_assignment_assignment_id_seq', 1, false);
            public       postgres    false    215            �           0    0 (   lecturer_ta_assignment_assignment_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.lecturer_ta_assignment_assignment_id_seq', 1, false);
            public       postgres    false    217            �           0    0    lecturers_lecturer_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.lecturers_lecturer_id_seq', 1, false);
            public       postgres    false    213            �           0    0    lectures_lecture_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.lectures_lecture_id_seq', 1, false);
            public       postgres    false    205            �           0    0    students_student_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.students_student_id_seq', 1, false);
            public       postgres    false    197            �           0    0    tas_ta_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tas_ta_id_seq', 1, false);
            public       postgres    false    209            �
           2606    16499    courses courses_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public         postgres    false    202            �
           2606    16507    enrollments enrollments_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (enrollment_id);
 F   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_pkey;
       public         postgres    false    204            �
           2606    16486    fees fees_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.fees
    ADD CONSTRAINT fees_pkey PRIMARY KEY (fee_id);
 8   ALTER TABLE ONLY public.fees DROP CONSTRAINT fees_pkey;
       public         postgres    false    200            �
           2606    16535 8   lecture_course_assignment lecture_course_assignment_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.lecture_course_assignment
    ADD CONSTRAINT lecture_course_assignment_pkey PRIMARY KEY (assignment_id);
 b   ALTER TABLE ONLY public.lecture_course_assignment DROP CONSTRAINT lecture_course_assignment_pkey;
       public         postgres    false    208            �
           2606    16563 0   lecture_ta_assignment lecture_ta_assignment_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.lecture_ta_assignment
    ADD CONSTRAINT lecture_ta_assignment_pkey PRIMARY KEY (assignment_id);
 Z   ALTER TABLE ONLY public.lecture_ta_assignment DROP CONSTRAINT lecture_ta_assignment_pkey;
       public         postgres    false    212            �
           2606    16599 :   lecturer_course_assignment lecturer_course_assignment_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.lecturer_course_assignment
    ADD CONSTRAINT lecturer_course_assignment_pkey PRIMARY KEY (assignment_id);
 d   ALTER TABLE ONLY public.lecturer_course_assignment DROP CONSTRAINT lecturer_course_assignment_pkey;
       public         postgres    false    216            �
           2606    16619 2   lecturer_ta_assignment lecturer_ta_assignment_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.lecturer_ta_assignment
    ADD CONSTRAINT lecturer_ta_assignment_pkey PRIMARY KEY (assignment_id);
 \   ALTER TABLE ONLY public.lecturer_ta_assignment DROP CONSTRAINT lecturer_ta_assignment_pkey;
       public         postgres    false    218            �
           2606    16591    lecturers lecturers_email_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.lecturers
    ADD CONSTRAINT lecturers_email_key UNIQUE (email);
 G   ALTER TABLE ONLY public.lecturers DROP CONSTRAINT lecturers_email_key;
       public         postgres    false    214            �
           2606    16589    lecturers lecturers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.lecturers
    ADD CONSTRAINT lecturers_pkey PRIMARY KEY (lecturer_id);
 B   ALTER TABLE ONLY public.lecturers DROP CONSTRAINT lecturers_pkey;
       public         postgres    false    214            �
           2606    16527    lectures lectures_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.lectures
    ADD CONSTRAINT lectures_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.lectures DROP CONSTRAINT lectures_email_key;
       public         postgres    false    206            �
           2606    16525    lectures lectures_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.lectures
    ADD CONSTRAINT lectures_pkey PRIMARY KEY (lecture_id);
 @   ALTER TABLE ONLY public.lectures DROP CONSTRAINT lectures_pkey;
       public         postgres    false    206            �
           2606    16478    students students_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.students DROP CONSTRAINT students_email_key;
       public         postgres    false    198            �
           2606    16476    students students_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public         postgres    false    198            �
           2606    16555    tas tas_email_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.tas
    ADD CONSTRAINT tas_email_key UNIQUE (email);
 ;   ALTER TABLE ONLY public.tas DROP CONSTRAINT tas_email_key;
       public         postgres    false    210            �
           2606    16553    tas tas_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.tas
    ADD CONSTRAINT tas_pkey PRIMARY KEY (ta_id);
 6   ALTER TABLE ONLY public.tas DROP CONSTRAINT tas_pkey;
       public         postgres    false    210            �
           2606    16513 &   enrollments enrollments_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);
 P   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_course_id_fkey;
       public       postgres    false    2764    202    204            �
           2606    16508 '   enrollments enrollments_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);
 Q   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_student_id_fkey;
       public       postgres    false    198    2760    204            �
           2606    16487    fees fees_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fees
    ADD CONSTRAINT fees_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);
 C   ALTER TABLE ONLY public.fees DROP CONSTRAINT fees_student_id_fkey;
       public       postgres    false    2760    200    198            �
           2606    16541 B   lecture_course_assignment lecture_course_assignment_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lecture_course_assignment
    ADD CONSTRAINT lecture_course_assignment_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);
 l   ALTER TABLE ONLY public.lecture_course_assignment DROP CONSTRAINT lecture_course_assignment_course_id_fkey;
       public       postgres    false    208    202    2764            �
           2606    16536 C   lecture_course_assignment lecture_course_assignment_lecture_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lecture_course_assignment
    ADD CONSTRAINT lecture_course_assignment_lecture_id_fkey FOREIGN KEY (lecture_id) REFERENCES public.lectures(lecture_id);
 m   ALTER TABLE ONLY public.lecture_course_assignment DROP CONSTRAINT lecture_course_assignment_lecture_id_fkey;
       public       postgres    false    206    208    2770            �
           2606    16564 ;   lecture_ta_assignment lecture_ta_assignment_lecture_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lecture_ta_assignment
    ADD CONSTRAINT lecture_ta_assignment_lecture_id_fkey FOREIGN KEY (lecture_id) REFERENCES public.lectures(lecture_id);
 e   ALTER TABLE ONLY public.lecture_ta_assignment DROP CONSTRAINT lecture_ta_assignment_lecture_id_fkey;
       public       postgres    false    206    212    2770            �
           2606    16569 6   lecture_ta_assignment lecture_ta_assignment_ta_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lecture_ta_assignment
    ADD CONSTRAINT lecture_ta_assignment_ta_id_fkey FOREIGN KEY (ta_id) REFERENCES public.tas(ta_id);
 `   ALTER TABLE ONLY public.lecture_ta_assignment DROP CONSTRAINT lecture_ta_assignment_ta_id_fkey;
       public       postgres    false    2776    210    212            �
           2606    16605 D   lecturer_course_assignment lecturer_course_assignment_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lecturer_course_assignment
    ADD CONSTRAINT lecturer_course_assignment_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);
 n   ALTER TABLE ONLY public.lecturer_course_assignment DROP CONSTRAINT lecturer_course_assignment_course_id_fkey;
       public       postgres    false    2764    202    216            �
           2606    16600 F   lecturer_course_assignment lecturer_course_assignment_lecturer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lecturer_course_assignment
    ADD CONSTRAINT lecturer_course_assignment_lecturer_id_fkey FOREIGN KEY (lecturer_id) REFERENCES public.lecturers(lecturer_id);
 p   ALTER TABLE ONLY public.lecturer_course_assignment DROP CONSTRAINT lecturer_course_assignment_lecturer_id_fkey;
       public       postgres    false    216    214    2782            �
           2606    16620 >   lecturer_ta_assignment lecturer_ta_assignment_lecturer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lecturer_ta_assignment
    ADD CONSTRAINT lecturer_ta_assignment_lecturer_id_fkey FOREIGN KEY (lecturer_id) REFERENCES public.lecturers(lecturer_id);
 h   ALTER TABLE ONLY public.lecturer_ta_assignment DROP CONSTRAINT lecturer_ta_assignment_lecturer_id_fkey;
       public       postgres    false    214    2782    218            �
           2606    16625 8   lecturer_ta_assignment lecturer_ta_assignment_ta_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lecturer_ta_assignment
    ADD CONSTRAINT lecturer_ta_assignment_ta_id_fkey FOREIGN KEY (ta_id) REFERENCES public.tas(ta_id);
 b   ALTER TABLE ONLY public.lecturer_ta_assignment DROP CONSTRAINT lecturer_ta_assignment_ta_id_fkey;
       public       postgres    false    218    2776    210            l      x������ � �      n      x������ � �      j      x������ � �      r      x������ � �      v      x������ � �      z      x������ � �      |      x������ � �      x      x������ � �      p      x������ � �      h      x������ � �      t      x������ � �     