--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: about_eventindexpage; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE about_eventindexpage (
    page_ptr_id integer NOT NULL,
    intro text NOT NULL
);


ALTER TABLE about_eventindexpage OWNER TO urbana_db_user;

--
-- Name: about_eventpage; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE about_eventpage (
    page_ptr_id integer NOT NULL,
    date_from date NOT NULL,
    date_to date,
    time_from time without time zone,
    time_to time without time zone,
    location character varying(255) NOT NULL,
    body text,
    signup_link character varying(200) NOT NULL,
    feed_image_id integer
);


ALTER TABLE about_eventpage OWNER TO urbana_db_user;

--
-- Name: about_initiativesblogindexpage; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE about_initiativesblogindexpage (
    page_ptr_id integer NOT NULL,
    intro text NOT NULL
);


ALTER TABLE about_initiativesblogindexpage OWNER TO urbana_db_user;

--
-- Name: about_memberpage; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE about_memberpage (
    page_ptr_id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    intro character varying(500) NOT NULL,
    description text NOT NULL,
    telephone character varying(20) NOT NULL,
    email character varying(254) NOT NULL,
    image_id integer
);


ALTER TABLE about_memberpage OWNER TO urbana_db_user;

--
-- Name: about_membersindexpage; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE about_membersindexpage (
    page_ptr_id integer NOT NULL
);


ALTER TABLE about_membersindexpage OWNER TO urbana_db_user;

--
-- Name: about_networknewsblogindexpage; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE about_networknewsblogindexpage (
    page_ptr_id integer NOT NULL,
    intro text NOT NULL
);


ALTER TABLE about_networknewsblogindexpage OWNER TO urbana_db_user;

--
-- Name: about_topmenupage; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE about_topmenupage (
    page_ptr_id integer NOT NULL,
    description character varying(800) NOT NULL
);


ALTER TABLE about_topmenupage OWNER TO urbana_db_user;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO urbana_db_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO urbana_db_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO urbana_db_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO urbana_db_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO urbana_db_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO urbana_db_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO urbana_db_user;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO urbana_db_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO urbana_db_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO urbana_db_user;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO urbana_db_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO urbana_db_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE django_admin_log (
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


ALTER TABLE django_admin_log OWNER TO urbana_db_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO urbana_db_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO urbana_db_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO urbana_db_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO urbana_db_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO urbana_db_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO urbana_db_user;

--
-- Name: forum_attachments_attachment; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE forum_attachments_attachment (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    comment character varying(255),
    post_id integer NOT NULL
);


ALTER TABLE forum_attachments_attachment OWNER TO urbana_db_user;

--
-- Name: forum_attachments_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE forum_attachments_attachment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forum_attachments_attachment_id_seq OWNER TO urbana_db_user;

--
-- Name: forum_attachments_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE forum_attachments_attachment_id_seq OWNED BY forum_attachments_attachment.id;


--
-- Name: forum_conversation_post; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE forum_conversation_post (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    poster_ip inet,
    subject character varying(255) NOT NULL,
    content text NOT NULL,
    username character varying(155),
    approved boolean NOT NULL,
    update_reason character varying(255),
    updates_count integer NOT NULL,
    _content_rendered text,
    poster_id integer,
    topic_id integer NOT NULL,
    updated_by_id integer,
    anonymous_key character varying(100),
    CONSTRAINT forum_conversation_post_updates_count_check CHECK ((updates_count >= 0))
);


ALTER TABLE forum_conversation_post OWNER TO urbana_db_user;

--
-- Name: forum_conversation_post_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE forum_conversation_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forum_conversation_post_id_seq OWNER TO urbana_db_user;

--
-- Name: forum_conversation_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE forum_conversation_post_id_seq OWNED BY forum_conversation_post.id;


--
-- Name: forum_conversation_topic; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE forum_conversation_topic (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    subject character varying(255) NOT NULL,
    slug character varying(300) NOT NULL,
    type smallint NOT NULL,
    status integer NOT NULL,
    approved boolean NOT NULL,
    posts_count integer NOT NULL,
    views_count integer NOT NULL,
    last_post_on timestamp with time zone,
    forum_id integer NOT NULL,
    poster_id integer,
    CONSTRAINT forum_conversation_topic_posts_count_check CHECK ((posts_count >= 0)),
    CONSTRAINT forum_conversation_topic_status_check CHECK ((status >= 0)),
    CONSTRAINT forum_conversation_topic_type_check CHECK ((type >= 0)),
    CONSTRAINT forum_conversation_topic_views_count_check CHECK ((views_count >= 0))
);


ALTER TABLE forum_conversation_topic OWNER TO urbana_db_user;

--
-- Name: forum_conversation_topic_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE forum_conversation_topic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forum_conversation_topic_id_seq OWNER TO urbana_db_user;

--
-- Name: forum_conversation_topic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE forum_conversation_topic_id_seq OWNED BY forum_conversation_topic.id;


--
-- Name: forum_conversation_topic_subscribers; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE forum_conversation_topic_subscribers (
    id integer NOT NULL,
    topic_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE forum_conversation_topic_subscribers OWNER TO urbana_db_user;

--
-- Name: forum_conversation_topic_subscribers_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE forum_conversation_topic_subscribers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forum_conversation_topic_subscribers_id_seq OWNER TO urbana_db_user;

--
-- Name: forum_conversation_topic_subscribers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE forum_conversation_topic_subscribers_id_seq OWNED BY forum_conversation_topic_subscribers.id;


--
-- Name: forum_forum; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE forum_forum (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(255) NOT NULL,
    description text,
    image character varying(100),
    link character varying(200),
    link_redirects boolean NOT NULL,
    type smallint NOT NULL,
    posts_count integer NOT NULL,
    topics_count integer NOT NULL,
    link_redirects_count integer NOT NULL,
    last_post_on timestamp with time zone,
    display_sub_forum_list boolean NOT NULL,
    _description_rendered text,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    parent_id integer,
    CONSTRAINT forum_forum_level_check CHECK ((level >= 0)),
    CONSTRAINT forum_forum_lft_check CHECK ((lft >= 0)),
    CONSTRAINT forum_forum_link_redirects_count_check CHECK ((link_redirects_count >= 0)),
    CONSTRAINT forum_forum_posts_count_check CHECK ((posts_count >= 0)),
    CONSTRAINT forum_forum_rght_check CHECK ((rght >= 0)),
    CONSTRAINT forum_forum_topics_count_check CHECK ((topics_count >= 0)),
    CONSTRAINT forum_forum_tree_id_check CHECK ((tree_id >= 0)),
    CONSTRAINT forum_forum_type_check CHECK ((type >= 0))
);


ALTER TABLE forum_forum OWNER TO urbana_db_user;

--
-- Name: forum_forum_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE forum_forum_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forum_forum_id_seq OWNER TO urbana_db_user;

--
-- Name: forum_forum_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE forum_forum_id_seq OWNED BY forum_forum.id;


--
-- Name: forum_member_forumprofile; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE forum_member_forumprofile (
    id integer NOT NULL,
    avatar character varying(100),
    signature text,
    posts_count integer NOT NULL,
    _signature_rendered text,
    user_id integer NOT NULL,
    CONSTRAINT forum_member_forumprofile_posts_count_check CHECK ((posts_count >= 0))
);


ALTER TABLE forum_member_forumprofile OWNER TO urbana_db_user;

--
-- Name: forum_member_forumprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE forum_member_forumprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forum_member_forumprofile_id_seq OWNER TO urbana_db_user;

--
-- Name: forum_member_forumprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE forum_member_forumprofile_id_seq OWNED BY forum_member_forumprofile.id;


--
-- Name: forum_permission_forumpermission; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE forum_permission_forumpermission (
    id integer NOT NULL,
    codename character varying(150) NOT NULL,
    name character varying(255),
    is_global boolean NOT NULL,
    is_local boolean NOT NULL
);


ALTER TABLE forum_permission_forumpermission OWNER TO urbana_db_user;

--
-- Name: forum_permission_forumpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE forum_permission_forumpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forum_permission_forumpermission_id_seq OWNER TO urbana_db_user;

--
-- Name: forum_permission_forumpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE forum_permission_forumpermission_id_seq OWNED BY forum_permission_forumpermission.id;


--
-- Name: forum_permission_groupforumpermission; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE forum_permission_groupforumpermission (
    id integer NOT NULL,
    has_perm boolean NOT NULL,
    forum_id integer,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE forum_permission_groupforumpermission OWNER TO urbana_db_user;

--
-- Name: forum_permission_groupforumpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE forum_permission_groupforumpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forum_permission_groupforumpermission_id_seq OWNER TO urbana_db_user;

--
-- Name: forum_permission_groupforumpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE forum_permission_groupforumpermission_id_seq OWNED BY forum_permission_groupforumpermission.id;


--
-- Name: forum_permission_userforumpermission; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE forum_permission_userforumpermission (
    id integer NOT NULL,
    has_perm boolean NOT NULL,
    anonymous_user boolean NOT NULL,
    forum_id integer,
    permission_id integer NOT NULL,
    user_id integer
);


ALTER TABLE forum_permission_userforumpermission OWNER TO urbana_db_user;

--
-- Name: forum_permission_userforumpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE forum_permission_userforumpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forum_permission_userforumpermission_id_seq OWNER TO urbana_db_user;

--
-- Name: forum_permission_userforumpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE forum_permission_userforumpermission_id_seq OWNED BY forum_permission_userforumpermission.id;


--
-- Name: forum_polls_topicpoll; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE forum_polls_topicpoll (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    question character varying(255) NOT NULL,
    duration integer,
    max_options smallint NOT NULL,
    user_changes boolean NOT NULL,
    topic_id integer NOT NULL,
    CONSTRAINT forum_polls_topicpoll_duration_check CHECK ((duration >= 0)),
    CONSTRAINT forum_polls_topicpoll_max_options_check CHECK ((max_options >= 0))
);


ALTER TABLE forum_polls_topicpoll OWNER TO urbana_db_user;

--
-- Name: forum_polls_topicpoll_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE forum_polls_topicpoll_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forum_polls_topicpoll_id_seq OWNER TO urbana_db_user;

--
-- Name: forum_polls_topicpoll_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE forum_polls_topicpoll_id_seq OWNED BY forum_polls_topicpoll.id;


--
-- Name: forum_polls_topicpolloption; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE forum_polls_topicpolloption (
    id integer NOT NULL,
    text character varying(255) NOT NULL,
    poll_id integer NOT NULL
);


ALTER TABLE forum_polls_topicpolloption OWNER TO urbana_db_user;

--
-- Name: forum_polls_topicpolloption_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE forum_polls_topicpolloption_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forum_polls_topicpolloption_id_seq OWNER TO urbana_db_user;

--
-- Name: forum_polls_topicpolloption_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE forum_polls_topicpolloption_id_seq OWNED BY forum_polls_topicpolloption.id;


--
-- Name: forum_polls_topicpollvote; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE forum_polls_topicpollvote (
    id integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    poll_option_id integer NOT NULL,
    voter_id integer,
    anonymous_key character varying(100)
);


ALTER TABLE forum_polls_topicpollvote OWNER TO urbana_db_user;

--
-- Name: forum_polls_topicpollvote_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE forum_polls_topicpollvote_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forum_polls_topicpollvote_id_seq OWNER TO urbana_db_user;

--
-- Name: forum_polls_topicpollvote_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE forum_polls_topicpollvote_id_seq OWNED BY forum_polls_topicpollvote.id;


--
-- Name: forum_tracking_forumreadtrack; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE forum_tracking_forumreadtrack (
    id integer NOT NULL,
    mark_time timestamp with time zone NOT NULL,
    forum_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE forum_tracking_forumreadtrack OWNER TO urbana_db_user;

--
-- Name: forum_tracking_forumreadtrack_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE forum_tracking_forumreadtrack_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forum_tracking_forumreadtrack_id_seq OWNER TO urbana_db_user;

--
-- Name: forum_tracking_forumreadtrack_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE forum_tracking_forumreadtrack_id_seq OWNED BY forum_tracking_forumreadtrack.id;


--
-- Name: forum_tracking_topicreadtrack; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE forum_tracking_topicreadtrack (
    id integer NOT NULL,
    mark_time timestamp with time zone NOT NULL,
    topic_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE forum_tracking_topicreadtrack OWNER TO urbana_db_user;

--
-- Name: forum_tracking_topicreadtrack_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE forum_tracking_topicreadtrack_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forum_tracking_topicreadtrack_id_seq OWNER TO urbana_db_user;

--
-- Name: forum_tracking_topicreadtrack_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE forum_tracking_topicreadtrack_id_seq OWNED BY forum_tracking_topicreadtrack.id;


--
-- Name: home_homepage; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE home_homepage (
    page_ptr_id integer NOT NULL,
    body text NOT NULL
);


ALTER TABLE home_homepage OWNER TO urbana_db_user;

--
-- Name: home_standardindexpage; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE home_standardindexpage (
    page_ptr_id integer NOT NULL,
    intro text NOT NULL
);


ALTER TABLE home_standardindexpage OWNER TO urbana_db_user;

--
-- Name: home_standardpage; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE home_standardpage (
    page_ptr_id integer NOT NULL,
    body text NOT NULL
);


ALTER TABLE home_standardpage OWNER TO urbana_db_user;

--
-- Name: home_universalblogindexpage; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE home_universalblogindexpage (
    page_ptr_id integer NOT NULL,
    intro text NOT NULL
);


ALTER TABLE home_universalblogindexpage OWNER TO urbana_db_user;

--
-- Name: home_universalblogpage; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE home_universalblogpage (
    page_ptr_id integer NOT NULL,
    body text NOT NULL,
    date date NOT NULL,
    feed_image_id integer
);


ALTER TABLE home_universalblogpage OWNER TO urbana_db_user;

--
-- Name: home_universalblogpagerelatedlink; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE home_universalblogpagerelatedlink (
    id integer NOT NULL,
    sort_order integer,
    link_external character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    link_document_id integer,
    link_page_id integer,
    page_id integer NOT NULL
);


ALTER TABLE home_universalblogpagerelatedlink OWNER TO urbana_db_user;

--
-- Name: home_universalblogpagerelatedlink_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE home_universalblogpagerelatedlink_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE home_universalblogpagerelatedlink_id_seq OWNER TO urbana_db_user;

--
-- Name: home_universalblogpagerelatedlink_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE home_universalblogpagerelatedlink_id_seq OWNED BY home_universalblogpagerelatedlink.id;


--
-- Name: home_universalblogpagestag; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE home_universalblogpagestag (
    id integer NOT NULL,
    content_object_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE home_universalblogpagestag OWNER TO urbana_db_user;

--
-- Name: home_universalblogpagestag_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE home_universalblogpagestag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE home_universalblogpagestag_id_seq OWNER TO urbana_db_user;

--
-- Name: home_universalblogpagestag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE home_universalblogpagestag_id_seq OWNED BY home_universalblogpagestag.id;


--
-- Name: home_urbanblogindexpage; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE home_urbanblogindexpage (
    page_ptr_id integer NOT NULL,
    intro text NOT NULL
);


ALTER TABLE home_urbanblogindexpage OWNER TO urbana_db_user;

--
-- Name: resources_resourcepage; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE resources_resourcepage (
    page_ptr_id integer NOT NULL,
    description text NOT NULL
);


ALTER TABLE resources_resourcepage OWNER TO urbana_db_user;

--
-- Name: resources_resourcepagerelateddocument; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE resources_resourcepagerelateddocument (
    id integer NOT NULL,
    sort_order integer,
    document_id integer,
    page_id integer NOT NULL
);


ALTER TABLE resources_resourcepagerelateddocument OWNER TO urbana_db_user;

--
-- Name: resources_resourcepagerelateddocument_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE resources_resourcepagerelateddocument_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE resources_resourcepagerelateddocument_id_seq OWNER TO urbana_db_user;

--
-- Name: resources_resourcepagerelateddocument_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE resources_resourcepagerelateddocument_id_seq OWNED BY resources_resourcepagerelateddocument.id;


--
-- Name: resources_resourcesindexpage; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE resources_resourcesindexpage (
    page_ptr_id integer NOT NULL
);


ALTER TABLE resources_resourcesindexpage OWNER TO urbana_db_user;

--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE taggit_tag OWNER TO urbana_db_user;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE taggit_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE taggit_tag_id_seq OWNER TO urbana_db_user;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE taggit_tag_id_seq OWNED BY taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE taggit_taggeditem OWNER TO urbana_db_user;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE taggit_taggeditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE taggit_taggeditem_id_seq OWNER TO urbana_db_user;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE taggit_taggeditem_id_seq OWNED BY taggit_taggeditem.id;


--
-- Name: wagtailcore_collection; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE wagtailcore_collection (
    id integer NOT NULL,
    path character varying(255) COLLATE pg_catalog."C" NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    name character varying(255) NOT NULL,
    CONSTRAINT wagtailcore_collection_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_collection_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE wagtailcore_collection OWNER TO urbana_db_user;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE wagtailcore_collection_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_collection_id_seq OWNER TO urbana_db_user;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE wagtailcore_collection_id_seq OWNED BY wagtailcore_collection.id;


--
-- Name: wagtailcore_groupcollectionpermission; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE wagtailcore_groupcollectionpermission (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE wagtailcore_groupcollectionpermission OWNER TO urbana_db_user;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE wagtailcore_groupcollectionpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_groupcollectionpermission_id_seq OWNER TO urbana_db_user;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE wagtailcore_groupcollectionpermission_id_seq OWNED BY wagtailcore_groupcollectionpermission.id;


--
-- Name: wagtailcore_grouppagepermission; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE wagtailcore_grouppagepermission (
    id integer NOT NULL,
    permission_type character varying(20) NOT NULL,
    group_id integer NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE wagtailcore_grouppagepermission OWNER TO urbana_db_user;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE wagtailcore_grouppagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_grouppagepermission_id_seq OWNER TO urbana_db_user;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE wagtailcore_grouppagepermission_id_seq OWNED BY wagtailcore_grouppagepermission.id;


--
-- Name: wagtailcore_page; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE wagtailcore_page (
    id integer NOT NULL,
    path character varying(255) COLLATE pg_catalog."C" NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    live boolean NOT NULL,
    has_unpublished_changes boolean NOT NULL,
    url_path text NOT NULL,
    seo_title character varying(255) NOT NULL,
    show_in_menus boolean NOT NULL,
    search_description text NOT NULL,
    go_live_at timestamp with time zone,
    expire_at timestamp with time zone,
    expired boolean NOT NULL,
    content_type_id integer NOT NULL,
    owner_id integer,
    locked boolean NOT NULL,
    latest_revision_created_at timestamp with time zone,
    first_published_at timestamp with time zone,
    CONSTRAINT wagtailcore_page_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_page_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE wagtailcore_page OWNER TO urbana_db_user;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE wagtailcore_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_page_id_seq OWNER TO urbana_db_user;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE wagtailcore_page_id_seq OWNED BY wagtailcore_page.id;


--
-- Name: wagtailcore_pagerevision; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE wagtailcore_pagerevision (
    id integer NOT NULL,
    submitted_for_moderation boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    content_json text NOT NULL,
    approved_go_live_at timestamp with time zone,
    page_id integer NOT NULL,
    user_id integer
);


ALTER TABLE wagtailcore_pagerevision OWNER TO urbana_db_user;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE wagtailcore_pagerevision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_pagerevision_id_seq OWNER TO urbana_db_user;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE wagtailcore_pagerevision_id_seq OWNED BY wagtailcore_pagerevision.id;


--
-- Name: wagtailcore_pageviewrestriction; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE wagtailcore_pageviewrestriction (
    id integer NOT NULL,
    password character varying(255) NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE wagtailcore_pageviewrestriction OWNER TO urbana_db_user;

--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE wagtailcore_pageviewrestriction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_pageviewrestriction_id_seq OWNER TO urbana_db_user;

--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE wagtailcore_pageviewrestriction_id_seq OWNED BY wagtailcore_pageviewrestriction.id;


--
-- Name: wagtailcore_site; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE wagtailcore_site (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    port integer NOT NULL,
    is_default_site boolean NOT NULL,
    root_page_id integer NOT NULL,
    site_name character varying(255)
);


ALTER TABLE wagtailcore_site OWNER TO urbana_db_user;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE wagtailcore_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_site_id_seq OWNER TO urbana_db_user;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE wagtailcore_site_id_seq OWNED BY wagtailcore_site.id;


--
-- Name: wagtaildocs_document; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE wagtaildocs_document (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    uploaded_by_user_id integer,
    collection_id integer NOT NULL
);


ALTER TABLE wagtaildocs_document OWNER TO urbana_db_user;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE wagtaildocs_document_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtaildocs_document_id_seq OWNER TO urbana_db_user;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE wagtaildocs_document_id_seq OWNED BY wagtaildocs_document.id;


--
-- Name: wagtailembeds_embed; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE wagtailembeds_embed (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    max_width smallint,
    type character varying(10) NOT NULL,
    html text NOT NULL,
    title text NOT NULL,
    author_name text NOT NULL,
    provider_name text NOT NULL,
    thumbnail_url character varying(200),
    width integer,
    height integer,
    last_updated timestamp with time zone NOT NULL
);


ALTER TABLE wagtailembeds_embed OWNER TO urbana_db_user;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE wagtailembeds_embed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailembeds_embed_id_seq OWNER TO urbana_db_user;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE wagtailembeds_embed_id_seq OWNED BY wagtailembeds_embed.id;


--
-- Name: wagtailforms_formsubmission; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE wagtailforms_formsubmission (
    id integer NOT NULL,
    form_data text NOT NULL,
    submit_time timestamp with time zone NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE wagtailforms_formsubmission OWNER TO urbana_db_user;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE wagtailforms_formsubmission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailforms_formsubmission_id_seq OWNER TO urbana_db_user;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE wagtailforms_formsubmission_id_seq OWNED BY wagtailforms_formsubmission.id;


--
-- Name: wagtailimages_filter; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE wagtailimages_filter (
    id integer NOT NULL,
    spec character varying(255) NOT NULL
);


ALTER TABLE wagtailimages_filter OWNER TO urbana_db_user;

--
-- Name: wagtailimages_filter_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE wagtailimages_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailimages_filter_id_seq OWNER TO urbana_db_user;

--
-- Name: wagtailimages_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE wagtailimages_filter_id_seq OWNED BY wagtailimages_filter.id;


--
-- Name: wagtailimages_image; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE wagtailimages_image (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    focal_point_x integer,
    focal_point_y integer,
    focal_point_width integer,
    focal_point_height integer,
    uploaded_by_user_id integer,
    file_size integer,
    collection_id integer NOT NULL,
    CONSTRAINT wagtailimages_image_file_size_check CHECK ((file_size >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_height_check CHECK ((focal_point_height >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_width_check CHECK ((focal_point_width >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_x_check CHECK ((focal_point_x >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_y_check CHECK ((focal_point_y >= 0))
);


ALTER TABLE wagtailimages_image OWNER TO urbana_db_user;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE wagtailimages_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailimages_image_id_seq OWNER TO urbana_db_user;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE wagtailimages_image_id_seq OWNED BY wagtailimages_image.id;


--
-- Name: wagtailimages_rendition; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE wagtailimages_rendition (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    focal_point_key character varying(255) NOT NULL,
    filter_id integer NOT NULL,
    image_id integer NOT NULL
);


ALTER TABLE wagtailimages_rendition OWNER TO urbana_db_user;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE wagtailimages_rendition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailimages_rendition_id_seq OWNER TO urbana_db_user;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE wagtailimages_rendition_id_seq OWNED BY wagtailimages_rendition.id;


--
-- Name: wagtailredirects_redirect; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE wagtailredirects_redirect (
    id integer NOT NULL,
    old_path character varying(255) NOT NULL,
    is_permanent boolean NOT NULL,
    redirect_link character varying(200) NOT NULL,
    redirect_page_id integer,
    site_id integer
);


ALTER TABLE wagtailredirects_redirect OWNER TO urbana_db_user;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE wagtailredirects_redirect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailredirects_redirect_id_seq OWNER TO urbana_db_user;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE wagtailredirects_redirect_id_seq OWNED BY wagtailredirects_redirect.id;


--
-- Name: wagtailsearch_editorspick; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE wagtailsearch_editorspick (
    id integer NOT NULL,
    sort_order integer,
    description text NOT NULL,
    page_id integer NOT NULL,
    query_id integer NOT NULL
);


ALTER TABLE wagtailsearch_editorspick OWNER TO urbana_db_user;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE wagtailsearch_editorspick_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailsearch_editorspick_id_seq OWNER TO urbana_db_user;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE wagtailsearch_editorspick_id_seq OWNED BY wagtailsearch_editorspick.id;


--
-- Name: wagtailsearch_query; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE wagtailsearch_query (
    id integer NOT NULL,
    query_string character varying(255) NOT NULL
);


ALTER TABLE wagtailsearch_query OWNER TO urbana_db_user;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE wagtailsearch_query_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailsearch_query_id_seq OWNER TO urbana_db_user;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE wagtailsearch_query_id_seq OWNED BY wagtailsearch_query.id;


--
-- Name: wagtailsearch_querydailyhits; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE wagtailsearch_querydailyhits (
    id integer NOT NULL,
    date date NOT NULL,
    hits integer NOT NULL,
    query_id integer NOT NULL
);


ALTER TABLE wagtailsearch_querydailyhits OWNER TO urbana_db_user;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE wagtailsearch_querydailyhits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailsearch_querydailyhits_id_seq OWNER TO urbana_db_user;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE wagtailsearch_querydailyhits_id_seq OWNED BY wagtailsearch_querydailyhits.id;


--
-- Name: wagtailusers_userprofile; Type: TABLE; Schema: public; Owner: urbana_db_user
--

CREATE TABLE wagtailusers_userprofile (
    id integer NOT NULL,
    submitted_notifications boolean NOT NULL,
    approved_notifications boolean NOT NULL,
    rejected_notifications boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE wagtailusers_userprofile OWNER TO urbana_db_user;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: urbana_db_user
--

CREATE SEQUENCE wagtailusers_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailusers_userprofile_id_seq OWNER TO urbana_db_user;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: urbana_db_user
--

ALTER SEQUENCE wagtailusers_userprofile_id_seq OWNED BY wagtailusers_userprofile.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_attachments_attachment ALTER COLUMN id SET DEFAULT nextval('forum_attachments_attachment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_conversation_post ALTER COLUMN id SET DEFAULT nextval('forum_conversation_post_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_conversation_topic ALTER COLUMN id SET DEFAULT nextval('forum_conversation_topic_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_conversation_topic_subscribers ALTER COLUMN id SET DEFAULT nextval('forum_conversation_topic_subscribers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_forum ALTER COLUMN id SET DEFAULT nextval('forum_forum_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_member_forumprofile ALTER COLUMN id SET DEFAULT nextval('forum_member_forumprofile_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_permission_forumpermission ALTER COLUMN id SET DEFAULT nextval('forum_permission_forumpermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_permission_groupforumpermission ALTER COLUMN id SET DEFAULT nextval('forum_permission_groupforumpermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_permission_userforumpermission ALTER COLUMN id SET DEFAULT nextval('forum_permission_userforumpermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_polls_topicpoll ALTER COLUMN id SET DEFAULT nextval('forum_polls_topicpoll_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_polls_topicpolloption ALTER COLUMN id SET DEFAULT nextval('forum_polls_topicpolloption_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_polls_topicpollvote ALTER COLUMN id SET DEFAULT nextval('forum_polls_topicpollvote_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_tracking_forumreadtrack ALTER COLUMN id SET DEFAULT nextval('forum_tracking_forumreadtrack_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_tracking_topicreadtrack ALTER COLUMN id SET DEFAULT nextval('forum_tracking_topicreadtrack_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_universalblogpagerelatedlink ALTER COLUMN id SET DEFAULT nextval('home_universalblogpagerelatedlink_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_universalblogpagestag ALTER COLUMN id SET DEFAULT nextval('home_universalblogpagestag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY resources_resourcepagerelateddocument ALTER COLUMN id SET DEFAULT nextval('resources_resourcepagerelateddocument_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY taggit_tag ALTER COLUMN id SET DEFAULT nextval('taggit_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('taggit_taggeditem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_collection ALTER COLUMN id SET DEFAULT nextval('wagtailcore_collection_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission ALTER COLUMN id SET DEFAULT nextval('wagtailcore_groupcollectionpermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_grouppagepermission ALTER COLUMN id SET DEFAULT nextval('wagtailcore_grouppagepermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_page ALTER COLUMN id SET DEFAULT nextval('wagtailcore_page_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_pagerevision ALTER COLUMN id SET DEFAULT nextval('wagtailcore_pagerevision_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction ALTER COLUMN id SET DEFAULT nextval('wagtailcore_pageviewrestriction_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_site ALTER COLUMN id SET DEFAULT nextval('wagtailcore_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtaildocs_document ALTER COLUMN id SET DEFAULT nextval('wagtaildocs_document_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailembeds_embed ALTER COLUMN id SET DEFAULT nextval('wagtailembeds_embed_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailforms_formsubmission ALTER COLUMN id SET DEFAULT nextval('wagtailforms_formsubmission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailimages_filter ALTER COLUMN id SET DEFAULT nextval('wagtailimages_filter_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailimages_image ALTER COLUMN id SET DEFAULT nextval('wagtailimages_image_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailimages_rendition ALTER COLUMN id SET DEFAULT nextval('wagtailimages_rendition_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailredirects_redirect ALTER COLUMN id SET DEFAULT nextval('wagtailredirects_redirect_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailsearch_editorspick ALTER COLUMN id SET DEFAULT nextval('wagtailsearch_editorspick_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailsearch_query ALTER COLUMN id SET DEFAULT nextval('wagtailsearch_query_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailsearch_querydailyhits ALTER COLUMN id SET DEFAULT nextval('wagtailsearch_querydailyhits_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailusers_userprofile ALTER COLUMN id SET DEFAULT nextval('wagtailusers_userprofile_id_seq'::regclass);


--
-- Data for Name: about_eventindexpage; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY about_eventindexpage (page_ptr_id, intro) FROM stdin;
14	
\.


--
-- Data for Name: about_eventpage; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY about_eventpage (page_ptr_id, date_from, date_to, time_from, time_to, location, body, signup_link, feed_image_id) FROM stdin;
16	2016-07-26	\N	09:00:00	\N	Undeva	[{"type": "paragraph", "value": "<h5><b>Some content</b></h5>"}]	http://urbana.md	2
15	2016-08-25	\N	09:00:00	21:00:00	Undeva	[{"type": "aligned_image", "value": {"image": 2, "caption": "<p>\\u00a0</p>", "alignment": "mid"}}, {"type": "paragraph", "value": "<h5><b>Some content</b></h5>"}]	http://urbana.md	2
17	2016-05-18	2016-05-26	\N	\N	somewhere	[]		\N
19	2016-07-27	\N	\N	\N	loc	[]		\N
18	2016-07-26	2016-07-28	16:00:00	18:00:00	some	[]		\N
\.


--
-- Data for Name: about_initiativesblogindexpage; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY about_initiativesblogindexpage (page_ptr_id, intro) FROM stdin;
7	
\.


--
-- Data for Name: about_memberpage; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY about_memberpage (page_ptr_id, first_name, last_name, intro, description, telephone, email, image_id) FROM stdin;
13	Ilie	Postolachi	intro	<p>Descriere</p>		ilia.postolachi@gmail.com	1
\.


--
-- Data for Name: about_membersindexpage; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY about_membersindexpage (page_ptr_id) FROM stdin;
12
\.


--
-- Data for Name: about_networknewsblogindexpage; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY about_networknewsblogindexpage (page_ptr_id, intro) FROM stdin;
5	
\.


--
-- Data for Name: about_topmenupage; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY about_topmenupage (page_ptr_id, description) FROM stdin;
4	Este o structură-umbrelă organizată pe orizontală care va interconecta organizațiile neguvernamentale, asociațiile obștești, grupurile de inițiativă și activiștii independenți preocupați de problemele de dezvoltare urbană.
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY auth_group (id, name) FROM stdin;
1	Moderators
2	Editors
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('auth_group_id_seq', 2, true);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	2	1
5	2	2
6	2	3
7	1	4
8	1	5
9	1	6
10	2	4
11	2	5
12	2	6
13	1	7
14	2	7
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 14, true);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add image	2	add_image
2	Can change image	2	change_image
3	Can delete image	2	delete_image
4	Can add document	3	add_document
5	Can change document	3	change_document
6	Can delete document	3	delete_document
7	Can access Wagtail admin	5	access_admin
8	Can add universal blog page related link	6	add_universalblogpagerelatedlink
9	Can change universal blog page related link	6	change_universalblogpagerelatedlink
10	Can delete universal blog page related link	6	delete_universalblogpagerelatedlink
11	Can add universal blog pages tag	7	add_universalblogpagestag
12	Can change universal blog pages tag	7	change_universalblogpagestag
13	Can delete universal blog pages tag	7	delete_universalblogpagestag
14	Can add universal blog page	8	add_universalblogpage
15	Can change universal blog page	8	change_universalblogpage
16	Can delete universal blog page	8	delete_universalblogpage
20	Can add home page	4	add_homepage
21	Can change home page	4	change_homepage
22	Can delete home page	4	delete_homepage
23	Can add standard page	10	add_standardpage
24	Can change standard page	10	change_standardpage
25	Can delete standard page	10	delete_standardpage
26	Can add urban blog index page	11	add_urbanblogindexpage
27	Can change urban blog index page	11	change_urbanblogindexpage
28	Can delete urban blog index page	11	delete_urbanblogindexpage
29	Can add top menu page	12	add_topmenupage
30	Can change top menu page	12	change_topmenupage
31	Can delete top menu page	12	delete_topmenupage
32	Can add network news blog index page	13	add_networknewsblogindexpage
33	Can change network news blog index page	13	change_networknewsblogindexpage
34	Can delete network news blog index page	13	delete_networknewsblogindexpage
35	Can add initiatives blog index page	14	add_initiativesblogindexpage
36	Can change initiatives blog index page	14	change_initiativesblogindexpage
37	Can delete initiatives blog index page	14	delete_initiativesblogindexpage
38	Can add form submission	15	add_formsubmission
39	Can change form submission	15	change_formsubmission
40	Can delete form submission	15	delete_formsubmission
41	Can add redirect	16	add_redirect
42	Can change redirect	16	change_redirect
43	Can delete redirect	16	delete_redirect
44	Can add embed	17	add_embed
45	Can change embed	17	change_embed
46	Can delete embed	17	delete_embed
47	Can add user profile	18	add_userprofile
48	Can change user profile	18	change_userprofile
49	Can delete user profile	18	delete_userprofile
50	Can add filter	19	add_filter
51	Can change filter	19	change_filter
52	Can delete filter	19	delete_filter
53	Can add rendition	20	add_rendition
54	Can change rendition	20	change_rendition
55	Can delete rendition	20	delete_rendition
56	Can add query	21	add_query
57	Can change query	21	change_query
58	Can delete query	21	delete_query
59	Can add Query Daily Hits	22	add_querydailyhits
60	Can change Query Daily Hits	22	change_querydailyhits
61	Can delete Query Daily Hits	22	delete_querydailyhits
62	Can add site	23	add_site
63	Can change site	23	change_site
64	Can delete site	23	delete_site
65	Can add page	1	add_page
66	Can change page	1	change_page
67	Can delete page	1	delete_page
68	Can add page revision	24	add_pagerevision
69	Can change page revision	24	change_pagerevision
70	Can delete page revision	24	delete_pagerevision
71	Can add group page permission	25	add_grouppagepermission
72	Can change group page permission	25	change_grouppagepermission
73	Can delete group page permission	25	delete_grouppagepermission
74	Can add page view restriction	26	add_pageviewrestriction
75	Can change page view restriction	26	change_pageviewrestriction
76	Can delete page view restriction	26	delete_pageviewrestriction
77	Can add collection	27	add_collection
78	Can change collection	27	change_collection
79	Can delete collection	27	delete_collection
80	Can add group collection permission	28	add_groupcollectionpermission
81	Can change group collection permission	28	change_groupcollectionpermission
82	Can delete group collection permission	28	delete_groupcollectionpermission
83	Can add Tag	29	add_tag
84	Can change Tag	29	change_tag
85	Can delete Tag	29	delete_tag
86	Can add Tagged Item	30	add_taggeditem
87	Can change Tagged Item	30	change_taggeditem
88	Can delete Tagged Item	30	delete_taggeditem
89	Can add log entry	31	add_logentry
90	Can change log entry	31	change_logentry
91	Can delete log entry	31	delete_logentry
92	Can add permission	32	add_permission
93	Can change permission	32	change_permission
94	Can delete permission	32	delete_permission
95	Can add group	33	add_group
96	Can change group	33	change_group
97	Can delete group	33	delete_group
98	Can add user	34	add_user
99	Can change user	34	change_user
100	Can delete user	34	delete_user
101	Can add content type	35	add_contenttype
102	Can change content type	35	change_contenttype
103	Can delete content type	35	delete_contenttype
104	Can add session	36	add_session
105	Can change session	36	change_session
106	Can delete session	36	delete_session
107	Can add universal blog index page	37	add_universalblogindexpage
108	Can change universal blog index page	37	change_universalblogindexpage
109	Can delete universal blog index page	37	delete_universalblogindexpage
116	Can add members index page	40	add_membersindexpage
117	Can change members index page	40	change_membersindexpage
118	Can delete members index page	40	delete_membersindexpage
119	Can add member page	41	add_memberpage
120	Can change member page	41	change_memberpage
121	Can delete member page	41	delete_memberpage
122	Can add event index page	42	add_eventindexpage
123	Can change event index page	42	change_eventindexpage
124	Can delete event index page	42	delete_eventindexpage
125	Can add event page	43	add_eventpage
126	Can change event page	43	change_eventpage
127	Can delete event page	43	delete_eventpage
128	Can add standard index page	44	add_standardindexpage
129	Can change standard index page	44	change_standardindexpage
130	Can delete standard index page	44	delete_standardindexpage
131	Can add resource page related document	45	add_resourcepagerelateddocument
132	Can change resource page related document	45	change_resourcepagerelateddocument
133	Can delete resource page related document	45	delete_resourcepagerelateddocument
134	Can add resource page	46	add_resourcepage
135	Can change resource page	46	change_resourcepage
136	Can delete resource page	46	delete_resourcepage
137	Can add resources index page	47	add_resourcesindexpage
138	Can change resources index page	47	change_resourcesindexpage
139	Can delete resources index page	47	delete_resourcesindexpage
140	Can add Forum	48	add_forum
141	Can change Forum	48	change_forum
142	Can delete Forum	48	delete_forum
143	Can add Topic	49	add_topic
144	Can change Topic	49	change_topic
145	Can delete Topic	49	delete_topic
146	Can add Post	50	add_post
147	Can change Post	50	change_post
148	Can delete Post	50	delete_post
149	Can add Attachment	51	add_attachment
150	Can change Attachment	51	change_attachment
151	Can delete Attachment	51	delete_attachment
152	Can add Topic poll	52	add_topicpoll
153	Can change Topic poll	52	change_topicpoll
154	Can delete Topic poll	52	delete_topicpoll
155	Can add Topic poll option	53	add_topicpolloption
156	Can change Topic poll option	53	change_topicpolloption
157	Can delete Topic poll option	53	delete_topicpolloption
158	Can add Topic poll vote	54	add_topicpollvote
159	Can change Topic poll vote	54	change_topicpollvote
160	Can delete Topic poll vote	54	delete_topicpollvote
161	Can add Forum track	55	add_forumreadtrack
162	Can change Forum track	55	change_forumreadtrack
163	Can delete Forum track	55	delete_forumreadtrack
164	Can add Topic track	56	add_topicreadtrack
165	Can change Topic track	56	change_topicreadtrack
166	Can delete Topic track	56	delete_topicreadtrack
167	Can add Forum profile	57	add_forumprofile
168	Can change Forum profile	57	change_forumprofile
169	Can delete Forum profile	57	delete_forumprofile
170	Can add Forum permission	58	add_forumpermission
171	Can change Forum permission	58	change_forumpermission
172	Can delete Forum permission	58	delete_forumpermission
173	Can add Group forum permission	59	add_groupforumpermission
174	Can change Group forum permission	59	change_groupforumpermission
175	Can delete Group forum permission	59	delete_groupforumpermission
176	Can add User forum permission	60	add_userforumpermission
177	Can change User forum permission	60	change_userforumpermission
178	Can delete User forum permission	60	delete_userforumpermission
179	Can add redirect page	61	add_redirectpage
180	Can change redirect page	61	change_redirectpage
181	Can delete redirect page	61	delete_redirectpage
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('auth_permission_id_seq', 181, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
5	pbkdf2_sha256$24000$Wrh4zLInSgrg$BdC2d+KsSkCVW5QUssS1kRxqfjDoLxqLQcZj+LXe77c=	2016-09-05 07:01:58.676949+00	f	me			me@urbana.md	f	t	2016-09-05 07:01:58.454922+00
6	pbkdf2_sha256$24000$1pbL5LeQuyVk$6GEX+Croz6T/HTdegtxTl0BE6rHs7KI7lUiZNY+TtGE=	2016-09-05 07:16:24.982743+00	f	user2			user2@urbana.md	f	t	2016-09-05 07:16:24.819635+00
4	pbkdf2_sha256$24000$5T0qNEr7LPLD$jlldXvNIrBuMvM5GC7NFQTBykh91YgPi+XxxKoVSzd4=	2016-09-05 07:58:40.816966+00	f	User1	User1	User1	user1@urbana.md	f	t	2016-09-05 06:01:55.856463+00
1	pbkdf2_sha256$24000$hBITIcYwjgVL$nY9W+ZnuU5cupmEEiofB4L+ocWX9brc7ZhkIDRJgnpc=	2016-09-05 07:59:48.031937+00	t	admin			admin@urbana.md	t	t	2016-07-22 17:06:30.927524+00
2	pbkdf2_sha256$24000$mTvK6hHGjDhL$OmLuvpvfTcf88jPp4a/GBhcaE08zbk3QDQ2lQjOagUk=	2016-09-02 19:41:26.605805+00	f	urbanauser	urbanauser	urbanauser	urbanauser@urbana.md	f	t	2016-09-02 17:46:37.301989+00
3	pbkdf2_sha256$24000$fcea3KKYkcQj$/2IZGes24fglhcPNf7tym8ZrUAPERT3AHrXsoF8e9TM=	2016-09-03 09:39:16.01539+00	f	Ilie			ilie@urbana.md	f	t	2016-09-03 09:18:51.717499+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
1	2	1
2	2	2
4	4	2
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 4, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('auth_user_id_seq', 6, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2016-08-31 16:47:14.701271+00	1	Jurist Urban QA	1	Adăugat.	48	1
2	2016-09-01 07:53:41.011357+00	1	Consultanța Juridica	2	S-a schimbat name și description.	48	1
3	2016-09-01 07:56:02.152647+00	2	Semnalează o problemă în oraș	1	Adăugat.	48	1
4	2016-09-01 07:56:49.371967+00	3	Forum general	1	Adăugat.	48	1
5	2016-09-01 07:57:24.485329+00	4	Sub forum #1	1	Adăugat.	48	1
6	2016-09-01 08:06:52.582056+00	3	Consultare	2	S-a schimbat name și description.	48	1
7	2016-09-01 08:07:03.734979+00	4	Sub forum #1	3		48	1
8	2016-09-01 08:07:21.949843+00	1	Consultanța Juridica	2	S-a schimbat parent și description.	48	1
9	2016-09-01 08:07:29.224509+00	2	Semnalează o problemă în oraș	2	S-a schimbat parent și description.	48	1
10	2016-09-01 08:10:11.628616+00	5	Forum general	1	Adăugat.	48	1
11	2016-09-01 08:16:02.73027+00	6	Teme Urbane	1	Adăugat.	48	1
12	2016-09-01 08:16:37.402008+00	5	Forum General	2	S-a schimbat name și description.	48	1
13	2016-09-01 08:17:30.762334+00	2	Semnalează o problemă în oraș	2	S-a schimbat parent și description.	48	1
14	2016-09-01 08:19:27.899011+00	1	Consultanție Juridica	2	S-a schimbat name și description.	48	1
15	2016-09-01 08:20:23.299001+00	1	Consultanție Juridică	2	S-a schimbat name și description.	48	1
16	2016-09-01 08:20:41.995661+00	1	Consultanție Juridică	2	S-a schimbat description.	48	1
17	2016-09-02 14:50:08.667981+00	1	Consultare juridică	2	S-a schimbat name și description.	48	1
18	2016-09-02 20:00:47.46567+00	7	NEW!	1	Adăugat.	48	1
19	2016-09-02 20:01:41.956662+00	7	NEW!	3		48	1
20	2016-09-05 07:13:38.947853+00	8	NEW!	1	Adăugat.	48	1
21	2016-09-05 07:15:50.594769+00	9	FRESH	1	Adăugat.	48	1
22	2016-09-05 07:27:44.220991+00	8	NEW!	3		48	1
23	2016-09-05 07:27:44.235284+00	9	FRESH	3		48	1
24	2016-09-05 08:03:05.635148+00	11	q4	3		49	1
25	2016-09-05 08:03:05.681345+00	5	User2 Q	3		49	1
26	2016-09-05 08:03:05.718623+00	2	Intrebare #2	3		49	1
27	2016-09-05 08:03:05.756838+00	9	Some	3		49	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 27, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	wagtailcore	page
2	wagtailimages	image
3	wagtaildocs	document
4	home	homepage
5	wagtailadmin	admin
6	home	universalblogpagerelatedlink
7	home	universalblogpagestag
8	home	universalblogpage
10	home	standardpage
11	home	urbanblogindexpage
12	about	topmenupage
13	about	networknewsblogindexpage
14	about	initiativesblogindexpage
15	wagtailforms	formsubmission
16	wagtailredirects	redirect
17	wagtailembeds	embed
18	wagtailusers	userprofile
19	wagtailimages	filter
20	wagtailimages	rendition
21	wagtailsearch	query
22	wagtailsearch	querydailyhits
23	wagtailcore	site
24	wagtailcore	pagerevision
25	wagtailcore	grouppagepermission
26	wagtailcore	pageviewrestriction
27	wagtailcore	collection
28	wagtailcore	groupcollectionpermission
29	taggit	tag
30	taggit	taggeditem
31	admin	logentry
32	auth	permission
33	auth	group
34	auth	user
35	contenttypes	contenttype
36	sessions	session
37	home	universalblogindexpage
40	about	membersindexpage
41	about	memberpage
42	about	eventindexpage
43	about	eventpage
44	home	standardindexpage
45	resources	resourcepagerelateddocument
46	resources	resourcepage
47	resources	resourcesindexpage
48	forum	forum
49	forum_conversation	topic
50	forum_conversation	post
51	forum_attachments	attachment
52	forum_polls	topicpoll
53	forum_polls	topicpolloption
54	forum_polls	topicpollvote
55	forum_tracking	forumreadtrack
56	forum_tracking	topicreadtrack
57	forum_member	forumprofile
58	forum_permission	forumpermission
59	forum_permission	groupforumpermission
60	forum_permission	userforumpermission
61	home	redirectpage
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('django_content_type_id_seq', 61, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2016-07-22 16:59:07.819536+00
2	auth	0001_initial	2016-07-22 16:59:07.940051+00
3	wagtailcore	0001_initial	2016-07-22 16:59:08.279361+00
4	wagtailcore	0002_initial_data	2016-07-22 16:59:08.282376+00
5	wagtailcore	0003_add_uniqueness_constraint_on_group_page_permission	2016-07-22 16:59:08.284849+00
6	wagtailcore	0004_page_locked	2016-07-22 16:59:08.288875+00
7	wagtailcore	0005_add_page_lock_permission_to_moderators	2016-07-22 16:59:08.294158+00
8	wagtailcore	0006_add_lock_page_permission	2016-07-22 16:59:08.296924+00
9	wagtailcore	0007_page_latest_revision_created_at	2016-07-22 16:59:08.300999+00
10	wagtailcore	0008_populate_latest_revision_created_at	2016-07-22 16:59:08.306189+00
11	wagtailcore	0009_remove_auto_now_add_from_pagerevision_created_at	2016-07-22 16:59:08.31338+00
12	wagtailcore	0010_change_page_owner_to_null_on_delete	2016-07-22 16:59:08.315966+00
13	wagtailcore	0011_page_first_published_at	2016-07-22 16:59:08.320676+00
14	wagtailcore	0012_extend_page_slug_field	2016-07-22 16:59:08.323492+00
15	wagtailcore	0013_update_golive_expire_help_text	2016-07-22 16:59:08.327479+00
16	wagtailcore	0014_add_verbose_name	2016-07-22 16:59:08.331261+00
17	wagtailcore	0015_add_more_verbose_names	2016-07-22 16:59:08.333827+00
18	wagtailcore	0016_change_page_url_path_to_text_field	2016-07-22 16:59:08.336385+00
19	wagtailcore	0017_change_edit_page_permission_description	2016-07-22 16:59:08.368805+00
20	wagtailcore	0018_pagerevision_submitted_for_moderation_index	2016-07-22 16:59:08.431556+00
21	wagtailcore	0019_verbose_names_cleanup	2016-07-22 16:59:08.535296+00
22	wagtailcore	0020_add_index_on_page_first_published_at	2016-07-22 16:59:08.599491+00
23	wagtailcore	0021_capitalizeverbose	2016-07-22 16:59:09.432393+00
24	wagtailcore	0022_add_site_name	2016-07-22 16:59:09.469731+00
25	wagtailcore	0023_alter_page_revision_on_delete_behaviour	2016-07-22 16:59:09.526703+00
26	wagtailcore	0024_collection	2016-07-22 16:59:09.556742+00
27	wagtailcore	0025_collection_initial_data	2016-07-22 16:59:09.572639+00
28	wagtailcore	0026_group_collection_permission	2016-07-22 16:59:09.677678+00
29	wagtailcore	0027_fix_collection_path_collation	2016-07-22 16:59:09.696296+00
30	wagtailcore	0024_alter_page_content_type_on_delete_behaviour	2016-07-22 16:59:09.776322+00
31	wagtailcore	0028_merge	2016-07-22 16:59:09.786792+00
32	about	0001_initial	2016-07-22 16:59:09.922612+00
33	admin	0001_initial	2016-07-22 16:59:09.984637+00
34	admin	0002_logentry_remove_auto_add	2016-07-22 16:59:10.024074+00
35	contenttypes	0002_remove_content_type_name	2016-07-22 16:59:10.176351+00
36	auth	0002_alter_permission_name_max_length	2016-07-22 16:59:10.22667+00
37	auth	0003_alter_user_email_max_length	2016-07-22 16:59:10.27459+00
38	auth	0004_alter_user_username_opts	2016-07-22 16:59:10.314567+00
39	auth	0005_alter_user_last_login_null	2016-07-22 16:59:10.361788+00
40	auth	0006_require_contenttypes_0002	2016-07-22 16:59:10.370627+00
41	auth	0007_alter_validators_add_error_messages	2016-07-22 16:59:10.41243+00
42	wagtailredirects	0001_initial	2016-07-22 16:59:10.482722+00
43	wagtailredirects	0002_add_verbose_names	2016-07-22 16:59:10.575798+00
44	wagtailredirects	0003_make_site_field_editable	2016-07-22 16:59:10.638628+00
45	wagtailredirects	0004_set_unique_on_path_and_site	2016-07-22 16:59:10.739495+00
46	wagtailredirects	0005_capitalizeverbose	2016-07-22 16:59:10.98079+00
47	wagtailforms	0001_initial	2016-07-22 16:59:11.041323+00
48	wagtailforms	0002_add_verbose_names	2016-07-22 16:59:11.112699+00
49	wagtailforms	0003_capitalizeverbose	2016-07-22 16:59:11.285162+00
50	taggit	0001_initial	2016-07-22 16:59:11.378817+00
51	taggit	0002_auto_20150616_2121	2016-07-22 16:59:11.433934+00
52	wagtailimages	0001_initial	2016-07-22 16:59:11.618356+00
53	wagtailimages	0002_initial_data	2016-07-22 16:59:11.661994+00
54	wagtailimages	0003_fix_focal_point_fields	2016-07-22 16:59:11.870285+00
55	wagtailimages	0004_make_focal_point_key_not_nullable	2016-07-22 16:59:11.933801+00
56	wagtailimages	0005_make_filter_spec_unique	2016-07-22 16:59:12.012373+00
57	wagtailimages	0006_add_verbose_names	2016-07-22 16:59:12.198163+00
58	wagtailimages	0007_image_file_size	2016-07-22 16:59:12.260731+00
59	wagtailimages	0008_image_created_at_index	2016-07-22 16:59:12.327938+00
60	wagtailimages	0009_capitalizeverbose	2016-07-22 16:59:12.623418+00
61	wagtailimages	0010_change_on_delete_behaviour	2016-07-22 16:59:12.703281+00
62	wagtailimages	0011_image_collection	2016-07-22 16:59:12.786947+00
63	wagtailimages	0012_copy_image_permissions_to_collections	2016-07-22 16:59:12.819589+00
64	wagtailimages	0013_make_rendition_upload_callable	2016-07-22 16:59:12.912569+00
65	wagtaildocs	0001_initial	2016-07-22 16:59:12.979179+00
66	wagtaildocs	0002_initial_data	2016-07-22 16:59:13.018481+00
67	wagtaildocs	0003_add_verbose_names	2016-07-22 16:59:13.2148+00
68	wagtaildocs	0004_capitalizeverbose	2016-07-22 16:59:13.631667+00
69	wagtaildocs	0005_document_collection	2016-07-22 16:59:13.712878+00
70	wagtaildocs	0006_copy_document_permissions_to_collections	2016-07-22 16:59:13.737611+00
71	wagtaildocs	0005_alter_uploaded_by_user_on_delete_action	2016-07-22 16:59:13.816289+00
72	wagtaildocs	0007_merge	2016-07-22 16:59:13.823923+00
73	home	0001_initial	2016-07-22 16:59:13.891152+00
74	home	0002_create_homepage	2016-07-22 16:59:13.93975+00
75	home	0003_homepage_body	2016-07-22 16:59:14.012389+00
76	home	0004_auto_20160702_2049	2016-07-22 16:59:14.273561+00
77	home	0005_urbanblogindexpagerelatedlink_urbanblogpagerelatedlink	2016-07-22 16:59:14.461234+00
78	home	0006_auto_20160703_1220	2016-07-22 16:59:14.824488+00
79	home	0007_aboutindexpage_aboutsubpage	2016-07-22 16:59:14.992814+00
80	home	0008_auto_20160704_1956	2016-07-22 16:59:15.788407+00
81	home	0009_auto_20160704_2153	2016-07-22 16:59:16.515014+00
82	home	0010_auto_20160709_0547	2016-07-22 16:59:16.775409+00
83	home	0011_auto_20160720_1639	2016-07-22 16:59:17.094527+00
84	home	0012_auto_20160721_0813	2016-07-22 16:59:20.876388+00
85	home	0013_auto_20160721_1145	2016-07-22 16:59:22.204528+00
86	sessions	0001_initial	2016-07-22 16:59:22.245088+00
87	wagtailadmin	0001_create_admin_access_permissions	2016-07-22 16:59:22.296659+00
88	wagtailembeds	0001_initial	2016-07-22 16:59:22.346941+00
89	wagtailembeds	0002_add_verbose_names	2016-07-22 16:59:22.372035+00
90	wagtailembeds	0003_capitalizeverbose	2016-07-22 16:59:22.402929+00
91	wagtailsearch	0001_initial	2016-07-22 16:59:22.611322+00
92	wagtailsearch	0002_add_verbose_names	2016-07-22 16:59:23.330175+00
93	wagtailsearch	0003_remove_editors_pick	2016-07-22 16:59:23.396804+00
94	wagtailusers	0001_initial	2016-07-22 16:59:23.471176+00
95	wagtailusers	0002_add_verbose_name_on_userprofile	2016-07-22 16:59:23.682019+00
96	wagtailusers	0003_add_verbose_names	2016-07-22 16:59:23.78357+00
97	wagtailusers	0004_capitalizeverbose	2016-07-22 16:59:24.059785+00
98	wagtailcore	0001_squashed_0016_change_page_url_path_to_text_field	2016-07-22 16:59:24.069677+00
99	home	0014_auto_20160722_1720	2016-07-22 17:20:29.091256+00
104	about	0002_memberpage_membersindexpage	2016-07-23 16:01:50.409627+00
105	about	0003_auto_20160725_1642	2016-07-25 16:43:30.753619+00
106	about	0004_eventindexpage_intro	2016-07-25 16:49:18.060476+00
107	about	0005_auto_20160725_1919	2016-07-25 19:19:07.731716+00
108	home	0015_auto_20160725_1919	2016-07-25 19:19:17.957511+00
109	home	0016_standardindexpage	2016-07-27 17:43:36.61785+00
110	resources	0001_initial	2016-07-28 10:06:17.539148+00
111	resources	0002_auto_20160728_1047	2016-07-28 10:47:31.981165+00
112	resources	0003_resourcesindexpage	2016-07-28 11:00:35.963531+00
113	forum	0001_initial	2016-08-31 16:33:14.213298+00
114	forum	0002_auto_20150725_0512	2016-08-31 16:33:14.22998+00
115	forum	0003_remove_forum_is_active	2016-08-31 16:33:14.255435+00
116	forum_conversation	0001_initial	2016-08-31 16:33:14.634006+00
117	forum_attachments	0001_initial	2016-08-31 16:33:14.863802+00
118	forum_conversation	0002_post_anonymous_key	2016-08-31 16:33:14.922781+00
119	forum_conversation	0003_auto_20160228_2051	2016-08-31 16:33:14.985779+00
120	forum_conversation	0004_auto_20160427_0502	2016-08-31 16:33:15.143278+00
121	forum_conversation	0005_auto_20160607_0455	2016-08-31 16:33:15.275482+00
122	forum_member	0001_initial	2016-08-31 16:33:15.36743+00
123	forum_member	0002_auto_20160225_0515	2016-08-31 16:33:15.430469+00
124	forum_member	0003_auto_20160227_2122	2016-08-31 16:33:15.521683+00
125	forum_permission	0001_initial	2016-08-31 16:33:15.973001+00
126	forum_permission	0002_auto_20160607_0500	2016-08-31 16:33:16.415237+00
127	forum_polls	0001_initial	2016-08-31 16:33:16.837857+00
128	forum_polls	0002_auto_20151105_0029	2016-08-31 16:33:16.994309+00
129	forum_tracking	0001_initial	2016-08-31 16:33:17.490221+00
130	forum_tracking	0002_auto_20160607_0502	2016-08-31 16:33:17.648926+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('django_migrations_id_seq', 131, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
rso0uhiajrs9ruf1yk02kben3vl5fwn5	OTg3ZTkwYmVmNDBiOWNiZGYyOGI0N2JkODc2ODFlMTBhM2Y5NWM5Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGIyM2QwMTdjNzBkMmNlYjJiMTJkODkzZGJmZmE3ZWI4YjY3YjRmIn0=	2016-08-05 17:06:34.286913+00
l6noc0tm8537jeog3n5mya17ri21sgtc	ZTFhYTJlMDdlMTVlZmMyZmM2OTU4NDkwZjUwZDBhNTUwMTdkYWZiNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjIwYjIzZDAxN2M3MGQyY2ViMmIxMmQ4OTNkYmZmYTdlYjhiNjdiNGYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2016-08-18 07:46:47.294939+00
b53vb9kfxhiqhwgdgb93ujpcoh1xsyn3	ODc1MWRmNDc2OTUzODBkYzc3OTg5M2I1ZWU5NWUwMTQ0MjQ5YzhjZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjBiMjNkMDE3YzcwZDJjZWIyYjEyZDg5M2RiZmZhN2ViOGI2N2I0ZiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2016-08-24 16:54:14.62019+00
sxt6ybkkv21ax530k9373eb1nhku8m0i	Y2RmNTliYTVhYzIzMWNhY2YzN2IzODk1ZDA4MjMyMGJjMjZmZWRlNDp7Il9hbm9ueW1vdXNfZm9ydW1fa2V5IjoiNjUzODVlZGQ0MjM5NDZlODgzYzZjMTk5M2JkYWU1M2EiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjBiMjNkMDE3YzcwZDJjZWIyYjEyZDg5M2RiZmZhN2ViOGI2N2I0ZiJ9	2016-09-16 17:38:04.161207+00
uz4jn2aoks0cc0cglu2vf46t3fxcnseg	NjJhZGYxNWUxNjhiN2I2ZWFjMDcyMzg2YzgyYzAzZjIzNGQ3MDY4Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGIyM2QwMTdjNzBkMmNlYjJiMTJkODkzZGJmZmE3ZWI4YjY3YjRmIiwiX2Fub255bW91c19mb3J1bV9rZXkiOiJmZThjZTE3NTZkYzc0ODIyOGZhNGE3MDMxODAwY2ZhMyJ9	2016-09-19 07:59:48.046715+00
ywjgvnspizfmra362ft4sx15genxwgz9	YmMwYTcwM2I1YzM2M2EwMzIwZTgzODBjZTBhNTI1NjQ2ZjFlNWQ5Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjBiMjNkMDE3YzcwZDJjZWIyYjEyZDg5M2RiZmZhN2ViOGI2N2I0ZiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-09-16 19:41:35.69251+00
\.


--
-- Data for Name: forum_attachments_attachment; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY forum_attachments_attachment (id, file, comment, post_id) FROM stdin;
\.


--
-- Name: forum_attachments_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('forum_attachments_attachment_id_seq', 1, true);


--
-- Data for Name: forum_conversation_post; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY forum_conversation_post (id, created, updated, poster_ip, subject, content, username, approved, update_reason, updates_count, _content_rendered, poster_id, topic_id, updated_by_id, anonymous_key) FROM stdin;
1	2016-08-31 16:48:55.326757+00	2016-08-31 16:48:55.326818+00	172.21.0.1	Q1	##### Text\r\n**Text**	\N	t	\N	0	<h5>Text</h5>\n<p><strong>Text</strong></p>	1	1	\N	\N
8	2016-09-01 10:46:32.213228+00	2016-09-01 10:47:10.404626+00	172.21.0.1	Poll test	Mesaj	\N	t		1	<p>Mesaj</p>	1	3	1	\N
9	2016-09-01 10:54:11.199163+00	2016-09-02 15:02:55.187997+00	172.21.0.1	Re: Poll test	Interesant!	Ilie	t	\N	0	<p>Interesant!</p>	\N	3	\N	65385edd423946e883c6c1993bdae53a
10	2016-09-02 14:58:20.430398+00	2016-09-02 15:03:03.417295+00	172.21.0.1	Problema #1	Mesaj	Cineva	t	\N	0	<p>Mesaj</p>	\N	4	\N	d5ad96f93f0d42edb6bba35acaf49e49
12	2016-09-02 19:40:42.52115+00	2016-09-02 19:42:27.268036+00	172.21.0.1	Moderat	Moderat	Moderat	t	\N	0	<p>Moderat</p>	\N	6	\N	7f9b99ed2fed424784ad9720f1c541b5
13	2016-09-05 06:43:21.854331+00	2016-09-05 06:48:38.781071+00	172.21.0.1	Q3	Message	An	t	\N	0	<p>Message</p>	\N	7	\N	72e6622ff5e6480bbb75982e1178d80c
14	2016-09-05 06:51:26.022557+00	2016-09-05 06:51:26.022621+00	172.21.0.1	Q5	q5	\N	t	\N	0	<p>q5</p>	4	8	\N	\N
16	2016-09-05 06:55:41.252331+00	2016-09-05 06:56:34.915678+00	172.21.0.1	Q4	q	An	t	\N	0	<p>q</p>	\N	10	\N	30d7076933a940339bf3d2210343e786
18	2016-09-05 07:04:44.209674+00	2016-09-05 08:01:33.766127+00	172.21.0.1	Tema #1	text	\N	t		1	<p>text</p>	1	12	1	\N
19	2016-09-05 07:05:17.067941+00	2016-09-05 08:02:11.653175+00	172.21.0.1	Re: Tema	Reply	\N	t		1	<p>Reply</p>	1	12	1	\N
\.


--
-- Name: forum_conversation_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('forum_conversation_post_id_seq', 21, true);


--
-- Data for Name: forum_conversation_topic; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY forum_conversation_topic (id, created, updated, subject, slug, type, status, approved, posts_count, views_count, last_post_on, forum_id, poster_id) FROM stdin;
8	2016-09-05 06:51:25.947983+00	2016-09-05 06:51:26.08904+00	Q5	q5	0	0	t	1	7	2016-09-05 06:51:26.022557+00	1	4
10	2016-09-05 06:55:41.234988+00	2016-09-05 06:56:34.99927+00	Q4	q4	0	0	t	1	2	2016-09-05 06:55:41.252331+00	1	\N
7	2016-09-05 06:43:21.777524+00	2016-09-05 06:48:38.856157+00	Q3	q3	0	0	t	1	2	2016-09-05 06:43:21.854331+00	1	\N
1	2016-08-31 16:48:55.17544+00	2016-09-05 08:06:33.771434+00	Q1	q1	0	0	t	1	29	2016-08-31 16:48:55.326757+00	1	1
12	2016-09-05 07:04:44.135555+00	2016-09-05 08:02:11.752075+00	Tema #1	tema	0	0	t	2	5	2016-09-05 07:05:17.067941+00	6	5
3	2016-09-01 10:46:32.162922+00	2016-09-02 15:02:55.259188+00	Poll test	poll-test	0	1	t	2	23	2016-09-01 10:54:11.199163+00	6	1
6	2016-09-02 19:40:42.498545+00	2016-09-02 19:42:27.337648+00	Moderat	moderat	0	0	t	1	5	2016-09-02 19:40:42.52115+00	6	\N
4	2016-09-02 14:58:20.406846+00	2016-09-02 15:03:03.513375+00	Problema #1	problema-1	0	0	t	1	11	2016-09-02 14:58:20.430398+00	2	\N
\.


--
-- Name: forum_conversation_topic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('forum_conversation_topic_id_seq', 14, true);


--
-- Data for Name: forum_conversation_topic_subscribers; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY forum_conversation_topic_subscribers (id, topic_id, user_id) FROM stdin;
\.


--
-- Name: forum_conversation_topic_subscribers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('forum_conversation_topic_subscribers_id_seq', 2, true);


--
-- Data for Name: forum_forum; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY forum_forum (id, created, updated, name, slug, description, image, link, link_redirects, type, posts_count, topics_count, link_redirects_count, last_post_on, display_sub_forum_list, _description_rendered, lft, rght, tree_id, level, parent_id) FROM stdin;
6	2016-09-01 08:16:02.716658+00	2016-09-05 08:02:11.84321+00	Teme Urbane	teme-urbane				f	0	6	4	0	2016-09-05 07:05:17.067941+00	t		2	3	4	1	5
5	2016-09-01 08:10:11.617717+00	2016-09-05 08:02:11.909652+00	Forum General	forum-general				f	1	7	5	0	2016-09-05 07:05:17.067941+00	t		1	8	4	0	\N
1	2016-08-31 16:47:14.687232+00	2016-09-05 08:06:33.825489+00	Consultare juridică	consultare-juridica	Jurist urban			f	0	4	4	0	2016-09-05 06:55:41.252331+00	t	<p>Jurist urban</p>	2	3	3	1	3
3	2016-09-01 07:56:49.356926+00	2016-09-05 08:06:33.892929+00	Consultare	consultare				f	1	4	4	0	2016-09-05 06:55:41.252331+00	t		1	4	3	0	\N
2	2016-09-01 07:56:02.141796+00	2016-09-02 15:03:03.676343+00	Semnalează o problemă în oraș	semnaleaza-o-problema-in-oras				f	0	1	1	0	2016-09-02 14:58:20.430398+00	t		4	5	4	1	5
\.


--
-- Name: forum_forum_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('forum_forum_id_seq', 9, true);


--
-- Data for Name: forum_member_forumprofile; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY forum_member_forumprofile (id, avatar, signature, posts_count, _signature_rendered, user_id) FROM stdin;
4		\N	2	\N	5
5		\N	0	\N	6
3		\N	1	\N	4
2	machina/avatar_images/new_size_smaller_C5txNwV.png	Signature	0	<p>Signature</p>	2
1		\N	2	\N	1
\.


--
-- Name: forum_member_forumprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('forum_member_forumprofile_id_seq', 5, true);


--
-- Data for Name: forum_permission_forumpermission; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY forum_permission_forumpermission (id, codename, name, is_global, is_local) FROM stdin;
1	can_see_forum	Can see forum	t	t
2	can_read_forum	Can read forum	t	t
3	can_start_new_topics	Can start new topics	t	t
4	can_reply_to_topics	Can reply to topics	t	t
5	can_post_announcements	Can post announcements	t	t
6	can_post_stickies	Can post stickies	t	t
7	can_delete_own_posts	Can delete own posts	t	t
8	can_edit_own_posts	Can edit own posts	t	t
9	can_post_without_approval	Can post without approval	t	t
10	can_create_polls	Can create polls	t	t
11	can_vote_in_polls	Can vote in polls	t	t
12	can_attach_file	Can attach file	t	t
13	can_download_file	Can download file	t	t
14	can_lock_topics	Can lock topics	f	t
15	can_move_topics	Can move topics	f	t
16	can_edit_posts	Can edit posts	f	t
17	can_delete_posts	Can delete posts	f	t
18	can_approve_posts	Can approve posts	f	t
19	can_reply_to_locked_topics	Can add posts in locked topics	f	t
\.


--
-- Name: forum_permission_forumpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('forum_permission_forumpermission_id_seq', 19, true);


--
-- Data for Name: forum_permission_groupforumpermission; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY forum_permission_groupforumpermission (id, has_perm, forum_id, group_id, permission_id) FROM stdin;
\.


--
-- Name: forum_permission_groupforumpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('forum_permission_groupforumpermission_id_seq', 1, false);


--
-- Data for Name: forum_permission_userforumpermission; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY forum_permission_userforumpermission (id, has_perm, anonymous_user, forum_id, permission_id, user_id) FROM stdin;
1	t	t	1	1	\N
2	t	t	1	2	\N
3	t	t	1	8	\N
5	t	t	1	11	\N
6	t	t	1	4	\N
4	t	t	1	7	\N
7	t	t	\N	8	\N
13	t	t	\N	3	\N
9	t	t	\N	11	\N
12	t	t	\N	1	\N
10	t	t	\N	4	\N
14	t	t	\N	12	\N
8	t	t	\N	2	\N
11	t	t	\N	7	\N
15	t	t	\N	13	\N
\.


--
-- Name: forum_permission_userforumpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('forum_permission_userforumpermission_id_seq', 15, true);


--
-- Data for Name: forum_polls_topicpoll; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY forum_polls_topicpoll (id, created, updated, question, duration, max_options, user_changes, topic_id) FROM stdin;
1	2016-08-31 16:48:55.48584+00	2016-08-31 16:48:55.498467+00		0	1	f	1
3	2016-09-01 10:46:32.529557+00	2016-09-01 10:47:10.675708+00	Q1	0	1	t	3
5	2016-09-05 06:51:26.242548+00	2016-09-05 06:51:26.257809+00		0	1	f	8
8	2016-09-05 07:04:44.500082+00	2016-09-05 08:01:33.98295+00		0	1	f	12
\.


--
-- Name: forum_polls_topicpoll_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('forum_polls_topicpoll_id_seq', 10, true);


--
-- Data for Name: forum_polls_topicpolloption; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY forum_polls_topicpolloption (id, text, poll_id) FROM stdin;
1	A	3
2	B	3
3	C	3
\.


--
-- Name: forum_polls_topicpolloption_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('forum_polls_topicpolloption_id_seq', 3, true);


--
-- Data for Name: forum_polls_topicpollvote; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY forum_polls_topicpollvote (id, "timestamp", poll_option_id, voter_id, anonymous_key) FROM stdin;
2	2016-09-01 10:47:19.948165+00	2	1	\N
4	2016-09-01 10:48:34.769079+00	2	\N	65385edd423946e883c6c1993bdae53a
\.


--
-- Name: forum_polls_topicpollvote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('forum_polls_topicpollvote_id_seq', 4, true);


--
-- Data for Name: forum_tracking_forumreadtrack; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY forum_tracking_forumreadtrack (id, mark_time, forum_id, user_id) FROM stdin;
5	2016-09-02 15:03:18.994173+00	2	1
6	2016-09-02 19:20:01.187473+00	1	2
7	2016-09-02 19:20:01.290822+00	3	2
8	2016-09-02 19:20:54.234547+00	6	2
10	2016-09-02 19:22:02.513034+00	2	2
9	2016-09-02 19:22:02.570961+00	5	2
4	2016-09-02 19:57:45.211424+00	6	1
13	2016-09-05 06:50:28.327938+00	2	4
14	2016-09-05 06:51:26.580201+00	1	4
15	2016-09-05 06:51:26.762618+00	3	4
11	2016-09-05 06:54:12.181491+00	6	4
16	2016-09-05 07:05:17.534134+00	6	5
17	2016-09-05 07:05:17.606657+00	5	5
12	2016-09-05 07:14:24.727999+00	5	4
3	2016-09-05 07:15:55.019902+00	5	1
1	2016-09-05 08:04:32.909955+00	1	1
2	2016-09-05 08:04:32.968417+00	3	1
\.


--
-- Name: forum_tracking_forumreadtrack_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('forum_tracking_forumreadtrack_id_seq', 21, true);


--
-- Data for Name: forum_tracking_topicreadtrack; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY forum_tracking_topicreadtrack (id, mark_time, topic_id, user_id) FROM stdin;
24	2016-09-05 08:02:12.095065+00	12	1
\.


--
-- Name: forum_tracking_topicreadtrack_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('forum_tracking_topicreadtrack_id_seq', 27, true);


--
-- Data for Name: home_homepage; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY home_homepage (page_ptr_id, body) FROM stdin;
3	
\.


--
-- Data for Name: home_standardindexpage; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY home_standardindexpage (page_ptr_id, intro) FROM stdin;
21	
\.


--
-- Data for Name: home_standardpage; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY home_standardpage (page_ptr_id, body) FROM stdin;
37	[]
\.


--
-- Data for Name: home_universalblogindexpage; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY home_universalblogindexpage (page_ptr_id, intro) FROM stdin;
38	<p>Scurt sumar al ședințelor CMC + Ședințele Serviciilor Primăriei</p>
39	
\.


--
-- Data for Name: home_universalblogpage; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY home_universalblogpage (page_ptr_id, body, date, feed_image_id) FROM stdin;
31	[]	2016-07-14	\N
35	[]	2016-09-06	\N
36	[]	2016-09-06	\N
\.


--
-- Data for Name: home_universalblogpagerelatedlink; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY home_universalblogpagerelatedlink (id, sort_order, link_external, title, link_document_id, link_page_id, page_id) FROM stdin;
\.


--
-- Name: home_universalblogpagerelatedlink_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('home_universalblogpagerelatedlink_id_seq', 1, false);


--
-- Data for Name: home_universalblogpagestag; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY home_universalblogpagestag (id, content_object_id, tag_id) FROM stdin;
\.


--
-- Name: home_universalblogpagestag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('home_universalblogpagestag_id_seq', 1, false);


--
-- Data for Name: home_urbanblogindexpage; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY home_urbanblogindexpage (page_ptr_id, intro) FROM stdin;
6	
\.


--
-- Data for Name: resources_resourcepage; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY resources_resourcepage (page_ptr_id, description) FROM stdin;
25	<p>Descriere pentru model #1</p>
30	<h5>Info text</h5>
\.


--
-- Data for Name: resources_resourcepagerelateddocument; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY resources_resourcepagerelateddocument (id, sort_order, document_id, page_id) FROM stdin;
1	0	1	25
2	1	2	25
\.


--
-- Name: resources_resourcepagerelateddocument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('resources_resourcepagerelateddocument_id_seq', 2, true);


--
-- Data for Name: resources_resourcesindexpage; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY resources_resourcesindexpage (page_ptr_id) FROM stdin;
28
29
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY taggit_tag (id, name, slug) FROM stdin;
\.


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('taggit_tag_id_seq', 1, false);


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
\.


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('taggit_taggeditem_id_seq', 1, false);


--
-- Data for Name: wagtailcore_collection; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY wagtailcore_collection (id, path, depth, numchild, name) FROM stdin;
1	0001	1	0	Root
\.


--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailcore_collection_id_seq', 2, true);


--
-- Data for Name: wagtailcore_groupcollectionpermission; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) FROM stdin;
1	1	1	1
2	1	2	1
3	1	1	2
4	1	2	2
5	1	1	4
6	1	2	4
7	1	1	5
8	1	2	5
\.


--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailcore_groupcollectionpermission_id_seq', 8, true);


--
-- Data for Name: wagtailcore_grouppagepermission; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) FROM stdin;
1	add	1	1
2	edit	1	1
3	publish	1	1
4	add	2	1
5	edit	2	1
6	lock	1	1
\.


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailcore_grouppagepermission_id_seq', 6, true);


--
-- Data for Name: wagtailcore_page; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY wagtailcore_page (id, path, depth, numchild, title, slug, live, has_unpublished_changes, url_path, seo_title, show_in_menus, search_description, go_live_at, expire_at, expired, content_type_id, owner_id, locked, latest_revision_created_at, first_published_at) FROM stdin;
1	0001	1	1	Root	root	t	f	/		f		\N	\N	f	1	\N	f	\N	\N
38	0001000100030007	4	0	Transparența Administrației Publice Locale	transparenta-administratiei-publice-locale	t	f	/home/resurse/transparenta-administratiei-publice-locale/		t		\N	\N	f	37	1	f	2016-09-05 07:44:43.111562+00	2016-09-05 07:44:43.335338+00
21	000100010003	3	4	Resurse	resurse	t	f	/home/resurse/		t		\N	\N	f	44	1	f	2016-07-27 18:03:24.746376+00	2016-07-27 17:44:45.100132+00
39	0001000100030008	4	0	Publicații ale Rețelei	publicatii-ale-retelei	t	f	/home/resurse/publicatii-ale-retelei/		t		\N	\N	f	37	1	f	2016-09-05 07:52:18.430051+00	2016-09-05 07:51:46.756564+00
30	00010001000300060001	5	0	Ghid #1	ghid-1	t	f	/home/resurse/ghiduri-pentru-activisti/ghid-1/		f		\N	\N	f	46	1	f	2016-07-28 11:08:57.713376+00	2016-07-28 11:08:57.874245+00
29	0001000100030006	4	1	Ghiduri pentru activiști	ghiduri-pentru-activisti	t	f	/home/resurse/ghiduri-pentru-activisti/		t		\N	\N	f	47	1	f	2016-07-28 11:11:47.500995+00	2016-07-28 11:08:15.02512+00
12	0001000100020003	4	1	Membri	membri	t	f	/home/despre/membri/		t		\N	\N	f	40	1	f	2016-07-23 16:15:26.661035+00	2016-07-23 16:13:45.117959+00
6	000100010001	3	1	Știri Urbane	stiri-urbane	t	f	/home/stiri-urbane/		t		\N	\N	f	11	1	f	2016-07-22 17:29:20.548832+00	2016-07-22 17:28:34.933561+00
31	0001000100010001	4	0	Post	post	t	t	/home/stiri-urbane/post/		f		\N	\N	f	8	1	f	2016-09-01 10:10:46.348133+00	2016-07-29 11:17:28.388662+00
28	0001000100030005	4	1	Modele de acte și scrisori	index-nou	t	f	/home/resurse/index-nou/		t		\N	\N	f	47	1	f	2016-07-28 11:06:38.834276+00	2016-07-28 11:00:58.806743+00
25	00010001000300050001	5	0	Model #1	doc-1	t	f	/home/resurse/index-nou/doc-1/		f		\N	\N	f	46	1	f	2016-07-28 10:22:42.3627+00	2016-07-28 10:09:23.800133+00
3	00010001	2	2	Homepage	home	t	f	/home/		f		\N	\N	f	4	\N	f	\N	\N
13	00010001000200030001	5	0	Ilie Postolachi	ilie-postolachi	t	f	/home/despre/membri/ilie-postolachi/		f		\N	\N	f	41	1	f	2016-07-23 16:18:05.544139+00	2016-07-23 16:14:26.145825+00
37	0001000100020002	4	0	Istoric	istoric	t	f	/home/despre/istoric/		t		\N	\N	f	10	1	f	2016-09-05 07:38:19.610758+00	2016-09-05 07:37:25.045245+00
5	0001000100020001	4	1	Știrile rețelei	stirile-retelei	t	f	/home/despre/stirile-retelei/		t		\N	\N	f	13	1	f	2016-07-22 17:33:35.452308+00	2016-07-22 17:26:56.847194+00
36	00010001000200010001	5	0	Post #1	post-1	t	f	/home/despre/stirile-retelei/post-1/		f		\N	\N	f	8	1	f	2016-09-05 07:35:27.672967+00	2016-09-05 07:35:27.840335+00
4	000100010002	3	6	Despre	despre	t	f	/home/despre/		t		\N	\N	f	12	1	f	2016-07-22 17:07:15.479153+00	2016-07-22 17:07:15.619947+00
7	0001000100020005	4	1	Inițiativele rețelei	initiativele-retelei	t	f	/home/despre/initiativele-retelei/		t		\N	\N	f	14	1	f	2016-07-22 17:33:59.04321+00	2016-07-22 17:33:09.226067+00
35	00010001000200050001	5	0	Inițiativa #1	initiativa-1	t	f	/home/despre/initiativele-retelei/initiativa-1/		f		\N	\N	f	8	1	f	2016-09-05 07:33:39.644353+00	2016-09-05 07:33:39.966813+00
14	0001000100020004	4	5	Evenimente în curând	evenimente	t	f	/home/despre/evenimente/		t		\N	\N	f	42	1	f	2016-07-27 13:50:21.547598+00	2016-07-25 16:44:19.296875+00
15	00010001000200040001	5	0	Eveniment #1	eveniment-1	t	f	/home/despre/evenimente/eveniment-1/		f		\N	\N	f	43	1	f	2016-07-27 13:33:43.615246+00	2016-07-25 17:14:33.045101+00
17	00010001000200040003	5	0	May past event	may-past-event	t	f	/home/despre/evenimente/may-past-event/		f		\N	\N	f	43	1	f	2016-07-27 13:36:37.731173+00	2016-07-27 13:36:37.9699+00
16	00010001000200040002	5	0	Eveniment #2	eveniment-2	t	f	/home/despre/evenimente/eveniment-2/		f	Descriere vizibila la pagina de index	\N	\N	f	43	1	f	2016-07-25 17:44:21.039744+00	2016-07-25 17:14:33.045101+00
19	00010001000200040005	5	0	Eveniment nou	28-check	t	f	/home/despre/evenimente/28-check/		f		\N	\N	f	43	1	f	2016-07-27 17:35:47.260214+00	2016-07-27 17:14:35.652609+00
18	00010001000200040004	5	0	Eveniment 2 days long	ev3	t	f	/home/despre/evenimente/ev3/		f		\N	\N	f	43	1	f	2016-07-27 17:36:23.059583+00	2016-07-27 14:57:31.806757+00
\.


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailcore_page_id_seq', 39, true);


--
-- Data for Name: wagtailcore_pagerevision; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY wagtailcore_pagerevision (id, submitted_for_moderation, created_at, content_json, approved_go_live_at, page_id, user_id) FROM stdin;
1	f	2016-07-22 17:07:15.479153+00	{"description": "Este o structur\\u0103-umbrel\\u0103 organizat\\u0103 pe orizontal\\u0103 care va interconecta organiza\\u021biile neguvernamentale, asocia\\u021biile ob\\u0219te\\u0219ti, grupurile de ini\\u021biativ\\u0103 \\u0219i activi\\u0219tii independen\\u021bi preocupa\\u021bi de problemele de dezvoltare urban\\u0103.", "search_description": "", "locked": false, "latest_revision_created_at": null, "slug": "despre", "go_live_at": null, "expired": false, "title": "Despre", "content_type": 12, "show_in_menus": true, "has_unpublished_changes": false, "first_published_at": null, "owner": 1, "depth": 3, "path": "000100010001", "seo_title": "", "expire_at": null, "pk": 4, "live": true, "url_path": "/home/despre/", "numchild": 0}	\N	4	1
7	f	2016-07-22 17:33:09.0881+00	{"pk": 7, "slug": "initiativele-retelei", "owner": 1, "go_live_at": null, "numchild": 0, "search_description": "", "expire_at": null, "content_type": 14, "depth": 4, "path": "0001000100020002", "latest_revision_created_at": null, "intro": "", "live": true, "seo_title": "", "title": "Ini\\u021biativele re\\u021belei", "locked": false, "show_in_menus": false, "expired": false, "url_path": "/home/despre/initiativele-retelei/", "has_unpublished_changes": false, "first_published_at": null}	\N	7	1
4	f	2016-07-22 17:28:34.751603+00	{"search_description": "", "intro": "", "locked": false, "has_unpublished_changes": false, "show_in_menus": false, "slug": "stiri-urbane", "live": true, "first_published_at": null, "url_path": "/home/stiri-urbane/", "pk": 6, "seo_title": "", "depth": 3, "expired": false, "go_live_at": null, "latest_revision_created_at": null, "owner": 1, "path": "000100010002", "expire_at": null, "title": "\\u0218tiri Urbane", "numchild": 0, "content_type": 11}	\N	6	1
6	f	2016-07-22 17:29:20.548832+00	{"search_description": "", "intro": "", "locked": false, "has_unpublished_changes": false, "show_in_menus": true, "slug": "stiri-urbane", "live": true, "first_published_at": "2016-07-22T17:28:34.933Z", "url_path": "/home/stiri-urbane/", "pk": 6, "seo_title": "", "depth": 3, "expired": false, "go_live_at": null, "latest_revision_created_at": "2016-07-22T17:28:34.751Z", "owner": 1, "path": "000100010002", "expire_at": null, "title": "\\u0218tiri Urbane", "numchild": 0, "content_type": 11}	\N	6	1
43	f	2016-07-25 17:40:09.123944+00	{"feed_image": 2, "owner": 1, "time_from": "09:00:00", "title": "Eveniment #1", "numchild": 0, "seo_title": "", "show_in_menus": false, "latest_revision_created_at": "2016-07-25T17:19:33.648Z", "search_description": "", "pk": 15, "locked": false, "date_from": "2016-07-26", "slug": "eveniment-1", "depth": 5, "date_to": null, "time_to": null, "expire_at": null, "go_live_at": null, "url_path": "/home/despre/evenimente/eveniment-1/", "signup_link": "http://urbana.md", "first_published_at": "2016-07-25T17:14:33.045Z", "live": true, "body": "[{\\"type\\": \\"paragraph\\", \\"value\\": \\"<h5><b>Some content</b></h5>\\"}]", "location": "Undeva", "has_unpublished_changes": false, "content_type": 43, "path": "00010001000200040001", "expired": false}	\N	15	1
2	f	2016-07-22 17:26:56.589599+00	{"slug": "stirile-retelei", "pk": 5, "intro": "", "show_in_menus": false, "title": "Stirile retelei", "content_type": 13, "owner": 1, "has_unpublished_changes": false, "seo_title": "", "first_published_at": null, "expire_at": null, "search_description": "", "numchild": 0, "path": "0001000100010001", "url_path": "/home/despre/stirile-retelei/", "go_live_at": null, "latest_revision_created_at": null, "live": true, "expired": false, "locked": false, "depth": 4}	\N	5	1
5	f	2016-07-22 17:28:54.897506+00	{"search_description": "", "intro": "", "locked": false, "has_unpublished_changes": false, "show_in_menus": true, "slug": "stirile-retelei", "live": true, "first_published_at": "2016-07-22T17:26:56.847Z", "url_path": "/home/despre/stirile-retelei/", "pk": 5, "seo_title": "", "depth": 4, "expired": false, "go_live_at": null, "latest_revision_created_at": "2016-07-22T17:27:08.609Z", "owner": 1, "path": "0001000100010001", "expire_at": null, "title": "\\u0218tirile retelei", "numchild": 0, "content_type": 13}	\N	5	1
34	f	2016-07-25 16:44:19.116379+00	{"seo_title": "", "show_in_menus": false, "pk": 14, "numchild": 0, "content_type": 42, "expire_at": null, "title": "Evenimente", "url_path": "/home/despre/evenimente/", "slug": "evenimente", "first_published_at": null, "search_description": "", "expired": false, "owner": 1, "depth": 4, "latest_revision_created_at": null, "locked": false, "live": true, "go_live_at": null, "path": "0001000100020004", "has_unpublished_changes": false}	\N	14	1
3	f	2016-07-22 17:27:08.609687+00	{"slug": "stirile-retelei", "pk": 5, "intro": "", "show_in_menus": true, "title": "Stirile retelei", "content_type": 13, "owner": 1, "has_unpublished_changes": false, "seo_title": "", "first_published_at": "2016-07-22T17:26:56.847Z", "expire_at": null, "search_description": "", "numchild": 0, "path": "0001000100010001", "url_path": "/home/despre/stirile-retelei/", "go_live_at": null, "latest_revision_created_at": "2016-07-22T17:26:56.589Z", "live": true, "expired": false, "locked": false, "depth": 4}	\N	5	1
8	f	2016-07-22 17:33:35.452308+00	{"pk": 5, "slug": "stirile-retelei", "owner": 1, "go_live_at": null, "numchild": 0, "search_description": "", "expire_at": null, "content_type": 13, "depth": 4, "path": "0001000100020001", "latest_revision_created_at": "2016-07-22T17:28:54.897Z", "intro": "", "live": true, "seo_title": "", "title": "\\u0218tirile re\\u021belei", "locked": false, "show_in_menus": true, "expired": false, "url_path": "/home/despre/stirile-retelei/", "has_unpublished_changes": false, "first_published_at": "2016-07-22T17:26:56.847Z"}	\N	5	1
9	f	2016-07-22 17:33:59.04321+00	{"pk": 7, "slug": "initiativele-retelei", "owner": 1, "go_live_at": null, "numchild": 0, "search_description": "", "expire_at": null, "content_type": 14, "depth": 4, "path": "0001000100020002", "latest_revision_created_at": "2016-07-22T17:33:09.088Z", "intro": "", "live": true, "seo_title": "", "title": "Ini\\u021biativele re\\u021belei", "locked": false, "show_in_menus": true, "expired": false, "url_path": "/home/despre/initiativele-retelei/", "has_unpublished_changes": false, "first_published_at": "2016-07-22T17:33:09.226Z"}	\N	7	1
79	f	2016-07-28 11:08:14.86664+00	{"url_path": "/home/resurse/ghiduri-pentru-activisti/", "title": "Ghiduri pentru activi\\u0219ti", "go_live_at": null, "has_unpublished_changes": false, "path": "0001000100030006", "depth": 4, "live": true, "show_in_menus": false, "content_type": 47, "slug": "ghiduri-pentru-activisti", "expire_at": null, "search_description": "", "expired": false, "first_published_at": null, "pk": 29, "latest_revision_created_at": null, "seo_title": "", "numchild": 0, "locked": false, "owner": 1}	\N	29	1
35	f	2016-07-25 16:50:46.495194+00	{"content_type": 42, "slug": "evenimente", "owner": 1, "numchild": 0, "search_description": "", "intro": "<p>Intro despre evenimente (optional)</p>", "has_unpublished_changes": false, "pk": 14, "locked": false, "seo_title": "", "go_live_at": null, "latest_revision_created_at": "2016-07-25T16:44:19.116Z", "expired": false, "live": true, "first_published_at": "2016-07-25T16:44:19.296Z", "title": "Evenimente", "path": "0001000100020004", "url_path": "/home/despre/evenimente/", "depth": 4, "show_in_menus": false, "expire_at": null}	\N	14	1
29	f	2016-07-23 16:13:44.943293+00	{"title": "Membri", "owner": 1, "slug": "membri", "expired": false, "show_in_menus": false, "content_type": 40, "expire_at": null, "pk": 12, "live": true, "go_live_at": null, "seo_title": "", "search_description": "", "numchild": 0, "first_published_at": null, "url_path": "/home/despre/membri/", "depth": 4, "locked": false, "latest_revision_created_at": null, "path": "0001000100020003", "has_unpublished_changes": false}	\N	12	1
46	f	2016-07-25 17:19:33.648909+00	{"feed_image": 1, "owner": 1, "title": "Eveniment #1", "numchild": 0, "content_type": 43, "live": true, "time_from": "09:00:00", "show_in_menus": false, "latest_revision_created_at": "2016-07-25T17:14:32.679Z", "search_description": "", "pk": 16, "seo_title": "", "date_from": "2016-07-26", "slug": "eveniment-1", "depth": 5, "date_to": null, "time_to": null, "expire_at": null, "go_live_at": null, "url_path": "/home/despre/evenimente/eveniment-1/", "first_published_at": "2016-07-25T17:14:33.045Z", "locked": false, "body": "[{\\"type\\": \\"paragraph\\", \\"value\\": \\"<h5><b>Some content</b></h5>\\"}]", "location": "Undeva", "has_unpublished_changes": false, "signup_link": "http://urbana.md", "path": "00010001000200040001", "expired": false}	\N	16	1
45	f	2016-07-25 17:14:32.679459+00	{"locked": false, "owner": 1, "title": "Eveniment #1", "numchild": 0, "content_type": 43, "time_from": "09:00:00", "show_in_menus": false, "latest_revision_created_at": null, "feed_image": null, "search_description": "", "pk": 16, "seo_title": "", "date_from": "2016-07-26", "slug": "eveniment-1", "depth": 5, "date_to": null, "time_to": null, "expire_at": null, "go_live_at": null, "url_path": "/home/despre/evenimente/eveniment-1/", "first_published_at": null, "live": true, "body": "[{\\"value\\": \\"<h5><b>Some content</b></h5>\\", \\"type\\": \\"paragraph\\"}]", "location": "Undeva", "has_unpublished_changes": false, "signup_link": "http://urbana.md", "path": "00010001000200040001", "expired": false}	\N	16	1
44	f	2016-07-25 17:40:09.123944+00	{"feed_image": 2, "owner": 1, "title": "Eveniment #1", "numchild": 0, "content_type": 43, "live": true, "time_from": "09:00:00", "show_in_menus": false, "latest_revision_created_at": "2016-07-25T17:19:33.648Z", "search_description": "", "pk": 16, "seo_title": "", "date_from": "2016-07-26", "slug": "eveniment-1", "depth": 5, "date_to": null, "time_to": null, "expire_at": null, "go_live_at": null, "url_path": "/home/despre/evenimente/eveniment-1/", "first_published_at": "2016-07-25T17:14:33.045Z", "locked": false, "body": "[{\\"type\\": \\"paragraph\\", \\"value\\": \\"<h5><b>Some content</b></h5>\\"}]", "location": "Undeva", "has_unpublished_changes": false, "signup_link": "http://urbana.md", "path": "00010001000200040001", "expired": false}	\N	16	1
65	f	2016-07-27 17:44:44.925587+00	{"numchild": 0, "has_unpublished_changes": false, "expired": false, "search_description": "", "slug": "resurse", "locked": false, "url_path": "/home/resurse/", "latest_revision_created_at": null, "depth": 3, "go_live_at": null, "path": "000100010003", "owner": 1, "expire_at": null, "live": true, "title": "Resurse", "pk": 21, "intro": "", "seo_title": "", "first_published_at": null, "show_in_menus": false, "content_type": 44}	\N	21	1
36	f	2016-07-25 17:14:32.679459+00	{"first_published_at": null, "slug": "eveniment-1", "seo_title": "", "live": true, "has_unpublished_changes": false, "title": "Eveniment #1", "latest_revision_created_at": null, "depth": 5, "date_to": null, "body": "[{\\"value\\": \\"<h5><b>Some content</b></h5>\\", \\"type\\": \\"paragraph\\"}]", "numchild": 0, "owner": 1, "locked": false, "url_path": "/home/despre/evenimente/eveniment-1/", "path": "00010001000200040001", "location": "Undeva", "expired": false, "go_live_at": null, "time_from": "09:00:00", "search_description": "", "signup_link": "http://urbana.md", "time_to": null, "show_in_menus": false, "feed_image": null, "date_from": "2016-07-26", "content_type": 43, "expire_at": null, "pk": 15}	\N	15	1
47	f	2016-07-25 17:40:35.640134+00	{"feed_image": 2, "owner": 1, "time_from": "09:00:00", "title": "Eveniment #2", "numchild": 0, "seo_title": "", "show_in_menus": false, "latest_revision_created_at": "2016-07-25T17:40:09.123Z", "search_description": "", "pk": 16, "locked": false, "date_from": "2016-07-26", "slug": "eveniment-2", "depth": 5, "date_to": null, "time_to": null, "expire_at": null, "go_live_at": null, "url_path": "/home/despre/evenimente/eveniment-2/", "signup_link": "http://urbana.md", "first_published_at": "2016-07-25T17:14:33.045Z", "live": true, "body": "[{\\"type\\": \\"paragraph\\", \\"value\\": \\"<h5><b>Some content</b></h5>\\"}]", "location": "Undeva", "has_unpublished_changes": false, "content_type": 43, "path": "00010001000200040002", "expired": false}	\N	16	1
58	f	2016-07-27 14:57:31.480555+00	{"time_from": "16:00:00", "location": "some", "expired": false, "feed_image": null, "body": "[]", "go_live_at": null, "title": "Ev3", "latest_revision_created_at": null, "path": "00010001000200040004", "date_from": "2016-07-26", "content_type": 43, "date_to": "2016-07-28", "has_unpublished_changes": false, "live": true, "slug": "ev3", "expire_at": null, "time_to": "18:00:00", "signup_link": "", "owner": 1, "numchild": 0, "show_in_menus": false, "first_published_at": null, "depth": 5, "url_path": "/home/despre/evenimente/ev3/", "seo_title": "", "locked": false, "pk": 18, "search_description": ""}	\N	18	1
37	f	2016-07-25 17:19:33.648909+00	{"feed_image": 1, "owner": 1, "time_from": "09:00:00", "title": "Eveniment #1", "numchild": 0, "seo_title": "", "show_in_menus": false, "latest_revision_created_at": "2016-07-25T17:14:32.679Z", "search_description": "", "pk": 15, "locked": false, "date_from": "2016-07-26", "slug": "eveniment-1", "depth": 5, "date_to": null, "time_to": null, "expire_at": null, "go_live_at": null, "url_path": "/home/despre/evenimente/eveniment-1/", "signup_link": "http://urbana.md", "first_published_at": "2016-07-25T17:14:33.045Z", "live": true, "body": "[{\\"type\\": \\"paragraph\\", \\"value\\": \\"<h5><b>Some content</b></h5>\\"}]", "location": "Undeva", "has_unpublished_changes": false, "content_type": 43, "path": "00010001000200040001", "expired": false}	\N	15	1
98	f	2016-09-05 07:44:43.111562+00	{"slug": "transparenta-administratiei-publice-locale", "depth": 4, "pk": 38, "go_live_at": null, "locked": false, "title": "Transparen\\u021ba Administra\\u021biei Publice Locale", "expire_at": null, "seo_title": "", "live": true, "path": "0001000100030007", "numchild": 0, "has_unpublished_changes": false, "latest_revision_created_at": null, "expired": false, "intro": "<p>Scurt sumar al \\u0219edin\\u021belor CMC + \\u0218edin\\u021bele Serviciilor Prim\\u0103riei</p>", "search_description": "", "first_published_at": null, "url_path": "/home/resurse/transparenta-administratiei-publice-locale/", "show_in_menus": true, "owner": 1, "content_type": 37}	\N	38	1
80	f	2016-07-28 11:08:57.713376+00	{"go_live_at": null, "related_documents": [], "live": true, "content_type": 46, "expired": false, "pk": 30, "latest_revision_created_at": null, "seo_title": "", "numchild": 0, "owner": 1, "has_unpublished_changes": false, "title": "Ghid #1", "path": "00010001000300060001", "depth": 5, "locked": false, "show_in_menus": false, "url_path": "/home/resurse/ghiduri-pentru-activisti/ghid-1/", "slug": "ghid-1", "expire_at": null, "search_description": "", "first_published_at": null, "description": "<h5>Info text</h5>"}	\N	30	1
48	f	2016-07-25 17:44:21.039744+00	{"feed_image": 2, "owner": 1, "time_from": "09:00:00", "title": "Eveniment #2", "numchild": 0, "seo_title": "", "show_in_menus": false, "latest_revision_created_at": "2016-07-25T17:40:35.640Z", "search_description": "Descriere vizibila la pagina de index", "pk": 16, "locked": false, "date_from": "2016-07-26", "slug": "eveniment-2", "depth": 5, "date_to": null, "time_to": null, "expire_at": null, "go_live_at": null, "url_path": "/home/despre/evenimente/eveniment-2/", "signup_link": "http://urbana.md", "first_published_at": "2016-07-25T17:14:33.045Z", "live": true, "body": "[{\\"type\\": \\"paragraph\\", \\"value\\": \\"<h5><b>Some content</b></h5>\\"}]", "location": "Undeva", "has_unpublished_changes": false, "content_type": 43, "path": "00010001000200040002", "expired": false}	\N	16	1
59	f	2016-07-27 15:01:12.013454+00	{"time_from": "16:00:00", "location": "some", "expired": false, "feed_image": null, "body": "[]", "go_live_at": null, "title": "Eveniment loooong title", "latest_revision_created_at": "2016-07-27T14:57:31.480Z", "path": "00010001000200040004", "date_from": "2016-07-26", "content_type": 43, "date_to": "2016-07-28", "has_unpublished_changes": false, "live": true, "slug": "ev3", "expire_at": null, "time_to": "18:00:00", "signup_link": "", "owner": 1, "numchild": 0, "show_in_menus": false, "first_published_at": "2016-07-27T14:57:31.806Z", "depth": 5, "url_path": "/home/despre/evenimente/ev3/", "seo_title": "", "locked": false, "pk": 18, "search_description": ""}	\N	18	1
99	f	2016-09-05 07:51:46.60052+00	{"slug": "publicatii-ale-retelei", "depth": 4, "pk": 39, "go_live_at": null, "locked": false, "title": "Publica\\u021bii ale Re\\u021belei", "expire_at": null, "seo_title": "", "live": true, "path": "0001000100030008", "numchild": 0, "has_unpublished_changes": false, "latest_revision_created_at": null, "expired": false, "intro": "", "search_description": "", "first_published_at": null, "url_path": "/home/resurse/publicatii-ale-retelei/", "show_in_menus": false, "owner": 1, "content_type": 37}	\N	39	1
60	f	2016-07-27 17:14:35.487556+00	{"title": "28 check", "live": true, "feed_image": null, "latest_revision_created_at": null, "signup_link": "", "expire_at": null, "expired": false, "slug": "28-check", "locked": false, "show_in_menus": false, "first_published_at": null, "body": "[]", "date_to": null, "has_unpublished_changes": false, "numchild": 0, "url_path": "/home/despre/evenimente/28-check/", "time_to": null, "owner": 1, "content_type": 43, "path": "00010001000200040005", "time_from": null, "date_from": "2016-07-28", "pk": 19, "search_description": "", "go_live_at": null, "seo_title": "", "depth": 5, "location": "loc"}	\N	19	1
49	f	2016-07-25 17:46:44.189823+00	{"feed_image": 2, "owner": 1, "time_from": "09:00:00", "title": "Eveniment #1", "numchild": 0, "seo_title": "", "show_in_menus": false, "latest_revision_created_at": "2016-07-25T17:40:09.123Z", "search_description": "", "pk": 15, "locked": false, "date_from": "2016-07-26", "slug": "eveniment-1", "depth": 5, "date_to": null, "time_to": "21:00:00", "expire_at": null, "go_live_at": null, "url_path": "/home/despre/evenimente/eveniment-1/", "signup_link": "http://urbana.md", "first_published_at": "2016-07-25T17:14:33.045Z", "live": true, "body": "[{\\"type\\": \\"paragraph\\", \\"value\\": \\"<h5><b>Some content</b></h5>\\"}]", "location": "Undeva", "has_unpublished_changes": false, "content_type": 43, "path": "00010001000200040001", "expired": false}	\N	15	1
53	f	2016-07-27 13:33:43.615246+00	{"path": "00010001000200040001", "latest_revision_created_at": "2016-07-25T17:51:22.516Z", "expired": false, "location": "Undeva", "locked": false, "owner": 1, "slug": "eveniment-1", "feed_image": 2, "pk": 15, "show_in_menus": false, "content_type": 43, "url_path": "/home/despre/evenimente/eveniment-1/", "go_live_at": null, "signup_link": "http://urbana.md", "search_description": "", "expire_at": null, "title": "Eveniment #1", "body": "[{\\"type\\": \\"aligned_image\\", \\"value\\": {\\"image\\": 2, \\"caption\\": \\"<p>\\\\u00a0</p>\\", \\"alignment\\": \\"mid\\"}}, {\\"type\\": \\"paragraph\\", \\"value\\": \\"<h5><b>Some content</b></h5>\\"}]", "first_published_at": "2016-07-25T17:14:33.045Z", "has_unpublished_changes": false, "depth": 5, "time_to": "21:00:00", "date_from": "2016-08-25", "date_to": null, "seo_title": "", "live": true, "numchild": 0, "time_from": "09:00:00"}	\N	15	1
38	f	2016-07-25 17:22:28.390858+00	{"locked": false, "owner": 1, "title": "Evenimente", "numchild": 1, "go_live_at": null, "content_type": 42, "expire_at": null, "show_in_menus": false, "url_path": "/home/despre/evenimente/", "latest_revision_created_at": "2016-07-25T16:50:46.495Z", "search_description": "", "pk": 14, "intro": "<h1>Evenimente \\u00een cur\\u00e2nd</h1>", "live": true, "seo_title": "", "first_published_at": "2016-07-25T16:44:19.296Z", "expired": false, "has_unpublished_changes": false, "slug": "evenimente", "path": "0001000100020004", "depth": 4}	\N	14	1
67	f	2016-07-27 18:03:24.746376+00	{"numchild": 1, "has_unpublished_changes": false, "expired": false, "search_description": "", "slug": "resurse", "locked": false, "url_path": "/home/resurse/", "latest_revision_created_at": "2016-07-27T17:44:44.925Z", "depth": 3, "go_live_at": null, "path": "000100010003", "owner": 1, "expire_at": null, "live": true, "title": "Resurse", "pk": 21, "intro": "", "seo_title": "", "first_published_at": "2016-07-27T17:44:45.100Z", "show_in_menus": true, "content_type": 44}	\N	21	1
81	f	2016-07-28 11:11:47.500995+00	{"url_path": "/home/resurse/ghiduri-pentru-activisti/", "title": "Ghiduri pentru activi\\u0219ti", "go_live_at": null, "has_unpublished_changes": false, "path": "0001000100030006", "depth": 4, "live": true, "show_in_menus": true, "content_type": 47, "slug": "ghiduri-pentru-activisti", "expire_at": null, "search_description": "", "expired": false, "first_published_at": "2016-07-28T11:08:15.025Z", "pk": 29, "latest_revision_created_at": "2016-07-28T11:08:14.866Z", "seo_title": "", "numchild": 1, "locked": false, "owner": 1}	\N	29	1
83	f	2016-09-01 10:10:39.966363+00	{"expire_at": null, "latest_revision_created_at": "2016-07-29T11:17:27.991Z", "show_in_menus": false, "first_published_at": "2016-07-29T11:17:28.388Z", "path": "0001000100010001", "feed_image": null, "live": true, "depth": 4, "go_live_at": null, "related_links": [], "owner": 1, "title": "Post", "search_description": "", "expired": false, "slug": "post", "locked": false, "body": "[]", "tagged_items": [], "pk": 31, "date": "2016-07-14", "content_type": 8, "url_path": "/home/stiri-urbane/post/", "seo_title": "", "numchild": 0, "has_unpublished_changes": false}	\N	31	1
94	f	2016-09-05 07:33:39.644353+00	{"slug": "initiativa-1", "depth": 5, "pk": 35, "locked": false, "feed_image": null, "live": true, "path": "00010001000200020001", "tagged_items": [], "has_unpublished_changes": false, "first_published_at": null, "body": "[]", "title": "Ini\\u021biativa #1", "expire_at": null, "latest_revision_created_at": null, "search_description": "", "seo_title": "", "date": "2016-09-06", "owner": 1, "go_live_at": null, "expired": false, "numchild": 0, "url_path": "/home/despre/initiativele-retelei/initiativa-1/", "show_in_menus": false, "related_links": [], "content_type": 8}	\N	35	1
54	f	2016-07-27 13:36:37.731173+00	{"path": "00010001000200040003", "latest_revision_created_at": null, "expired": false, "location": "somewhere", "locked": false, "owner": 1, "slug": "may-past-event", "feed_image": null, "pk": 17, "show_in_menus": false, "content_type": 43, "url_path": "/home/despre/evenimente/may-past-event/", "go_live_at": null, "signup_link": "", "search_description": "", "expire_at": null, "title": "May past event", "body": "[]", "first_published_at": null, "has_unpublished_changes": false, "depth": 5, "time_to": null, "date_from": "2016-05-18", "date_to": "2016-05-26", "seo_title": "", "live": true, "numchild": 0, "time_from": null}	\N	17	1
82	f	2016-07-29 11:17:27.991886+00	{"tagged_items": [], "latest_revision_created_at": null, "depth": 4, "related_links": [], "numchild": 0, "live": true, "has_unpublished_changes": false, "url_path": "/home/stiri-urbane/post/", "slug": "post", "first_published_at": null, "seo_title": "", "go_live_at": null, "feed_image": null, "expired": false, "owner": 1, "date": "2016-07-14", "body": "[]", "locked": false, "search_description": "", "expire_at": null, "path": "0001000100010001", "show_in_menus": false, "content_type": 8, "title": "Post", "pk": 31}	\N	31	1
61	f	2016-07-27 17:15:41.742705+00	{"title": "28 check", "live": true, "feed_image": null, "latest_revision_created_at": "2016-07-27T17:14:35.487Z", "signup_link": "", "expire_at": null, "expired": false, "slug": "28-check", "locked": false, "show_in_menus": false, "first_published_at": "2016-07-27T17:14:35.652Z", "body": "[]", "date_to": null, "has_unpublished_changes": false, "numchild": 0, "url_path": "/home/despre/evenimente/28-check/", "time_to": null, "owner": 1, "content_type": 43, "path": "00010001000200040005", "time_from": null, "date_from": "2016-07-27", "pk": 19, "search_description": "", "go_live_at": null, "seo_title": "", "depth": 5, "location": "loc"}	\N	19	1
50	f	2016-07-25 17:49:23.69016+00	{"feed_image": 2, "owner": 1, "time_from": "09:00:00", "title": "Eveniment #1", "numchild": 0, "seo_title": "", "show_in_menus": false, "latest_revision_created_at": "2016-07-25T17:46:44.189Z", "search_description": "", "pk": 15, "locked": false, "date_from": "2016-07-26", "slug": "eveniment-1", "depth": 5, "date_to": null, "time_to": "21:00:00", "expire_at": null, "go_live_at": null, "url_path": "/home/despre/evenimente/eveniment-1/", "signup_link": "http://urbana.md", "first_published_at": "2016-07-25T17:14:33.045Z", "live": true, "body": "[{\\"type\\": \\"paragraph\\", \\"value\\": \\"<h5><b>Some content</b></h5><p><b><embed alt=\\\\\\"Collab\\\\\\" embedtype=\\\\\\"image\\\\\\" format=\\\\\\"left\\\\\\" id=\\\\\\"2\\\\\\"/><br/></b></p>\\"}]", "location": "Undeva", "has_unpublished_changes": false, "content_type": 43, "path": "00010001000200040001", "expired": false}	\N	15	1
84	f	2016-09-01 10:10:46.348133+00	{"expire_at": null, "latest_revision_created_at": "2016-09-01T10:10:39.966Z", "show_in_menus": false, "first_published_at": "2016-07-29T11:17:28.388Z", "path": "0001000100010001", "feed_image": null, "live": true, "depth": 4, "go_live_at": null, "related_links": [], "owner": 1, "title": "Post", "search_description": "", "expired": false, "slug": "post", "locked": false, "body": "[]", "tagged_items": [], "pk": 31, "date": "2016-07-14", "content_type": 8, "url_path": "/home/stiri-urbane/post/", "seo_title": "", "numchild": 0, "has_unpublished_changes": true}	\N	31	1
39	f	2016-07-25 17:23:17.837447+00	{"locked": false, "owner": 1, "title": "Evenimente", "numchild": 1, "go_live_at": null, "content_type": 42, "expire_at": null, "show_in_menus": false, "url_path": "/home/despre/evenimente/", "latest_revision_created_at": "2016-07-25T17:22:28.390Z", "search_description": "", "pk": 14, "intro": "<p>Evenimente \\u00een cur\\u00e2nd</p>", "live": true, "seo_title": "", "first_published_at": "2016-07-25T16:44:19.296Z", "expired": false, "has_unpublished_changes": false, "slug": "evenimente", "path": "0001000100020004", "depth": 4}	\N	14	1
100	f	2016-09-05 07:52:18.430051+00	{"slug": "publicatii-ale-retelei", "depth": 4, "pk": 39, "go_live_at": null, "locked": false, "title": "Publica\\u021bii ale Re\\u021belei", "expire_at": null, "seo_title": "", "live": true, "path": "0001000100030008", "numchild": 0, "has_unpublished_changes": false, "latest_revision_created_at": "2016-09-05T07:51:46.600Z", "expired": false, "intro": "", "search_description": "", "first_published_at": "2016-09-05T07:51:46.756Z", "url_path": "/home/resurse/publicatii-ale-retelei/", "show_in_menus": true, "owner": 1, "content_type": 37}	\N	39	1
95	f	2016-09-05 07:35:27.672967+00	{"slug": "post-1", "depth": 5, "pk": 36, "locked": false, "feed_image": null, "live": true, "path": "00010001000200010001", "tagged_items": [], "has_unpublished_changes": false, "first_published_at": null, "body": "[]", "title": "Post #1", "expire_at": null, "latest_revision_created_at": null, "search_description": "", "seo_title": "", "date": "2016-09-06", "owner": 1, "go_live_at": null, "expired": false, "numchild": 0, "url_path": "/home/despre/stirile-retelei/post-1/", "show_in_menus": false, "related_links": [], "content_type": 8}	\N	36	1
51	f	2016-07-25 17:50:49.198417+00	{"feed_image": 2, "owner": 1, "time_from": "09:00:00", "title": "Eveniment #1", "numchild": 0, "seo_title": "", "show_in_menus": false, "latest_revision_created_at": "2016-07-25T17:49:23.690Z", "search_description": "", "pk": 15, "locked": false, "date_from": "2016-07-26", "slug": "eveniment-1", "depth": 5, "date_to": null, "time_to": "21:00:00", "expire_at": null, "go_live_at": null, "url_path": "/home/despre/evenimente/eveniment-1/", "signup_link": "http://urbana.md", "first_published_at": "2016-07-25T17:14:33.045Z", "live": true, "body": "[{\\"type\\": \\"aligned_image\\", \\"value\\": {\\"image\\": 2, \\"caption\\": \\"<p>Caption</p>\\", \\"alignment\\": \\"mid\\"}}, {\\"type\\": \\"paragraph\\", \\"value\\": \\"<h5><b>Some content</b></h5>\\"}]", "location": "Undeva", "has_unpublished_changes": false, "content_type": 43, "path": "00010001000200040001", "expired": false}	\N	15	1
55	f	2016-07-27 13:42:53.061082+00	{"numchild": 3, "content_type": 42, "search_description": "", "latest_revision_created_at": "2016-07-25T17:25:24.467Z", "has_unpublished_changes": false, "title": "Evenimente \\u00een cur\\u00e2nd", "first_published_at": "2016-07-25T16:44:19.296Z", "owner": 1, "path": "0001000100020004", "intro": "<p>Descriere index (optional)</p>", "expired": false, "locked": false, "depth": 4, "slug": "evenimente", "expire_at": null, "show_in_menus": true, "url_path": "/home/despre/evenimente/", "seo_title": "", "go_live_at": null, "live": true, "pk": 14}	\N	14	1
62	f	2016-07-27 17:35:47.260214+00	{"depth": 5, "date_to": null, "time_from": null, "pk": 19, "locked": false, "signup_link": "", "first_published_at": "2016-07-27T17:14:35.652Z", "has_unpublished_changes": false, "feed_image": null, "expired": false, "seo_title": "", "date_from": "2016-07-27", "numchild": 0, "body": "[]", "content_type": 43, "slug": "28-check", "go_live_at": null, "show_in_menus": false, "latest_revision_created_at": "2016-07-27T17:15:41.742Z", "path": "00010001000200040005", "owner": 1, "url_path": "/home/despre/evenimente/28-check/", "live": true, "time_to": null, "expire_at": null, "search_description": "", "location": "loc", "title": "Eveniment nou"}	\N	19	1
77	f	2016-07-28 11:00:58.62319+00	{"has_unpublished_changes": false, "content_type": 47, "live": true, "search_description": "", "slug": "index-nou", "numchild": 0, "url_path": "/home/resurse/index-nou/", "title": "Index nou", "latest_revision_created_at": null, "owner": 1, "pk": 28, "seo_title": "", "depth": 4, "first_published_at": null, "expired": false, "show_in_menus": true, "go_live_at": null, "locked": false, "expire_at": null, "path": "0001000100030005"}	\N	28	1
71	f	2016-07-28 10:09:23.605695+00	{"expire_at": null, "has_unpublished_changes": false, "path": "00010001000300030001", "seo_title": "", "live": true, "url_path": "/home/resurse/modele-de-acte-si-scrisori/doc-1/", "show_in_menus": false, "numchild": 0, "content_type": 46, "expired": false, "latest_revision_created_at": null, "locked": false, "owner": 1, "pk": 25, "related_documents": [{"pk": 1, "page": 25, "sort_order": 0, "link_document": 1}], "depth": 5, "search_description": "", "first_published_at": null, "description": "", "go_live_at": null, "title": "Doc #1", "slug": "doc-1"}	\N	25	1
96	f	2016-09-05 07:37:24.870434+00	{"slug": "istoric", "depth": 4, "pk": 37, "go_live_at": null, "locked": false, "title": "Istoric", "expire_at": null, "seo_title": "", "live": true, "body": "[]", "path": "0001000100020005", "numchild": 0, "has_unpublished_changes": false, "latest_revision_created_at": null, "expired": false, "search_description": "", "first_published_at": null, "url_path": "/home/despre/istoric/", "show_in_menus": false, "owner": 1, "content_type": 10}	\N	37	1
40	f	2016-07-25 17:24:28.651024+00	{"locked": false, "owner": 1, "title": "Evenimente \\u00een cur\\u00e2nd", "numchild": 1, "go_live_at": null, "content_type": 42, "expire_at": null, "show_in_menus": false, "url_path": "/home/despre/evenimente/", "latest_revision_created_at": "2016-07-25T17:23:17.837Z", "search_description": "", "pk": 14, "intro": "<p><br/></p>", "live": true, "seo_title": "", "first_published_at": "2016-07-25T16:44:19.296Z", "expired": false, "has_unpublished_changes": false, "slug": "evenimente", "path": "0001000100020004", "depth": 4}	\N	14	1
41	f	2016-07-25 17:24:45.859409+00	{"locked": false, "owner": 1, "title": "Evenimente \\u00een cur\\u00e2nd", "numchild": 1, "go_live_at": null, "content_type": 42, "expire_at": null, "show_in_menus": true, "url_path": "/home/despre/evenimente/", "latest_revision_created_at": "2016-07-25T17:24:28.651Z", "search_description": "", "pk": 14, "intro": "<p><br/></p>", "live": true, "seo_title": "", "first_published_at": "2016-07-25T16:44:19.296Z", "expired": false, "has_unpublished_changes": false, "slug": "evenimente", "path": "0001000100020004", "depth": 4}	\N	14	1
63	f	2016-07-27 17:36:23.059583+00	{"depth": 5, "date_to": "2016-07-28", "time_from": "16:00:00", "pk": 18, "locked": false, "signup_link": "", "first_published_at": "2016-07-27T14:57:31.806Z", "has_unpublished_changes": false, "feed_image": null, "expired": false, "seo_title": "", "date_from": "2016-07-26", "numchild": 0, "body": "[]", "content_type": 43, "slug": "ev3", "go_live_at": null, "show_in_menus": false, "latest_revision_created_at": "2016-07-27T15:01:12.013Z", "path": "00010001000200040004", "owner": 1, "url_path": "/home/despre/evenimente/ev3/", "live": true, "time_to": "18:00:00", "expire_at": null, "search_description": "", "location": "some", "title": "Eveniment 2 days long"}	\N	18	1
52	f	2016-07-25 17:51:22.516848+00	{"feed_image": 2, "owner": 1, "time_from": "09:00:00", "title": "Eveniment #1", "numchild": 0, "seo_title": "", "show_in_menus": false, "latest_revision_created_at": "2016-07-25T17:50:49.198Z", "search_description": "", "pk": 15, "locked": false, "date_from": "2016-07-26", "slug": "eveniment-1", "depth": 5, "date_to": null, "time_to": "21:00:00", "expire_at": null, "go_live_at": null, "url_path": "/home/despre/evenimente/eveniment-1/", "signup_link": "http://urbana.md", "first_published_at": "2016-07-25T17:14:33.045Z", "live": true, "body": "[{\\"type\\": \\"aligned_image\\", \\"value\\": {\\"image\\": 2, \\"caption\\": \\"<p>\\\\u00a0</p>\\", \\"alignment\\": \\"mid\\"}}, {\\"type\\": \\"paragraph\\", \\"value\\": \\"<h5><b>Some content</b></h5>\\"}]", "location": "Undeva", "has_unpublished_changes": false, "content_type": 43, "path": "00010001000200040001", "expired": false}	\N	15	1
72	f	2016-07-28 10:22:42.3627+00	{"title": "Model #1", "expire_at": null, "locked": false, "description": "<p>Descriere pentru model #1</p>", "latest_revision_created_at": "2016-07-28T10:09:23.605Z", "numchild": 0, "has_unpublished_changes": false, "path": "00010001000300030001", "show_in_menus": false, "seo_title": "", "go_live_at": null, "live": true, "pk": 25, "depth": 5, "search_description": "", "url_path": "/home/resurse/modele-de-acte-si-scrisori/doc-1/", "first_published_at": "2016-07-28T10:09:23.800Z", "expired": false, "slug": "doc-1", "content_type": 46, "related_documents": [{"link_document": 1, "sort_order": 0, "page": 25, "pk": 1}, {"link_document": 2, "sort_order": 1, "page": 25, "pk": null}], "owner": 1}	\N	25	1
97	f	2016-09-05 07:38:19.610758+00	{"slug": "istoric", "depth": 4, "pk": 37, "go_live_at": null, "locked": false, "title": "Istoric", "expire_at": null, "seo_title": "", "live": true, "body": "[]", "path": "0001000100020006", "numchild": 0, "has_unpublished_changes": false, "latest_revision_created_at": "2016-09-05T07:37:24.870Z", "expired": false, "search_description": "", "first_published_at": "2016-09-05T07:37:25.045Z", "url_path": "/home/despre/istoric/", "show_in_menus": true, "owner": 1, "content_type": 10}	\N	37	1
78	f	2016-07-28 11:06:38.834276+00	{"url_path": "/home/resurse/index-nou/", "title": "Modele de acte \\u0219i scrisori", "go_live_at": null, "has_unpublished_changes": false, "path": "0001000100030005", "depth": 4, "live": true, "show_in_menus": true, "content_type": 47, "slug": "index-nou", "expire_at": null, "search_description": "", "expired": false, "first_published_at": "2016-07-28T11:00:58.806Z", "pk": 28, "latest_revision_created_at": "2016-07-28T11:00:58.623Z", "seo_title": "", "numchild": 0, "locked": false, "owner": 1}	\N	28	1
31	f	2016-07-23 16:15:26.661035+00	{"title": "Membri", "owner": 1, "slug": "membri", "expired": false, "show_in_menus": true, "content_type": 40, "expire_at": null, "pk": 12, "live": true, "go_live_at": null, "seo_title": "", "search_description": "", "numchild": 1, "first_published_at": "2016-07-23T16:13:45.117Z", "url_path": "/home/despre/membri/", "depth": 4, "locked": false, "latest_revision_created_at": "2016-07-23T16:13:44.943Z", "path": "0001000100020003", "has_unpublished_changes": false}	\N	12	1
42	f	2016-07-25 17:25:24.467487+00	{"locked": false, "owner": 1, "title": "Evenimente \\u00een cur\\u00e2nd", "numchild": 1, "go_live_at": null, "content_type": 42, "expire_at": null, "show_in_menus": true, "url_path": "/home/despre/evenimente/", "latest_revision_created_at": "2016-07-25T17:24:45.859Z", "search_description": "", "pk": 14, "intro": "", "live": true, "seo_title": "", "first_published_at": "2016-07-25T16:44:19.296Z", "expired": false, "has_unpublished_changes": false, "slug": "evenimente", "path": "0001000100020004", "depth": 4}	\N	14	1
57	f	2016-07-27 13:50:21.547598+00	{"numchild": 3, "content_type": 42, "search_description": "", "latest_revision_created_at": "2016-07-27T13:49:43.154Z", "has_unpublished_changes": false, "title": "Evenimente \\u00een cur\\u00e2nd", "first_published_at": "2016-07-25T16:44:19.296Z", "owner": 1, "path": "0001000100020004", "intro": "", "expired": false, "locked": false, "depth": 4, "slug": "evenimente", "expire_at": null, "show_in_menus": true, "url_path": "/home/despre/evenimente/", "seo_title": "", "go_live_at": null, "live": true, "pk": 14}	\N	14	1
33	f	2016-07-23 16:18:05.544139+00	{"title": "Ilie Postolachi", "expired": false, "show_in_menus": false, "pk": 13, "live": true, "description": "<p>Descriere</p>", "go_live_at": null, "email": "ilia.postolachi@gmail.com", "numchild": 0, "intro": "intro", "depth": 5, "latest_revision_created_at": "2016-07-23T16:17:43.378Z", "telephone": "", "owner": 1, "slug": "ilie-postolachi", "content_type": 41, "expire_at": null, "image": 1, "first_published_at": "2016-07-23T16:14:26.145Z", "search_description": "", "last_name": "Postolachi", "seo_title": "", "first_name": "Ilie", "url_path": "/home/despre/membri/ilie-postolachi/", "has_unpublished_changes": false, "path": "00010001000200030001", "locked": false}	\N	13	1
32	f	2016-07-23 16:17:43.378843+00	{"title": "Ilie Postolachi", "expired": false, "show_in_menus": false, "pk": 13, "live": true, "description": "<p>Descriere</p>", "go_live_at": null, "email": "ilia.postolachi@gmail.com", "numchild": 0, "intro": "intro", "depth": 5, "latest_revision_created_at": "2016-07-23T16:14:25.993Z", "telephone": "", "owner": 1, "slug": "ilie-postolachi", "content_type": 41, "expire_at": null, "image": null, "first_published_at": "2016-07-23T16:14:26.145Z", "search_description": "", "last_name": "Postolachi", "seo_title": "", "first_name": "Ilie", "url_path": "/home/despre/membri/ilie-postolachi/", "has_unpublished_changes": false, "path": "00010001000200030001", "locked": false}	\N	13	1
56	f	2016-07-27 13:49:43.154474+00	{"numchild": 3, "content_type": 42, "search_description": "", "latest_revision_created_at": "2016-07-27T13:42:53.061Z", "has_unpublished_changes": false, "title": "Evenimente \\u00een cur\\u00e2nd", "first_published_at": "2016-07-25T16:44:19.296Z", "owner": 1, "path": "0001000100020004", "intro": "<p><br/></p>", "expired": false, "locked": false, "depth": 4, "slug": "evenimente", "expire_at": null, "show_in_menus": true, "url_path": "/home/despre/evenimente/", "seo_title": "", "go_live_at": null, "live": true, "pk": 14}	\N	14	1
30	f	2016-07-23 16:14:25.993293+00	{"title": "Ilie Postolachi", "expired": false, "show_in_menus": false, "pk": 13, "live": true, "description": "", "go_live_at": null, "email": "ilia.postolachi@gmail.com", "numchild": 0, "intro": "", "depth": 5, "latest_revision_created_at": null, "telephone": "", "owner": 1, "slug": "ilie-postolachi", "content_type": 41, "expire_at": null, "image": null, "first_published_at": null, "search_description": "", "last_name": "Postolachi", "seo_title": "", "first_name": "Ilie", "url_path": "/home/despre/membri/ilie-postolachi/", "has_unpublished_changes": false, "path": "00010001000200030001", "locked": false}	\N	13	1
\.


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailcore_pagerevision_id_seq', 100, true);


--
-- Data for Name: wagtailcore_pageviewrestriction; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY wagtailcore_pageviewrestriction (id, password, page_id) FROM stdin;
\.


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailcore_pageviewrestriction_id_seq', 1, false);


--
-- Data for Name: wagtailcore_site; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY wagtailcore_site (id, hostname, port, is_default_site, root_page_id, site_name) FROM stdin;
2	localhost	80	t	3	\N
\.


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailcore_site_id_seq', 2, true);


--
-- Data for Name: wagtaildocs_document; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY wagtaildocs_document (id, title, file, created_at, uploaded_by_user_id, collection_id) FROM stdin;
1	Document #1	documents/roads-and-bridges-the-unseen-labor-behind-our-digital-infrastructure.pdf	2016-07-27 18:05:45.929773+00	1	1
2	Amsterdam doc	documents/Pact-of-Amsterdam_v7_WEB.pdf	2016-07-28 10:22:33.445534+00	1	1
\.


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtaildocs_document_id_seq', 2, true);


--
-- Data for Name: wagtailembeds_embed; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY wagtailembeds_embed (id, url, max_width, type, html, title, author_name, provider_name, thumbnail_url, width, height, last_updated) FROM stdin;
\.


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailembeds_embed_id_seq', 1, false);


--
-- Data for Name: wagtailforms_formsubmission; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY wagtailforms_formsubmission (id, form_data, submit_time, page_id) FROM stdin;
\.


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailforms_formsubmission_id_seq', 1, false);


--
-- Data for Name: wagtailimages_filter; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY wagtailimages_filter (id, spec) FROM stdin;
1	max-165x165
2	original
3	max-800x600
4	width-300
5	width-50
6	width-150
7	width-200
8	width-230
9	width-500
10	width-1280
\.


--
-- Name: wagtailimages_filter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailimages_filter_id_seq', 10, true);


--
-- Data for Name: wagtailimages_image; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY wagtailimages_image (id, title, file, width, height, created_at, focal_point_x, focal_point_y, focal_point_width, focal_point_height, uploaded_by_user_id, file_size, collection_id) FROM stdin;
1	Ilia	original_images/new_size_smaller.png	674	576	2016-07-23 13:39:32.443436+00	258	351	334	318	1	583059	1
2	Collab	original_images/collab_econ.png	711	341	2016-07-25 17:39:59.37184+00	\N	\N	\N	\N	1	\N	1
\.


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailimages_image_id_seq', 2, true);


--
-- Data for Name: wagtailimages_rendition; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY wagtailimages_rendition (id, file, width, height, focal_point_key, filter_id, image_id) FROM stdin;
6	images/new_size_smaller.max-165x165.png	165	141		1	1
7	images/new_size_smaller.width-50.png	50	42		5	1
8	images/new_size_smaller.width-300.png	300	256		4	1
9	images/new_size_smaller.width-150.png	150	128		6	1
10	images/new_size_smaller.width-200.png	200	170		7	1
11	images/new_size_smaller.width-230.png	230	196		8	1
12	images/collab_econ.max-165x165.png	165	79		1	2
13	images/collab_econ.width-150.png	150	71		6	2
14	images/collab_econ.max-800x600.png	711	341		3	2
15	images/collab_econ.width-500.png	500	239		9	2
16	images/collab_econ.width-1280.png	711	341		10	2
\.


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailimages_rendition_id_seq', 16, true);


--
-- Data for Name: wagtailredirects_redirect; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY wagtailredirects_redirect (id, old_path, is_permanent, redirect_link, redirect_page_id, site_id) FROM stdin;
\.


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailredirects_redirect_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_editorspick; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY wagtailsearch_editorspick (id, sort_order, description, page_id, query_id) FROM stdin;
\.


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailsearch_editorspick_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_query; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY wagtailsearch_query (id, query_string) FROM stdin;
\.


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailsearch_query_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_querydailyhits; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY wagtailsearch_querydailyhits (id, date, hits, query_id) FROM stdin;
\.


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailsearch_querydailyhits_id_seq', 1, false);


--
-- Data for Name: wagtailusers_userprofile; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY wagtailusers_userprofile (id, submitted_notifications, approved_notifications, rejected_notifications, user_id) FROM stdin;
1	t	t	t	1
2	t	t	t	2
\.


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailusers_userprofile_id_seq', 2, true);


--
-- Name: about_eventindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY about_eventindexpage
    ADD CONSTRAINT about_eventindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: about_eventpage_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY about_eventpage
    ADD CONSTRAINT about_eventpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: about_initiativesblogindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY about_initiativesblogindexpage
    ADD CONSTRAINT about_initiativesblogindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: about_memberpage_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY about_memberpage
    ADD CONSTRAINT about_memberpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: about_membersindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY about_membersindexpage
    ADD CONSTRAINT about_membersindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: about_networknewsblogindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY about_networknewsblogindexpage
    ADD CONSTRAINT about_networknewsblogindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: about_topmenupage_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY about_topmenupage
    ADD CONSTRAINT about_topmenupage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: forum_attachments_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_attachments_attachment
    ADD CONSTRAINT forum_attachments_attachment_pkey PRIMARY KEY (id);


--
-- Name: forum_conversation_post_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_conversation_post
    ADD CONSTRAINT forum_conversation_post_pkey PRIMARY KEY (id);


--
-- Name: forum_conversation_topic_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_conversation_topic
    ADD CONSTRAINT forum_conversation_topic_pkey PRIMARY KEY (id);


--
-- Name: forum_conversation_topic_subscribers_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_conversation_topic_subscribers
    ADD CONSTRAINT forum_conversation_topic_subscribers_pkey PRIMARY KEY (id);


--
-- Name: forum_conversation_topic_subscribers_topic_id_b2c961d5_uniq; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_conversation_topic_subscribers
    ADD CONSTRAINT forum_conversation_topic_subscribers_topic_id_b2c961d5_uniq UNIQUE (topic_id, user_id);


--
-- Name: forum_forum_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_forum
    ADD CONSTRAINT forum_forum_pkey PRIMARY KEY (id);


--
-- Name: forum_member_forumprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_member_forumprofile
    ADD CONSTRAINT forum_member_forumprofile_pkey PRIMARY KEY (id);


--
-- Name: forum_member_forumprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_member_forumprofile
    ADD CONSTRAINT forum_member_forumprofile_user_id_key UNIQUE (user_id);


--
-- Name: forum_permission_forumpermission_codename_key; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_permission_forumpermission
    ADD CONSTRAINT forum_permission_forumpermission_codename_key UNIQUE (codename);


--
-- Name: forum_permission_forumpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_permission_forumpermission
    ADD CONSTRAINT forum_permission_forumpermission_pkey PRIMARY KEY (id);


--
-- Name: forum_permission_groupforumpermissi_permission_id_a1e477c8_uniq; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_permission_groupforumpermission
    ADD CONSTRAINT forum_permission_groupforumpermissi_permission_id_a1e477c8_uniq UNIQUE (permission_id, forum_id, group_id);


--
-- Name: forum_permission_groupforumpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_permission_groupforumpermission
    ADD CONSTRAINT forum_permission_groupforumpermission_pkey PRIMARY KEY (id);


--
-- Name: forum_permission_userforumpermissio_permission_id_024a3693_uniq; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_permission_userforumpermission
    ADD CONSTRAINT forum_permission_userforumpermissio_permission_id_024a3693_uniq UNIQUE (permission_id, forum_id, user_id);


--
-- Name: forum_permission_userforumpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_permission_userforumpermission
    ADD CONSTRAINT forum_permission_userforumpermission_pkey PRIMARY KEY (id);


--
-- Name: forum_polls_topicpoll_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_polls_topicpoll
    ADD CONSTRAINT forum_polls_topicpoll_pkey PRIMARY KEY (id);


--
-- Name: forum_polls_topicpoll_topic_id_key; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_polls_topicpoll
    ADD CONSTRAINT forum_polls_topicpoll_topic_id_key UNIQUE (topic_id);


--
-- Name: forum_polls_topicpolloption_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_polls_topicpolloption
    ADD CONSTRAINT forum_polls_topicpolloption_pkey PRIMARY KEY (id);


--
-- Name: forum_polls_topicpollvote_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_polls_topicpollvote
    ADD CONSTRAINT forum_polls_topicpollvote_pkey PRIMARY KEY (id);


--
-- Name: forum_tracking_forumreadtrack_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_tracking_forumreadtrack
    ADD CONSTRAINT forum_tracking_forumreadtrack_pkey PRIMARY KEY (id);


--
-- Name: forum_tracking_forumreadtrack_user_id_3e64777a_uniq; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_tracking_forumreadtrack
    ADD CONSTRAINT forum_tracking_forumreadtrack_user_id_3e64777a_uniq UNIQUE (user_id, forum_id);


--
-- Name: forum_tracking_topicreadtrack_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_tracking_topicreadtrack
    ADD CONSTRAINT forum_tracking_topicreadtrack_pkey PRIMARY KEY (id);


--
-- Name: forum_tracking_topicreadtrack_user_id_6fe3e105_uniq; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_tracking_topicreadtrack
    ADD CONSTRAINT forum_tracking_topicreadtrack_user_id_6fe3e105_uniq UNIQUE (user_id, topic_id);


--
-- Name: home_aboutsubpage_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_standardpage
    ADD CONSTRAINT home_aboutsubpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_homepage_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_homepage
    ADD CONSTRAINT home_homepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_standardblogindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_universalblogindexpage
    ADD CONSTRAINT home_standardblogindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_standardindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_standardindexpage
    ADD CONSTRAINT home_standardindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_universalblogpage_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_universalblogpage
    ADD CONSTRAINT home_universalblogpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_universalblogpagerelatedlink_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_universalblogpagerelatedlink
    ADD CONSTRAINT home_universalblogpagerelatedlink_pkey PRIMARY KEY (id);


--
-- Name: home_universalblogpagestag_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_universalblogpagestag
    ADD CONSTRAINT home_universalblogpagestag_pkey PRIMARY KEY (id);


--
-- Name: home_urbanblogindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_urbanblogindexpage
    ADD CONSTRAINT home_urbanblogindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: resources_resourcepage_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY resources_resourcepage
    ADD CONSTRAINT resources_resourcepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: resources_resourcepagerelateddocument_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY resources_resourcepagerelateddocument
    ADD CONSTRAINT resources_resourcepagerelateddocument_pkey PRIMARY KEY (id);


--
-- Name: resources_resourcesindexpage_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY resources_resourcesindexpage
    ADD CONSTRAINT resources_resourcesindexpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collection_path_key; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_path_key UNIQUE (path);


--
-- Name: wagtailcore_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_groupcollectionpermission_group_id_a21cefe9_uniq; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_group_id_a21cefe9_uniq UNIQUE (group_id, collection_id, permission_id);


--
-- Name: wagtailcore_groupcollectionpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_grouppagepermission_group_id_0898bdf8_uniq; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_group_id_0898bdf8_uniq UNIQUE (group_id, page_id, permission_type);


--
-- Name: wagtailcore_grouppagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_page_path_key; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_path_key UNIQUE (path);


--
-- Name: wagtailcore_page_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pagerevision_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_site_hostname_2c626d70_uniq; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_hostname_2c626d70_uniq UNIQUE (hostname, port);


--
-- Name: wagtailcore_site_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_pkey PRIMARY KEY (id);


--
-- Name: wagtaildocs_document_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed_url_8a2922d8_uniq; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_url_8a2922d8_uniq UNIQUE (url, max_width);


--
-- Name: wagtailforms_formsubmission_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmission_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_filter_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailimages_filter
    ADD CONSTRAINT wagtailimages_filter_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_filter_spec_42ad6e02_uniq; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailimages_filter
    ADD CONSTRAINT wagtailimages_filter_spec_42ad6e02_uniq UNIQUE (spec);


--
-- Name: wagtailimages_image_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_rendition_image_id_03110280_uniq; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_image_id_03110280_uniq UNIQUE (image_id, filter_id, focal_point_key);


--
-- Name: wagtailimages_rendition_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_pkey PRIMARY KEY (id);


--
-- Name: wagtailredirects_redirect_old_path_783622d7_uniq; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_old_path_783622d7_uniq UNIQUE (old_path, site_id);


--
-- Name: wagtailredirects_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_editorspick_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editorspick_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query_query_string_key; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_query_string_key UNIQUE (query_string);


--
-- Name: wagtailsearch_querydailyhits_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_querydailyhits_query_id_1dd232e6_uniq; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_query_id_1dd232e6_uniq UNIQUE (query_id, date);


--
-- Name: wagtailusers_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_pkey PRIMARY KEY (id);


--
-- Name: wagtailusers_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_key UNIQUE (user_id);


--
-- Name: about_eventpage_92482941; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX about_eventpage_92482941 ON about_eventpage USING btree (feed_image_id);


--
-- Name: about_memberpage_f33175e6; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX about_memberpage_f33175e6 ON about_memberpage USING btree (image_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: forum_attachments_attachment_f3aa1999; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_attachments_attachment_f3aa1999 ON forum_attachments_attachment USING btree (post_id);


--
-- Name: forum_conversation_post_19b4d727; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_conversation_post_19b4d727 ON forum_conversation_post USING btree (topic_id);


--
-- Name: forum_conversation_post_9b86e5fe; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_conversation_post_9b86e5fe ON forum_conversation_post USING btree (poster_id);


--
-- Name: forum_conversation_post_9ccf0ba6; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_conversation_post_9ccf0ba6 ON forum_conversation_post USING btree (updated_by_id);


--
-- Name: forum_conversation_post_approved_a1090910_uniq; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_conversation_post_approved_a1090910_uniq ON forum_conversation_post USING btree (approved);


--
-- Name: forum_conversation_topic_19bc3ff1; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_conversation_topic_19bc3ff1 ON forum_conversation_topic USING btree (forum_id);


--
-- Name: forum_conversation_topic_2dbcba41; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_conversation_topic_2dbcba41 ON forum_conversation_topic USING btree (slug);


--
-- Name: forum_conversation_topic_599dcce2; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_conversation_topic_599dcce2 ON forum_conversation_topic USING btree (type);


--
-- Name: forum_conversation_topic_9acb4454; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_conversation_topic_9acb4454 ON forum_conversation_topic USING btree (status);


--
-- Name: forum_conversation_topic_9b86e5fe; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_conversation_topic_9b86e5fe ON forum_conversation_topic USING btree (poster_id);


--
-- Name: forum_conversation_topic_approved_ad3fcbf9_uniq; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_conversation_topic_approved_ad3fcbf9_uniq ON forum_conversation_topic USING btree (approved);


--
-- Name: forum_conversation_topic_slug_c74ce2cc_like; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_conversation_topic_slug_c74ce2cc_like ON forum_conversation_topic USING btree (slug varchar_pattern_ops);


--
-- Name: forum_conversation_topic_subscribers_19b4d727; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_conversation_topic_subscribers_19b4d727 ON forum_conversation_topic_subscribers USING btree (topic_id);


--
-- Name: forum_conversation_topic_subscribers_e8701ad4; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_conversation_topic_subscribers_e8701ad4 ON forum_conversation_topic_subscribers USING btree (user_id);


--
-- Name: forum_forum_2dbcba41; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_forum_2dbcba41 ON forum_forum USING btree (slug);


--
-- Name: forum_forum_3cfbd988; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_forum_3cfbd988 ON forum_forum USING btree (rght);


--
-- Name: forum_forum_599dcce2; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_forum_599dcce2 ON forum_forum USING btree (type);


--
-- Name: forum_forum_656442a0; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_forum_656442a0 ON forum_forum USING btree (tree_id);


--
-- Name: forum_forum_6be37982; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_forum_6be37982 ON forum_forum USING btree (parent_id);


--
-- Name: forum_forum_c9e9a848; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_forum_c9e9a848 ON forum_forum USING btree (level);


--
-- Name: forum_forum_caf7cc51; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_forum_caf7cc51 ON forum_forum USING btree (lft);


--
-- Name: forum_forum_slug_b9acc50d_like; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_forum_slug_b9acc50d_like ON forum_forum USING btree (slug varchar_pattern_ops);


--
-- Name: forum_permission_forumpermission_codename_78cffcaf_like; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_permission_forumpermission_codename_78cffcaf_like ON forum_permission_forumpermission USING btree (codename varchar_pattern_ops);


--
-- Name: forum_permission_forumpermission_is_global_5772ce17_uniq; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_permission_forumpermission_is_global_5772ce17_uniq ON forum_permission_forumpermission USING btree (is_global);


--
-- Name: forum_permission_forumpermission_is_local_92cef3ca_uniq; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_permission_forumpermission_is_local_92cef3ca_uniq ON forum_permission_forumpermission USING btree (is_local);


--
-- Name: forum_permission_groupforumpermission_0e939a4f; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_permission_groupforumpermission_0e939a4f ON forum_permission_groupforumpermission USING btree (group_id);


--
-- Name: forum_permission_groupforumpermission_19bc3ff1; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_permission_groupforumpermission_19bc3ff1 ON forum_permission_groupforumpermission USING btree (forum_id);


--
-- Name: forum_permission_groupforumpermission_8373b171; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_permission_groupforumpermission_8373b171 ON forum_permission_groupforumpermission USING btree (permission_id);


--
-- Name: forum_permission_groupforumpermission_has_perm_48cae01d_uniq; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_permission_groupforumpermission_has_perm_48cae01d_uniq ON forum_permission_groupforumpermission USING btree (has_perm);


--
-- Name: forum_permission_userforumpermissi_anonymous_user_8aabbd9d_uniq; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_permission_userforumpermissi_anonymous_user_8aabbd9d_uniq ON forum_permission_userforumpermission USING btree (anonymous_user);


--
-- Name: forum_permission_userforumpermission_19bc3ff1; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_permission_userforumpermission_19bc3ff1 ON forum_permission_userforumpermission USING btree (forum_id);


--
-- Name: forum_permission_userforumpermission_8373b171; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_permission_userforumpermission_8373b171 ON forum_permission_userforumpermission USING btree (permission_id);


--
-- Name: forum_permission_userforumpermission_e8701ad4; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_permission_userforumpermission_e8701ad4 ON forum_permission_userforumpermission USING btree (user_id);


--
-- Name: forum_permission_userforumpermission_has_perm_1b5ee7ac_uniq; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_permission_userforumpermission_has_perm_1b5ee7ac_uniq ON forum_permission_userforumpermission USING btree (has_perm);


--
-- Name: forum_polls_topicpolloption_582e9e5a; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_polls_topicpolloption_582e9e5a ON forum_polls_topicpolloption USING btree (poll_id);


--
-- Name: forum_polls_topicpollvote_49fb0f8b; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_polls_topicpollvote_49fb0f8b ON forum_polls_topicpollvote USING btree (voter_id);


--
-- Name: forum_polls_topicpollvote_cca085ab; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_polls_topicpollvote_cca085ab ON forum_polls_topicpollvote USING btree (poll_option_id);


--
-- Name: forum_tracking_forumreadtrack_19bc3ff1; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_tracking_forumreadtrack_19bc3ff1 ON forum_tracking_forumreadtrack USING btree (forum_id);


--
-- Name: forum_tracking_forumreadtrack_e8701ad4; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_tracking_forumreadtrack_e8701ad4 ON forum_tracking_forumreadtrack USING btree (user_id);


--
-- Name: forum_tracking_forumreadtrack_mark_time_72eec39e_uniq; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_tracking_forumreadtrack_mark_time_72eec39e_uniq ON forum_tracking_forumreadtrack USING btree (mark_time);


--
-- Name: forum_tracking_topicreadtrack_19b4d727; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_tracking_topicreadtrack_19b4d727 ON forum_tracking_topicreadtrack USING btree (topic_id);


--
-- Name: forum_tracking_topicreadtrack_e8701ad4; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_tracking_topicreadtrack_e8701ad4 ON forum_tracking_topicreadtrack USING btree (user_id);


--
-- Name: forum_tracking_topicreadtrack_mark_time_7dafc483_uniq; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX forum_tracking_topicreadtrack_mark_time_7dafc483_uniq ON forum_tracking_topicreadtrack USING btree (mark_time);


--
-- Name: home_universalblogpage_92482941; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX home_universalblogpage_92482941 ON home_universalblogpage USING btree (feed_image_id);


--
-- Name: home_universalblogpagerelatedlink_121087a8; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX home_universalblogpagerelatedlink_121087a8 ON home_universalblogpagerelatedlink USING btree (link_document_id);


--
-- Name: home_universalblogpagerelatedlink_1a63c800; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX home_universalblogpagerelatedlink_1a63c800 ON home_universalblogpagerelatedlink USING btree (page_id);


--
-- Name: home_universalblogpagerelatedlink_5b76e141; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX home_universalblogpagerelatedlink_5b76e141 ON home_universalblogpagerelatedlink USING btree (link_page_id);


--
-- Name: home_universalblogpagestag_09a80f33; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX home_universalblogpagestag_09a80f33 ON home_universalblogpagestag USING btree (content_object_id);


--
-- Name: home_universalblogpagestag_76f094bc; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX home_universalblogpagestag_76f094bc ON home_universalblogpagestag USING btree (tag_id);


--
-- Name: resources_resourcepagerelateddocument_121087a8; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX resources_resourcepagerelateddocument_121087a8 ON resources_resourcepagerelateddocument USING btree (document_id);


--
-- Name: resources_resourcepagerelateddocument_1a63c800; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX resources_resourcepagerelateddocument_1a63c800 ON resources_resourcepagerelateddocument USING btree (page_id);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_417f1b1c; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX taggit_taggeditem_417f1b1c ON taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_76f094bc; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX taggit_taggeditem_76f094bc ON taggit_taggeditem USING btree (tag_id);


--
-- Name: taggit_taggeditem_af31437c; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX taggit_taggeditem_af31437c ON taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_content_type_id_196cc965_idx; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX taggit_taggeditem_content_type_id_196cc965_idx ON taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: wagtailcore_collection_path_d848dc19_like; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_collection_path_d848dc19_like ON wagtailcore_collection USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_groupcollectionpermission_0a1a4dd8; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_groupcollectionpermission_0a1a4dd8 ON wagtailcore_groupcollectionpermission USING btree (collection_id);


--
-- Name: wagtailcore_groupcollectionpermission_0e939a4f; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_groupcollectionpermission_0e939a4f ON wagtailcore_groupcollectionpermission USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_8373b171; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_groupcollectionpermission_8373b171 ON wagtailcore_groupcollectionpermission USING btree (permission_id);


--
-- Name: wagtailcore_grouppagepermission_0e939a4f; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_grouppagepermission_0e939a4f ON wagtailcore_grouppagepermission USING btree (group_id);


--
-- Name: wagtailcore_grouppagepermission_1a63c800; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_grouppagepermission_1a63c800 ON wagtailcore_grouppagepermission USING btree (page_id);


--
-- Name: wagtailcore_page_2dbcba41; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_page_2dbcba41 ON wagtailcore_page USING btree (slug);


--
-- Name: wagtailcore_page_417f1b1c; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_page_417f1b1c ON wagtailcore_page USING btree (content_type_id);


--
-- Name: wagtailcore_page_5e7b1936; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_page_5e7b1936 ON wagtailcore_page USING btree (owner_id);


--
-- Name: wagtailcore_page_first_published_at_2b5dd637_uniq; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_page_first_published_at_2b5dd637_uniq ON wagtailcore_page USING btree (first_published_at);


--
-- Name: wagtailcore_page_path_98eba2c8_like; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_page_path_98eba2c8_like ON wagtailcore_page USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_page_slug_e7c11b8f_like; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f_like ON wagtailcore_page USING btree (slug varchar_pattern_ops);


--
-- Name: wagtailcore_pagerevision_1a63c800; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_pagerevision_1a63c800 ON wagtailcore_pagerevision USING btree (page_id);


--
-- Name: wagtailcore_pagerevision_e8701ad4; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_pagerevision_e8701ad4 ON wagtailcore_pagerevision USING btree (user_id);


--
-- Name: wagtailcore_pagerevision_submitted_for_moderation_c682e44c_uniq; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_pagerevision_submitted_for_moderation_c682e44c_uniq ON wagtailcore_pagerevision USING btree (submitted_for_moderation);


--
-- Name: wagtailcore_pageviewrestriction_1a63c800; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_pageviewrestriction_1a63c800 ON wagtailcore_pageviewrestriction USING btree (page_id);


--
-- Name: wagtailcore_site_0897acf4; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_site_0897acf4 ON wagtailcore_site USING btree (hostname);


--
-- Name: wagtailcore_site_8372b497; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_site_8372b497 ON wagtailcore_site USING btree (root_page_id);


--
-- Name: wagtailcore_site_hostname_96b20b46_like; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailcore_site_hostname_96b20b46_like ON wagtailcore_site USING btree (hostname varchar_pattern_ops);


--
-- Name: wagtaildocs_document_0a1a4dd8; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtaildocs_document_0a1a4dd8 ON wagtaildocs_document USING btree (collection_id);


--
-- Name: wagtaildocs_document_ef01e2b6; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtaildocs_document_ef01e2b6 ON wagtaildocs_document USING btree (uploaded_by_user_id);


--
-- Name: wagtailforms_formsubmission_1a63c800; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailforms_formsubmission_1a63c800 ON wagtailforms_formsubmission USING btree (page_id);


--
-- Name: wagtailimages_image_0a1a4dd8; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailimages_image_0a1a4dd8 ON wagtailimages_image USING btree (collection_id);


--
-- Name: wagtailimages_image_created_at_86fa6cd4_uniq; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailimages_image_created_at_86fa6cd4_uniq ON wagtailimages_image USING btree (created_at);


--
-- Name: wagtailimages_image_ef01e2b6; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailimages_image_ef01e2b6 ON wagtailimages_image USING btree (uploaded_by_user_id);


--
-- Name: wagtailimages_rendition_0a317463; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailimages_rendition_0a317463 ON wagtailimages_rendition USING btree (filter_id);


--
-- Name: wagtailimages_rendition_f33175e6; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailimages_rendition_f33175e6 ON wagtailimages_rendition USING btree (image_id);


--
-- Name: wagtailredirects_redirect_2fd79f37; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailredirects_redirect_2fd79f37 ON wagtailredirects_redirect USING btree (redirect_page_id);


--
-- Name: wagtailredirects_redirect_9365d6e7; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailredirects_redirect_9365d6e7 ON wagtailredirects_redirect USING btree (site_id);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b_like; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b_like ON wagtailredirects_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: wagtailsearch_editorspick_0bbeda9c; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailsearch_editorspick_0bbeda9c ON wagtailsearch_editorspick USING btree (query_id);


--
-- Name: wagtailsearch_editorspick_1a63c800; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailsearch_editorspick_1a63c800 ON wagtailsearch_editorspick USING btree (page_id);


--
-- Name: wagtailsearch_query_query_string_e785ea07_like; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailsearch_query_query_string_e785ea07_like ON wagtailsearch_query USING btree (query_string varchar_pattern_ops);


--
-- Name: wagtailsearch_querydailyhits_0bbeda9c; Type: INDEX; Schema: public; Owner: urbana_db_user
--

CREATE INDEX wagtailsearch_querydailyhits_0bbeda9c ON wagtailsearch_querydailyhits USING btree (query_id);


--
-- Name: D1f60c67a4a37d7d07e7200ae35df3cd; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_universalblogpagestag
    ADD CONSTRAINT "D1f60c67a4a37d7d07e7200ae35df3cd" FOREIGN KEY (content_object_id) REFERENCES home_universalblogpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: about_eventindexpag_page_ptr_id_3b6e9a81_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY about_eventindexpage
    ADD CONSTRAINT about_eventindexpag_page_ptr_id_3b6e9a81_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: about_eventpag_feed_image_id_cb9f7e70_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY about_eventpage
    ADD CONSTRAINT about_eventpag_feed_image_id_cb9f7e70_fk_wagtailimages_image_id FOREIGN KEY (feed_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: about_eventpage_page_ptr_id_e204aeef_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY about_eventpage
    ADD CONSTRAINT about_eventpage_page_ptr_id_e204aeef_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: about_initiativesbl_page_ptr_id_cebeecac_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY about_initiativesblogindexpage
    ADD CONSTRAINT about_initiativesbl_page_ptr_id_cebeecac_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: about_memberpage_image_id_7b5898ca_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY about_memberpage
    ADD CONSTRAINT about_memberpage_image_id_7b5898ca_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: about_memberpage_page_ptr_id_9b78c063_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY about_memberpage
    ADD CONSTRAINT about_memberpage_page_ptr_id_9b78c063_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: about_membersindexp_page_ptr_id_5bcb9e44_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY about_membersindexpage
    ADD CONSTRAINT about_membersindexp_page_ptr_id_5bcb9e44_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: about_networknewsbl_page_ptr_id_970fca93_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY about_networknewsblogindexpage
    ADD CONSTRAINT about_networknewsbl_page_ptr_id_970fca93_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: about_topmenupage_page_ptr_id_1d020729_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY about_topmenupage
    ADD CONSTRAINT about_topmenupage_page_ptr_id_1d020729_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: f_permission_id_2475fe70_fk_forum_permission_forumpermission_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_permission_groupforumpermission
    ADD CONSTRAINT f_permission_id_2475fe70_fk_forum_permission_forumpermission_id FOREIGN KEY (permission_id) REFERENCES forum_permission_forumpermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: f_permission_id_9090e930_fk_forum_permission_forumpermission_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_permission_userforumpermission
    ADD CONSTRAINT f_permission_id_9090e930_fk_forum_permission_forumpermission_id FOREIGN KEY (permission_id) REFERENCES forum_permission_forumpermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_attachment_post_id_0476a843_fk_forum_conversation_post_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_attachments_attachment
    ADD CONSTRAINT forum_attachment_post_id_0476a843_fk_forum_conversation_post_id FOREIGN KEY (post_id) REFERENCES forum_conversation_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_conversa_topic_id_34ebca87_fk_forum_conversation_topic_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_conversation_topic_subscribers
    ADD CONSTRAINT forum_conversa_topic_id_34ebca87_fk_forum_conversation_topic_id FOREIGN KEY (topic_id) REFERENCES forum_conversation_topic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_conversa_topic_id_f6aaa418_fk_forum_conversation_topic_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_conversation_post
    ADD CONSTRAINT forum_conversa_topic_id_f6aaa418_fk_forum_conversation_topic_id FOREIGN KEY (topic_id) REFERENCES forum_conversation_topic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_conversation_post_poster_id_19c4e995_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_conversation_post
    ADD CONSTRAINT forum_conversation_post_poster_id_19c4e995_fk_auth_user_id FOREIGN KEY (poster_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_conversation_post_updated_by_id_86093355_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_conversation_post
    ADD CONSTRAINT forum_conversation_post_updated_by_id_86093355_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_conversation_topic_forum_id_e9cfe592_fk_forum_forum_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_conversation_topic
    ADD CONSTRAINT forum_conversation_topic_forum_id_e9cfe592_fk_forum_forum_id FOREIGN KEY (forum_id) REFERENCES forum_forum(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_conversation_topic_poster_id_0dd4fa07_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_conversation_topic
    ADD CONSTRAINT forum_conversation_topic_poster_id_0dd4fa07_fk_auth_user_id FOREIGN KEY (poster_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_conversation_topic_subsc_user_id_7e386a79_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_conversation_topic_subscribers
    ADD CONSTRAINT forum_conversation_topic_subsc_user_id_7e386a79_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_forum_parent_id_22edea05_fk_forum_forum_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_forum
    ADD CONSTRAINT forum_forum_parent_id_22edea05_fk_forum_forum_id FOREIGN KEY (parent_id) REFERENCES forum_forum(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_member_forumprofile_user_id_9d6b9b6b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_member_forumprofile
    ADD CONSTRAINT forum_member_forumprofile_user_id_9d6b9b6b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_permission_groupforum_forum_id_d59d5cac_fk_forum_forum_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_permission_groupforumpermission
    ADD CONSTRAINT forum_permission_groupforum_forum_id_d59d5cac_fk_forum_forum_id FOREIGN KEY (forum_id) REFERENCES forum_forum(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_permission_groupforump_group_id_b515635b_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_permission_groupforumpermission
    ADD CONSTRAINT forum_permission_groupforump_group_id_b515635b_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_permission_userforump_forum_id_f781f4d6_fk_forum_forum_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_permission_userforumpermission
    ADD CONSTRAINT forum_permission_userforump_forum_id_f781f4d6_fk_forum_forum_id FOREIGN KEY (forum_id) REFERENCES forum_forum(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_permission_userforumperm_user_id_8106d02d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_permission_userforumpermission
    ADD CONSTRAINT forum_permission_userforumperm_user_id_8106d02d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_poll_option_id_a075b665_fk_forum_polls_topicpolloption_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_polls_topicpollvote
    ADD CONSTRAINT forum_poll_option_id_a075b665_fk_forum_polls_topicpolloption_id FOREIGN KEY (poll_option_id) REFERENCES forum_polls_topicpolloption(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_polls_to_topic_id_1b827b83_fk_forum_conversation_topic_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_polls_topicpoll
    ADD CONSTRAINT forum_polls_to_topic_id_1b827b83_fk_forum_conversation_topic_id FOREIGN KEY (topic_id) REFERENCES forum_conversation_topic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_polls_topicp_poll_id_a54cbd58_fk_forum_polls_topicpoll_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_polls_topicpolloption
    ADD CONSTRAINT forum_polls_topicp_poll_id_a54cbd58_fk_forum_polls_topicpoll_id FOREIGN KEY (poll_id) REFERENCES forum_polls_topicpoll(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_polls_topicpollvote_voter_id_0a287559_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_polls_topicpollvote
    ADD CONSTRAINT forum_polls_topicpollvote_voter_id_0a287559_fk_auth_user_id FOREIGN KEY (voter_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_tracking_forumreadtra_forum_id_bbd3fb47_fk_forum_forum_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_tracking_forumreadtrack
    ADD CONSTRAINT forum_tracking_forumreadtra_forum_id_bbd3fb47_fk_forum_forum_id FOREIGN KEY (forum_id) REFERENCES forum_forum(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_tracking_forumreadtrack_user_id_932d4605_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_tracking_forumreadtrack
    ADD CONSTRAINT forum_tracking_forumreadtrack_user_id_932d4605_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_tracking_topic_id_9a53bd45_fk_forum_conversation_topic_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_tracking_topicreadtrack
    ADD CONSTRAINT forum_tracking_topic_id_9a53bd45_fk_forum_conversation_topic_id FOREIGN KEY (topic_id) REFERENCES forum_conversation_topic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forum_tracking_topicreadtrack_user_id_2762562b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY forum_tracking_topicreadtrack
    ADD CONSTRAINT forum_tracking_topicreadtrack_user_id_2762562b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_aboutsubpage_page_ptr_id_797a6d7f_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_standardpage
    ADD CONSTRAINT home_aboutsubpage_page_ptr_id_797a6d7f_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_homepage
    ADD CONSTRAINT home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_standardblogin_page_ptr_id_33c04693_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_universalblogindexpage
    ADD CONSTRAINT home_standardblogin_page_ptr_id_33c04693_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_standardindexp_page_ptr_id_79ae3907_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_standardindexpage
    ADD CONSTRAINT home_standardindexp_page_ptr_id_79ae3907_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_uni_page_id_33653d7e_fk_home_universalblogpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_universalblogpagerelatedlink
    ADD CONSTRAINT home_uni_page_id_33653d7e_fk_home_universalblogpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES home_universalblogpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_unive_link_document_id_b0733127_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_universalblogpagerelatedlink
    ADD CONSTRAINT home_unive_link_document_id_b0733127_fk_wagtaildocs_document_id FOREIGN KEY (link_document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_universal_feed_image_id_296aaa6d_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_universalblogpage
    ADD CONSTRAINT home_universal_feed_image_id_296aaa6d_fk_wagtailimages_image_id FOREIGN KEY (feed_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_universalblog_link_page_id_6b8e9966_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_universalblogpagerelatedlink
    ADD CONSTRAINT home_universalblog_link_page_id_6b8e9966_fk_wagtailcore_page_id FOREIGN KEY (link_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_universalblogp_page_ptr_id_c92bbcb8_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_universalblogpage
    ADD CONSTRAINT home_universalblogp_page_ptr_id_c92bbcb8_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_universalblogpagestag_tag_id_c25bfe06_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_universalblogpagestag
    ADD CONSTRAINT home_universalblogpagestag_tag_id_c25bfe06_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_urbanblogindex_page_ptr_id_3c2de586_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY home_urbanblogindexpage
    ADD CONSTRAINT home_urbanblogindex_page_ptr_id_3c2de586_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resource_page_id_cf50f963_fk_resources_resourcepage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY resources_resourcepagerelateddocument
    ADD CONSTRAINT resource_page_id_cf50f963_fk_resources_resourcepage_page_ptr_id FOREIGN KEY (page_id) REFERENCES resources_resourcepage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resources_resou_document_id_ec420fd5_fk_wagtaildocs_document_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY resources_resourcepagerelateddocument
    ADD CONSTRAINT resources_resou_document_id_ec420fd5_fk_wagtaildocs_document_id FOREIGN KEY (document_id) REFERENCES wagtaildocs_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resources_resourcep_page_ptr_id_3d1d3034_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY resources_resourcepage
    ADD CONSTRAINT resources_resourcep_page_ptr_id_3d1d3034_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resources_resources_page_ptr_id_8060f6bf_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY resources_resourcesindexpage
    ADD CONSTRAINT resources_resources_page_ptr_id_8060f6bf_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_tagge_content_type_id_9957a03c_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_tagge_content_type_id_9957a03c_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore__content_type_id_c28424df_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore__content_type_id_c28424df_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collection_id_5423575a_fk_wagtailcore_collection_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_collection_id_5423575a_fk_wagtailcore_collection_id FOREIGN KEY (collection_id) REFERENCES wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupc_permission_id_1b626275_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupc_permission_id_1b626275_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionp_group_id_05d61460_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionp_group_id_05d61460_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepe_page_id_710b114a_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepe_page_id_710b114a_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepermiss_group_id_fc07e671_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermiss_group_id_fc07e671_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevisio_page_id_d421cc1d_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevisio_page_id_d421cc1d_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewres_page_id_15a8bea6_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewres_page_id_15a8bea6_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id FOREIGN KEY (root_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_collection_id_23881625_fk_wagtailcore_collection_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_collection_id_23881625_fk_wagtailcore_collection_id FOREIGN KEY (collection_id) REFERENCES wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_docume_uploaded_by_user_id_17258b41_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_docume_uploaded_by_user_id_17258b41_fk_auth_user_id FOREIGN KEY (uploaded_by_user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailforms_formsubmis_page_id_e48e93e7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmis_page_id_e48e93e7_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimag_collection_id_c2f8af7e_fk_wagtailcore_collection_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailimages_image
    ADD CONSTRAINT wagtailimag_collection_id_c2f8af7e_fk_wagtailcore_collection_id FOREIGN KEY (collection_id) REFERENCES wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_imag_uploaded_by_user_id_5d73dc75_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailimages_image
    ADD CONSTRAINT wagtailimages_imag_uploaded_by_user_id_5d73dc75_fk_auth_user_id FOREIGN KEY (uploaded_by_user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_ren_filter_id_7fc52567_fk_wagtailimages_filter_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_ren_filter_id_7fc52567_fk_wagtailimages_filter_id FOREIGN KEY (filter_id) REFERENCES wagtailimages_filter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_rendi_image_id_3e1fd774_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendi_image_id_3e1fd774_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirec_redirect_page_id_b5728a8f_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirec_redirect_page_id_b5728a8f_fk_wagtailcore_page_id FOREIGN KEY (redirect_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_redire_site_id_780a0e1e_fk_wagtailcore_site_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redire_site_id_780a0e1e_fk_wagtailcore_site_id FOREIGN KEY (site_id) REFERENCES wagtailcore_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_edito_query_id_c6eee4a0_fk_wagtailsearch_query_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_edito_query_id_c6eee4a0_fk_wagtailsearch_query_id FOREIGN KEY (query_id) REFERENCES wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_editorspi_page_id_28cbc274_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editorspi_page_id_28cbc274_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_query_query_id_2185994b_fk_wagtailsearch_query_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_query_query_id_2185994b_fk_wagtailsearch_query_id FOREIGN KEY (query_id) REFERENCES wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: urbana_db_user
--

ALTER TABLE ONLY wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

