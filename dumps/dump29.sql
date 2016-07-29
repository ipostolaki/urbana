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
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('auth_permission_id_seq', 139, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$24000$hBITIcYwjgVL$nY9W+ZnuU5cupmEEiofB4L+ocWX9brc7ZhkIDRJgnpc=	2016-07-22 17:06:34.264905+00	t	admin			admin@urbana.md	t	t	2016-07-22 17:06:30.927524+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


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
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


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
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('django_content_type_id_seq', 47, true);


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
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('django_migrations_id_seq', 112, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
rso0uhiajrs9ruf1yk02kben3vl5fwn5	OTg3ZTkwYmVmNDBiOWNiZGYyOGI0N2JkODc2ODFlMTBhM2Y5NWM5Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMGIyM2QwMTdjNzBkMmNlYjJiMTJkODkzZGJmZmE3ZWI4YjY3YjRmIn0=	2016-08-05 17:06:34.286913+00
\.


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
\.


--
-- Data for Name: home_universalblogindexpage; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY home_universalblogindexpage (page_ptr_id, intro) FROM stdin;
\.


--
-- Data for Name: home_universalblogpage; Type: TABLE DATA; Schema: public; Owner: urbana_db_user
--

COPY home_universalblogpage (page_ptr_id, body, date, feed_image_id) FROM stdin;
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

SELECT pg_catalog.setval('wagtailcore_collection_id_seq', 1, true);


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
13	00010001000200030001	5	0	Ilie Postolachi	ilie-postolachi	t	f	/home/despre/membri/ilie-postolachi/		f		\N	\N	f	41	1	f	2016-07-23 16:18:05.544139+00	2016-07-23 16:14:26.145825+00
4	000100010002	3	5	Despre	despre	t	f	/home/despre/		t		\N	\N	f	12	1	f	2016-07-22 17:07:15.479153+00	2016-07-22 17:07:15.619947+00
21	000100010003	3	2	Resurse	resurse	t	f	/home/resurse/		t		\N	\N	f	44	1	f	2016-07-27 18:03:24.746376+00	2016-07-27 17:44:45.100132+00
3	00010001	2	2	Homepage	home	t	f	/home/		f		\N	\N	f	4	\N	f	\N	\N
15	00010001000200040001	5	0	Eveniment #1	eveniment-1	t	f	/home/despre/evenimente/eveniment-1/		f		\N	\N	f	43	1	f	2016-07-27 13:33:43.615246+00	2016-07-25 17:14:33.045101+00
6	000100010001	3	0	Știri Urbane	stiri-urbane	t	f	/home/stiri-urbane/		t		\N	\N	f	11	1	f	2016-07-22 17:29:20.548832+00	2016-07-22 17:28:34.933561+00
5	0001000100020001	4	0	Știrile rețelei	stirile-retelei	t	f	/home/despre/stirile-retelei/		t		\N	\N	f	13	1	f	2016-07-22 17:33:35.452308+00	2016-07-22 17:26:56.847194+00
7	0001000100020002	4	0	Inițiativele rețelei	initiativele-retelei	t	f	/home/despre/initiativele-retelei/		t		\N	\N	f	14	1	f	2016-07-22 17:33:59.04321+00	2016-07-22 17:33:09.226067+00
17	00010001000200040003	5	0	May past event	may-past-event	t	f	/home/despre/evenimente/may-past-event/		f		\N	\N	f	43	1	f	2016-07-27 13:36:37.731173+00	2016-07-27 13:36:37.9699+00
12	0001000100020003	4	1	Membri	membri	t	f	/home/despre/membri/		t		\N	\N	f	40	1	f	2016-07-23 16:15:26.661035+00	2016-07-23 16:13:45.117959+00
14	0001000100020004	4	5	Evenimente în curând	evenimente	t	f	/home/despre/evenimente/		t		\N	\N	f	42	1	f	2016-07-27 13:50:21.547598+00	2016-07-25 16:44:19.296875+00
30	00010001000300060001	5	0	Ghid #1	ghid-1	t	f	/home/resurse/ghiduri-pentru-activisti/ghid-1/		f		\N	\N	f	46	1	f	2016-07-28 11:08:57.713376+00	2016-07-28 11:08:57.874245+00
16	00010001000200040002	5	0	Eveniment #2	eveniment-2	t	f	/home/despre/evenimente/eveniment-2/		f	Descriere vizibila la pagina de index	\N	\N	f	43	1	f	2016-07-25 17:44:21.039744+00	2016-07-25 17:14:33.045101+00
29	0001000100030006	4	1	Ghiduri pentru activiști	ghiduri-pentru-activisti	t	f	/home/resurse/ghiduri-pentru-activisti/		t		\N	\N	f	47	1	f	2016-07-28 11:11:47.500995+00	2016-07-28 11:08:15.02512+00
19	00010001000200040005	5	0	Eveniment nou	28-check	t	f	/home/despre/evenimente/28-check/		f		\N	\N	f	43	1	f	2016-07-27 17:35:47.260214+00	2016-07-27 17:14:35.652609+00
18	00010001000200040004	5	0	Eveniment 2 days long	ev3	t	f	/home/despre/evenimente/ev3/		f		\N	\N	f	43	1	f	2016-07-27 17:36:23.059583+00	2016-07-27 14:57:31.806757+00
28	0001000100030005	4	1	Modele de acte și scrisori	index-nou	t	f	/home/resurse/index-nou/		t		\N	\N	f	47	1	f	2016-07-28 11:06:38.834276+00	2016-07-28 11:00:58.806743+00
25	00010001000300050001	5	0	Model #1	doc-1	t	f	/home/resurse/index-nou/doc-1/		f		\N	\N	f	46	1	f	2016-07-28 10:22:42.3627+00	2016-07-28 10:09:23.800133+00
\.


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailcore_page_id_seq', 30, true);


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
80	f	2016-07-28 11:08:57.713376+00	{"go_live_at": null, "related_documents": [], "live": true, "content_type": 46, "expired": false, "pk": 30, "latest_revision_created_at": null, "seo_title": "", "numchild": 0, "owner": 1, "has_unpublished_changes": false, "title": "Ghid #1", "path": "00010001000300060001", "depth": 5, "locked": false, "show_in_menus": false, "url_path": "/home/resurse/ghiduri-pentru-activisti/ghid-1/", "slug": "ghid-1", "expire_at": null, "search_description": "", "first_published_at": null, "description": "<h5>Info text</h5>"}	\N	30	1
48	f	2016-07-25 17:44:21.039744+00	{"feed_image": 2, "owner": 1, "time_from": "09:00:00", "title": "Eveniment #2", "numchild": 0, "seo_title": "", "show_in_menus": false, "latest_revision_created_at": "2016-07-25T17:40:35.640Z", "search_description": "Descriere vizibila la pagina de index", "pk": 16, "locked": false, "date_from": "2016-07-26", "slug": "eveniment-2", "depth": 5, "date_to": null, "time_to": null, "expire_at": null, "go_live_at": null, "url_path": "/home/despre/evenimente/eveniment-2/", "signup_link": "http://urbana.md", "first_published_at": "2016-07-25T17:14:33.045Z", "live": true, "body": "[{\\"type\\": \\"paragraph\\", \\"value\\": \\"<h5><b>Some content</b></h5>\\"}]", "location": "Undeva", "has_unpublished_changes": false, "content_type": 43, "path": "00010001000200040002", "expired": false}	\N	16	1
59	f	2016-07-27 15:01:12.013454+00	{"time_from": "16:00:00", "location": "some", "expired": false, "feed_image": null, "body": "[]", "go_live_at": null, "title": "Eveniment loooong title", "latest_revision_created_at": "2016-07-27T14:57:31.480Z", "path": "00010001000200040004", "date_from": "2016-07-26", "content_type": 43, "date_to": "2016-07-28", "has_unpublished_changes": false, "live": true, "slug": "ev3", "expire_at": null, "time_to": "18:00:00", "signup_link": "", "owner": 1, "numchild": 0, "show_in_menus": false, "first_published_at": "2016-07-27T14:57:31.806Z", "depth": 5, "url_path": "/home/despre/evenimente/ev3/", "seo_title": "", "locked": false, "pk": 18, "search_description": ""}	\N	18	1
60	f	2016-07-27 17:14:35.487556+00	{"title": "28 check", "live": true, "feed_image": null, "latest_revision_created_at": null, "signup_link": "", "expire_at": null, "expired": false, "slug": "28-check", "locked": false, "show_in_menus": false, "first_published_at": null, "body": "[]", "date_to": null, "has_unpublished_changes": false, "numchild": 0, "url_path": "/home/despre/evenimente/28-check/", "time_to": null, "owner": 1, "content_type": 43, "path": "00010001000200040005", "time_from": null, "date_from": "2016-07-28", "pk": 19, "search_description": "", "go_live_at": null, "seo_title": "", "depth": 5, "location": "loc"}	\N	19	1
49	f	2016-07-25 17:46:44.189823+00	{"feed_image": 2, "owner": 1, "time_from": "09:00:00", "title": "Eveniment #1", "numchild": 0, "seo_title": "", "show_in_menus": false, "latest_revision_created_at": "2016-07-25T17:40:09.123Z", "search_description": "", "pk": 15, "locked": false, "date_from": "2016-07-26", "slug": "eveniment-1", "depth": 5, "date_to": null, "time_to": "21:00:00", "expire_at": null, "go_live_at": null, "url_path": "/home/despre/evenimente/eveniment-1/", "signup_link": "http://urbana.md", "first_published_at": "2016-07-25T17:14:33.045Z", "live": true, "body": "[{\\"type\\": \\"paragraph\\", \\"value\\": \\"<h5><b>Some content</b></h5>\\"}]", "location": "Undeva", "has_unpublished_changes": false, "content_type": 43, "path": "00010001000200040001", "expired": false}	\N	15	1
53	f	2016-07-27 13:33:43.615246+00	{"path": "00010001000200040001", "latest_revision_created_at": "2016-07-25T17:51:22.516Z", "expired": false, "location": "Undeva", "locked": false, "owner": 1, "slug": "eveniment-1", "feed_image": 2, "pk": 15, "show_in_menus": false, "content_type": 43, "url_path": "/home/despre/evenimente/eveniment-1/", "go_live_at": null, "signup_link": "http://urbana.md", "search_description": "", "expire_at": null, "title": "Eveniment #1", "body": "[{\\"type\\": \\"aligned_image\\", \\"value\\": {\\"image\\": 2, \\"caption\\": \\"<p>\\\\u00a0</p>\\", \\"alignment\\": \\"mid\\"}}, {\\"type\\": \\"paragraph\\", \\"value\\": \\"<h5><b>Some content</b></h5>\\"}]", "first_published_at": "2016-07-25T17:14:33.045Z", "has_unpublished_changes": false, "depth": 5, "time_to": "21:00:00", "date_from": "2016-08-25", "date_to": null, "seo_title": "", "live": true, "numchild": 0, "time_from": "09:00:00"}	\N	15	1
38	f	2016-07-25 17:22:28.390858+00	{"locked": false, "owner": 1, "title": "Evenimente", "numchild": 1, "go_live_at": null, "content_type": 42, "expire_at": null, "show_in_menus": false, "url_path": "/home/despre/evenimente/", "latest_revision_created_at": "2016-07-25T16:50:46.495Z", "search_description": "", "pk": 14, "intro": "<h1>Evenimente \\u00een cur\\u00e2nd</h1>", "live": true, "seo_title": "", "first_published_at": "2016-07-25T16:44:19.296Z", "expired": false, "has_unpublished_changes": false, "slug": "evenimente", "path": "0001000100020004", "depth": 4}	\N	14	1
67	f	2016-07-27 18:03:24.746376+00	{"numchild": 1, "has_unpublished_changes": false, "expired": false, "search_description": "", "slug": "resurse", "locked": false, "url_path": "/home/resurse/", "latest_revision_created_at": "2016-07-27T17:44:44.925Z", "depth": 3, "go_live_at": null, "path": "000100010003", "owner": 1, "expire_at": null, "live": true, "title": "Resurse", "pk": 21, "intro": "", "seo_title": "", "first_published_at": "2016-07-27T17:44:45.100Z", "show_in_menus": true, "content_type": 44}	\N	21	1
81	f	2016-07-28 11:11:47.500995+00	{"url_path": "/home/resurse/ghiduri-pentru-activisti/", "title": "Ghiduri pentru activi\\u0219ti", "go_live_at": null, "has_unpublished_changes": false, "path": "0001000100030006", "depth": 4, "live": true, "show_in_menus": true, "content_type": 47, "slug": "ghiduri-pentru-activisti", "expire_at": null, "search_description": "", "expired": false, "first_published_at": "2016-07-28T11:08:15.025Z", "pk": 29, "latest_revision_created_at": "2016-07-28T11:08:14.866Z", "seo_title": "", "numchild": 1, "locked": false, "owner": 1}	\N	29	1
54	f	2016-07-27 13:36:37.731173+00	{"path": "00010001000200040003", "latest_revision_created_at": null, "expired": false, "location": "somewhere", "locked": false, "owner": 1, "slug": "may-past-event", "feed_image": null, "pk": 17, "show_in_menus": false, "content_type": 43, "url_path": "/home/despre/evenimente/may-past-event/", "go_live_at": null, "signup_link": "", "search_description": "", "expire_at": null, "title": "May past event", "body": "[]", "first_published_at": null, "has_unpublished_changes": false, "depth": 5, "time_to": null, "date_from": "2016-05-18", "date_to": "2016-05-26", "seo_title": "", "live": true, "numchild": 0, "time_from": null}	\N	17	1
61	f	2016-07-27 17:15:41.742705+00	{"title": "28 check", "live": true, "feed_image": null, "latest_revision_created_at": "2016-07-27T17:14:35.487Z", "signup_link": "", "expire_at": null, "expired": false, "slug": "28-check", "locked": false, "show_in_menus": false, "first_published_at": "2016-07-27T17:14:35.652Z", "body": "[]", "date_to": null, "has_unpublished_changes": false, "numchild": 0, "url_path": "/home/despre/evenimente/28-check/", "time_to": null, "owner": 1, "content_type": 43, "path": "00010001000200040005", "time_from": null, "date_from": "2016-07-27", "pk": 19, "search_description": "", "go_live_at": null, "seo_title": "", "depth": 5, "location": "loc"}	\N	19	1
50	f	2016-07-25 17:49:23.69016+00	{"feed_image": 2, "owner": 1, "time_from": "09:00:00", "title": "Eveniment #1", "numchild": 0, "seo_title": "", "show_in_menus": false, "latest_revision_created_at": "2016-07-25T17:46:44.189Z", "search_description": "", "pk": 15, "locked": false, "date_from": "2016-07-26", "slug": "eveniment-1", "depth": 5, "date_to": null, "time_to": "21:00:00", "expire_at": null, "go_live_at": null, "url_path": "/home/despre/evenimente/eveniment-1/", "signup_link": "http://urbana.md", "first_published_at": "2016-07-25T17:14:33.045Z", "live": true, "body": "[{\\"type\\": \\"paragraph\\", \\"value\\": \\"<h5><b>Some content</b></h5><p><b><embed alt=\\\\\\"Collab\\\\\\" embedtype=\\\\\\"image\\\\\\" format=\\\\\\"left\\\\\\" id=\\\\\\"2\\\\\\"/><br/></b></p>\\"}]", "location": "Undeva", "has_unpublished_changes": false, "content_type": 43, "path": "00010001000200040001", "expired": false}	\N	15	1
39	f	2016-07-25 17:23:17.837447+00	{"locked": false, "owner": 1, "title": "Evenimente", "numchild": 1, "go_live_at": null, "content_type": 42, "expire_at": null, "show_in_menus": false, "url_path": "/home/despre/evenimente/", "latest_revision_created_at": "2016-07-25T17:22:28.390Z", "search_description": "", "pk": 14, "intro": "<p>Evenimente \\u00een cur\\u00e2nd</p>", "live": true, "seo_title": "", "first_published_at": "2016-07-25T16:44:19.296Z", "expired": false, "has_unpublished_changes": false, "slug": "evenimente", "path": "0001000100020004", "depth": 4}	\N	14	1
51	f	2016-07-25 17:50:49.198417+00	{"feed_image": 2, "owner": 1, "time_from": "09:00:00", "title": "Eveniment #1", "numchild": 0, "seo_title": "", "show_in_menus": false, "latest_revision_created_at": "2016-07-25T17:49:23.690Z", "search_description": "", "pk": 15, "locked": false, "date_from": "2016-07-26", "slug": "eveniment-1", "depth": 5, "date_to": null, "time_to": "21:00:00", "expire_at": null, "go_live_at": null, "url_path": "/home/despre/evenimente/eveniment-1/", "signup_link": "http://urbana.md", "first_published_at": "2016-07-25T17:14:33.045Z", "live": true, "body": "[{\\"type\\": \\"aligned_image\\", \\"value\\": {\\"image\\": 2, \\"caption\\": \\"<p>Caption</p>\\", \\"alignment\\": \\"mid\\"}}, {\\"type\\": \\"paragraph\\", \\"value\\": \\"<h5><b>Some content</b></h5>\\"}]", "location": "Undeva", "has_unpublished_changes": false, "content_type": 43, "path": "00010001000200040001", "expired": false}	\N	15	1
55	f	2016-07-27 13:42:53.061082+00	{"numchild": 3, "content_type": 42, "search_description": "", "latest_revision_created_at": "2016-07-25T17:25:24.467Z", "has_unpublished_changes": false, "title": "Evenimente \\u00een cur\\u00e2nd", "first_published_at": "2016-07-25T16:44:19.296Z", "owner": 1, "path": "0001000100020004", "intro": "<p>Descriere index (optional)</p>", "expired": false, "locked": false, "depth": 4, "slug": "evenimente", "expire_at": null, "show_in_menus": true, "url_path": "/home/despre/evenimente/", "seo_title": "", "go_live_at": null, "live": true, "pk": 14}	\N	14	1
62	f	2016-07-27 17:35:47.260214+00	{"depth": 5, "date_to": null, "time_from": null, "pk": 19, "locked": false, "signup_link": "", "first_published_at": "2016-07-27T17:14:35.652Z", "has_unpublished_changes": false, "feed_image": null, "expired": false, "seo_title": "", "date_from": "2016-07-27", "numchild": 0, "body": "[]", "content_type": 43, "slug": "28-check", "go_live_at": null, "show_in_menus": false, "latest_revision_created_at": "2016-07-27T17:15:41.742Z", "path": "00010001000200040005", "owner": 1, "url_path": "/home/despre/evenimente/28-check/", "live": true, "time_to": null, "expire_at": null, "search_description": "", "location": "loc", "title": "Eveniment nou"}	\N	19	1
77	f	2016-07-28 11:00:58.62319+00	{"has_unpublished_changes": false, "content_type": 47, "live": true, "search_description": "", "slug": "index-nou", "numchild": 0, "url_path": "/home/resurse/index-nou/", "title": "Index nou", "latest_revision_created_at": null, "owner": 1, "pk": 28, "seo_title": "", "depth": 4, "first_published_at": null, "expired": false, "show_in_menus": true, "go_live_at": null, "locked": false, "expire_at": null, "path": "0001000100030005"}	\N	28	1
71	f	2016-07-28 10:09:23.605695+00	{"expire_at": null, "has_unpublished_changes": false, "path": "00010001000300030001", "seo_title": "", "live": true, "url_path": "/home/resurse/modele-de-acte-si-scrisori/doc-1/", "show_in_menus": false, "numchild": 0, "content_type": 46, "expired": false, "latest_revision_created_at": null, "locked": false, "owner": 1, "pk": 25, "related_documents": [{"pk": 1, "page": 25, "sort_order": 0, "link_document": 1}], "depth": 5, "search_description": "", "first_published_at": null, "description": "", "go_live_at": null, "title": "Doc #1", "slug": "doc-1"}	\N	25	1
40	f	2016-07-25 17:24:28.651024+00	{"locked": false, "owner": 1, "title": "Evenimente \\u00een cur\\u00e2nd", "numchild": 1, "go_live_at": null, "content_type": 42, "expire_at": null, "show_in_menus": false, "url_path": "/home/despre/evenimente/", "latest_revision_created_at": "2016-07-25T17:23:17.837Z", "search_description": "", "pk": 14, "intro": "<p><br/></p>", "live": true, "seo_title": "", "first_published_at": "2016-07-25T16:44:19.296Z", "expired": false, "has_unpublished_changes": false, "slug": "evenimente", "path": "0001000100020004", "depth": 4}	\N	14	1
41	f	2016-07-25 17:24:45.859409+00	{"locked": false, "owner": 1, "title": "Evenimente \\u00een cur\\u00e2nd", "numchild": 1, "go_live_at": null, "content_type": 42, "expire_at": null, "show_in_menus": true, "url_path": "/home/despre/evenimente/", "latest_revision_created_at": "2016-07-25T17:24:28.651Z", "search_description": "", "pk": 14, "intro": "<p><br/></p>", "live": true, "seo_title": "", "first_published_at": "2016-07-25T16:44:19.296Z", "expired": false, "has_unpublished_changes": false, "slug": "evenimente", "path": "0001000100020004", "depth": 4}	\N	14	1
63	f	2016-07-27 17:36:23.059583+00	{"depth": 5, "date_to": "2016-07-28", "time_from": "16:00:00", "pk": 18, "locked": false, "signup_link": "", "first_published_at": "2016-07-27T14:57:31.806Z", "has_unpublished_changes": false, "feed_image": null, "expired": false, "seo_title": "", "date_from": "2016-07-26", "numchild": 0, "body": "[]", "content_type": 43, "slug": "ev3", "go_live_at": null, "show_in_menus": false, "latest_revision_created_at": "2016-07-27T15:01:12.013Z", "path": "00010001000200040004", "owner": 1, "url_path": "/home/despre/evenimente/ev3/", "live": true, "time_to": "18:00:00", "expire_at": null, "search_description": "", "location": "some", "title": "Eveniment 2 days long"}	\N	18	1
52	f	2016-07-25 17:51:22.516848+00	{"feed_image": 2, "owner": 1, "time_from": "09:00:00", "title": "Eveniment #1", "numchild": 0, "seo_title": "", "show_in_menus": false, "latest_revision_created_at": "2016-07-25T17:50:49.198Z", "search_description": "", "pk": 15, "locked": false, "date_from": "2016-07-26", "slug": "eveniment-1", "depth": 5, "date_to": null, "time_to": "21:00:00", "expire_at": null, "go_live_at": null, "url_path": "/home/despre/evenimente/eveniment-1/", "signup_link": "http://urbana.md", "first_published_at": "2016-07-25T17:14:33.045Z", "live": true, "body": "[{\\"type\\": \\"aligned_image\\", \\"value\\": {\\"image\\": 2, \\"caption\\": \\"<p>\\\\u00a0</p>\\", \\"alignment\\": \\"mid\\"}}, {\\"type\\": \\"paragraph\\", \\"value\\": \\"<h5><b>Some content</b></h5>\\"}]", "location": "Undeva", "has_unpublished_changes": false, "content_type": 43, "path": "00010001000200040001", "expired": false}	\N	15	1
72	f	2016-07-28 10:22:42.3627+00	{"title": "Model #1", "expire_at": null, "locked": false, "description": "<p>Descriere pentru model #1</p>", "latest_revision_created_at": "2016-07-28T10:09:23.605Z", "numchild": 0, "has_unpublished_changes": false, "path": "00010001000300030001", "show_in_menus": false, "seo_title": "", "go_live_at": null, "live": true, "pk": 25, "depth": 5, "search_description": "", "url_path": "/home/resurse/modele-de-acte-si-scrisori/doc-1/", "first_published_at": "2016-07-28T10:09:23.800Z", "expired": false, "slug": "doc-1", "content_type": 46, "related_documents": [{"link_document": 1, "sort_order": 0, "page": 25, "pk": 1}, {"link_document": 2, "sort_order": 1, "page": 25, "pk": null}], "owner": 1}	\N	25	1
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

SELECT pg_catalog.setval('wagtailcore_pagerevision_id_seq', 81, true);


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
\.


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: urbana_db_user
--

SELECT pg_catalog.setval('wagtailusers_userprofile_id_seq', 1, false);


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

