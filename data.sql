--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
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


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _abouts; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._abouts (
    id character varying(1) DEFAULT NULL::character varying,
    document_id character varying(1) DEFAULT NULL::character varying,
    title character varying(1) DEFAULT NULL::character varying,
    created_at character varying(1) DEFAULT NULL::character varying,
    updated_at character varying(1) DEFAULT NULL::character varying,
    published_at character varying(1) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._abouts OWNER TO rebasedata;

--
-- Name: _abouts_cmps; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._abouts_cmps (
    id character varying(1) DEFAULT NULL::character varying,
    entity_id character varying(1) DEFAULT NULL::character varying,
    cmp_id character varying(1) DEFAULT NULL::character varying,
    component_type character varying(1) DEFAULT NULL::character varying,
    field character varying(1) DEFAULT NULL::character varying,
    "order" character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._abouts_cmps OWNER TO rebasedata;

--
-- Name: _admin_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._admin_permissions (
    id smallint,
    document_id character varying(24) DEFAULT NULL::character varying,
    action character varying(55) DEFAULT NULL::character varying,
    action_parameters character varying(2) DEFAULT NULL::character varying,
    subject character varying(30) DEFAULT NULL::character varying,
    properties character varying(127) DEFAULT NULL::character varying,
    conditions character varying(21) DEFAULT NULL::character varying,
    created_at character varying(10) DEFAULT NULL::character varying,
    updated_at character varying(10) DEFAULT NULL::character varying,
    published_at character varying(10) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._admin_permissions OWNER TO rebasedata;

--
-- Name: _admin_permissions_role_lnk; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._admin_permissions_role_lnk (
    id smallint,
    permission_id smallint,
    role_id smallint,
    permission_ord numeric(4,1) DEFAULT NULL::numeric
);


ALTER TABLE public._admin_permissions_role_lnk OWNER TO rebasedata;

--
-- Name: _admin_roles; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._admin_roles (
    id smallint,
    document_id character varying(24) DEFAULT NULL::character varying,
    name character varying(11) DEFAULT NULL::character varying,
    code character varying(18) DEFAULT NULL::character varying,
    description character varying(71) DEFAULT NULL::character varying,
    created_at character varying(10) DEFAULT NULL::character varying,
    updated_at character varying(10) DEFAULT NULL::character varying,
    published_at character varying(10) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._admin_roles OWNER TO rebasedata;

--
-- Name: _admin_users; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._admin_users (
    id smallint,
    document_id character varying(24) DEFAULT NULL::character varying,
    firstname character varying(6) DEFAULT NULL::character varying,
    lastname character varying(7) DEFAULT NULL::character varying,
    username character varying(1) DEFAULT NULL::character varying,
    email character varying(17) DEFAULT NULL::character varying,
    password character varying(60) DEFAULT NULL::character varying,
    reset_password_token character varying(1) DEFAULT NULL::character varying,
    registration_token character varying(1) DEFAULT NULL::character varying,
    is_active smallint,
    blocked smallint,
    prefered_language character varying(1) DEFAULT NULL::character varying,
    created_at character varying(10) DEFAULT NULL::character varying,
    updated_at character varying(10) DEFAULT NULL::character varying,
    published_at character varying(10) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._admin_users OWNER TO rebasedata;

--
-- Name: _admin_users_roles_lnk; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._admin_users_roles_lnk (
    id smallint,
    user_id smallint,
    role_id smallint,
    role_ord numeric(2,1) DEFAULT NULL::numeric,
    user_ord numeric(2,1) DEFAULT NULL::numeric
);


ALTER TABLE public._admin_users_roles_lnk OWNER TO rebasedata;

--
-- Name: _articles; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._articles (
    id smallint,
    document_id character varying(24) DEFAULT NULL::character varying,
    title character varying(91) DEFAULT NULL::character varying,
    description character varying(4) DEFAULT NULL::character varying,
    slug character varying(90) DEFAULT NULL::character varying,
    created_at character varying(10) DEFAULT NULL::character varying,
    updated_at character varying(10) DEFAULT NULL::character varying,
    published_at character varying(10) DEFAULT NULL::character varying,
    created_by_id smallint,
    updated_by_id smallint,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._articles OWNER TO rebasedata;

--
-- Name: _articles_category_lnk; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._articles_category_lnk (
    id character varying(1) DEFAULT NULL::character varying,
    article_id character varying(1) DEFAULT NULL::character varying,
    category_id character varying(1) DEFAULT NULL::character varying,
    article_ord character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._articles_category_lnk OWNER TO rebasedata;

--
-- Name: _articles_cmps; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._articles_cmps (
    id character varying(1) DEFAULT NULL::character varying,
    entity_id character varying(1) DEFAULT NULL::character varying,
    cmp_id character varying(1) DEFAULT NULL::character varying,
    component_type character varying(1) DEFAULT NULL::character varying,
    field character varying(1) DEFAULT NULL::character varying,
    "order" character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._articles_cmps OWNER TO rebasedata;

--
-- Name: _authors; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._authors (
    id smallint,
    document_id character varying(24) DEFAULT NULL::character varying,
    name character varying(14) DEFAULT NULL::character varying,
    created_at character varying(10) DEFAULT NULL::character varying,
    updated_at character varying(10) DEFAULT NULL::character varying,
    published_at character varying(10) DEFAULT NULL::character varying,
    created_by_id smallint,
    updated_by_id smallint,
    locale character varying(1) DEFAULT NULL::character varying,
    bio character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._authors OWNER TO rebasedata;

--
-- Name: _blogs; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._blogs (
    id smallint,
    document_id character varying(24) DEFAULT NULL::character varying,
    title character varying(95) DEFAULT NULL::character varying,
    slug character varying(94) DEFAULT NULL::character varying,
    date character varying(1) DEFAULT NULL::character varying,
    intro character varying(636) DEFAULT NULL::character varying,
    conclusion character varying(936) DEFAULT NULL::character varying,
    tags character varying(181) DEFAULT NULL::character varying,
    created_at character varying(10) DEFAULT NULL::character varying,
    updated_at character varying(10) DEFAULT NULL::character varying,
    published_at character varying(10) DEFAULT NULL::character varying,
    created_by_id smallint,
    updated_by_id smallint,
    locale character varying(1) DEFAULT NULL::character varying,
    image_url character varying(88) DEFAULT NULL::character varying
);


ALTER TABLE public._blogs OWNER TO rebasedata;

--
-- Name: _blogs_author_lnk; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._blogs_author_lnk (
    id smallint,
    blog_id smallint,
    author_id smallint,
    blog_ord numeric(2,1) DEFAULT NULL::numeric
);


ALTER TABLE public._blogs_author_lnk OWNER TO rebasedata;

--
-- Name: _blogs_cmps; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._blogs_cmps (
    id smallint,
    entity_id smallint,
    cmp_id smallint,
    component_type character varying(9) DEFAULT NULL::character varying,
    field character varying(4) DEFAULT NULL::character varying,
    "order" character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._blogs_cmps OWNER TO rebasedata;

--
-- Name: _categories; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._categories (
    id character varying(1) DEFAULT NULL::character varying,
    document_id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    slug character varying(1) DEFAULT NULL::character varying,
    description character varying(1) DEFAULT NULL::character varying,
    created_at character varying(1) DEFAULT NULL::character varying,
    updated_at character varying(1) DEFAULT NULL::character varying,
    published_at character varying(1) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._categories OWNER TO rebasedata;

--
-- Name: _components_blog_bodies; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._components_blog_bodies (
    id smallint,
    title character varying(1) DEFAULT NULL::character varying,
    content character varying(5230) DEFAULT NULL::character varying
);


ALTER TABLE public._components_blog_bodies OWNER TO rebasedata;

--
-- Name: _components_shared_media; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._components_shared_media (
    id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._components_shared_media OWNER TO rebasedata;

--
-- Name: _components_shared_quotes; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._components_shared_quotes (
    id character varying(1) DEFAULT NULL::character varying,
    title character varying(1) DEFAULT NULL::character varying,
    body character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._components_shared_quotes OWNER TO rebasedata;

--
-- Name: _components_shared_rich_texts; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._components_shared_rich_texts (
    id character varying(1) DEFAULT NULL::character varying,
    body character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._components_shared_rich_texts OWNER TO rebasedata;

--
-- Name: _components_shared_seos; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._components_shared_seos (
    id character varying(1) DEFAULT NULL::character varying,
    meta_title character varying(1) DEFAULT NULL::character varying,
    meta_description character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._components_shared_seos OWNER TO rebasedata;

--
-- Name: _components_shared_sliders; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._components_shared_sliders (
    id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._components_shared_sliders OWNER TO rebasedata;

--
-- Name: _files; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._files (
    id character varying(1) DEFAULT NULL::character varying,
    document_id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    alternative_text character varying(1) DEFAULT NULL::character varying,
    caption character varying(1) DEFAULT NULL::character varying,
    width character varying(1) DEFAULT NULL::character varying,
    height character varying(1) DEFAULT NULL::character varying,
    formats character varying(1) DEFAULT NULL::character varying,
    hash character varying(1) DEFAULT NULL::character varying,
    ext character varying(1) DEFAULT NULL::character varying,
    mime character varying(1) DEFAULT NULL::character varying,
    size character varying(1) DEFAULT NULL::character varying,
    url character varying(1) DEFAULT NULL::character varying,
    preview_url character varying(1) DEFAULT NULL::character varying,
    provider character varying(1) DEFAULT NULL::character varying,
    provider_metadata character varying(1) DEFAULT NULL::character varying,
    folder_path character varying(1) DEFAULT NULL::character varying,
    created_at character varying(1) DEFAULT NULL::character varying,
    updated_at character varying(1) DEFAULT NULL::character varying,
    published_at character varying(1) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._files OWNER TO rebasedata;

--
-- Name: _files_folder_lnk; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._files_folder_lnk (
    id character varying(1) DEFAULT NULL::character varying,
    file_id character varying(1) DEFAULT NULL::character varying,
    folder_id character varying(1) DEFAULT NULL::character varying,
    file_ord character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._files_folder_lnk OWNER TO rebasedata;

--
-- Name: _files_related_mph; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._files_related_mph (
    id character varying(1) DEFAULT NULL::character varying,
    file_id character varying(1) DEFAULT NULL::character varying,
    related_id character varying(1) DEFAULT NULL::character varying,
    related_type character varying(1) DEFAULT NULL::character varying,
    field character varying(1) DEFAULT NULL::character varying,
    "order" character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._files_related_mph OWNER TO rebasedata;

--
-- Name: _globals; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._globals (
    id character varying(1) DEFAULT NULL::character varying,
    document_id character varying(1) DEFAULT NULL::character varying,
    site_name character varying(1) DEFAULT NULL::character varying,
    site_description character varying(1) DEFAULT NULL::character varying,
    created_at character varying(1) DEFAULT NULL::character varying,
    updated_at character varying(1) DEFAULT NULL::character varying,
    published_at character varying(1) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._globals OWNER TO rebasedata;

--
-- Name: _globals_cmps; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._globals_cmps (
    id character varying(1) DEFAULT NULL::character varying,
    entity_id character varying(1) DEFAULT NULL::character varying,
    cmp_id character varying(1) DEFAULT NULL::character varying,
    component_type character varying(1) DEFAULT NULL::character varying,
    field character varying(1) DEFAULT NULL::character varying,
    "order" character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._globals_cmps OWNER TO rebasedata;

--
-- Name: _i18n_locale; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._i18n_locale (
    id smallint,
    document_id character varying(24) DEFAULT NULL::character varying,
    name character varying(12) DEFAULT NULL::character varying,
    code character varying(2) DEFAULT NULL::character varying,
    created_at character varying(10) DEFAULT NULL::character varying,
    updated_at character varying(10) DEFAULT NULL::character varying,
    published_at character varying(10) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._i18n_locale OWNER TO rebasedata;

--
-- Name: _sqlite_sequence; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._sqlite_sequence (
    name character varying(46) DEFAULT NULL::character varying,
    seq smallint
);


ALTER TABLE public._sqlite_sequence OWNER TO rebasedata;

--
-- Name: _strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_api_token_permissions (
    id character varying(1) DEFAULT NULL::character varying,
    document_id character varying(1) DEFAULT NULL::character varying,
    action character varying(1) DEFAULT NULL::character varying,
    created_at character varying(1) DEFAULT NULL::character varying,
    updated_at character varying(1) DEFAULT NULL::character varying,
    published_at character varying(1) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_api_token_permissions OWNER TO rebasedata;

--
-- Name: _strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_api_token_permissions_token_lnk (
    id character varying(1) DEFAULT NULL::character varying,
    api_token_permission_id character varying(1) DEFAULT NULL::character varying,
    api_token_id character varying(1) DEFAULT NULL::character varying,
    api_token_permission_ord character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_api_token_permissions_token_lnk OWNER TO rebasedata;

--
-- Name: _strapi_api_tokens; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_api_tokens (
    id smallint,
    document_id character varying(24) DEFAULT NULL::character varying,
    name character varying(11) DEFAULT NULL::character varying,
    description character varying(91) DEFAULT NULL::character varying,
    type character varying(11) DEFAULT NULL::character varying,
    access_key character varying(128) DEFAULT NULL::character varying,
    encrypted_key character varying(581) DEFAULT NULL::character varying,
    last_used_at character varying(1) DEFAULT NULL::character varying,
    expires_at character varying(1) DEFAULT NULL::character varying,
    lifespan character varying(1) DEFAULT NULL::character varying,
    created_at character varying(10) DEFAULT NULL::character varying,
    updated_at character varying(10) DEFAULT NULL::character varying,
    published_at character varying(10) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_api_tokens OWNER TO rebasedata;

--
-- Name: _strapi_core_store_settings; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_core_store_settings (
    id smallint,
    key character varying(91) DEFAULT NULL::character varying,
    value character varying(62542) DEFAULT NULL::character varying,
    type character varying(6) DEFAULT NULL::character varying,
    environment character varying(1) DEFAULT NULL::character varying,
    tag character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_core_store_settings OWNER TO rebasedata;

--
-- Name: _strapi_database_schema; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_database_schema (
    id smallint,
    schema character varying(74674) DEFAULT NULL::character varying,
    "time" character varying(10) DEFAULT NULL::character varying,
    hash character varying(64) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_database_schema OWNER TO rebasedata;

--
-- Name: _strapi_history_versions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_history_versions (
    id character varying(1) DEFAULT NULL::character varying,
    content_type character varying(1) DEFAULT NULL::character varying,
    related_document_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    data character varying(1) DEFAULT NULL::character varying,
    schema character varying(1) DEFAULT NULL::character varying,
    created_at character varying(1) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_history_versions OWNER TO rebasedata;

--
-- Name: _strapi_migrations; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_migrations (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    "time" character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_migrations OWNER TO rebasedata;

--
-- Name: _strapi_migrations_internal; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_migrations_internal (
    id smallint,
    name character varying(47) DEFAULT NULL::character varying,
    "time" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_migrations_internal OWNER TO rebasedata;

--
-- Name: _strapi_release_actions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_release_actions (
    id character varying(1) DEFAULT NULL::character varying,
    document_id character varying(1) DEFAULT NULL::character varying,
    type character varying(1) DEFAULT NULL::character varying,
    content_type character varying(1) DEFAULT NULL::character varying,
    entry_document_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying,
    is_entry_valid character varying(1) DEFAULT NULL::character varying,
    created_at character varying(1) DEFAULT NULL::character varying,
    updated_at character varying(1) DEFAULT NULL::character varying,
    published_at character varying(1) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_release_actions OWNER TO rebasedata;

--
-- Name: _strapi_release_actions_release_lnk; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_release_actions_release_lnk (
    id character varying(1) DEFAULT NULL::character varying,
    release_action_id character varying(1) DEFAULT NULL::character varying,
    release_id character varying(1) DEFAULT NULL::character varying,
    release_action_ord character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_release_actions_release_lnk OWNER TO rebasedata;

--
-- Name: _strapi_releases; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_releases (
    id character varying(1) DEFAULT NULL::character varying,
    document_id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    released_at character varying(1) DEFAULT NULL::character varying,
    scheduled_at character varying(1) DEFAULT NULL::character varying,
    timezone character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    created_at character varying(1) DEFAULT NULL::character varying,
    updated_at character varying(1) DEFAULT NULL::character varying,
    published_at character varying(1) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_releases OWNER TO rebasedata;

--
-- Name: _strapi_sessions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_sessions (
    id smallint,
    document_id character varying(24) DEFAULT NULL::character varying,
    user_id smallint,
    session_id character varying(32) DEFAULT NULL::character varying,
    child_id character varying(32) DEFAULT NULL::character varying,
    device_id character varying(36) DEFAULT NULL::character varying,
    origin character varying(5) DEFAULT NULL::character varying,
    expires_at character varying(10) DEFAULT NULL::character varying,
    absolute_expires_at character varying(10) DEFAULT NULL::character varying,
    status character varying(7) DEFAULT NULL::character varying,
    type character varying(7) DEFAULT NULL::character varying,
    created_at character varying(10) DEFAULT NULL::character varying,
    updated_at character varying(10) DEFAULT NULL::character varying,
    published_at character varying(10) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_sessions OWNER TO rebasedata;

--
-- Name: _strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_transfer_token_permissions (
    id smallint,
    document_id character varying(24) DEFAULT NULL::character varying,
    action character varying(4) DEFAULT NULL::character varying,
    created_at character varying(10) DEFAULT NULL::character varying,
    updated_at character varying(10) DEFAULT NULL::character varying,
    published_at character varying(10) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_transfer_token_permissions OWNER TO rebasedata;

--
-- Name: _strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_transfer_token_permissions_token_lnk (
    id smallint,
    transfer_token_permission_id smallint,
    transfer_token_id smallint,
    transfer_token_permission_ord numeric(2,1) DEFAULT NULL::numeric
);


ALTER TABLE public._strapi_transfer_token_permissions_token_lnk OWNER TO rebasedata;

--
-- Name: _strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_transfer_tokens (
    id smallint,
    document_id character varying(24) DEFAULT NULL::character varying,
    name character varying(14) DEFAULT NULL::character varying,
    description character varying(1) DEFAULT NULL::character varying,
    access_key character varying(128) DEFAULT NULL::character varying,
    last_used_at character varying(1) DEFAULT NULL::character varying,
    expires_at character varying(10) DEFAULT NULL::character varying,
    lifespan integer,
    created_at character varying(10) DEFAULT NULL::character varying,
    updated_at character varying(10) DEFAULT NULL::character varying,
    published_at character varying(10) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_transfer_tokens OWNER TO rebasedata;

--
-- Name: _strapi_webhooks; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_webhooks (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    url character varying(1) DEFAULT NULL::character varying,
    headers character varying(1) DEFAULT NULL::character varying,
    events character varying(1) DEFAULT NULL::character varying,
    enabled character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_webhooks OWNER TO rebasedata;

--
-- Name: _strapi_workflows; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_workflows (
    id character varying(1) DEFAULT NULL::character varying,
    document_id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    content_types character varying(1) DEFAULT NULL::character varying,
    created_at character varying(1) DEFAULT NULL::character varying,
    updated_at character varying(1) DEFAULT NULL::character varying,
    published_at character varying(1) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_workflows OWNER TO rebasedata;

--
-- Name: _strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_workflows_stage_required_to_publish_lnk (
    id character varying(1) DEFAULT NULL::character varying,
    workflow_id character varying(1) DEFAULT NULL::character varying,
    workflow_stage_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_workflows_stage_required_to_publish_lnk OWNER TO rebasedata;

--
-- Name: _strapi_workflows_stages; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_workflows_stages (
    id character varying(1) DEFAULT NULL::character varying,
    document_id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    color character varying(1) DEFAULT NULL::character varying,
    created_at character varying(1) DEFAULT NULL::character varying,
    updated_at character varying(1) DEFAULT NULL::character varying,
    published_at character varying(1) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_workflows_stages OWNER TO rebasedata;

--
-- Name: _strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_workflows_stages_permissions_lnk (
    id character varying(1) DEFAULT NULL::character varying,
    workflow_stage_id character varying(1) DEFAULT NULL::character varying,
    permission_id character varying(1) DEFAULT NULL::character varying,
    permission_ord character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_workflows_stages_permissions_lnk OWNER TO rebasedata;

--
-- Name: _strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._strapi_workflows_stages_workflow_lnk (
    id character varying(1) DEFAULT NULL::character varying,
    workflow_stage_id character varying(1) DEFAULT NULL::character varying,
    workflow_id character varying(1) DEFAULT NULL::character varying,
    workflow_stage_ord character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._strapi_workflows_stages_workflow_lnk OWNER TO rebasedata;

--
-- Name: _up_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._up_permissions (
    id smallint,
    document_id character varying(24) DEFAULT NULL::character varying,
    action character varying(52) DEFAULT NULL::character varying,
    created_at character varying(10) DEFAULT NULL::character varying,
    updated_at character varying(10) DEFAULT NULL::character varying,
    published_at character varying(10) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._up_permissions OWNER TO rebasedata;

--
-- Name: _up_permissions_role_lnk; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._up_permissions_role_lnk (
    id smallint,
    permission_id smallint,
    role_id smallint,
    permission_ord numeric(3,1) DEFAULT NULL::numeric
);


ALTER TABLE public._up_permissions_role_lnk OWNER TO rebasedata;

--
-- Name: _up_roles; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._up_roles (
    id smallint,
    document_id character varying(24) DEFAULT NULL::character varying,
    name character varying(13) DEFAULT NULL::character varying,
    description character varying(43) DEFAULT NULL::character varying,
    type character varying(13) DEFAULT NULL::character varying,
    created_at character varying(10) DEFAULT NULL::character varying,
    updated_at character varying(10) DEFAULT NULL::character varying,
    published_at character varying(10) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._up_roles OWNER TO rebasedata;

--
-- Name: _up_users; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._up_users (
    id character varying(1) DEFAULT NULL::character varying,
    document_id character varying(1) DEFAULT NULL::character varying,
    username character varying(1) DEFAULT NULL::character varying,
    email character varying(1) DEFAULT NULL::character varying,
    provider character varying(1) DEFAULT NULL::character varying,
    password character varying(1) DEFAULT NULL::character varying,
    reset_password_token character varying(1) DEFAULT NULL::character varying,
    confirmation_token character varying(1) DEFAULT NULL::character varying,
    confirmed character varying(1) DEFAULT NULL::character varying,
    blocked character varying(1) DEFAULT NULL::character varying,
    created_at character varying(1) DEFAULT NULL::character varying,
    updated_at character varying(1) DEFAULT NULL::character varying,
    published_at character varying(1) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._up_users OWNER TO rebasedata;

--
-- Name: _up_users_role_lnk; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._up_users_role_lnk (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    role_id character varying(1) DEFAULT NULL::character varying,
    user_ord character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._up_users_role_lnk OWNER TO rebasedata;

--
-- Name: _upload_folders; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._upload_folders (
    id character varying(1) DEFAULT NULL::character varying,
    document_id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    path_id character varying(1) DEFAULT NULL::character varying,
    path character varying(1) DEFAULT NULL::character varying,
    created_at character varying(1) DEFAULT NULL::character varying,
    updated_at character varying(1) DEFAULT NULL::character varying,
    published_at character varying(1) DEFAULT NULL::character varying,
    created_by_id character varying(1) DEFAULT NULL::character varying,
    updated_by_id character varying(1) DEFAULT NULL::character varying,
    locale character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._upload_folders OWNER TO rebasedata;

--
-- Name: _upload_folders_parent_lnk; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._upload_folders_parent_lnk (
    id character varying(1) DEFAULT NULL::character varying,
    folder_id character varying(1) DEFAULT NULL::character varying,
    inv_folder_id character varying(1) DEFAULT NULL::character varying,
    folder_ord character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._upload_folders_parent_lnk OWNER TO rebasedata;

--
-- Data for Name: _abouts; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._abouts (id, document_id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: _abouts_cmps; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._abouts_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: _admin_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	gpcwmamms5rb7036h7vmowry	plugin::content-manager.explorer.create	{}	api::about.about	{"fields":["title","blocks"]}	[]	2025-10-21	2025-10-21	2025-10-21			
2	vkgui56f5hw422j1b380ydar	plugin::content-manager.explorer.create	{}	api::article.article	{"fields":["title","description","slug","cover","category","blocks"]}	[]	2025-10-21	2025-10-22	2025-10-21			
3	ln6ew3cqlstcbmrsv2ydy9tz	plugin::content-manager.explorer.create	{}	api::author.author	{"fields":["name","avatar"]}	[]	2025-10-21	2025-10-22	2025-10-21			
4	x6sqis94y9uplr0508is8tt1	plugin::content-manager.explorer.create	{}	api::category.category	{"fields":["name","slug","articles","description"]}	[]	2025-10-21	2025-10-21	2025-10-21			
5	v8kdpwccao5e0efnuod8bmf4	plugin::content-manager.explorer.create	{}	api::global.global	{"fields":["siteName","favicon","siteDescription","defaultSeo.metaTitle","defaultSeo.metaDescription","defaultSeo.shareImage"]}	[]	2025-10-21	2025-10-21	2025-10-21			
6	ny0n4ajekss8t6y15rvghqiq	plugin::content-manager.explorer.read	{}	api::about.about	{"fields":["title","blocks"]}	[]	2025-10-21	2025-10-21	2025-10-21			
7	b90w1fpgo5zmd826i1p0u5wl	plugin::content-manager.explorer.read	{}	api::article.article	{"fields":["title","description","slug","cover","category","blocks"]}	[]	2025-10-21	2025-10-22	2025-10-21			
8	v733gyaozkk4bbyywk85k1fm	plugin::content-manager.explorer.read	{}	api::author.author	{"fields":["name","avatar"]}	[]	2025-10-21	2025-10-22	2025-10-21			
9	t4cm3ddlbw6kxyuhg8ror5iq	plugin::content-manager.explorer.read	{}	api::category.category	{"fields":["name","slug","articles","description"]}	[]	2025-10-21	2025-10-21	2025-10-21			
10	lqltrlpx0fxmrcrivco8hvrp	plugin::content-manager.explorer.read	{}	api::global.global	{"fields":["siteName","favicon","siteDescription","defaultSeo.metaTitle","defaultSeo.metaDescription","defaultSeo.shareImage"]}	[]	2025-10-21	2025-10-21	2025-10-21			
11	zdhg9x7hiob5akd9lqatruna	plugin::content-manager.explorer.update	{}	api::about.about	{"fields":["title","blocks"]}	[]	2025-10-21	2025-10-21	2025-10-21			
12	fkayliskgap5sl0jvk20wofz	plugin::content-manager.explorer.update	{}	api::article.article	{"fields":["title","description","slug","cover","category","blocks"]}	[]	2025-10-21	2025-10-22	2025-10-21			
13	mxj6y2act79v4gf5v3ud31gq	plugin::content-manager.explorer.update	{}	api::author.author	{"fields":["name","avatar"]}	[]	2025-10-21	2025-10-22	2025-10-21			
14	b1q5yvvh284uumh6acrhw0w6	plugin::content-manager.explorer.update	{}	api::category.category	{"fields":["name","slug","articles","description"]}	[]	2025-10-21	2025-10-21	2025-10-21			
15	gt3d8pmqudkqq6pwj8uzirwt	plugin::content-manager.explorer.update	{}	api::global.global	{"fields":["siteName","favicon","siteDescription","defaultSeo.metaTitle","defaultSeo.metaDescription","defaultSeo.shareImage"]}	[]	2025-10-21	2025-10-21	2025-10-21			
16	ny99dk9vp0mbixi1m8k9vj4l	plugin::content-manager.explorer.delete	{}	api::about.about	{}	[]	2025-10-21	2025-10-21	2025-10-21			
17	v8vr21y519uilpdyxgqe9n3g	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2025-10-21	2025-10-21	2025-10-21			
18	a3sz829wbtqqckdgi0g2ybsv	plugin::content-manager.explorer.delete	{}	api::author.author	{}	[]	2025-10-21	2025-10-21	2025-10-21			
19	xxe8ghs1q1fskhkz379no5et	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2025-10-21	2025-10-21	2025-10-21			
20	ked5nrlg14qfebw61yg0y48s	plugin::content-manager.explorer.delete	{}	api::global.global	{}	[]	2025-10-21	2025-10-21	2025-10-21			
21	tbsxflmlr0y0nkxch469o00c	plugin::content-manager.explorer.publish	{}	api::about.about	{}	[]	2025-10-21	2025-10-21	2025-10-21			
22	vk9c76vp15qf9l7luuon80rf	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2025-10-21	2025-10-21	2025-10-21			
23	q7ceolov6r4i9fr1x9gnkepq	plugin::content-manager.explorer.publish	{}	api::author.author	{}	[]	2025-10-21	2025-10-21	2025-10-21			
24	sky1by5xxypmh9uf0chj6ghu	plugin::content-manager.explorer.publish	{}	api::category.category	{}	[]	2025-10-21	2025-10-21	2025-10-21			
25	w8i1yftra7zxw42zhpk0hjrz	plugin::content-manager.explorer.publish	{}	api::global.global	{}	[]	2025-10-21	2025-10-21	2025-10-21			
26	v7iye9jzlfhb170htzmw0ha4	plugin::upload.read	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
27	g2u60zu67umtahkroadmlqy4	plugin::upload.configure-view	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
28	u2dims460wr0goi74r5hdx3j	plugin::upload.assets.create	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
29	dhqw3w7lrp9ufs74wcpoaerm	plugin::upload.assets.update	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
30	vrbh7c0jposddauvce4tgrvm	plugin::upload.assets.download	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
31	shbwhbvgnmybmto0lio6rekl	plugin::upload.assets.copy-link	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
32	al4mll6xxhn6ayy5buxb3gg7	plugin::content-manager.explorer.create	{}	api::about.about	{"fields":["title","blocks"]}	["admin::is-creator"]	2025-10-21	2025-10-21	2025-10-21			
33	fowyc7zbdvrm639jjssvicwe	plugin::content-manager.explorer.create	{}	api::article.article	{"fields":["title","description","slug","cover","category","blocks"]}	["admin::is-creator"]	2025-10-21	2025-10-22	2025-10-21			
34	k0ggqcglge5hgmxmbt6gmdm3	plugin::content-manager.explorer.create	{}	api::author.author	{"fields":["name","avatar"]}	["admin::is-creator"]	2025-10-21	2025-10-22	2025-10-21			
35	m7b3si1gg3rq3hsydllkhw42	plugin::content-manager.explorer.create	{}	api::category.category	{"fields":["name","slug","articles","description"]}	["admin::is-creator"]	2025-10-21	2025-10-21	2025-10-21			
36	jrv6l52de4jntymp8yfbqb20	plugin::content-manager.explorer.create	{}	api::global.global	{"fields":["siteName","favicon","siteDescription","defaultSeo.metaTitle","defaultSeo.metaDescription","defaultSeo.shareImage"]}	["admin::is-creator"]	2025-10-21	2025-10-21	2025-10-21			
37	n0g8q6ecaaw0ac3dljuf6o0q	plugin::content-manager.explorer.read	{}	api::about.about	{"fields":["title","blocks"]}	["admin::is-creator"]	2025-10-21	2025-10-21	2025-10-21			
38	n30ybi34vmlk6fespfae6cnx	plugin::content-manager.explorer.read	{}	api::article.article	{"fields":["title","description","slug","cover","category","blocks"]}	["admin::is-creator"]	2025-10-21	2025-10-22	2025-10-21			
39	m244nyfwghbcgdlkqe30ojjw	plugin::content-manager.explorer.read	{}	api::author.author	{"fields":["name","avatar"]}	["admin::is-creator"]	2025-10-21	2025-10-22	2025-10-21			
40	ektvj19zlfe1mzdsaba6kz42	plugin::content-manager.explorer.read	{}	api::category.category	{"fields":["name","slug","articles","description"]}	["admin::is-creator"]	2025-10-21	2025-10-21	2025-10-21			
87	n54it3mtayhkaiab991r0etl	plugin::content-manager.explorer.publish	{}	api::global.global	{}	[]	2025-10-21	2025-10-21	2025-10-21			
41	r0qlqn0bjmkibs6hwodqdgq8	plugin::content-manager.explorer.read	{}	api::global.global	{"fields":["siteName","favicon","siteDescription","defaultSeo.metaTitle","defaultSeo.metaDescription","defaultSeo.shareImage"]}	["admin::is-creator"]	2025-10-21	2025-10-21	2025-10-21			
42	lhfjyqb4paocpesjvhfdccb6	plugin::content-manager.explorer.update	{}	api::about.about	{"fields":["title","blocks"]}	["admin::is-creator"]	2025-10-21	2025-10-21	2025-10-21			
43	kn4hm22x9uau22lvccmzxtmo	plugin::content-manager.explorer.update	{}	api::article.article	{"fields":["title","description","slug","cover","category","blocks"]}	["admin::is-creator"]	2025-10-21	2025-10-22	2025-10-21			
44	qxduy8bb6ui7z5vidvr1gyjn	plugin::content-manager.explorer.update	{}	api::author.author	{"fields":["name","avatar"]}	["admin::is-creator"]	2025-10-21	2025-10-22	2025-10-21			
45	wjlc0byn0e9b4sjia7ohgnii	plugin::content-manager.explorer.update	{}	api::category.category	{"fields":["name","slug","articles","description"]}	["admin::is-creator"]	2025-10-21	2025-10-21	2025-10-21			
46	hfj7hocy5rntgiq9x4qm7vpm	plugin::content-manager.explorer.update	{}	api::global.global	{"fields":["siteName","favicon","siteDescription","defaultSeo.metaTitle","defaultSeo.metaDescription","defaultSeo.shareImage"]}	["admin::is-creator"]	2025-10-21	2025-10-21	2025-10-21			
47	alcz57886028tw270hyrim0w	plugin::content-manager.explorer.delete	{}	api::about.about	{}	["admin::is-creator"]	2025-10-21	2025-10-21	2025-10-21			
48	d6kitdzcz7vlaqwhs12rgmvo	plugin::content-manager.explorer.delete	{}	api::article.article	{}	["admin::is-creator"]	2025-10-21	2025-10-21	2025-10-21			
49	sk2tewuva8kzy9wiyom8qit6	plugin::content-manager.explorer.delete	{}	api::author.author	{}	["admin::is-creator"]	2025-10-21	2025-10-21	2025-10-21			
50	tlzan332qn0zi0vplsxpuuh3	plugin::content-manager.explorer.delete	{}	api::category.category	{}	["admin::is-creator"]	2025-10-21	2025-10-21	2025-10-21			
51	sgsmjei8oiuvy57gkt8uvn23	plugin::content-manager.explorer.delete	{}	api::global.global	{}	["admin::is-creator"]	2025-10-21	2025-10-21	2025-10-21			
52	rtm39kgg96wv5ktm5kkut4gr	plugin::upload.read	{}		{}	["admin::is-creator"]	2025-10-21	2025-10-21	2025-10-21			
53	n9duubi278icpcg6kg83b1op	plugin::upload.configure-view	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
54	aj92tiffbofsu3lpyaz8b6ju	plugin::upload.assets.create	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
55	owbl26jvuzg4vf7pnh4v9tvx	plugin::upload.assets.update	{}		{}	["admin::is-creator"]	2025-10-21	2025-10-21	2025-10-21			
56	wc7zu61e2dwyvgekr62jfg2z	plugin::upload.assets.download	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
57	pwgz03yzmdp1h3pn7i4am90g	plugin::upload.assets.copy-link	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
58	dk2jwwtw5v79bj0ouokmkp1h	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields":["username","email","provider","password","resetPasswordToken","confirmationToken","confirmed","blocked","role"]}	[]	2025-10-21	2025-10-21	2025-10-21			
59	a3sdo2k8pjorw7uu9ti5j6uw	plugin::content-manager.explorer.create	{}	api::about.about	{"fields":["title","blocks"]}	[]	2025-10-21	2025-10-21	2025-10-21			
62	e2owz2s6320ggbo1zwcrx4aj	plugin::content-manager.explorer.create	{}	api::category.category	{"fields":["name","slug","articles","description"]}	[]	2025-10-21	2025-10-21	2025-10-21			
63	t4pe1ud9ujts9554s3eub62l	plugin::content-manager.explorer.create	{}	api::global.global	{"fields":["siteName","favicon","siteDescription","defaultSeo.metaTitle","defaultSeo.metaDescription","defaultSeo.shareImage"]}	[]	2025-10-21	2025-10-21	2025-10-21			
64	susfdsme6yj39vdvp2i1ci0w	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields":["username","email","provider","password","resetPasswordToken","confirmationToken","confirmed","blocked","role"]}	[]	2025-10-21	2025-10-21	2025-10-21			
65	ac0cwlu2stc0ir3s8cp2se39	plugin::content-manager.explorer.read	{}	api::about.about	{"fields":["title","blocks"]}	[]	2025-10-21	2025-10-21	2025-10-21			
68	nsocalebif577wg4s7crf2jg	plugin::content-manager.explorer.read	{}	api::category.category	{"fields":["name","slug","articles","description"]}	[]	2025-10-21	2025-10-21	2025-10-21			
69	p5ocurw75meyd9q522e68b1e	plugin::content-manager.explorer.read	{}	api::global.global	{"fields":["siteName","favicon","siteDescription","defaultSeo.metaTitle","defaultSeo.metaDescription","defaultSeo.shareImage"]}	[]	2025-10-21	2025-10-21	2025-10-21			
70	cg9auou8ydl131j25jut3alw	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields":["username","email","provider","password","resetPasswordToken","confirmationToken","confirmed","blocked","role"]}	[]	2025-10-21	2025-10-21	2025-10-21			
71	axvj0gs9xyncjlizd2eleiix	plugin::content-manager.explorer.update	{}	api::about.about	{"fields":["title","blocks"]}	[]	2025-10-21	2025-10-21	2025-10-21			
74	codpo9blfm6si81198j3jn2o	plugin::content-manager.explorer.update	{}	api::category.category	{"fields":["name","slug","articles","description"]}	[]	2025-10-21	2025-10-21	2025-10-21			
75	oe1kbmcrwseiiz1nim86r9zv	plugin::content-manager.explorer.update	{}	api::global.global	{"fields":["siteName","favicon","siteDescription","defaultSeo.metaTitle","defaultSeo.metaDescription","defaultSeo.shareImage"]}	[]	2025-10-21	2025-10-21	2025-10-21			
76	f8iq88zb1glg26i8j2ccbufo	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2025-10-21	2025-10-21	2025-10-21			
77	jz66l0pou4klpbbnc0wt1w6v	plugin::content-manager.explorer.delete	{}	api::about.about	{}	[]	2025-10-21	2025-10-21	2025-10-21			
78	itqf2etj1rz871zlpt00r725	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2025-10-21	2025-10-21	2025-10-21			
79	nn2gyvp1yqek8s6xriobime9	plugin::content-manager.explorer.delete	{}	api::author.author	{}	[]	2025-10-21	2025-10-21	2025-10-21			
80	alopogs1izsswzz8l81wkctt	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2025-10-21	2025-10-21	2025-10-21			
81	xlvictpf56lti2vf3w05rltv	plugin::content-manager.explorer.delete	{}	api::global.global	{}	[]	2025-10-21	2025-10-21	2025-10-21			
82	oyovpa67gu8tlvdjh655nqny	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2025-10-21	2025-10-21	2025-10-21			
83	lhm8zortq6wgihs3gvvf8vub	plugin::content-manager.explorer.publish	{}	api::about.about	{}	[]	2025-10-21	2025-10-21	2025-10-21			
84	quqhfzwvzc6t7m1z7hpoa1z8	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2025-10-21	2025-10-21	2025-10-21			
85	r3wtwiizp6wuddzywiw9ug1g	plugin::content-manager.explorer.publish	{}	api::author.author	{}	[]	2025-10-21	2025-10-21	2025-10-21			
86	xvr3qmslzzeraegfhvk93fk8	plugin::content-manager.explorer.publish	{}	api::category.category	{}	[]	2025-10-21	2025-10-21	2025-10-21			
88	hn0wvlml6bhr8qasnzkhspe1	plugin::content-manager.single-types.configure-view	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
89	wfo6pojk7wpsgp9b3g105qzp	plugin::content-manager.collection-types.configure-view	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
90	c13p3omsqu7algmx8eed0vtv	plugin::content-manager.components.configure-layout	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
91	adw7zv077ymo75dlbpmz135z	plugin::content-type-builder.read	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
92	uf90ealsd71wazrm45dse3vb	plugin::email.settings.read	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
93	tawda2i3rav0s65mnus8fbae	plugin::upload.read	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
94	evj0kmk1lwz4lyvz83x2uk36	plugin::upload.assets.create	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
95	qzmzun8tuemoda4amkrpez0q	plugin::upload.assets.update	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
96	b57h4iow62e81vka336dlzra	plugin::upload.assets.download	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
97	ri14xgspoz6mxd6vvu2hywbi	plugin::upload.assets.copy-link	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
98	xdo8tm8kkqgk94siz3sfnqyq	plugin::upload.configure-view	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
99	tsph3o2c9b02sz80frbp82ml	plugin::upload.settings.read	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
100	m1hoq12x8osq3ht9rzdk6pa0	plugin::i18n.locale.create	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
101	pibvc21s7arj49bj89shjkmz	plugin::i18n.locale.read	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
102	n0w8it8k6axff40a8zmdignn	plugin::i18n.locale.update	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
103	tq6295la2amf7h0a144n043d	plugin::i18n.locale.delete	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
104	fs1u1e87t4s1juqbf6xapc48	plugin::users-permissions.roles.create	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
105	b3oc4bfufkjflawhn1zjs5tc	plugin::users-permissions.roles.read	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
106	udcbitcjij5cu6v51ub9s7fl	plugin::users-permissions.roles.update	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
107	x3h06snqpxk741ozt7s80q2q	plugin::users-permissions.roles.delete	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
108	oi1t4wwhuffjhzu7d9txex0j	plugin::users-permissions.providers.read	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
109	hdfocf9szpyb4w62bkienpet	plugin::users-permissions.providers.update	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
110	xnz4ryygrvoifnoqxqdlaxws	plugin::users-permissions.email-templates.read	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
111	o1b2zma1v6io7dcbcxr9ofjl	plugin::users-permissions.email-templates.update	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
112	dwf7z7a7pls7e6vl93qra8iu	plugin::users-permissions.advanced-settings.read	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
113	isu6b9bdywc84pln9j2wxb14	plugin::users-permissions.advanced-settings.update	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
114	n4ucltgytq3q4v70pezcarfg	admin::marketplace.read	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
115	jst7r7qg8fxti1o6epj0ab53	admin::webhooks.create	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
116	wcss3e4fnyjwtp1dkdu9zh43	admin::webhooks.read	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
117	winjyjv8ice6nqcej72yij5b	admin::webhooks.update	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
118	z1rf5r9kqmutwsm64kifmc4d	admin::webhooks.delete	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
119	nws6gnrpf598mtmfjyeg95g0	admin::users.create	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
120	g60abof1ydn1b6tbdqkwdjlk	admin::users.read	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
121	fx0xp5ixlyf74bgj9b3c3es1	admin::users.update	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
122	x4x3206mmc3qycjawb2lje14	admin::users.delete	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
123	xdcapcwx4qbvd33tpgisw7fm	admin::roles.create	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
124	cmw58rmfav63a7ibv5tsy255	admin::roles.read	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
125	r7l53guweeseosj31zr06u5u	admin::roles.update	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
126	v0stwgs39aah4ns8t5cp13t8	admin::roles.delete	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
127	ytu56xvgrxbrizjeiogea5a3	admin::api-tokens.access	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
128	jgqwllfa0jkd2xea5sokrxxt	admin::api-tokens.create	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
129	g85439nnp72wdwzm3lfr7igw	admin::api-tokens.read	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
130	spche9w3k85mbmwk6zjubpfl	admin::api-tokens.update	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
131	ili6ykxvxujk59739yrk6mqa	admin::api-tokens.regenerate	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
132	vizh6n0bvdven688pnprshrj	admin::api-tokens.delete	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
133	jxku5w4fubhfzctbagd2yldc	admin::project-settings.update	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
134	raiddwpgkxjw9wfzs10u9vnq	admin::project-settings.read	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
135	ob4ztg5g0zctz7nh9nye1a72	admin::transfer.tokens.access	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
136	iwwuliwqkib6csfqplaglmi7	admin::transfer.tokens.create	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
137	m68eyzuec5cisb5f9vrlesvx	admin::transfer.tokens.read	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
138	thqeqsz4h3735876t7pxkr4j	admin::transfer.tokens.update	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
139	w11nmyxf14qt1txs0bplykmn	admin::transfer.tokens.regenerate	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
140	j2qxwnun8aacqk4awgpdf78h	admin::transfer.tokens.delete	{}		{}	[]	2025-10-21	2025-10-21	2025-10-21			
150	n0vxsujxyuy6o29ck6xn1zrc	plugin::content-manager.explorer.delete	{}	api::blog.blog	{}	[]	2025-10-22	2025-10-22	2025-10-22			
151	dhcygcqqsffrn4rmdv4tp20l	plugin::content-manager.explorer.publish	{}	api::blog.blog	{}	[]	2025-10-22	2025-10-22	2025-10-22			
158	nhqpsqkjjnayqz221gjwnaer	plugin::content-manager.explorer.create	{}	api::article.article	{"fields":["title","description","slug","cover","category","blocks"]}	[]	2025-10-22	2025-10-22	2025-10-22			
159	b7pg0333zofndhp2kznutijy	plugin::content-manager.explorer.create	{}	api::author.author	{"fields":["name","avatar","Bio","blogs"]}	[]	2025-10-22	2025-10-22	2025-10-22			
161	zaem0xukx30nrwiqxnycrctg	plugin::content-manager.explorer.read	{}	api::article.article	{"fields":["title","description","slug","cover","category","blocks"]}	[]	2025-10-22	2025-10-22	2025-10-22			
162	t1ed8lu5xy01yxdrznj39za8	plugin::content-manager.explorer.read	{}	api::author.author	{"fields":["name","avatar","Bio","blogs"]}	[]	2025-10-22	2025-10-22	2025-10-22			
164	ok0giwijt1y2aldtokyaq1ck	plugin::content-manager.explorer.update	{}	api::article.article	{"fields":["title","description","slug","cover","category","blocks"]}	[]	2025-10-22	2025-10-22	2025-10-22			
165	sjwu5dhuvatwxiqhagsfbuuf	plugin::content-manager.explorer.update	{}	api::author.author	{"fields":["name","avatar","Bio","blogs"]}	[]	2025-10-22	2025-10-22	2025-10-22			
167	d1c3icpemob37jz5bimv8e43	plugin::content-manager.explorer.create	{}	api::blog.blog	{"fields":["Title","Slug","Date","ImageURL","Author","Intro","Body.Title","Body.Content","Conclusion","Tags"]}	[]	2025-10-22	2025-10-22	2025-10-22			
168	sp1pbtoincey0471c3ylgwsw	plugin::content-manager.explorer.read	{}	api::blog.blog	{"fields":["Title","Slug","Date","ImageURL","Author","Intro","Body.Title","Body.Content","Conclusion","Tags"]}	[]	2025-10-22	2025-10-22	2025-10-22			
169	eneays2f18dgjj5faalzh071	plugin::content-manager.explorer.update	{}	api::blog.blog	{"fields":["Title","Slug","Date","ImageURL","Author","Intro","Body.Title","Body.Content","Conclusion","Tags"]}	[]	2025-10-22	2025-10-22	2025-10-22			
\.


--
-- Data for Name: _admin_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	2	1.0
2	2	2	2.0
3	3	2	3.0
4	4	2	4.0
5	5	2	5.0
6	6	2	6.0
7	7	2	7.0
8	8	2	8.0
9	9	2	9.0
10	10	2	10.0
11	11	2	11.0
12	12	2	12.0
13	13	2	13.0
14	14	2	14.0
15	15	2	15.0
16	16	2	16.0
17	17	2	17.0
18	18	2	18.0
19	19	2	19.0
20	20	2	20.0
21	21	2	21.0
22	22	2	22.0
23	23	2	23.0
24	24	2	24.0
25	25	2	25.0
26	26	2	26.0
27	27	2	27.0
28	28	2	28.0
29	29	2	29.0
30	30	2	30.0
31	31	2	31.0
32	32	3	1.0
33	33	3	2.0
34	34	3	3.0
35	35	3	4.0
36	36	3	5.0
37	37	3	6.0
38	38	3	7.0
39	39	3	8.0
40	40	3	9.0
41	41	3	10.0
42	42	3	11.0
43	43	3	12.0
44	44	3	13.0
45	45	3	14.0
46	46	3	15.0
47	47	3	16.0
48	48	3	17.0
49	49	3	18.0
50	50	3	19.0
51	51	3	20.0
52	52	3	21.0
53	53	3	22.0
54	54	3	23.0
55	55	3	24.0
56	56	3	25.0
57	57	3	26.0
58	58	1	1.0
59	59	1	2.0
62	62	1	5.0
63	63	1	6.0
64	64	1	7.0
65	65	1	8.0
68	68	1	11.0
69	69	1	12.0
70	70	1	13.0
71	71	1	14.0
74	74	1	17.0
75	75	1	18.0
76	76	1	19.0
77	77	1	20.0
78	78	1	21.0
79	79	1	22.0
80	80	1	23.0
81	81	1	24.0
82	82	1	25.0
83	83	1	26.0
84	84	1	27.0
85	85	1	28.0
86	86	1	29.0
87	87	1	30.0
88	88	1	31.0
89	89	1	32.0
90	90	1	33.0
91	91	1	34.0
92	92	1	35.0
93	93	1	36.0
94	94	1	37.0
95	95	1	38.0
96	96	1	39.0
97	97	1	40.0
98	98	1	41.0
99	99	1	42.0
100	100	1	43.0
101	101	1	44.0
102	102	1	45.0
103	103	1	46.0
104	104	1	47.0
105	105	1	48.0
106	106	1	49.0
107	107	1	50.0
108	108	1	51.0
109	109	1	52.0
110	110	1	53.0
111	111	1	54.0
112	112	1	55.0
113	113	1	56.0
114	114	1	57.0
115	115	1	58.0
116	116	1	59.0
117	117	1	60.0
118	118	1	61.0
119	119	1	62.0
120	120	1	63.0
121	121	1	64.0
122	122	1	65.0
123	123	1	66.0
124	124	1	67.0
125	125	1	68.0
126	126	1	69.0
127	127	1	70.0
128	128	1	71.0
129	129	1	72.0
130	130	1	73.0
131	131	1	74.0
132	132	1	75.0
133	133	1	76.0
134	134	1	77.0
135	135	1	78.0
136	136	1	79.0
137	137	1	80.0
138	138	1	81.0
139	139	1	82.0
140	140	1	83.0
150	150	1	93.0
151	151	1	94.0
158	158	1	95.0
159	159	1	96.0
161	161	1	98.0
162	162	1	99.0
164	164	1	101.0
165	165	1	102.0
167	167	1	103.0
168	168	1	104.0
169	169	1	105.0
\.


--
-- Data for Name: _admin_roles; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	izqravaq2defe0ma2j3c1vaz	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2025-10-21	2025-10-21	2025-10-21			
2	itt6ckoaph2d8w2so82osezt	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2025-10-21	2025-10-21	2025-10-21			
3	nbs2iqdlk8n6ln1fzcc2wi7e	Author	strapi-author	Authors can manage the content they have created.	2025-10-21	2025-10-21	2025-10-21			
\.


--
-- Data for Name: _admin_users; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	p0d4179z2sb6uvbqun1ubq47	Kelvin	Boateng		info@plendify.com	$2a$10$/HEAYJ7JdjCJujM5d4MvjuV/og2pVNolzSFkrIY1uypE2RYB6pJKK			1	0		2025-10-21	2025-11-01	2025-10-21			
\.


--
-- Data for Name: _admin_users_roles_lnk; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
1	1	1	1.0	1.0
\.


--
-- Data for Name: _articles; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._articles (id, document_id, title, description, slug, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	y8tvm7rgq58lzx7up1534obm	Beyond the Bottle: The Incredible Benefits of African Shea Butter for Radiant Skin and Hair	    	beyond-the-bottle-the-incredible-benefits-of-african-shea-butter-for-radiant-skin-and-hair	2025-10-22	2025-10-22		1	1	
2	y8tvm7rgq58lzx7up1534obm	Beyond the Bottle: The Incredible Benefits of African Shea Butter for Radiant Skin and Hair	    	beyond-the-bottle-the-incredible-benefits-of-african-shea-butter-for-radiant-skin-and-hair	2025-10-22	2025-10-22	2025-10-22	1	1	
\.


--
-- Data for Name: _articles_category_lnk; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._articles_category_lnk (id, article_id, category_id, article_ord) FROM stdin;
\.


--
-- Data for Name: _articles_cmps; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._articles_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: _authors; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._authors (id, document_id, name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, bio) FROM stdin;
1	w5j8mvpgeup4t0pmdm9wybml	Abena Sarpong	2025-10-22	2025-10-22	2025-10-22	1	1		
2	bpvoaps016k3781cr8qvfnxd	Mavis Teye	2025-10-22	2025-10-22	2025-10-22	1	1		
3	p4l46ipxpv5klfmwomo9ajub	Kelvin Boateng	2025-10-22	2025-10-22	2025-10-22	1	1		
4	qhrnjkt08ogprrl68a5p8d2u	Opoku Amoakoah	2025-10-22	2025-10-22	2025-10-22	1	1		
5	jjc2ayrlfe4gkmcn0mcls7vo	Michael Yedu	2025-10-22	2025-10-22	2025-10-22	1	1		
\.


--
-- Data for Name: _blogs; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._blogs (id, document_id, title, slug, date, intro, conclusion, tags, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, image_url) FROM stdin;
1	vf3mysv8sbbuttaaqagxpzc6	Beyond the Bottle: The Incredible Benefits of African Shea Butter for Radiant Skin and Hair	beyond-the-bottle-the-incredible-benefits-of-african-shea-butter-for-radiant-skin-and-hair		###### When it comes to natural beauty, one African ingredient continues to outshine the rest—Shea Butter. This rich, creamy gold is more than just a moisturizer. From treating dry scalp and stretch marks to promoting glowing skin and hair growth, African Shea Butter has become a skincare superhero. But not all Shea is created equal. Let’s take a deep dive into the benefits and show you how to unlock the full potential of Plendify’s best Shea-based products.	[{"type":"paragraph","children":[{"type":"text","text":"Shea butter isn’t just a skincare trend — it’s a time-tested African treasure. With Plendify’s premium line of raw and enriched shea-based products, you’re just a few applications away from glowing, radiant skin and strong, healthy hair. Start your shea journey today — your body will thank you."}]},{"type":"paragraph","children":[{"type":"text","text":"Shop Now: "},{"type":"link","url":"https://www.plendify.com/search?q=shea%20butter","children":[{"type":"text","text":"Explore All Shea Butter Products"}]},{"text":"","type":"text"}]}]		2025-10-22	2025-10-26		1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/ffd318e4-b37e-408f-9da1-0ff3a5e188e0.jpeg
4	amz2qnapg6iap6ta8cbtk4mu	5 Powerful African Ingredients in Skin Gourmet Skincare and Their Benefits	5-powerful-african-ingredients-in-skin-gourmet-skincare-and-their-benefits		When it comes to skincare, Africa has always held nature’s secrets. Rich soils, diverse climates,\nand centuries of tradition have given rise to some of the most powerful natural ingredients in the\nworld. Skin Gourmet, one of Ghana’s finest beauty brands, harnesses these treasures to create\nraw, handmade skincare that works. Here are five African ingredients inside [Skin Gourmet Skincare](https://www.plendify.com/search?q=skin%20gourmet) and why they should be part of\nyour beauty routine.	[{"type":"paragraph","children":[{"type":"text","text":"From shea butter to moringa, Africa’s natural ingredients are revolutionizing skincare. With SkinGourmet, you’re not just buying skincare — you’re investing in purity, sustainability, and results."}]},{"type":"paragraph","children":[{"type":"text","text":"Shop authentic Skin Gourmet products today on "},{"type":"link","url":"https://www.plendify.com","children":[{"type":"text","text":"Plendify."}]},{"text":"","type":"text"}]}]		2025-10-22	2025-10-22		1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/e8e4249a-6c6c-45be-85c2-1daaa922c4a8.jpg
6	amz2qnapg6iap6ta8cbtk4mu	5 Powerful African Ingredients in Skin Gourmet Skincare and Their Benefits	5-powerful-african-ingredients-in-skin-gourmet-skincare-and-their-benefits		When it comes to skincare, Africa has always held nature’s secrets. Rich soils, diverse climates,\nand centuries of tradition have given rise to some of the most powerful natural ingredients in the\nworld. Skin Gourmet, one of Ghana’s finest beauty brands, harnesses these treasures to create\nraw, handmade skincare that works. Here are five African ingredients inside [Skin Gourmet Skincare](https://www.plendify.com/search?q=skin%20gourmet) and why they should be part of\nyour beauty routine.	[{"type":"paragraph","children":[{"type":"text","text":"From shea butter to moringa, Africa’s natural ingredients are revolutionizing skincare. With SkinGourmet, you’re not just buying skincare — you’re investing in purity, sustainability, and results."}]},{"type":"paragraph","children":[{"type":"text","text":"Shop authentic Skin Gourmet products today on "},{"type":"link","url":"https://www.plendify.com","children":[{"type":"text","text":"Plendify."}]},{"text":"","type":"text"}]}]		2025-10-22	2025-10-22	2025-10-22	1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/e8e4249a-6c6c-45be-85c2-1daaa922c4a8.jpg
7	yalliqpvo3okqhbbot40wwfu	7 Health Benefits of Nourimeal – The African Super Cereal	7-health-benefits-of-nourimeal-the-african-super-cereal		In today’s fast-paced world, finding a healthy, quick, and affordable meal can feel impossible.\n[Nourimeal](https://www.plendify.com/search?q=nourimeal) — a nutrient-rich African cereal made from grains like millet, sorghum, fonio, and tigernut helps solve this problem. Loved for its taste and superfood qualities, Nourimeal is more than just breakfast; it’s wellness in a bowl.	[{"type":"paragraph","children":[{"type":"text","text":"Nourimeal proves that healthy food doesn’t have to be complicated. Each spoonful is a step toward better health, energy, and wellness. Start your journey today by exploring "},{"type":"link","url":"https://www.plendify.com/search?q=nourimeal","children":[{"type":"text","text":"Nourimeal cereals on Plendify."}]},{"text":"","type":"text"}]}]		2025-10-23	2025-10-23		1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/f5c29614-1e30-4b63-97f2-905c4d985dd3.png
8	yalliqpvo3okqhbbot40wwfu	7 Health Benefits of Nourimeal – The African Super Cereal	7-health-benefits-of-nourimeal-the-african-super-cereal		In today’s fast-paced world, finding a healthy, quick, and affordable meal can feel impossible.\n[Nourimeal](https://www.plendify.com/search?q=nourimeal) — a nutrient-rich African cereal made from grains like millet, sorghum, fonio, and tigernut helps solve this problem. Loved for its taste and superfood qualities, Nourimeal is more than just breakfast; it’s wellness in a bowl.	[{"type":"paragraph","children":[{"type":"text","text":"Nourimeal proves that healthy food doesn’t have to be complicated. Each spoonful is a step toward better health, energy, and wellness. Start your journey today by exploring "},{"type":"link","url":"https://www.plendify.com/search?q=nourimeal","children":[{"type":"text","text":"Nourimeal cereals on Plendify."}]},{"text":"","type":"text"}]}]		2025-10-23	2025-10-23	2025-10-23	1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/f5c29614-1e30-4b63-97f2-905c4d985dd3.png
9	giapqyr2oyjzhwmhlyfz1t8g	10 Amazing Uses of Laam Shea for Skin and Hair	10-amazing-uses-of-laam-shea-for-skin-and-hair		Ghanaian shea butter is globally celebrated — but[ LAAMShea](https://www.plendify.com/product-detail/fafe0011-dadb-47b3-9c01-15ab986b2d47) takes it a step further by offering\npremium, unrefined shea straight from cooperatives. Whether for glowing skin or healthy hair,\nLAAMShea is your all-in-one beauty solution.\nHere are 10 powerful ways to use it.	[{"type":"paragraph","children":[{"type":"text","text":"LAAMShea isn’t just shea butter — it’s an African tradition of wellness in a jar."}]},{"type":"paragraph","children":[{"type":"text","text":"Add"},{"type":"link","url":"https://www.plendify.com/product-detail/fafe0011-dadb-47b3-9c01-15ab986b2d47","children":[{"type":"text","text":" LAAMShea Shea Butter "}]},{"type":"text","text":"to your skincare routine today and experience natural beauty the African way. "}]}]		2025-10-23	2025-10-23		1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/a2e2ee0c-0ed0-4860-b1f0-0c05b693d7a0.jpg
10	giapqyr2oyjzhwmhlyfz1t8g	10 Amazing Uses of Laam Shea for Skin and Hair	10-amazing-uses-of-laam-shea-for-skin-and-hair		Ghanaian shea butter is globally celebrated — but[ LAAMShea](https://www.plendify.com/product-detail/fafe0011-dadb-47b3-9c01-15ab986b2d47) takes it a step further by offering\npremium, unrefined shea straight from cooperatives. Whether for glowing skin or healthy hair,\nLAAMShea is your all-in-one beauty solution.\nHere are 10 powerful ways to use it.	[{"type":"paragraph","children":[{"type":"text","text":"LAAMShea isn’t just shea butter — it’s an African tradition of wellness in a jar."}]},{"type":"paragraph","children":[{"type":"text","text":"Add"},{"type":"link","url":"https://www.plendify.com/product-detail/fafe0011-dadb-47b3-9c01-15ab986b2d47","children":[{"type":"text","text":" LAAMShea Shea Butter "}]},{"type":"text","text":"to your skincare routine today and experience natural beauty the African way. "}]}]		2025-10-23	2025-10-23	2025-10-23	1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/a2e2ee0c-0ed0-4860-b1f0-0c05b693d7a0.jpg
11	rim7ngnmbhlqxifj4vhp478b	The Benefits of Using Natural African Skincare Products by Nokware	the-benefits-of-using-natural-african-skincare-products-by-nokware		The beauty industry is shifting. Consumers worldwide are demanding clean, eco-friendly, and\neffective skincare. Leading the charge is Nokware, a Ghanaian brand blending traditional\nAfrican ingredients with sustainable packaging. But why should you choose Nokware over\nchemical-heavy products? Let’s explore.	[{"type":"paragraph","children":[{"type":"text","text":"Choosing Nokware is more than skincare — it’s a commitment to wellness,\\nsustainability, and community. Shop Nokware natural skincare products today on Plendify and glow with purpose."}]}]		2025-10-23	2025-11-02		1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/ab12a401-e825-4e12-be9e-3fea45b67296.jpeg
13	vf3mysv8sbbuttaaqagxpzc6	Beyond the Bottle: The Incredible Benefits of African Shea Butter for Radiant Skin and Hair	beyond-the-bottle-the-incredible-benefits-of-african-shea-butter-for-radiant-skin-and-hair		###### When it comes to natural beauty, one African ingredient continues to outshine the rest—Shea Butter. This rich, creamy gold is more than just a moisturizer. From treating dry scalp and stretch marks to promoting glowing skin and hair growth, African Shea Butter has become a skincare superhero. But not all Shea is created equal. Let’s take a deep dive into the benefits and show you how to unlock the full potential of Plendify’s best Shea-based products.	[{"type":"paragraph","children":[{"type":"text","text":"Shea butter isn’t just a skincare trend — it’s a time-tested African treasure. With Plendify’s premium line of raw and enriched shea-based products, you’re just a few applications away from glowing, radiant skin and strong, healthy hair. Start your shea journey today — your body will thank you."}]},{"type":"paragraph","children":[{"type":"text","text":"Shop Now: "},{"type":"link","url":"https://www.plendify.com/search?q=shea%20butter","children":[{"type":"text","text":"Explore All Shea Butter Products"}]},{"text":"","type":"text"}]}]		2025-10-22	2025-10-26	2025-10-26	1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/ffd318e4-b37e-408f-9da1-0ff3a5e188e0.jpeg
14	bhp2quqqn5kt3ypgyk32d07y	Baobab Magic: Why African “Tree of Life” Products Belong in Your Skincare Routine	baobab-magic-why-african-tree-of-life-products-belong-in-your-skincare-routine		Walk through the sun-drenched plains of Africa, and you’ll encounter the "Tree of Life," the majestic Baobab. For centuries, its fruit has been revered for its remarkable vitality-giving properties. Now, the secret is out, and baobab powder has earned its place as a pantry staple for the health-conscious. But beyond the "superfood" label lies a tangible, potent ingredient waiting to elevate your well-being and I can personally testify to this anytime I use the baobab powder for my breakfast especially when I lived in the northern part of Ghana where I could easily get it. Baobab also has ingredients that are good for skin care. 	[{"type":"paragraph","children":[{"type":"text","text":"The baobab isn’t called the Tree of Life for nothing. With its rich nutritional profile and soothing benefits, it’s no surprise that modern skincare brands are harnessing its power. Whether you want a daily soap, a luxurious whipped butter, or pure oil, Plendify brings baobab directly to you — fresh from Africa."}]}]	 Baobab Oil Natural Skincare African Beauty Shea Butter Plendify	2025-10-28	2025-10-28		1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/d7213755-15b9-4f63-8c0e-cd7e08445141.jpeg
17	bhp2quqqn5kt3ypgyk32d07y	Baobab Magic: Why African “Tree of Life” Products Belong in Your Skincare Routine	baobab-magic-why-african-tree-of-life-products-belong-in-your-skincare-routine		Walk through the sun-drenched plains of Africa, and you’ll encounter the "Tree of Life," the majestic Baobab. For centuries, its fruit has been revered for its remarkable vitality-giving properties. Now, the secret is out, and baobab powder has earned its place as a pantry staple for the health-conscious. But beyond the "superfood" label lies a tangible, potent ingredient waiting to elevate your well-being and I can personally testify to this anytime I use the baobab powder for my breakfast especially when I lived in the northern part of Ghana where I could easily get it. Baobab also has ingredients that are good for skin care. 	[{"type":"paragraph","children":[{"type":"text","text":"The baobab isn’t called the Tree of Life for nothing. With its rich nutritional profile and soothing benefits, it’s no surprise that modern skincare brands are harnessing its power. Whether you want a daily soap, a luxurious whipped butter, or pure oil, Plendify brings baobab directly to you — fresh from Africa."}]}]	 Baobab Oil Natural Skincare African Beauty Shea Butter Plendify	2025-10-28	2025-10-28	2025-10-28	1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/d7213755-15b9-4f63-8c0e-cd7e08445141.jpeg
18	qzis4sapdgn08mg5jog93vbf	Must-Try African/Nigerian Spices to Transform Your Cooking (And Where to Buy Them Authentically	must-try-african-nigerian-spices-to-transform-your-cooking-and-where-to-buy-them-authentically		The soul of Nigerian cuisine lies in its intoxicating, complex blend of spices. These aren’t just seasonings; they are the storytellers of tradition, the creators of depth, and the key to recreating the authentic tastes of home for the diaspora. If your pantry is missing these essentials, you’re missing out on a world of flavor. At Plendify, we’ve partnered directly with producers to bring you the most authentic, high-quality Nigerian spices, so you can cook with confidence and connect with culture.	[{"type":"heading","children":[{"type":"text","text":"Ready to build your authentic African/Nigerian/Ghana pantry?","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"We bring these flavors directly from the source to your kitchen. "},{"type":"link","url":"https://www.plendify.com/search?q=spices","children":[{"type":"text","text":"Browse our full collection of Authentic Spices and bring the taste of home to your cooking."}]},{"text":"","type":"text"}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]	nigerian spices, uziza, suya spice, african cooking, nigerian food, where to buy african spices, diaspora food, authentic ingredients, Plendify, nigerian spices online, Ghana spices	2025-10-28	2025-10-28		1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/78a7c9eb-e044-4742-afaf-95a72dabd75b.jpeg
19	qzis4sapdgn08mg5jog93vbf	Must-Try African/Nigerian Spices to Transform Your Cooking (And Where to Buy Them Authentically	must-try-african-nigerian-spices-to-transform-your-cooking-and-where-to-buy-them-authentically		The soul of Nigerian cuisine lies in its intoxicating, complex blend of spices. These aren’t just seasonings; they are the storytellers of tradition, the creators of depth, and the key to recreating the authentic tastes of home for the diaspora. If your pantry is missing these essentials, you’re missing out on a world of flavor. At Plendify, we’ve partnered directly with producers to bring you the most authentic, high-quality Nigerian spices, so you can cook with confidence and connect with culture.	[{"type":"heading","children":[{"type":"text","text":"Ready to build your authentic African/Nigerian/Ghana pantry?","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"We bring these flavors directly from the source to your kitchen. "},{"type":"link","url":"https://www.plendify.com/search?q=spices","children":[{"type":"text","text":"Browse our full collection of Authentic Spices and bring the taste of home to your cooking."}]},{"text":"","type":"text"}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]	nigerian spices, uziza, suya spice, african cooking, nigerian food, where to buy african spices, diaspora food, authentic ingredients, Plendify, nigerian spices online, Ghana spices	2025-10-28	2025-10-28	2025-10-28	1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/78a7c9eb-e044-4742-afaf-95a72dabd75b.jpeg
20	ic07g7et3ftskmdizr67oa7p	How Plendify Supports African Artisans: Meet the Makers Behind Your Favourite Products	how-plendify-supports-african-artisans-meet-the-makers-behind-your-favourite-products		When you hold a jar of Plendify shea butter or brew a cup of our Duffys herbal tea or organic black tea, you’re holding more than a product. You’re holding a story of skill, resilience, and community. In a world of mass production, we choose a different path—a path that leads directly to the hands of the artisans. Today, we want to introduce you to the heartbeat of Plendify: the makers. This is how your choice to shop with us creates a ripple effect of positive change.	[{"type":"paragraph","children":[{"type":"text","text":"Your purchase is a vote for the kind of world you want to live in."}]},{"type":"paragraph","children":[{"type":"text","text":"Choose products with a purpose. "},{"type":"link","url":"https://www.plendify.com/arts-and-crafts","children":[{"type":"text","text":"Explore our collections and meet the makers through the products you love."}]},{"text":"","type":"text"}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]	ethical sourcing, fair trade, african artisans, social impact, shea butter cooperative, handmade, community support, Plendify story, buy with purpose	2025-10-28	2025-11-02		1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/098a1a39-d46e-4868-970b-42df8db5d249.jpg
22	faqcmmcgjg843xzwti7mxudt	Selling African Products Globally: A Step-by-Step Guide for Artisans & Small Businesses	selling-african-products-globally-a-step-by-step-guide-for-artisans-and-small-businesses		You create extraordinary products: handcrafted goods that embody rich heritage and unparalleled quality. But the biggest challenge for many African artisans and small businesses isn't creation; it's connection. How do you reach the eager audiences in the USA, UK, Canada, and beyond who are searching for exactly what you offer? At Plendify, we've built a bridge. This guide outlines the key steps to preparing your business for the global stage and how partnering with us can make that journey seamless and successful.	[{"type":"paragraph","children":[{"type":"text","text":"Stop wondering how to reach the world. Let us show you."}]},{"type":"paragraph","children":[{"type":"text","text":"If you are a producer of high-quality, natural, or handcrafted African products, we want to hear from you."}]},{"type":"paragraph","children":[{"text":"","type":"text"},{"type":"link","url":"https://www.plendify.com/sellers","children":[{"type":"text","text":"Learn more about our requirements and apply to become a Plendify Supplier today."}]},{"type":"text","text":" Let’s build a brighter future for African commerce, together."}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]	sell on plendify, become a supplier, african artisans, export african products, global marketplace, reach diaspora, artisan platform, business growth, Plendify for suppliers	2025-10-28	2025-11-02		1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/098a1a39-d46e-4868-970b-42df8db5d249.jpg
24	axe6hd10zylvlzxun5mganzy	Hibiscus: The Vibrant & Tangy Zobo of West Africa	hibiscus-the-vibrant-and-tangy-zobo-of-west-africa			[{"type":"heading","children":[{"type":"text","text":"Whether you crave the soothing warmth of Rooibos or the vibrant tang of Hibiscus, your perfect caffeine-free companion is waiting.","bold":true}],"level":6},{"type":"paragraph","children":[{"text":"","type":"text"},{"type":"link","url":"https://www.plendify.com/search?q=Hibiscus+%26+Tea+Tree+Sugar+Scrub+","children":[{"type":"text","text":"Explore our collection of Authentic African Herbal Teas at Plendify and discover a new world of wellness."}]},{"text":"","type":"text"}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]		2025-10-28	2025-11-01		1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/2977706f-9276-46a3-ae23-6c67c49d00c7.jpg
25	axe6hd10zylvlzxun5mganzy	Hibiscus: The Vibrant & Tangy Zobo of West Africa	hibiscus-the-vibrant-and-tangy-zobo-of-west-africa			[{"type":"heading","children":[{"type":"text","text":"Whether you crave the soothing warmth of Rooibos or the vibrant tang of Hibiscus, your perfect caffeine-free companion is waiting.","bold":true}],"level":6},{"type":"paragraph","children":[{"text":"","type":"text"},{"type":"link","url":"https://www.plendify.com/search?q=Hibiscus+%26+Tea+Tree+Sugar+Scrub+","children":[{"type":"text","text":"Explore our collection of Authentic African Herbal Teas at Plendify and discover a new world of wellness."}]},{"text":"","type":"text"}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]		2025-10-28	2025-11-01	2025-11-01	1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/2977706f-9276-46a3-ae23-6c67c49d00c7.jpg
26	pkutp368pw3uter1rqvaas7x	Organic Is Better: Why You Should Switch to Natural Antibacterial Soaps	organic-is-better-why-you-should-switch-to-natural-antibacterial-soaps		We all want to feel clean and protected — but “antibacterial” on the label doesn’t always mean safer. For daily use, evidence shows plain soap or thoughtfully formulated natural antibacterial soaps are the smarter choice. Below’s a short, practical guide on why and which Plendify products to pick.\nWhy the “antibacterial” label is more complicated than it sounds\n	[{"type":"paragraph","children":[{"text":"","type":"text"},{"type":"link","url":"https://www.plendify.com/search?q=tama","children":[{"type":"text","text":"Try: Tama Antibacterial Soap on Plendify, and Tama Shea Body Butter on Plendify"}]},{"text":"","type":"text"}]}]	Natural Soap, Antibacterial Soap, Shea Butter, Soap Ghana Beauty, Clean Living	2025-11-02	2025-11-02		1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/28d50c8a-b77f-4f5a-a9f3-efa1a6ffb273.jpg
28	pkutp368pw3uter1rqvaas7x	Organic Is Better: Why You Should Switch to Natural Antibacterial Soaps	organic-is-better-why-you-should-switch-to-natural-antibacterial-soaps		We all want to feel clean and protected — but “antibacterial” on the label doesn’t always mean safer. For daily use, evidence shows plain soap or thoughtfully formulated natural antibacterial soaps are the smarter choice. Below’s a short, practical guide on why and which Plendify products to pick.\nWhy the “antibacterial” label is more complicated than it sounds\n	[{"type":"paragraph","children":[{"text":"","type":"text"},{"type":"link","url":"https://www.plendify.com/search?q=tama","children":[{"type":"text","text":"Try: Tama Antibacterial Soap on Plendify, and Tama Shea Body Butter on Plendify"}]},{"text":"","type":"text"}]}]	Natural Soap, Antibacterial Soap, Shea Butter, Soap Ghana Beauty, Clean Living	2025-11-02	2025-11-02	2025-11-02	1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/28d50c8a-b77f-4f5a-a9f3-efa1a6ffb273.jpg
29	f7gekov3zfkshb5miag3c52o	A Beginner’s Guide to Building a Natural Skincare Routine in Ghana	a-beginner-s-guide-to-building-a-natural-skincare-routine-in-ghana		Switching to natural products can feel overwhelming. The truth: keep it simple. Focus on\nclean ingredients, hydration, and targeted repair. Here’s a practical routine for Ghanaian\nskin types that uses African ingredients.\n	[{"type":"paragraph","children":[{"type":"text","text":"Shop the routine: Duffys Repair Face Cream, Duffys Body Cream, Tama Shea Oil, and Healthy Glow Shower Gel."}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]	Natural Skincare, Ghana Beauty, Shea Butter, Duffys Skincare, Skincare Routine	2025-11-02	2025-11-02		1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/39a5b92f-2940-4e0e-b1a0-d41e8b983fe6.jpeg
31	f7gekov3zfkshb5miag3c52o	A Beginner’s Guide to Building a Natural Skincare Routine in Ghana	a-beginner-s-guide-to-building-a-natural-skincare-routine-in-ghana		Switching to natural products can feel overwhelming. The truth: keep it simple. Focus on\nclean ingredients, hydration, and targeted repair. Here’s a practical routine for Ghanaian\nskin types that uses African ingredients.\n	[{"type":"paragraph","children":[{"type":"text","text":"Shop the routine: Duffys Repair Face Cream, Duffys Body Cream, Tama Shea Oil, and Healthy Glow Shower Gel."}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]	Natural Skincare, Ghana Beauty, Shea Butter, Duffys Skincare, Skincare Routine	2025-11-02	2025-11-02	2025-11-02	1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/39a5b92f-2940-4e0e-b1a0-d41e8b983fe6.jpeg
32	rpolus9mr3fs14kva8x37kjy	The Ultimate Healthy Eating Guide — Local Snacks From Ghana That Actually Nourish	the-ultimate-healthy-eating-guide-local-snacks-from-ghana-that-actually-nourish			[{"type":"paragraph","children":[{"type":"text","text":"Find these on Plendify: "},{"type":"link","url":"https://www.plendify.com/product-detail/bf2b3ffe-b8db-4937-bd05-f288dbdff962","children":[{"type":"text","text":"Judi Achomo"}]},{"type":"text","text":", "},{"type":"link","url":"https://www.plendify.com/product-detail/1875450a-4585-4441-9b38-a980d07dc6e1","children":[{"type":"text","text":"Cocoyam Chips"}]},{"type":"text","text":", "},{"type":"link","url":"https://www.plendify.com/product-detail/956d3409-0713-4e76-8fc5-421542b3ced8","children":[{"type":"text","text":"Dried Mango"}]},{"type":"text","text":", and "},{"type":"link","url":"https://www.plendify.com/product-detail/00486656-75a3-4cbb-90e9-ebac894edd94","children":[{"type":"text","text":"Unripe Plantain Chips"}]},{"type":"text","text":"."}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]	HealthySnacks, GhanaFood, DiabeticFriendly, DriedMango, PlantainChips	2025-11-02	2025-11-02		1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/8c7b61a3-dec5-487d-a3bb-c0cb640066a4.jpeg
33	rpolus9mr3fs14kva8x37kjy	The Ultimate Healthy Eating Guide — Local Snacks From Ghana That Actually Nourish	the-ultimate-healthy-eating-guide-local-snacks-from-ghana-that-actually-nourish			[{"type":"paragraph","children":[{"type":"text","text":"Find these on Plendify: "},{"type":"link","url":"https://www.plendify.com/product-detail/bf2b3ffe-b8db-4937-bd05-f288dbdff962","children":[{"type":"text","text":"Judi Achomo"}]},{"type":"text","text":", "},{"type":"link","url":"https://www.plendify.com/product-detail/1875450a-4585-4441-9b38-a980d07dc6e1","children":[{"type":"text","text":"Cocoyam Chips"}]},{"type":"text","text":", "},{"type":"link","url":"https://www.plendify.com/product-detail/956d3409-0713-4e76-8fc5-421542b3ced8","children":[{"type":"text","text":"Dried Mango"}]},{"type":"text","text":", and "},{"type":"link","url":"https://www.plendify.com/product-detail/00486656-75a3-4cbb-90e9-ebac894edd94","children":[{"type":"text","text":"Unripe Plantain Chips"}]},{"type":"text","text":"."}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]	HealthySnacks, GhanaFood, DiabeticFriendly, DriedMango, PlantainChips	2025-11-02	2025-11-02	2025-11-02	1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/8c7b61a3-dec5-487d-a3bb-c0cb640066a4.jpeg
34	ic07g7et3ftskmdizr67oa7p	How Plendify Supports African Artisans: Meet the Makers Behind Your Favourite Products	how-plendify-supports-african-artisans-meet-the-makers-behind-your-favourite-products		When you hold a jar of Plendify shea butter or brew a cup of our Duffys herbal tea or organic black tea, you’re holding more than a product. You’re holding a story of skill, resilience, and community. In a world of mass production, we choose a different path—a path that leads directly to the hands of the artisans. Today, we want to introduce you to the heartbeat of Plendify: the makers. This is how your choice to shop with us creates a ripple effect of positive change.	[{"type":"paragraph","children":[{"type":"text","text":"Your purchase is a vote for the kind of world you want to live in."}]},{"type":"paragraph","children":[{"type":"text","text":"Choose products with a purpose. "},{"type":"link","url":"https://www.plendify.com/arts-and-crafts","children":[{"type":"text","text":"Explore our collections and meet the makers through the products you love."}]},{"text":"","type":"text"}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]	ethical sourcing, fair trade, african artisans, social impact, shea butter cooperative, handmade, community support, Plendify story, buy with purpose	2025-10-28	2025-11-02	2025-11-02	1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/098a1a39-d46e-4868-970b-42df8db5d249.jpg
35	faqcmmcgjg843xzwti7mxudt	Selling African Products Globally: A Step-by-Step Guide for Artisans & Small Businesses	selling-african-products-globally-a-step-by-step-guide-for-artisans-and-small-businesses		You create extraordinary products: handcrafted goods that embody rich heritage and unparalleled quality. But the biggest challenge for many African artisans and small businesses isn't creation; it's connection. How do you reach the eager audiences in the USA, UK, Canada, and beyond who are searching for exactly what you offer? At Plendify, we've built a bridge. This guide outlines the key steps to preparing your business for the global stage and how partnering with us can make that journey seamless and successful.	[{"type":"paragraph","children":[{"type":"text","text":"Stop wondering how to reach the world. Let us show you."}]},{"type":"paragraph","children":[{"type":"text","text":"If you are a producer of high-quality, natural, or handcrafted African products, we want to hear from you."}]},{"type":"paragraph","children":[{"text":"","type":"text"},{"type":"link","url":"https://www.plendify.com/sellers","children":[{"type":"text","text":"Learn more about our requirements and apply to become a Plendify Supplier today."}]},{"type":"text","text":" Let’s build a brighter future for African commerce, together."}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]	sell on plendify, become a supplier, african artisans, export african products, global marketplace, reach diaspora, artisan platform, business growth, Plendify for suppliers	2025-10-28	2025-11-02	2025-11-02	1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/098a1a39-d46e-4868-970b-42df8db5d249.jpg
36	rim7ngnmbhlqxifj4vhp478b	The Benefits of Using Natural African Skincare Products by Nokware	the-benefits-of-using-natural-african-skincare-products-by-nokware		The beauty industry is shifting. Consumers worldwide are demanding clean, eco-friendly, and\neffective skincare. Leading the charge is Nokware, a Ghanaian brand blending traditional\nAfrican ingredients with sustainable packaging. But why should you choose Nokware over\nchemical-heavy products? Let’s explore.	[{"type":"paragraph","children":[{"type":"text","text":"Choosing Nokware is more than skincare — it’s a commitment to wellness,\\nsustainability, and community. Shop Nokware natural skincare products today on Plendify and glow with purpose."}]}]		2025-10-23	2025-11-02	2025-11-02	1	1		https://d2os3qe7b3xuhc.cloudfront.net/products/ab12a401-e825-4e12-be9e-3fea45b67296.jpeg
\.


--
-- Data for Name: _blogs_author_lnk; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._blogs_author_lnk (id, blog_id, author_id, blog_ord) FROM stdin;
1	1	1	1.0
3	4	2	1.0
4	6	2	2.0
5	7	4	1.0
6	8	4	2.0
7	9	5	1.0
8	10	5	2.0
9	11	2	3.0
11	13	1	2.0
12	14	3	1.0
14	17	3	2.0
15	18	4	3.0
16	19	4	4.0
17	20	1	3.0
19	22	4	5.0
21	24	3	3.0
22	25	3	4.0
23	26	5	3.0
25	28	5	4.0
26	29	1	5.0
28	31	1	6.0
29	32	4	7.0
30	33	4	8.0
31	34	1	4.0
32	35	4	6.0
33	36	2	4.0
\.


--
-- Data for Name: _blogs_cmps; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._blogs_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
1	1	1	blog.body	Body	
8	4	4	blog.body	Body	
14	6	6	blog.body	Body	
15	7	7	blog.body	Body	
17	8	8	blog.body	Body	
18	9	9	blog.body	Body	
20	10	10	blog.body	Body	
21	11	11	blog.body	Body	
25	13	13	blog.body	Body	
26	14	14	blog.body	Body	
41	17	17	blog.body	Body	
42	18	18	blog.body	Body	
53	19	19	blog.body	Body	
54	20	20	blog.body	Body	
66	22	22	blog.body	Body	
73	24	24	blog.body	Body	
78	25	25	blog.body	Body	
79	26	26	blog.body	Body	
90	28	28	blog.body	Body	
91	29	29	blog.body	Body	
100	31	31	blog.body	Body	
101	32	32	blog.body	Body	
108	33	33	blog.body	Body	
111	34	34	blog.body	Body	
114	35	35	blog.body	Body	
117	36	36	blog.body	Body	
\.


--
-- Data for Name: _categories; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._categories (id, document_id, name, slug, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: _components_blog_bodies; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._components_blog_bodies (id, title, content) FROM stdin;
1		[{"type":"heading","children":[{"type":"text","text":"What Makes African Shea Butter So Powerful?","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Unrefined African Shea Butter, especially from Ghana, is loaded with:"}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Vitamins A, E & F for healing and elasticity,"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Essential fatty acids that deeply moisturize,"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Anti-inflammatory compounds like cinnamic acid,"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Natural UV protection (about SPF 6)."}]}]},{"type":"paragraph","children":[{"type":"text","text":"Whether you have eczema, acne scars, brittle hair, or dry skin, shea butter offers a safe, chemical-free solution."}]},{"type":"heading","children":[{"type":"text","text":"Why You Should Choose Unrefined Shea Butter","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Refined Shea may smell better, but it loses many nutrients in processing. Plendify proudly stocks 100% raw, unrefined Ghanaian shea butter — exactly how nature intended it."}]},{"type":"paragraph","children":[{"type":"text","text":"Try "},{"type":"link","url":"https://www.plendify.com/product-detail/60cb1dd1-9b3a-410f-a6d2-d090c30cc961","children":[{"type":"text","text":"Tama Unscented Organic Unrefined Shea Butter","underline":true},{"type":"text","text":" "}]},{"type":"text","text":"– it's the purest way to experience the full spectrum of benefits."}]},{"type":"heading","children":[{"type":"text","text":"Shea Butter for Glowing Skin","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Tired of dry patches or dull skin? Shea butter helps to:"}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Lock in moisture without clogging pores,"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Fade stretch marks, hyperpigmentation, and scars,"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Improve skin elasticity and smoothness."}]}]},{"type":"paragraph","children":[{"type":"text","text":"Pro Pick: Duffys Repair Face Cream combines shea butter with African herbs to help restore and renew facial skin."}]},{"type":"heading","children":[{"type":"text","text":"Shea Butter for Hair Growth","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Shea is a natural miracle for your scalp and hair too! It:"}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Reduces dandruff and flakiness,"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Seals in moisture to prevent breakage,"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Promotes thickness and shine."}]}]},{"type":"paragraph","children":[{"type":"text","text":"Try this duo:"}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"text":"","type":"text"},{"type":"link","url":"https://www.plendify.com/product-detail/55bb7908-ebbc-4644-910c-5412b076f6f4","children":[{"type":"text","text":"Tama Shea Oil"}]},{"type":"text","text":" – Hair for scalp massages"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"text":"","type":"text"},{"type":"link","url":"https://www.plendify.com/product-detail/79d7848a-df3a-4e18-ba90-a82f303c413f","children":[{"type":"text","text":"Tama Shea Body Butter"}]},{"type":"text","text":" for sealing ends"}]}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"paragraph","children":[{"type":"text","text":"Quick Tips: How to Use Shea Products for Best Results","bold":true}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Apply shea butter right after a shower when skin is damp"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Use shea oil before bed as a leave-in hair treatment"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Combine with coconut oil or aloe vera for extra hydration"}]}]}]
4		[{"type":"heading","children":[{"type":"text","text":"1. Shea Butter – The Ultimate Moisturizer","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Known as “women’s gold,” shea butter is Africa’s most famous skincare ingredient. Rich in"}]},{"type":"paragraph","children":[{"type":"text","text":"vitamins A, E, and fatty acids, it hydrates deeply, reduces scars, and improves elasticity. Perfect for dry or sensitive skin."}]},{"type":"paragraph","children":[{"type":"text","text":"Try it in"},{"type":"link","url":"https://www.plendify.com/search?q=skin%20gourmet","children":[{"type":"text","text":" Skin Gourmet Shea-based products."}]},{"text":"","type":"text"}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"heading","children":[{"type":"text","text":"2. Baobab Oil – The Tree of Life’s Beauty Secret","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Baobab oil is lightweight but powerful, absorbing quickly while delivering omega fatty acids that fight dryness and boost skin elasticity."}]},{"type":"heading","children":[{"type":"text","text":"","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","bold":true,"text":"3. Black Soap – Africa’s Natural Cleanser"}]},{"type":"paragraph","children":[{"type":"text","text":"Made from cocoa pod ash and plantain skins, African black soap cleanses without stripping skin. It’s perfect for acne-prone skin, gently exfoliating while reducing blemishes."}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"heading","children":[{"type":"text","text":"4. Moringa Oil – Anti-Aging Powerhouse","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Moringa is rich in antioxidants and plant-based nutrients that fight free radicals, slow aging, and brighten dull skin."}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"heading","children":[{"type":"text","text":"5. Cocoa Butter – Deep Hydration and Glow","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Cocoa butter is loaded with natural fats that lock in moisture, reduce stretch marks, and give skin a healthy glow."}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]
6		[{"type":"heading","children":[{"type":"text","text":"1. Shea Butter – The Ultimate Moisturizer","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Known as “women’s gold,” shea butter is Africa’s most famous skincare ingredient. Rich in"}]},{"type":"paragraph","children":[{"type":"text","text":"vitamins A, E, and fatty acids, it hydrates deeply, reduces scars, and improves elasticity. Perfect for dry or sensitive skin."}]},{"type":"paragraph","children":[{"type":"text","text":"Try it in"},{"type":"link","url":"https://www.plendify.com/search?q=skin%20gourmet","children":[{"type":"text","text":" Skin Gourmet Shea-based products."}]},{"text":"","type":"text"}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"heading","children":[{"type":"text","text":"2. Baobab Oil – The Tree of Life’s Beauty Secret","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Baobab oil is lightweight but powerful, absorbing quickly while delivering omega fatty acids that fight dryness and boost skin elasticity."}]},{"type":"heading","children":[{"type":"text","text":"","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","bold":true,"text":"3. Black Soap – Africa’s Natural Cleanser"}]},{"type":"paragraph","children":[{"type":"text","text":"Made from cocoa pod ash and plantain skins, African black soap cleanses without stripping skin. It’s perfect for acne-prone skin, gently exfoliating while reducing blemishes."}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"heading","children":[{"type":"text","text":"4. Moringa Oil – Anti-Aging Powerhouse","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Moringa is rich in antioxidants and plant-based nutrients that fight free radicals, slow aging, and brighten dull skin."}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"heading","children":[{"type":"text","text":"5. Cocoa Butter – Deep Hydration and Glow","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Cocoa butter is loaded with natural fats that lock in moisture, reduce stretch marks, and give skin a healthy glow."}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]
7		[{"type":"heading","children":[{"type":"text","text":"1. Packed with Fiber for Better Digestion","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Nourimeal cereals like "},{"type":"link","url":"https://www.plendify.com/product-detail/f390c69c-e304-4fb8-b266-7fec3e0bb269","children":[{"type":"text","text":"Fonio Flakes"}]},{"type":"text","text":" and "},{"type":"link","url":"https://www.plendify.com/product-detail/4ddeda78-1410-4f11-9947-7ceed5cbcb11","children":[{"type":"text","text":"Millet Shake Powder"}]},{"type":"text","text":" are high in dietary fiber, improving digestion and preventing constipation."}]},{"type":"heading","children":[{"type":"text","text":"2. Boosts Energy Naturally","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Grains like sorghum and millet provide slow-release carbs, keeping you energized all day without sugar crashes."}]},{"type":"heading","children":[{"type":"text","text":"3. Gluten-Free & Allergy Friendly","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Fonio and sorghum are naturally gluten-free, making Nourimeal safe for people with gluten intolerance."}]},{"type":"heading","children":[{"type":"text","text":"4. Supports Heart Health","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Millet and tigernuts are linked to lower cholesterol levels and improved cardiovascular health."}]},{"type":"heading","children":[{"type":"text","text":"5. Rich in Plant-Based Protein","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Nourimeal cereals provide essential amino acids for muscle repair and growth — perfect for vegans and vegetarians."}]},{"type":"heading","children":[{"type":"text","text":"6. Strengthens Immunity","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Fonio and tigernuts are rich in iron, zinc, and antioxidants, which help boost immunity."}]},{"type":"heading","children":[{"type":"text","text":"7. Perfect for Busy Lifestyles","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Whether it’s "},{"type":"link","url":"https://www.plendify.com/product-detail/36fadf50-24f5-4234-854b-c256b3573ce4","children":[{"type":"text","text":"Tigernut Shake Powder"}]},{"type":"text","text":" for smoothies or "},{"type":"link","url":"https://www.plendify.com/product-detail/f390c69c-e304-4fb8-b266-7fec3e0bb269","children":[{"type":"text","text":"Fonio with Dates Fruit Flakes"}]},{"type":"text","text":" for breakfast, Nourimeal is quick, filling, and healthy."}]}]
8		[{"type":"heading","children":[{"type":"text","text":"1. Packed with Fiber for Better Digestion","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Nourimeal cereals like "},{"type":"link","url":"https://www.plendify.com/product-detail/f390c69c-e304-4fb8-b266-7fec3e0bb269","children":[{"type":"text","text":"Fonio Flakes"}]},{"type":"text","text":" and "},{"type":"link","url":"https://www.plendify.com/product-detail/4ddeda78-1410-4f11-9947-7ceed5cbcb11","children":[{"type":"text","text":"Millet Shake Powder"}]},{"type":"text","text":" are high in dietary fiber, improving digestion and preventing constipation."}]},{"type":"heading","children":[{"type":"text","text":"2. Boosts Energy Naturally","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Grains like sorghum and millet provide slow-release carbs, keeping you energized all day without sugar crashes."}]},{"type":"heading","children":[{"type":"text","text":"3. Gluten-Free & Allergy Friendly","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Fonio and sorghum are naturally gluten-free, making Nourimeal safe for people with gluten intolerance."}]},{"type":"heading","children":[{"type":"text","text":"4. Supports Heart Health","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Millet and tigernuts are linked to lower cholesterol levels and improved cardiovascular health."}]},{"type":"heading","children":[{"type":"text","text":"5. Rich in Plant-Based Protein","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Nourimeal cereals provide essential amino acids for muscle repair and growth — perfect for vegans and vegetarians."}]},{"type":"heading","children":[{"type":"text","text":"6. Strengthens Immunity","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Fonio and tigernuts are rich in iron, zinc, and antioxidants, which help boost immunity."}]},{"type":"heading","children":[{"type":"text","text":"7. Perfect for Busy Lifestyles","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Whether it’s "},{"type":"link","url":"https://www.plendify.com/product-detail/36fadf50-24f5-4234-854b-c256b3573ce4","children":[{"type":"text","text":"Tigernut Shake Powder"}]},{"type":"text","text":" for smoothies or "},{"type":"link","url":"https://www.plendify.com/product-detail/f390c69c-e304-4fb8-b266-7fec3e0bb269","children":[{"type":"text","text":"Fonio with Dates Fruit Flakes"}]},{"type":"text","text":" for breakfast, Nourimeal is quick, filling, and healthy."}]}]
9		[{"type":"list","format":"ordered","children":[{"type":"list-item","children":[{"type":"text","text":"Daily moisturizer for soft, supple skin."}]},{"type":"list-item","children":[{"type":"text","text":"Hair conditioner to reduce dryness and breakage."}]},{"type":"list-item","children":[{"type":"text","text":"Lip balm to heal chapped lips."}]},{"type":"list-item","children":[{"type":"text","text":"Stretch mark cream for pregnancy and weight loss."}]},{"type":"list-item","children":[{"type":"text","text":"After-sun treatment to soothe burns."}]},{"type":"list-item","children":[{"type":"text","text":"Natural remedy for eczema and psoriasis."}]},{"type":"list-item","children":[{"type":"text","text":"Beard softener for men’s grooming."}]},{"type":"list-item","children":[{"type":"text","text":"Makeup remover that’s gentle on skin."}]},{"type":"list-item","children":[{"type":"text","text":"Heel softener for cracked feet."}]},{"type":"list-item","children":[{"type":"text","text":"Nail and cuticle strengthener."}]}]}]
10		[{"type":"list","format":"ordered","children":[{"type":"list-item","children":[{"type":"text","text":"Daily moisturizer for soft, supple skin."}]},{"type":"list-item","children":[{"type":"text","text":"Hair conditioner to reduce dryness and breakage."}]},{"type":"list-item","children":[{"type":"text","text":"Lip balm to heal chapped lips."}]},{"type":"list-item","children":[{"type":"text","text":"Stretch mark cream for pregnancy and weight loss."}]},{"type":"list-item","children":[{"type":"text","text":"After-sun treatment to soothe burns."}]},{"type":"list-item","children":[{"type":"text","text":"Natural remedy for eczema and psoriasis."}]},{"type":"list-item","children":[{"type":"text","text":"Beard softener for men’s grooming."}]},{"type":"list-item","children":[{"type":"text","text":"Makeup remover that’s gentle on skin."}]},{"type":"list-item","children":[{"type":"text","text":"Heel softener for cracked feet."}]},{"type":"list-item","children":[{"type":"text","text":"Nail and cuticle strengthener."}]}]}]
11		[{"type":"paragraph","children":[{"type":"text","text":"1. 100% Natural Ingredients","bold":true}]},{"type":"paragraph","children":[{"type":"text","text":"Nokware uses raw shea butter, moringa, and African black soap — no harsh chemicals, noparabens."}]},{"type":"paragraph","children":[{"type":"text","text":"2. Eco-Friendly Packaging","bold":true}]},{"type":"paragraph","children":[{"type":"text","text":"Nokware is known for its biodegradable and reusable packaging, reducing environmental waste."}]},{"type":"paragraph","children":[{"type":"text","text":"3. Gentle but Effective","bold":true}]},{"type":"paragraph","children":[{"type":"text","text":"Products are safe for sensitive skin, babies, and people prone to allergies."}]},{"type":"paragraph","children":[{"type":"text","text":"4. Supports Local Communities","bold":true}]},{"type":"paragraph","children":[{"type":"text","text":"By buying Nokware, you empower African farmers and artisans."}]},{"type":"paragraph","children":[{"type":"text","text":"5. Results You Can See","bold":true}]},{"type":"paragraph","children":[{"type":"text","text":"From moisturized skin to reduced acne, Nokware products deliver visible benefits."}]}]
13		[{"type":"heading","children":[{"type":"text","text":"What Makes African Shea Butter So Powerful?","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Unrefined African Shea Butter, especially from Ghana, is loaded with:"}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Vitamins A, E & F for healing and elasticity,"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Essential fatty acids that deeply moisturize,"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Anti-inflammatory compounds like cinnamic acid,"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Natural UV protection (about SPF 6)."}]}]},{"type":"paragraph","children":[{"type":"text","text":"Whether you have eczema, acne scars, brittle hair, or dry skin, shea butter offers a safe, chemical-free solution."}]},{"type":"heading","children":[{"type":"text","text":"Why You Should Choose Unrefined Shea Butter","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Refined Shea may smell better, but it loses many nutrients in processing. Plendify proudly stocks 100% raw, unrefined Ghanaian shea butter — exactly how nature intended it."}]},{"type":"paragraph","children":[{"type":"text","text":"Try "},{"type":"link","url":"https://www.plendify.com/product-detail/60cb1dd1-9b3a-410f-a6d2-d090c30cc961","children":[{"type":"text","text":"Tama Unscented Organic Unrefined Shea Butter","underline":true},{"type":"text","text":" "}]},{"type":"text","text":"– it's the purest way to experience the full spectrum of benefits."}]},{"type":"heading","children":[{"type":"text","text":"Shea Butter for Glowing Skin","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Tired of dry patches or dull skin? Shea butter helps to:"}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Lock in moisture without clogging pores,"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Fade stretch marks, hyperpigmentation, and scars,"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Improve skin elasticity and smoothness."}]}]},{"type":"paragraph","children":[{"type":"text","text":"Pro Pick: Duffys Repair Face Cream combines shea butter with African herbs to help restore and renew facial skin."}]},{"type":"heading","children":[{"type":"text","text":"Shea Butter for Hair Growth","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Shea is a natural miracle for your scalp and hair too! It:"}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Reduces dandruff and flakiness,"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Seals in moisture to prevent breakage,"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Promotes thickness and shine."}]}]},{"type":"paragraph","children":[{"type":"text","text":"Try this duo:"}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"text":"","type":"text"},{"type":"link","url":"https://www.plendify.com/product-detail/55bb7908-ebbc-4644-910c-5412b076f6f4","children":[{"type":"text","text":"Tama Shea Oil"}]},{"type":"text","text":" – Hair for scalp massages"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"text":"","type":"text"},{"type":"link","url":"https://www.plendify.com/product-detail/79d7848a-df3a-4e18-ba90-a82f303c413f","children":[{"type":"text","text":"Tama Shea Body Butter"}]},{"type":"text","text":" for sealing ends"}]}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"paragraph","children":[{"type":"text","text":"Quick Tips: How to Use Shea Products for Best Results","bold":true}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Apply shea butter right after a shower when skin is damp"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Use shea oil before bed as a leave-in hair treatment"}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Combine with coconut oil or aloe vera for extra hydration"}]}]}]
14		[{"type":"paragraph","children":[{"type":"text","text":"When it comes to natural skincare, Africa’s “Tree of Life,” the baobab, is one ingredient you can’t ignore. For centuries, communities across the continent have cherished its fruit and seeds for nourishment and healing. Today, baobab oil has found its way into soaps, whipped butters, and pure oils that transform skincare into self-care."}]},{"type":"paragraph","children":[{"type":"text","text":"At Plendify, we’re excited to bring you Beauty Secrets Natural Handcrafted Shea Butter Soap with Baobab, Beauty Secrets Shea Butter with Euphoria, and Pure Baobab Oil 50ml, three products that combine tradition, science, and luxury."}]},{"type":"heading","children":[{"type":"text","text":"Why Baobab Is Special","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Baobab trees are iconic for their massive trunks and long lives, but the real magic is in their fruit. The oil pressed from baobab seeds is:"}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Deeply moisturizing – absorbs quickly without leaving skin greasy."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Packed with antioxidants – vitamins A, D, E, and F help fight free radicals."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Collagen-boosting – supports skin elasticity and firmness."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Anti-inflammatory – helps calm redness, eczema, and psoriasis."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Versatile – safe for face, body, hair, and even nails."}]}]},{"type":"paragraph","children":[{"type":"text","text":"This makes baobab oil a true multitasker for anyone seeking hydration, protection, and natural glow."}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"heading","children":[{"type":"text","text":"Beauty Secrets Products You’ll Love","bold":true}],"level":6},{"type":"heading","children":[{"type":"text","text":" 1. Beauty Secrets Natural Handcrafted Shea Butter Soap with Baobab","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Need a gentle but nourishing cleanser? This unscented soap is perfect for sensitive skin. Shea butter hydrates while baobab oil adds antioxidant protection and a calming touch. Your skin feels clean, soft, and cared for — without irritation."}]},{"type":"paragraph","children":[{"text":"","type":"text"},{"type":"link","url":"https://www.plendify.com/search?q=shea+baobab","children":[{"type":"text","text":" Shop the Shea Butter Soap with Baobab on Plendify"}]},{"text":"","type":"text"}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"heading","children":[{"type":"text","text":" "},{"type":"text","text":"2. Beauty Secrets Shea Butter with Euphoria","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Looking for indulgence with purpose? This whipped shea butter, infused with the light scent of warm vanilla and the benefits of baobab, hydrates deeply while calming your senses. It’s perfect for winding down at night or giving your skin some TLC during the day."}]},{"type":"paragraph","children":[{"type":"text","text":" "},{"type":"link","url":"https://www.plendify.com/product-detail/684a1de9-4748-4ba6-8f00-4c66549ea54c","children":[{"type":"text","text":"Get Shea Butter with Euphoria on Plendify"}]},{"text":"","type":"text"}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"heading","children":[{"type":"text","text":"3. Pure Baobab Oil 50ml","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"For those who want baobab in its purest form, this cold-pressed oil is bottled fresh to lock in nutrients. Lightweight yet rich, it’s excellent for face, body, hair, or cuticles. If your skin is sensitive, dry, or mature, this is your go-to natural oil."}]},{"type":"paragraph","children":[{"text":"","type":"text"},{"type":"link","url":"https://www.plendify.com/product-detail/8a4ef9f2-12b7-45eb-a544-8ba7d38b2dfe","children":[{"type":"text","text":"Order Pure Baobab Oil 50ml on Plendify"}]},{"text":"","type":"text"}]},{"type":"paragraph","children":[{"type":"text","text":" "}]},{"type":"heading","children":[{"type":"text","text":"Why Switch to Baobab-Based Skincare?","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"•\\tIf you struggle with dryness → Baobab penetrates deeply and hydrates naturally."}]},{"type":"paragraph","children":[{"type":"text","text":"•\\tIf you want anti-aging support → Vitamins and omega fatty acids help improve elasticity."}]},{"type":"paragraph","children":[{"type":"text","text":"•\\tIf you’re sensitive → Baobab calms irritation and reduces redness."}]},{"type":"paragraph","children":[{"type":"text","text":"•\\tIf you love versatility → Use it on face, body, and hair — one product, many uses."}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]
17		[{"type":"paragraph","children":[{"type":"text","text":"When it comes to natural skincare, Africa’s “Tree of Life,” the baobab, is one ingredient you can’t ignore. For centuries, communities across the continent have cherished its fruit and seeds for nourishment and healing. Today, baobab oil has found its way into soaps, whipped butters, and pure oils that transform skincare into self-care."}]},{"type":"paragraph","children":[{"type":"text","text":"At Plendify, we’re excited to bring you Beauty Secrets Natural Handcrafted Shea Butter Soap with Baobab, Beauty Secrets Shea Butter with Euphoria, and Pure Baobab Oil 50ml, three products that combine tradition, science, and luxury."}]},{"type":"heading","children":[{"type":"text","text":"Why Baobab Is Special","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Baobab trees are iconic for their massive trunks and long lives, but the real magic is in their fruit. The oil pressed from baobab seeds is:"}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Deeply moisturizing – absorbs quickly without leaving skin greasy."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Packed with antioxidants – vitamins A, D, E, and F help fight free radicals."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Collagen-boosting – supports skin elasticity and firmness."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Anti-inflammatory – helps calm redness, eczema, and psoriasis."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Versatile – safe for face, body, hair, and even nails."}]}]},{"type":"paragraph","children":[{"type":"text","text":"This makes baobab oil a true multitasker for anyone seeking hydration, protection, and natural glow."}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"heading","children":[{"type":"text","text":"Beauty Secrets Products You’ll Love","bold":true}],"level":6},{"type":"heading","children":[{"type":"text","text":" 1. Beauty Secrets Natural Handcrafted Shea Butter Soap with Baobab","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Need a gentle but nourishing cleanser? This unscented soap is perfect for sensitive skin. Shea butter hydrates while baobab oil adds antioxidant protection and a calming touch. Your skin feels clean, soft, and cared for — without irritation."}]},{"type":"paragraph","children":[{"text":"","type":"text"},{"type":"link","url":"https://www.plendify.com/search?q=shea+baobab","children":[{"type":"text","text":" Shop the Shea Butter Soap with Baobab on Plendify"}]},{"text":"","type":"text"}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"heading","children":[{"type":"text","text":" "},{"type":"text","text":"2. Beauty Secrets Shea Butter with Euphoria","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Looking for indulgence with purpose? This whipped shea butter, infused with the light scent of warm vanilla and the benefits of baobab, hydrates deeply while calming your senses. It’s perfect for winding down at night or giving your skin some TLC during the day."}]},{"type":"paragraph","children":[{"type":"text","text":" "},{"type":"link","url":"https://www.plendify.com/product-detail/684a1de9-4748-4ba6-8f00-4c66549ea54c","children":[{"type":"text","text":"Get Shea Butter with Euphoria on Plendify"}]},{"text":"","type":"text"}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"heading","children":[{"type":"text","text":"3. Pure Baobab Oil 50ml","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"For those who want baobab in its purest form, this cold-pressed oil is bottled fresh to lock in nutrients. Lightweight yet rich, it’s excellent for face, body, hair, or cuticles. If your skin is sensitive, dry, or mature, this is your go-to natural oil."}]},{"type":"paragraph","children":[{"text":"","type":"text"},{"type":"link","url":"https://www.plendify.com/product-detail/8a4ef9f2-12b7-45eb-a544-8ba7d38b2dfe","children":[{"type":"text","text":"Order Pure Baobab Oil 50ml on Plendify"}]},{"text":"","type":"text"}]},{"type":"paragraph","children":[{"type":"text","text":" "}]},{"type":"heading","children":[{"type":"text","text":"Why Switch to Baobab-Based Skincare?","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"•\\tIf you struggle with dryness → Baobab penetrates deeply and hydrates naturally."}]},{"type":"paragraph","children":[{"type":"text","text":"•\\tIf you want anti-aging support → Vitamins and omega fatty acids help improve elasticity."}]},{"type":"paragraph","children":[{"type":"text","text":"•\\tIf you’re sensitive → Baobab calms irritation and reduces redness."}]},{"type":"paragraph","children":[{"type":"text","text":"•\\tIf you love versatility → Use it on face, body, and hair — one product, many uses."}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]
18		[{"type":"list","format":"ordered","children":[{"type":"list-item","children":[{"type":"text","text":"The Iconic Suya Spice (Yaji)","bold":true}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Flavor Profile: This is the heart of Nigeria’s famous street food. A blend of ground peanuts, ginger, paprika, onion powder, and cayenne, it’s smoky, spicy, and nutty."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"How to Use It: Rub it on meats, fish, or even tofu before grilling for instant Suya. You can also sprinkle it on popcorn or roasted plantains for a savory snack."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Create Street Food Magic: "},{"type":"link","url":"https://www.plendify.com/product-detail/16e1fa77-8910-4080-af8a-6042e8d78601","children":[{"type":"text","text":"Get our authentic Suya Spice blend."}]},{"text":"","type":"text"}]}]},{"type":"paragraph","children":[{"type":"text","text":"2. Irú (Locust Beans): The Umami Bomb","bold":true}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Flavor Profile: Fermented locust beans have a strong, pungent aroma and a deep, savory, cheesy umami flavor that forms the base of many soups."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"How to Use It: A teaspoon is all you need to add incredible depth to Egusi Soup, Ogbono Soup, and stews."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Add Deep Flavor: Discover our traditionally fermented Irú."}]}]},{"type":"paragraph","children":[{"type":"text","text":"3. Vivi Kelewele Spice Mix","bold":true}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Flavor Profile: ViVi kelewele spice mix is a carefully formulated all-natural mixture of herbs & spices. It’s full of healthy nutrients & antioxidants. Ideal for frying or roasting ripe plantain cubes "}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"How to Use It: Add fresh chopped onions (optional), salt to taste & fry away. Just explore! It contains no additives, flavorings or colorants. "}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Find the Authentic Taste: "},{"type":"link","url":"https://www.plendify.com/product-detail/6633313f-7dfc-43b8-bcb1-1a6a5f5fbdde","children":[{"type":"text","text":"Get our vivi kelewele spice here."}]},{"text":"","type":"text"}]}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"paragraph","children":[{"type":"text","text":"4. Ehuru (Calabash Nutmeg)","bold":true}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Flavor Profile: Earthy, aromatic, and slightly bitter, Ehuru is a key ingredient in the popular Pepper Soup and some stews."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"How to Use It: Always grate or grind it fresh for the best flavor. It pairs wonderfully with Uziza."}]}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"paragraph","children":[{"type":"text","text":"5. Ground Crayfish: The Savory Anchor","bold":true}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Flavor Profile: Provides a distinctive seafood savoriness and depth that is non-negotiable in many Nigerian dishes."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"How to Use It: A staple in Jollof Rice, Okra Soup, and Afang Soup."}]}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]
19		[{"type":"list","format":"ordered","children":[{"type":"list-item","children":[{"type":"text","text":"The Iconic Suya Spice (Yaji)","bold":true}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Flavor Profile: This is the heart of Nigeria’s famous street food. A blend of ground peanuts, ginger, paprika, onion powder, and cayenne, it’s smoky, spicy, and nutty."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"How to Use It: Rub it on meats, fish, or even tofu before grilling for instant Suya. You can also sprinkle it on popcorn or roasted plantains for a savory snack."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Create Street Food Magic: "},{"type":"link","url":"https://www.plendify.com/product-detail/16e1fa77-8910-4080-af8a-6042e8d78601","children":[{"type":"text","text":"Get our authentic Suya Spice blend."}]},{"text":"","type":"text"}]}]},{"type":"paragraph","children":[{"type":"text","text":"2. Irú (Locust Beans): The Umami Bomb","bold":true}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Flavor Profile: Fermented locust beans have a strong, pungent aroma and a deep, savory, cheesy umami flavor that forms the base of many soups."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"How to Use It: A teaspoon is all you need to add incredible depth to Egusi Soup, Ogbono Soup, and stews."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Add Deep Flavor: Discover our traditionally fermented Irú."}]}]},{"type":"paragraph","children":[{"type":"text","text":"3. Vivi Kelewele Spice Mix","bold":true}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Flavor Profile: ViVi kelewele spice mix is a carefully formulated all-natural mixture of herbs & spices. It’s full of healthy nutrients & antioxidants. Ideal for frying or roasting ripe plantain cubes "}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"How to Use It: Add fresh chopped onions (optional), salt to taste & fry away. Just explore! It contains no additives, flavorings or colorants. "}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Find the Authentic Taste: "},{"type":"link","url":"https://www.plendify.com/product-detail/6633313f-7dfc-43b8-bcb1-1a6a5f5fbdde","children":[{"type":"text","text":"Get our vivi kelewele spice here."}]},{"text":"","type":"text"}]}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"paragraph","children":[{"type":"text","text":"4. Ehuru (Calabash Nutmeg)","bold":true}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Flavor Profile: Earthy, aromatic, and slightly bitter, Ehuru is a key ingredient in the popular Pepper Soup and some stews."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"How to Use It: Always grate or grind it fresh for the best flavor. It pairs wonderfully with Uziza."}]}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"paragraph","children":[{"type":"text","text":"5. Ground Crayfish: The Savory Anchor","bold":true}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Flavor Profile: Provides a distinctive seafood savoriness and depth that is non-negotiable in many Nigerian dishes."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"How to Use It: A staple in Jollof Rice, Okra Soup, and Afang Soup."}]}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]
20		[{"type":"heading","children":[{"text":"Spotlight: The Ghanaian Shea Butter Cooperatives","type":"text","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"\\rIn the northern regions of Ghana, shea butter production is a tradition managed by women’s cooperatives. These collectives empower women economically, giving them autonomy and a voice.\\r"}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"The Process:","bold":true},{"type":"text","text":" The process remains beautifully traditional. Women like Amina carefully gather wild shea nuts, which are then boiled, sun-dried, crushed, and roasted. The kernels are ground into a paste and hand-churned to separate the rich, raw butter. This method, passed down through generations, ensures the highest quality and nutrient retention.\\r"}]},{"type":"list-item","children":[{"type":"text","text":"The Impact:","bold":true},{"type":"text","text":" By partnering directly with these cooperatives, Plendify ensures fair, transparent pricing. This means the women receive a stable, dignified income for their work. This income doesn't just support an individual; it funds children's education, healthcare, and community projects. Your purchase directly contributes to this cycle of empowerment."}]}]},{"type":"heading","children":[{"type":"text","text":"The Story Woven into Every Basket","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"\\rBeyond food and beauty, Africa is home to incredible artisanship. Take, for example, the skilled basket weavers in Kenya.\\r\\n"}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"The Craft: Using sustainable materials like sisal and natural dyes, these artisans weave intricate, functional art—each pattern telling a story of their heritage.\\r"}]},{"type":"list-item","children":[{"type":"text","text":"The Plendify Partnership: We work with these artisan groups to help them adapt their designs for a global market while preserving their cultural integrity. We handle the complexities of international logistics, allowing them to focus on their craft and reach customers they never could before."}]}]},{"type":"paragraph","children":[{"type":"text","text":"This is What Ethical Sourcing Looks Like\\r\\nFor us, \\"ethical\\" isn’t a buzzword. It’s a commitment to:\\r"}]},{"type":"list","format":"ordered","children":[{"type":"list-item","children":[{"type":"text","text":"Fair Wages:","bold":true},{"type":"text","text":" Paying producers what their goods are truly worth.\\r\\nDirect Partnerships: Cutting out unnecessary middlemen to ensure profits go to the creators.\\r"}]},{"type":"list-item","children":[{"type":"text","text":"Community Investment: ","bold":true},{"type":"text","text":"A portion of our profits is reinvested into community-chosen projects, like clean water wells or school supplies.\\r\\n"}]}]}]
22		[{"type":"heading","children":[{"type":"text","text":"Step 1: Perfect Your Product Presentation","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"The online world is visual. Before you think about shipping, focus on storytelling."}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"High-Quality Photography","bold":true},{"type":"text","text":": Invest in clear, bright photos from multiple angles. Show your product in use. Images that tell a story of craftsmanship connect emotionally with buyers."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Compelling Descriptions: ","bold":true},{"type":"text","text":"Don’t just list features. Describe the story behind the product. Who made it? What traditional techniques were used? What makes it unique? This authenticity is your superpower."}]}]},{"type":"heading","children":[{"type":"text","text":"Step 2: Understand Your International Customer","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"The diaspora craves a taste of home, while Western consumers seek authenticity and ethical stories."}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Diaspora Audience: ","bold":true},{"type":"text","text":"Highlight nostalgia, authenticity, and direct-from-source quality."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Western Audience: ","bold":true},{"type":"text","text":"Emphasize the unique story, ethical production, natural ingredients, and artisanal quality. Use terms like \\"handmade,\\" \\"sustainable,\\" and \\"fair trade.\\""}]}]},{"type":"heading","children":[{"type":"text","text":"Step 3: Navigate Logistics: Packaging & Shipping","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"This is often the most daunting step. Key considerations include:"}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Durable Packaging: Ensure your products can survive long journeys."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Export Documentation: Understanding customs forms, duties, and regulations is critical."}]}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"heading","children":[{"type":"text","text":"How Plendify Simplifies Your Global Expansion","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"This is where we turn challenges into opportunities. When you join the Plendify marketplace, you gain a partner."}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"We Handle the Complex Logistics:","bold":true},{"type":"text","text":" Our team manages international shipping, customs clearance, and customer delivery. You send your products to our regional hub, and we do the rest."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Access to a Targeted Audience:","bold":true},{"type":"text","text":" We market your products to a growing community of buyers who actively seek out authentic African goods. We drive the traffic; you focus on production."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"A Platform Built on Ethics: ","bold":true},{"type":"text","text":"We believe in fair partnership. Our model ensures you receive a transparent and dignified price for your work, fostering long-term growth."}]}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]
24		[{"type":"paragraph","children":[{"type":"text","text":"Known as \\"Zobo\\" in Nigeria and Sobolo in Ghana, Hibiscus tea is made from the deep crimson petals of the Hibiscus sabdariffa flower."}]},{"type":"paragraph","children":[{"type":"text","text":"Flavor Profile: Tart, cranberry-like, and vividly crimson. It’s often enjoyed hot or as a refreshing iced tea and can be sweetened with honey or ginger."}]},{"type":"paragraph","children":[{"type":"text","text":"Health Highlights:"}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Heart Health: Studies suggest it can help support healthy blood pressure levels."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Vitamin C Boost: It’s an excellent source of Vitamin C, supporting immune function."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Refreshing & Cooling: Its sharp, tart flavor makes it incredibly refreshing, especially when served cold."}]}]}]
25		[{"type":"paragraph","children":[{"type":"text","text":"Known as \\"Zobo\\" in Nigeria and Sobolo in Ghana, Hibiscus tea is made from the deep crimson petals of the Hibiscus sabdariffa flower."}]},{"type":"paragraph","children":[{"type":"text","text":"Flavor Profile: Tart, cranberry-like, and vividly crimson. It’s often enjoyed hot or as a refreshing iced tea and can be sweetened with honey or ginger."}]},{"type":"paragraph","children":[{"type":"text","text":"Health Highlights:"}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Heart Health: Studies suggest it can help support healthy blood pressure levels."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Vitamin C Boost: It’s an excellent source of Vitamin C, supporting immune function."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Refreshing & Cooling: Its sharp, tart flavor makes it incredibly refreshing, especially when served cold."}]}]}]
26		[{"type":"paragraph","children":[{"type":"text","text":"The FDA and the American CDC confirm: for everyday consumer use, antibacterial agents in soap do not reduce illness more than standard soap and water — and some ingredients have safety concerns."}]},{"type":"paragraph","children":[{"type":"text","text":"Bottom line:","bold":true},{"type":"text","text":" pick products that clean well and avoid long-term exposure to questionable actives."}]},{"type":"heading","children":[{"type":"text","text":"Key pain points we solve","bold":true}],"level":6},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Dry, irritated skin after frequent washing"}]},{"type":"list-item","children":[{"type":"text","text":"Concern about harsh chemicals (e.g., triclosan)"}]},{"type":"list-item","children":[{"type":"text","text":"Wanting effective cleansing without harming skin microbiome"}]}]},{"type":"heading","children":[{"type":"text","text":"What to look for in a natural antibacterial soap","bold":true}],"level":6},{"type":"list","format":"ordered","children":[{"type":"list-item","children":[{"type":"text","text":"Gentle surfactants that don’t strip skin."}]},{"type":"list-item","children":[{"type":"text","text":"Plant-based antibacterial botanicals (e.g., neem, tea tree)."}]},{"type":"list-item","children":[{"type":"text","text":"Moisturizing ingredients (shea butter, oils).Transparent labeling."}]}]},{"type":"heading","children":[{"type":"text","text":"Product picks from Plendify","bold":true}],"level":6},{"type":"paragraph","children":[{"text":"","type":"text"},{"type":"link","url":"https://www.plendify.com/product-detail/c3a6a300-88c3-4e95-8b62-0d4a52010e19","children":[{"type":"text","text":"Tama Antibacterial Soap"}]},{"type":"text","text":" — natural formula combining plant-based antibacterial botanicals with moisturizing shea extracts."}]},{"type":"paragraph","children":[{"text":"","type":"text"},{"type":"link","url":"https://www.plendify.com/product-detail/11420b7f-e7b0-4e81-9839-1422298f989e","children":[{"type":"text","text":"Tama Shea Butter Soap or Body Butter "}]},{"type":"text","text":"— restore skin barrier after cleansing."}]},{"type":"heading","children":[{"type":"text","text":"How to use","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"1. Lather soap 20 seconds, rinse well."}]},{"type":"paragraph","children":[{"type":"text","text":"2. Pat dry."}]},{"type":"paragraph","children":[{"type":"text","text":"3. Apply shea butter or oil immediately to seal in moisture."}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]
28		[{"type":"paragraph","children":[{"type":"text","text":"The FDA and the American CDC confirm: for everyday consumer use, antibacterial agents in soap do not reduce illness more than standard soap and water — and some ingredients have safety concerns."}]},{"type":"paragraph","children":[{"type":"text","text":"Bottom line:","bold":true},{"type":"text","text":" pick products that clean well and avoid long-term exposure to questionable actives."}]},{"type":"heading","children":[{"type":"text","text":"Key pain points we solve","bold":true}],"level":6},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Dry, irritated skin after frequent washing"}]},{"type":"list-item","children":[{"type":"text","text":"Concern about harsh chemicals (e.g., triclosan)"}]},{"type":"list-item","children":[{"type":"text","text":"Wanting effective cleansing without harming skin microbiome"}]}]},{"type":"heading","children":[{"type":"text","text":"What to look for in a natural antibacterial soap","bold":true}],"level":6},{"type":"list","format":"ordered","children":[{"type":"list-item","children":[{"type":"text","text":"Gentle surfactants that don’t strip skin."}]},{"type":"list-item","children":[{"type":"text","text":"Plant-based antibacterial botanicals (e.g., neem, tea tree)."}]},{"type":"list-item","children":[{"type":"text","text":"Moisturizing ingredients (shea butter, oils).Transparent labeling."}]}]},{"type":"heading","children":[{"type":"text","text":"Product picks from Plendify","bold":true}],"level":6},{"type":"paragraph","children":[{"text":"","type":"text"},{"type":"link","url":"https://www.plendify.com/product-detail/c3a6a300-88c3-4e95-8b62-0d4a52010e19","children":[{"type":"text","text":"Tama Antibacterial Soap"}]},{"type":"text","text":" — natural formula combining plant-based antibacterial botanicals with moisturizing shea extracts."}]},{"type":"paragraph","children":[{"text":"","type":"text"},{"type":"link","url":"https://www.plendify.com/product-detail/11420b7f-e7b0-4e81-9839-1422298f989e","children":[{"type":"text","text":"Tama Shea Butter Soap or Body Butter "}]},{"type":"text","text":"— restore skin barrier after cleansing."}]},{"type":"heading","children":[{"type":"text","text":"How to use","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"1. Lather soap 20 seconds, rinse well."}]},{"type":"paragraph","children":[{"type":"text","text":"2. Pat dry."}]},{"type":"paragraph","children":[{"type":"text","text":"3. Apply shea butter or oil immediately to seal in moisture."}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]
29		[{"type":"heading","children":[{"type":"text","text":"Step 1 - Cleanse","bold":true}],"level":6},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Use "},{"type":"link","url":"https://www.plendify.com/product-detail/5b942bd9-824c-4836-bc8d-5f7d230a2552","children":[{"type":"text","text":"Duffys Healthy Glow Shower Gel"}]},{"type":"text","text":" for gentle daily cleansing."}]}]},{"type":"heading","children":[{"type":"text","text":"Step 2 - Treat","bold":true}],"level":6},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Use "},{"type":"link","url":"https://www.plendify.com/product-detail/0fa54674-609c-483f-9b18-d80db86e77c4","children":[{"type":"text","text":"Duffys Repair Face Cream"}]},{"type":"text","text":" for scars and "},{"type":"link","url":"https://d2os3qe7b3xuhc.cloudfront.net/products/39a5b92f-2940-4e0e-b1a0-d41e8b983fe6.jpeg","children":[{"type":"text","text":"Duffys Repair Body Cream"}]},{"type":"text","text":" for body repair."}]}]},{"type":"heading","children":[{"type":"text","text":"Step 4 — Protect","bold":true}],"level":6},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Use SPF for sun exposure."}]}]},{"type":"heading","children":[{"type":"text","text":"Quick routines","bold":true}],"level":6},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Oily: light cleanser + repair cream + minimal oil. "}]},{"type":"list-item","children":[{"type":"text","text":"Dry: hydrating gel + rich shea butter at night."}]}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]
31		[{"type":"heading","children":[{"type":"text","text":"Step 1 - Cleanse","bold":true}],"level":6},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Use "},{"type":"link","url":"https://www.plendify.com/product-detail/5b942bd9-824c-4836-bc8d-5f7d230a2552","children":[{"type":"text","text":"Duffys Healthy Glow Shower Gel"}]},{"type":"text","text":" for gentle daily cleansing."}]}]},{"type":"heading","children":[{"type":"text","text":"Step 2 - Treat","bold":true}],"level":6},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Use "},{"type":"link","url":"https://www.plendify.com/product-detail/0fa54674-609c-483f-9b18-d80db86e77c4","children":[{"type":"text","text":"Duffys Repair Face Cream"}]},{"type":"text","text":" for scars and "},{"type":"link","url":"https://d2os3qe7b3xuhc.cloudfront.net/products/39a5b92f-2940-4e0e-b1a0-d41e8b983fe6.jpeg","children":[{"type":"text","text":"Duffys Repair Body Cream"}]},{"type":"text","text":" for body repair."}]}]},{"type":"heading","children":[{"type":"text","text":"Step 4 — Protect","bold":true}],"level":6},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Use SPF for sun exposure."}]}]},{"type":"heading","children":[{"type":"text","text":"Quick routines","bold":true}],"level":6},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Oily: light cleanser + repair cream + minimal oil. "}]},{"type":"list-item","children":[{"type":"text","text":"Dry: hydrating gel + rich shea butter at night."}]}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]
32		[{"type":"paragraph","children":[{"type":"text","text":"Snacking doesn’t have to sabotage your goals. Several West African snacks are nutrient- dense, portable, and delicious."}]},{"type":"heading","children":[{"type":"text","text":"Top healthy snacks","bold":true}],"level":6},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Judi Achomo — crunchy, traditional snack."}]},{"type":"list-item","children":[{"type":"text","text":"Cocoyam Chips — fiber-rich and unique."}]},{"type":"list-item","children":[{"type":"text","text":"Dried Mango — sweet, chewy, vitamin-packed."}]},{"type":"list-item","children":[{"type":"text","text":"Unripe Plantain Chips — higher in resistant starch, lower GI."}]}]},{"type":"heading","children":[{"type":"text","text":"Practical tips","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Pair dried mango with nuts, or chips with hummus."}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]
33		[{"type":"paragraph","children":[{"type":"text","text":"Snacking doesn’t have to sabotage your goals. Several West African snacks are nutrient- dense, portable, and delicious."}]},{"type":"heading","children":[{"type":"text","text":"Top healthy snacks","bold":true}],"level":6},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Judi Achomo — crunchy, traditional snack."}]},{"type":"list-item","children":[{"type":"text","text":"Cocoyam Chips — fiber-rich and unique."}]},{"type":"list-item","children":[{"type":"text","text":"Dried Mango — sweet, chewy, vitamin-packed."}]},{"type":"list-item","children":[{"type":"text","text":"Unripe Plantain Chips — higher in resistant starch, lower GI."}]}]},{"type":"heading","children":[{"type":"text","text":"Practical tips","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"Pair dried mango with nuts, or chips with hummus."}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]
34		[{"type":"heading","children":[{"text":"Spotlight: The Ghanaian Shea Butter Cooperatives","type":"text","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"\\rIn the northern regions of Ghana, shea butter production is a tradition managed by women’s cooperatives. These collectives empower women economically, giving them autonomy and a voice.\\r"}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"The Process:","bold":true},{"type":"text","text":" The process remains beautifully traditional. Women like Amina carefully gather wild shea nuts, which are then boiled, sun-dried, crushed, and roasted. The kernels are ground into a paste and hand-churned to separate the rich, raw butter. This method, passed down through generations, ensures the highest quality and nutrient retention.\\r"}]},{"type":"list-item","children":[{"type":"text","text":"The Impact:","bold":true},{"type":"text","text":" By partnering directly with these cooperatives, Plendify ensures fair, transparent pricing. This means the women receive a stable, dignified income for their work. This income doesn't just support an individual; it funds children's education, healthcare, and community projects. Your purchase directly contributes to this cycle of empowerment."}]}]},{"type":"heading","children":[{"type":"text","text":"The Story Woven into Every Basket","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"\\rBeyond food and beauty, Africa is home to incredible artisanship. Take, for example, the skilled basket weavers in Kenya.\\r\\n"}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"The Craft: Using sustainable materials like sisal and natural dyes, these artisans weave intricate, functional art—each pattern telling a story of their heritage.\\r"}]},{"type":"list-item","children":[{"type":"text","text":"The Plendify Partnership: We work with these artisan groups to help them adapt their designs for a global market while preserving their cultural integrity. We handle the complexities of international logistics, allowing them to focus on their craft and reach customers they never could before."}]}]},{"type":"paragraph","children":[{"type":"text","text":"This is What Ethical Sourcing Looks Like\\r\\nFor us, \\"ethical\\" isn’t a buzzword. It’s a commitment to:\\r"}]},{"type":"list","format":"ordered","children":[{"type":"list-item","children":[{"type":"text","text":"Fair Wages:","bold":true},{"type":"text","text":" Paying producers what their goods are truly worth.\\r\\nDirect Partnerships: Cutting out unnecessary middlemen to ensure profits go to the creators.\\r"}]},{"type":"list-item","children":[{"type":"text","text":"Community Investment: ","bold":true},{"type":"text","text":"A portion of our profits is reinvested into community-chosen projects, like clean water wells or school supplies.\\r\\n"}]}]}]
35		[{"type":"heading","children":[{"type":"text","text":"Step 1: Perfect Your Product Presentation","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"The online world is visual. Before you think about shipping, focus on storytelling."}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"High-Quality Photography","bold":true},{"type":"text","text":": Invest in clear, bright photos from multiple angles. Show your product in use. Images that tell a story of craftsmanship connect emotionally with buyers."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Compelling Descriptions: ","bold":true},{"type":"text","text":"Don’t just list features. Describe the story behind the product. Who made it? What traditional techniques were used? What makes it unique? This authenticity is your superpower."}]}]},{"type":"heading","children":[{"type":"text","text":"Step 2: Understand Your International Customer","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"The diaspora craves a taste of home, while Western consumers seek authenticity and ethical stories."}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Diaspora Audience: ","bold":true},{"type":"text","text":"Highlight nostalgia, authenticity, and direct-from-source quality."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Western Audience: ","bold":true},{"type":"text","text":"Emphasize the unique story, ethical production, natural ingredients, and artisanal quality. Use terms like \\"handmade,\\" \\"sustainable,\\" and \\"fair trade.\\""}]}]},{"type":"heading","children":[{"type":"text","text":"Step 3: Navigate Logistics: Packaging & Shipping","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"This is often the most daunting step. Key considerations include:"}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Durable Packaging: Ensure your products can survive long journeys."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Export Documentation: Understanding customs forms, duties, and regulations is critical."}]}]},{"type":"paragraph","children":[{"type":"text","text":""}]},{"type":"heading","children":[{"type":"text","text":"How Plendify Simplifies Your Global Expansion","bold":true}],"level":6},{"type":"paragraph","children":[{"type":"text","text":"This is where we turn challenges into opportunities. When you join the Plendify marketplace, you gain a partner."}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"We Handle the Complex Logistics:","bold":true},{"type":"text","text":" Our team manages international shipping, customs clearance, and customer delivery. You send your products to our regional hub, and we do the rest."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"Access to a Targeted Audience:","bold":true},{"type":"text","text":" We market your products to a growing community of buyers who actively seek out authentic African goods. We drive the traffic; you focus on production."}]}]},{"type":"list","format":"unordered","children":[{"type":"list-item","children":[{"type":"text","text":"A Platform Built on Ethics: ","bold":true},{"type":"text","text":"We believe in fair partnership. Our model ensures you receive a transparent and dignified price for your work, fostering long-term growth."}]}]},{"type":"paragraph","children":[{"type":"text","text":""}]}]
36		[{"type":"paragraph","children":[{"type":"text","text":"1. 100% Natural Ingredients","bold":true}]},{"type":"paragraph","children":[{"type":"text","text":"Nokware uses raw shea butter, moringa, and African black soap — no harsh chemicals, noparabens."}]},{"type":"paragraph","children":[{"type":"text","text":"2. Eco-Friendly Packaging","bold":true}]},{"type":"paragraph","children":[{"type":"text","text":"Nokware is known for its biodegradable and reusable packaging, reducing environmental waste."}]},{"type":"paragraph","children":[{"type":"text","text":"3. Gentle but Effective","bold":true}]},{"type":"paragraph","children":[{"type":"text","text":"Products are safe for sensitive skin, babies, and people prone to allergies."}]},{"type":"paragraph","children":[{"type":"text","text":"4. Supports Local Communities","bold":true}]},{"type":"paragraph","children":[{"type":"text","text":"By buying Nokware, you empower African farmers and artisans."}]},{"type":"paragraph","children":[{"type":"text","text":"5. Results You Can See","bold":true}]},{"type":"paragraph","children":[{"type":"text","text":"From moisturized skin to reduced acne, Nokware products deliver visible benefits."}]}]
\.


--
-- Data for Name: _components_shared_media; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._components_shared_media (id) FROM stdin;
\.


--
-- Data for Name: _components_shared_quotes; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._components_shared_quotes (id, title, body) FROM stdin;
\.


--
-- Data for Name: _components_shared_rich_texts; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._components_shared_rich_texts (id, body) FROM stdin;
\.


--
-- Data for Name: _components_shared_seos; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._components_shared_seos (id, meta_title, meta_description) FROM stdin;
\.


--
-- Data for Name: _components_shared_sliders; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._components_shared_sliders (id) FROM stdin;
\.


--
-- Data for Name: _files; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: _files_folder_lnk; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
\.


--
-- Data for Name: _files_related_mph; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- Data for Name: _globals; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._globals (id, document_id, site_name, site_description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: _globals_cmps; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._globals_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: _i18n_locale; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	oe0uhxlidykfq449vcasln5p	English (en)	en	2025-10-21	2025-10-21	2025-10-21			
\.


--
-- Data for Name: _sqlite_sequence; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._sqlite_sequence (name, seq) FROM stdin;
strapi_migrations_internal	6
files	0
upload_folders	0
i18n_locale	1
strapi_releases	0
strapi_release_actions	0
strapi_workflows	0
strapi_workflows_stages	0
up_permissions	13
up_roles	2
up_users	0
abouts_cmps	0
abouts	0
articles_cmps	0
articles	2
categories	0
globals_cmps	0
globals	0
admin_permissions	169
admin_users	1
admin_roles	3
strapi_api_tokens	2
strapi_api_token_permissions	0
strapi_transfer_tokens	1
strapi_transfer_token_permissions	2
strapi_sessions	60
strapi_history_versions	0
files_related_mph	0
files_folder_lnk	0
upload_folders_parent_lnk	0
strapi_release_actions_release_lnk	0
strapi_workflows_stage_required_to_publish_lnk	0
strapi_workflows_stages_workflow_lnk	0
strapi_workflows_stages_permissions_lnk	0
up_permissions_role_lnk	13
up_users_role_lnk	0
articles_category_lnk	0
admin_permissions_role_lnk	169
admin_users_roles_lnk	1
strapi_api_token_permissions_token_lnk	0
strapi_transfer_token_permissions_token_lnk	2
strapi_database_schema	13
strapi_core_store_settings	39
blogs_cmps	117
blogs	36
authors	5
components_blog_bodies	36
blogs_author_lnk	33
\.


--
-- Data for Name: _strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: _strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: _strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_api_tokens (id, document_id, name, description, type, access_key, encrypted_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	i831gipn135mroqj4zkmcal2	Read Only	A default API token with read-only permissions, only used for accessing resources	read-only	ba37c82ee1c5a46878a757d67dd62e6304b576b47547b7d37b53d7782f206172fa45b0170e821a64959b40db3b2477553160761de7fbe4187dbf8354ce02ac4e	v1:ee962108da401bdaf782051fca61e2a2:85dd6b55547dfba0cd715a67bc05f75cc526873ff0dd861b7293a71bc1af6ade60e76e1b3c32f340e615fa8ee0e04699fe85efaa821e84ba66f160246852bc9539da8c3ace5d25307c94bf254d4e417387295cc97b4acbd8fa5e80ed8a96988a92c5925b076f840597f37c67a1b9fdf40131858f2baed3d2d7f5d51d2f4f488d8e7f22f7c8ac60523565415b2d546586d6a29cf66c355563f5a012b18f5c9e0c44e3bb9d569e44b1539baaecdb6fe006388c59501dd3735f220bf1155cc1a19986ecda86a040434c8e3155fc5327914911b7d389a259231d71ce41722a39cdff23e4c880cbc7c11ce6561b63d30cd1c5322f8455459717465094bc22e556bf3f:8e30d1ec434b9e050959c1ca928e19b2				2025-10-21	2025-10-21	2025-10-21			
2	rzh5lbnobcttt79ek1skc8tl	Full Access	A default API token with full access permissions, used for accessing or modifying resources	full-access	cbe7ebd8c9508d26d86b210338fa1a2621adebd29b02c6bcc9237d2c745b415c2f3094e08dedd118d0dae803c319c8c1f0b709f498cca7314f83352796d62d01	v1:7722ea0b5d9144ad7ee5df4d3de2ebc3:f8886c887ef71cd78a6ee7b825a3f44a343f9f9a8c39c025390c511c36881e356cf01cac28bbe4db4cef0b18304a5c7eff2accef92d547be912d7c54d4cf952b239ab21d8818a089a5f868a0ce83ae4d5b7d5a64d08998dd6378431d09bc6d965100824d07dfe03558f3709baeeeb0247f7073ae7807bd6d6b74d471bd235c0a4a833c248b83f26952c5d59e17149841f9c84825364eced7dcc228ceee388ceae7c52a643b95ebfe6683646b473c1de88e8f6c3e6b52191e4be0a8a13a88b2b4a7891bd4932cb9d2a8b538e40a7ddf8cad75741e5eb602752532cc029791b505e8822dee993d644f39bf5df97a34edc25d8b1f7d97da3da8470516ca0aa7c962:f67686ad0f2bb4ba42f1b4f3b4ddd5df				2025-10-21	2025-10-21	2025-10-21			
\.


--
-- Data for Name: _strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
1	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","uid":"plugin::users-permissions.user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"api::about.about":{"kind":"singleType","collectionName":"abouts","info":{"singularName":"about","pluralName":"abouts","displayName":"About","description":"Write about yourself and the content you create"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::about.about","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"abouts"}}},"apiName":"about","globalId":"About","uid":"api::about.about","modelType":"contentType","__schema__":{"collectionName":"abouts","info":{"singularName":"about","pluralName":"abouts","displayName":"About","description":"Write about yourself and the content you create"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]}},"kind":"singleType"},"modelName":"about","actions":{},"lifecycles":{}},"api::article.article":{"kind":"collectionType","collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Article","description":"Create your blog content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text","maxLength":80},"slug":{"type":"uid","targetField":"title"},"cover":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"articles"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::article.article","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"articles"}}},"apiName":"article","globalId":"Article","uid":"api::article.article","modelType":"contentType","__schema__":{"collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Article","description":"Create your blog content"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text","maxLength":80},"slug":{"type":"uid","targetField":"title"},"cover":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"articles"},"blocks":{"type":"dynamiczone","components":["shared.media","shared.quote","shared.rich-text","shared.slider"]}},"kind":"collectionType"},"modelName":"article","actions":{},"lifecycles":{}},"api::author.author":{"kind":"collectionType","collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"Author","description":"Create authors for your content"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"avatar":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"Bio":{"type":"blocks"},"blogs":{"type":"relation","relation":"oneToMany","target":"api::blog.blog","mappedBy":"Author"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::author.author","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"authors"}}},"apiName":"author","globalId":"Author","uid":"api::author.author","modelType":"contentType","__schema__":{"collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"Author","description":"Create authors for your content"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"avatar":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"Bio":{"type":"blocks"},"blogs":{"type":"relation","relation":"oneToMany","target":"api::blog.blog","mappedBy":"Author"}},"kind":"collectionType"},"modelName":"author","actions":{},"lifecycles":{}},"api::blog.blog":{"kind":"collectionType","collectionName":"blogs","info":{"singularName":"blog","pluralName":"blogs","displayName":"Blog"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Title":{"type":"string"},"Slug":{"type":"uid","targetField":"Title"},"Date":{"type":"date"},"ImageURL":{"type":"string"},"Author":{"type":"relation","relation":"manyToOne","target":"api::author.author","inversedBy":"blogs"},"Intro":{"type":"richtext"},"Body":{"type":"component","component":"blog.body","repeatable":false},"Conclusion":{"type":"blocks"},"Tags":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::blog.blog","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"blogs"}}},"apiName":"blog","globalId":"Blog","uid":"api::blog.blog","modelType":"contentType","__schema__":{"collectionName":"blogs","info":{"singularName":"blog","pluralName":"blogs","displayName":"Blog"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Title":{"type":"string"},"Slug":{"type":"uid","targetField":"Title"},"Date":{"type":"date"},"ImageURL":{"type":"string"},"Author":{"type":"relation","relation":"manyToOne","target":"api::author.author","inversedBy":"blogs"},"Intro":{"type":"richtext"},"Body":{"type":"component","component":"blog.body","repeatable":false},"Conclusion":{"type":"blocks"},"Tags":{"type":"string"}},"kind":"collectionType"},"modelName":"blog","actions":{},"lifecycles":{}},"api::category.category":{"kind":"collectionType","collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":"Organize your content into categories"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"category"},"description":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::category.category","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"categories"}}},"apiName":"category","globalId":"Category","uid":"api::category.category","modelType":"contentType","__schema__":{"collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":"Organize your content into categories"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid"},"articles":{"type":"relation","relation":"oneToMany","target":"api::article.article","mappedBy":"category"},"description":{"type":"text"}},"kind":"collectionType"},"modelName":"category","actions":{},"lifecycles":{}},"api::global.global":{"kind":"singleType","collectionName":"globals","info":{"singularName":"global","pluralName":"globals","displayName":"Global","description":"Define global settings"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"siteName":{"type":"string","required":true},"favicon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"siteDescription":{"type":"text","required":true},"defaultSeo":{"type":"component","repeatable":false,"component":"shared.seo"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::global.global","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"globals"}}},"apiName":"global","globalId":"Global","uid":"api::global.global","modelType":"contentType","__schema__":{"collectionName":"globals","info":{"singularName":"global","pluralName":"globals","displayName":"Global","description":"Define global settings"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"siteName":{"type":"string","required":true},"favicon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"siteDescription":{"type":"text","required":true},"defaultSeo":{"type":"component","repeatable":false,"component":"shared.seo"}},"kind":"singleType"},"modelName":"global","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"},"admin::session":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::session","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_sessions"}}},"plugin":"admin","globalId":"AdminSession","uid":"admin::session","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"session"}}	object		
2	plugin_content_manager_configuration_components::shared.slider	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"files","searchable":false,"sortable":false}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","files"],"edit":[[{"name":"files","size":6}]]},"uid":"shared.slider","isComponent":true}	object		
3	plugin_content_manager_configuration_components::shared.seo	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"metaTitle":{"edit":{"label":"metaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"metaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaDescription","searchable":true,"sortable":true}},"shareImage":{"edit":{"label":"shareImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"shareImage","searchable":false,"sortable":false}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","metaTitle","metaDescription","shareImage"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}],[{"name":"shareImage","size":6}]]},"uid":"shared.seo","isComponent":true}	object		
4	plugin_content_manager_configuration_components::shared.rich-text	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"body":{"edit":{"label":"body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"body","searchable":false,"sortable":false}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id"],"edit":[[{"name":"body","size":12}]]},"uid":"shared.rich-text","isComponent":true}	object		
5	plugin_content_manager_configuration_components::shared.quote	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"body":{"edit":{"label":"body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"body","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","body"],"edit":[[{"name":"title","size":6},{"name":"body","size":6}]]},"uid":"shared.quote","isComponent":true}	object		
6	plugin_content_manager_configuration_components::shared.media	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"file":{"edit":{"label":"file","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"file","searchable":false,"sortable":false}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","file"],"edit":[[{"name":"file","size":6}]]},"uid":"shared.media","isComponent":true}	object		
7	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object		
8	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object		
9	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object		
10	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object		
11	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object		
12	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object		
13	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object		
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object		
15	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object		
16	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object		
17	plugin_content_manager_configuration_content_types::api::about.about	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"blocks":{"edit":{"label":"blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocks","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","createdAt","updatedAt"],"edit":[[{"name":"title","size":6}],[{"name":"blocks","size":12}]]},"uid":"api::about.about"}	object		
18	plugin_content_manager_configuration_content_types::api::article.article	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"cover":{"edit":{"label":"cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cover","searchable":false,"sortable":false}},"category":{"edit":{"label":"category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"category","searchable":true,"sortable":true}},"blocks":{"edit":{"label":"blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocks","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","slug"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"slug","size":6},{"name":"cover","size":6}],[{"name":"category","size":6}],[{"name":"blocks","size":12}]]},"uid":"api::article.article"}	object		
19	plugin_content_manager_configuration_content_types::api::author.author	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"avatar":{"edit":{"label":"avatar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"avatar","searchable":false,"sortable":false}},"Bio":{"edit":{"label":"Bio","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Bio","searchable":false,"sortable":false}},"blogs":{"edit":{"label":"blogs","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Title"},"list":{"label":"blogs","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","avatar","blogs"],"edit":[[{"name":"name","size":6},{"name":"avatar","size":6}],[{"name":"Bio","size":12}],[{"name":"blogs","size":6}]]},"uid":"api::author.author"}	object		
20	plugin_content_manager_configuration_content_types::api::category.category	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"articles":{"edit":{"label":"articles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"articles","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","articles"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"articles","size":6},{"name":"description","size":6}]]},"uid":"api::category.category"}	object		
21	plugin_content_manager_configuration_content_types::api::global.global	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"siteName","defaultSortBy":"siteName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"siteName":{"edit":{"label":"siteName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"siteName","searchable":true,"sortable":true}},"favicon":{"edit":{"label":"favicon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"favicon","searchable":false,"sortable":false}},"siteDescription":{"edit":{"label":"siteDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"siteDescription","searchable":true,"sortable":true}},"defaultSeo":{"edit":{"label":"defaultSeo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"defaultSeo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","siteName","favicon","siteDescription"],"edit":[[{"name":"siteName","size":6},{"name":"favicon","size":6}],[{"name":"siteDescription","size":6}],[{"name":"defaultSeo","size":12}]]},"uid":"api::global.global"}	object		
22	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object		
23	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object		
24	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object		
25	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"encryptedKey":{"edit":{"label":"encryptedKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"encryptedKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"encryptedKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object		
38	plugin_content_manager_configuration_components::blog.body	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"Content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title"],"edit":[[{"name":"Title","size":6}],[{"name":"Content","size":12}]]},"uid":"blog.body","isComponent":true}	object		
26	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object		
27	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object		
28	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object		
29	plugin_content_manager_configuration_content_types::admin::session	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"userId","defaultSortBy":"userId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"userId":{"edit":{"label":"userId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"userId","searchable":true,"sortable":true}},"sessionId":{"edit":{"label":"sessionId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sessionId","searchable":true,"sortable":true}},"childId":{"edit":{"label":"childId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"childId","searchable":true,"sortable":true}},"deviceId":{"edit":{"label":"deviceId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"deviceId","searchable":true,"sortable":true}},"origin":{"edit":{"label":"origin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"origin","searchable":true,"sortable":true}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"absoluteExpiresAt":{"edit":{"label":"absoluteExpiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"absoluteExpiresAt","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","userId","sessionId","childId"],"edit":[[{"name":"userId","size":6},{"name":"sessionId","size":6}],[{"name":"childId","size":6},{"name":"deviceId","size":6}],[{"name":"origin","size":6},{"name":"expiresAt","size":6}],[{"name":"absoluteExpiresAt","size":6},{"name":"status","size":6}],[{"name":"type","size":6}]]},"uid":"admin::session"}	object		
30	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false,"aiMetadata":true}	object		
31	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object		
32	plugin_upload_metrics	{"weeklySchedule":"58 40 20 * * 2","lastWeeklyUpdate":1761680458075}	object		
33	plugin_i18n_default_locale	"en"	string		
34	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object		
35	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
36	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object		
37	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object		
39	plugin_content_manager_configuration_content_types::api::blog.blog	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"Slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"Date":{"edit":{"label":"Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Date","searchable":true,"sortable":true}},"ImageURL":{"edit":{"label":"ImageURL","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ImageURL","searchable":true,"sortable":true}},"Author":{"edit":{"label":"Author","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Author","searchable":true,"sortable":true}},"Intro":{"edit":{"label":"Intro","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Intro","searchable":false,"sortable":false}},"Body":{"edit":{"label":"Body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Body","searchable":false,"sortable":false}},"Conclusion":{"edit":{"label":"Conclusion","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conclusion","searchable":false,"sortable":false}},"Tags":{"edit":{"label":"Tags","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Tags","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","Slug","Author"],"edit":[[{"name":"Title","size":6},{"name":"Slug","size":6}],[{"name":"Date","size":4}],[{"name":"Intro","size":12}],[{"name":"Body","size":12}],[{"name":"Conclusion","size":12}],[{"name":"Tags","size":6},{"name":"ImageURL","size":6}],[{"name":"Author","size":6}]]},"uid":"api::blog.blog"}	object		
\.


--
-- Data for Name: _strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_database_schema (id, schema, "time", hash) FROM stdin;
13	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"abouts_cmps","indexes":[{"name":"abouts_field_idx","columns":["field"]},{"name":"abouts_component_type_idx","columns":["component_type"]},{"name":"abouts_entity_fk","columns":["entity_id"]},{"name":"abouts_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"abouts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"abouts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"abouts","indexes":[{"name":"abouts_documents_idx","columns":["document_id","locale","published_at"]},{"name":"abouts_created_by_id_fk","columns":["created_by_id"]},{"name":"abouts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"abouts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"abouts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"articles_cmps","indexes":[{"name":"articles_field_idx","columns":["field"]},{"name":"articles_component_type_idx","columns":["component_type"]},{"name":"articles_entity_fk","columns":["entity_id"]},{"name":"articles_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"articles_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles","indexes":[{"name":"articles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"articles_created_by_id_fk","columns":["created_by_id"]},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"articles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"authors","indexes":[{"name":"authors_documents_idx","columns":["document_id","locale","published_at"]},{"name":"authors_created_by_id_fk","columns":["created_by_id"]},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"authors_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"bio","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"blogs_cmps","indexes":[{"name":"blogs_field_idx","columns":["field"]},{"name":"blogs_component_type_idx","columns":["component_type"]},{"name":"blogs_entity_fk","columns":["entity_id"]},{"name":"blogs_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"blogs_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"blogs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"blogs","indexes":[{"name":"blogs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"blogs_created_by_id_fk","columns":["created_by_id"]},{"name":"blogs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"blogs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"blogs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"image_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"intro","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conclusion","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tags","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"categories","indexes":[{"name":"categories_documents_idx","columns":["document_id","locale","published_at"]},{"name":"categories_created_by_id_fk","columns":["created_by_id"]},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"globals_cmps","indexes":[{"name":"globals_field_idx","columns":["field"]},{"name":"globals_component_type_idx","columns":["component_type"]},{"name":"globals_entity_fk","columns":["entity_id"]},{"name":"globals_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"globals_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"globals","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"globals","indexes":[{"name":"globals_documents_idx","columns":["document_id","locale","published_at"]},{"name":"globals_created_by_id_fk","columns":["created_by_id"]},{"name":"globals_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"globals_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"globals_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"site_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"site_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"encrypted_key","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_sessions","indexes":[{"name":"strapi_sessions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"session_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"child_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"device_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"origin","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"absolute_expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_blog_bodies","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_sliders","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_shared_seos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_rich_texts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_quotes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"body","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_media","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_category_lnk","indexes":[{"name":"articles_category_lnk_fk","columns":["article_id"]},{"name":"articles_category_lnk_ifk","columns":["category_id"]},{"name":"articles_category_lnk_uq","columns":["article_id","category_id"],"type":"unique"},{"name":"articles_category_lnk_oifk","columns":["article_ord"]}],"foreignKeys":[{"name":"articles_category_lnk_fk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"},{"name":"articles_category_lnk_ifk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"blogs_author_lnk","indexes":[{"name":"blogs_author_lnk_fk","columns":["blog_id"]},{"name":"blogs_author_lnk_ifk","columns":["author_id"]},{"name":"blogs_author_lnk_uq","columns":["blog_id","author_id"],"type":"unique"},{"name":"blogs_author_lnk_oifk","columns":["blog_ord"]}],"foreignKeys":[{"name":"blogs_author_lnk_fk","columns":["blog_id"],"referencedColumns":["id"],"referencedTable":"blogs","onDelete":"CASCADE"},{"name":"blogs_author_lnk_ifk","columns":["author_id"],"referencedColumns":["id"],"referencedTable":"authors","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"blog_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"author_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"blog_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2025-11-03	ed1c718236e3092f66040e8af5d094f2a5a329575320a227836772b5716f3a4a
\.


--
-- Data for Name: _strapi_history_versions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
\.


--
-- Data for Name: _strapi_migrations; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: _strapi_migrations_internal; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_migrations_internal (id, name, "time") FROM stdin;
1	5.0.0-rename-identifiers-longer-than-max-length	2025-10-21
2	5.0.0-02-created-document-id	2025-10-21
3	5.0.0-03-created-locale	2025-10-21
4	5.0.0-04-created-published-at	2025-10-21
5	5.0.0-05-drop-slug-fields-index	2025-10-21
6	core::5.0.0-discard-drafts	2025-10-21
\.


--
-- Data for Name: _strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: _strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
\.


--
-- Data for Name: _strapi_releases; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: _strapi_sessions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_sessions (id, document_id, user_id, session_id, child_id, device_id, origin, expires_at, absolute_expires_at, status, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
5	ojh0iz9cq16yi3wzdcqljtlm	1	439ed7f3da6404bf0580b1d9007d23e1	c67d06a74b2b930380c9e99163d4d9ad	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-22	2025-11-21	rotated	session	2025-10-22	2025-10-22	2025-10-22			
6	yvcdvrenws8z7gs00wecuvpb	1	c67d06a74b2b930380c9e99163d4d9ad		79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-22	2025-11-21	active	session	2025-10-22	2025-10-22	2025-10-22			
7	sl7vxzouct3dkcnk8obcz4kw	1	e7088163362cf2899ce4fd5bf9c46fe1	926483ffc4846a0b2b49095766f98718	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-23	2025-11-21	rotated	session	2025-10-22	2025-10-22	2025-10-22			
8	a4labj9j6lzodqnhn3zhbowo	1	926483ffc4846a0b2b49095766f98718	e84091b9af3ab834df72066809bf1bb9	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-23	2025-11-21	rotated	session	2025-10-22	2025-10-22	2025-10-22			
9	fdeprry3460tx22j3rbzr0gy	1	e84091b9af3ab834df72066809bf1bb9	ad22f9a37dc37834e3b9448c996b8ca6	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-23	2025-11-21	rotated	session	2025-10-22	2025-10-23	2025-10-22			
10	l4wyblcbk4e259ba2hg9kqmc	1	ad22f9a37dc37834e3b9448c996b8ca6		79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-23	2025-11-21	active	session	2025-10-23	2025-10-23	2025-10-23			
11	cjc8yiws8szo2n7ug1g8eyok	1	6ab957339a6956e200a9dac4e60e7d1b		79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-25	2025-11-23	active	session	2025-10-25	2025-10-25	2025-10-25			
12	b6gg9si2ld3g3ttkqgl9atc6	1	f615692cc05f0aa2576511f57a84a67c		79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-26	2025-11-25	active	session	2025-10-26	2025-10-26	2025-10-26			
13	b4q4tutwajv4rzx96w1c0bwh	1	2b8d61d16f72ef99f1b2a972f8876228	6ef668dc2f4668130811e93381c72be2	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-26	2025-11-25	rotated	session	2025-10-26	2025-10-26	2025-10-26			
14	g9agkd8tjclay0ifrpxrcqzq	1	6ef668dc2f4668130811e93381c72be2	b554e44b1f063457c8198b71fd614ca0	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-26	2025-11-25	rotated	session	2025-10-26	2025-10-26	2025-10-26			
15	l177o4mrc5wj8x4kphce2p7t	1	b554e44b1f063457c8198b71fd614ca0	0017467d2c8a8c7b083a4e2a43290f2d	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-26	2025-11-25	rotated	session	2025-10-26	2025-10-26	2025-10-26			
16	nlnwpbh63yrtdvfhsy68olek	1	0017467d2c8a8c7b083a4e2a43290f2d	f1f7cdd4657fe0eaa857bc56eb2242af	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-26	2025-11-25	rotated	session	2025-10-26	2025-10-26	2025-10-26			
17	ygrqvpb3kwmw7a8yrfk3e0v1	1	f1f7cdd4657fe0eaa857bc56eb2242af	522dbe6f5a97b0e4cbd7c04c5f6a7af3	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-26	2025-11-25	rotated	session	2025-10-26	2025-10-26	2025-10-26			
18	ipsasvlhbdoxvqp78vpul9os	1	522dbe6f5a97b0e4cbd7c04c5f6a7af3	6b23c2fad260b2a016c63383d7d57994	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-26	2025-11-25	rotated	session	2025-10-26	2025-10-26	2025-10-26			
19	hdvyiabioh5u7ymywm89pfep	1	6b23c2fad260b2a016c63383d7d57994	6b5886ff157b9a006808d99e529e9011	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-26	2025-11-25	rotated	session	2025-10-26	2025-10-26	2025-10-26			
20	wpwhzkvzt4wv6jkux4mw29fc	1	6b5886ff157b9a006808d99e529e9011	024838e174ad4a47cb3116ab62032a05	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-26	2025-11-25	rotated	session	2025-10-26	2025-10-26	2025-10-26			
21	wev1mpadrwnzngejnmmc4v0r	1	024838e174ad4a47cb3116ab62032a05	4bb0690a35c0257093a5a270750d1ba1	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-26	2025-11-25	rotated	session	2025-10-26	2025-10-26	2025-10-26			
22	ihxmps31dqrqsklpnpfy9sxq	1	4bb0690a35c0257093a5a270750d1ba1	62f93d47b96197a57d534e9a12af13af	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-26	2025-11-25	rotated	session	2025-10-26	2025-10-26	2025-10-26			
23	t5tufl7okxapbq2azwa5t749	1	62f93d47b96197a57d534e9a12af13af	3a16f27fe570d8826c82da142bb82f95	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-27	2025-11-25	rotated	session	2025-10-26	2025-10-26	2025-10-26			
24	jusiztaq5kto0svriiphttcq	1	3a16f27fe570d8826c82da142bb82f95		79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-27	2025-11-25	active	session	2025-10-26	2025-10-26	2025-10-26			
25	zc9p81g25k5nk6mtm5256xaj	1	c676586a1b37b9caa3ede4e8c605abf5	6bbbe4f43f924558ca693ec5889319c9	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-28	2025-11-27	rotated	session	2025-10-28	2025-10-28	2025-10-28			
26	d5sx6zmry3v8e3hfby9kg0nr	1	6bbbe4f43f924558ca693ec5889319c9		79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-28	2025-11-27	active	session	2025-10-28	2025-10-28	2025-10-28			
27	nq35nq1gvmsjg7f2q293awl7	1	f1709c8037261fa021fde6bc07877b95	f9ed9ded2e15c28792c094e3dbad440c	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-28	2025-11-27	rotated	session	2025-10-28	2025-10-28	2025-10-28			
28	fgj4a1dmvg3nk1de3u0v8cpb	1	f9ed9ded2e15c28792c094e3dbad440c	88ee14c18446a474f1adeb26a723244b	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-28	2025-11-27	rotated	session	2025-10-28	2025-10-28	2025-10-28			
29	om15nc6n823ykxq3ahpxsdtn	1	88ee14c18446a474f1adeb26a723244b	981a320b5cb3b149f75229959728986e	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-28	2025-11-27	rotated	session	2025-10-28	2025-10-28	2025-10-28			
30	ck9uypzrh8lmdqpsh4mbbbjo	1	981a320b5cb3b149f75229959728986e	7b8b83c535bbd7bae3e7cfa864412afc	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-28	2025-11-27	rotated	session	2025-10-28	2025-10-28	2025-10-28			
31	s68vnfyleok1z2g6cs6qydln	1	7b8b83c535bbd7bae3e7cfa864412afc	dce0e90bb1df2cccdfa8ba28a04260bd	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-28	2025-11-27	rotated	session	2025-10-28	2025-10-28	2025-10-28			
32	etlhyaz5tuykc7vcnuwrcs66	1	dce0e90bb1df2cccdfa8ba28a04260bd	a8d3d508bc47f645816d833e943bf6dd	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-28	2025-11-27	rotated	session	2025-10-28	2025-10-28	2025-10-28			
33	c1v8yv7v8cqaoglg37cvw6aa	1	a8d3d508bc47f645816d833e943bf6dd	cb2be08f92918f34fed66ed0ff0e9f6a	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-28	2025-11-27	rotated	session	2025-10-28	2025-10-28	2025-10-28			
34	e01ug8g6tg9t7772pc4rn2f7	1	cb2be08f92918f34fed66ed0ff0e9f6a	9faa63be52e9a974f01d8c33a0ce5a0f	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-28	2025-11-27	rotated	session	2025-10-28	2025-10-28	2025-10-28			
35	jdb3mdilhmjljwivigbs9zhd	1	9faa63be52e9a974f01d8c33a0ce5a0f	b11d1e3479bdf1bcfb5f3f699795d5ea	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-28	2025-11-27	rotated	session	2025-10-28	2025-10-28	2025-10-28			
36	l5ww8spz797m89u38ghario6	1	b11d1e3479bdf1bcfb5f3f699795d5ea	7a7e5060af499b5988226bc19135e280	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-28	2025-11-27	rotated	session	2025-10-28	2025-10-28	2025-10-28			
37	b8pyz1wnm9ve9a1epgbobab8	1	7a7e5060af499b5988226bc19135e280	16474f5f886babc6db5072e4691d6851	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-28	2025-11-27	rotated	session	2025-10-28	2025-10-28	2025-10-28			
38	vpskbh5bqybk0pmc7bm7io79	1	16474f5f886babc6db5072e4691d6851	7a62d4d37fe4d7e8b474f583fdd82fe3	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-29	2025-11-27	rotated	session	2025-10-28	2025-10-28	2025-10-28			
39	jvoeqhxkmsqur1td9brf9qth	1	7a62d4d37fe4d7e8b474f583fdd82fe3		79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-10-29	2025-11-27	active	session	2025-10-28	2025-10-28	2025-10-28			
40	ocyzgpycg3x4rw59z41nol6u	1	b68687aeaff5c104152cc0ceb077425c	9167f790c172d5149cc831b735a76802	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-01	2025-12-01	rotated	session	2025-11-01	2025-11-01	2025-11-01			
41	ku8n1ar94j1uewxh6q0v3vt3	1	9167f790c172d5149cc831b735a76802		79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-01	2025-12-01	active	session	2025-11-01	2025-11-01	2025-11-01			
42	oz3ial7pt7rthj2ee6qwliy8	1	947ea35a95239461dc4ee414af42e1ea	2ebcc095f80e738ddde194194c4c7311	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-01	2025-12-01	rotated	session	2025-11-01	2025-11-01	2025-11-01			
43	hre5ogtt8g12sb7g3ul30vgr	1	2ebcc095f80e738ddde194194c4c7311	48cfd25c0818fa207f564961eddcd8e1	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-01	2025-12-01	rotated	session	2025-11-01	2025-11-01	2025-11-01			
44	kzlp0juxcc7r11fusee5g6ei	1	48cfd25c0818fa207f564961eddcd8e1	97e38f55c44579997ddd0fd8072af812	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-01	2025-12-01	rotated	session	2025-11-01	2025-11-01	2025-11-01			
45	h21491usvk1m6y475q9kuce2	1	97e38f55c44579997ddd0fd8072af812	439fa512c0cc118313e75ed2b864c1ca	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-01	2025-12-01	rotated	session	2025-11-01	2025-11-01	2025-11-01			
46	schkav1iflz47817gs8v4etr	1	439fa512c0cc118313e75ed2b864c1ca	f4e02770eab92762baf626ffe5e41819	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-02	2025-12-01	rotated	session	2025-11-01	2025-11-01	2025-11-01			
47	w1ztiedh2d8ueclmpydl9zot	1	f4e02770eab92762baf626ffe5e41819	98fd5d27ae3cc5df6a79f108a6c450df	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-02	2025-12-01	rotated	session	2025-11-01	2025-11-01	2025-11-01			
48	ilcpbsj8xv6bazf63ky0z3fv	1	98fd5d27ae3cc5df6a79f108a6c450df	6fb2ac1e91ba4f6c97d5a87e7b1caa78	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-02	2025-12-01	rotated	session	2025-11-01	2025-11-02	2025-11-01			
49	bzzpdl6tp8ss5tpy1gpond7w	1	6fb2ac1e91ba4f6c97d5a87e7b1caa78	aaa82dfbe62a255c20dff194a1c204e0	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-02	2025-12-01	rotated	session	2025-11-02	2025-11-02	2025-11-02			
50	epe24l0ts5fapkzqknu74xet	1	aaa82dfbe62a255c20dff194a1c204e0		79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-02	2025-12-01	active	session	2025-11-02	2025-11-02	2025-11-02			
51	dy740y61riq4k11qukpb4v8d	1	2524ae03c0eb6900783f476966c35679	c2357166ddef14c4a1e5182a815692c3	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-02	2025-12-02	rotated	session	2025-11-02	2025-11-02	2025-11-02			
52	h6gtdlen9zca91gtofau89wk	1	c2357166ddef14c4a1e5182a815692c3	d34b8ae2e7609600106c71d8a909b506	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-02	2025-12-02	rotated	session	2025-11-02	2025-11-02	2025-11-02			
53	qjprourg8qfsolk3ydu11wg9	1	d34b8ae2e7609600106c71d8a909b506	c7cb02462c6719a4370d33a025557d4e	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-02	2025-12-02	rotated	session	2025-11-02	2025-11-02	2025-11-02			
54	zzr7jg0qbc2ivqgw5boxz27h	1	c7cb02462c6719a4370d33a025557d4e	8e576c18d90beae56ca8ae5fbbd04c0e	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-02	2025-12-02	rotated	session	2025-11-02	2025-11-02	2025-11-02			
55	pyhpd2pqjyuq653dh4a4ns4a	1	8e576c18d90beae56ca8ae5fbbd04c0e		79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-02	2025-12-02	active	session	2025-11-02	2025-11-02	2025-11-02			
56	l84wyr27qbdmt9c4xd1q6bni	1	ded0720d6023a7fe3f9d2ac2510f7ac9	be3b4e44bae780d5891a9ceaf1da159d	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-03	2025-12-03	rotated	session	2025-11-03	2025-11-03	2025-11-03			
57	ipxddfvce66puyqqbzkj6hnf	1	be3b4e44bae780d5891a9ceaf1da159d	1f8e57dc459787c3f0ce8764d4b4ee9e	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-03	2025-12-03	rotated	session	2025-11-03	2025-11-03	2025-11-03			
58	iro693ddvcdcrwiqx81e1grw	1	1f8e57dc459787c3f0ce8764d4b4ee9e	0cb270bd647cce603536fb778e157a52	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-03	2025-12-03	rotated	session	2025-11-03	2025-11-03	2025-11-03			
59	em2ytngics9gvrqas0nmzaov	1	0cb270bd647cce603536fb778e157a52	6b51db906a89ccb114f7d00e30f9e114	79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-03	2025-12-03	rotated	session	2025-11-03	2025-11-03	2025-11-03			
60	i3j1op7ac0rw974nkd1o77vb	1	6b51db906a89ccb114f7d00e30f9e114		79cdcabd-2c29-4d27-b229-229f2dddacc4	admin	2025-11-03	2025-12-03	active	session	2025-11-03	2025-11-03	2025-11-03			
\.


--
-- Data for Name: _strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	zad8905evfqq6l9p7rg7ium2	push	2025-11-03	2025-11-03	2025-11-03			
2	nj087w90ov63nnqc0w81uh7k	pull	2025-11-03	2025-11-03	2025-11-03			
\.


--
-- Data for Name: _strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
1	1	1	1.0
2	2	1	1.0
\.


--
-- Data for Name: _strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	igufngi7ol5hw5xw4k7dazfv	blogs transfer		1aad1bd232995b96d3daada674b7a66e430e237b9ca603eb5a06776190d1ee529a4d23478dfdb5f7a3a9b7981866c048b406d507912785a0fe912654be7a5f5a		2025-11-10	604800000	2025-11-03	2025-11-03	2025-11-03			
\.


--
-- Data for Name: _strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: _strapi_workflows; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: _strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
\.


--
-- Data for Name: _strapi_workflows_stages; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: _strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
\.


--
-- Data for Name: _strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
\.


--
-- Data for Name: _up_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	byranlmmo2urqd2bmucynwn1	plugin::users-permissions.user.me	2025-10-21	2025-10-21	2025-10-21			
2	mkwxydhw0cgf90xud1uokhn4	plugin::users-permissions.auth.changePassword	2025-10-21	2025-10-21	2025-10-21			
3	r7tg0iuwtwktaljhv9u9f9kc	plugin::users-permissions.auth.callback	2025-10-21	2025-10-21	2025-10-21			
4	fy4369ady7nkxsks1vriumud	plugin::users-permissions.auth.connect	2025-10-21	2025-10-21	2025-10-21			
5	pcp341bku67qshzmrs6oooc0	plugin::users-permissions.auth.forgotPassword	2025-10-21	2025-10-21	2025-10-21			
6	qhuwlc819e7oox2doixnw6hh	plugin::users-permissions.auth.resetPassword	2025-10-21	2025-10-21	2025-10-21			
7	qstw81qzh2ycrxj74eblcwmg	plugin::users-permissions.auth.register	2025-10-21	2025-10-21	2025-10-21			
8	g3t3fe4zlbyxysiluirxfn9b	plugin::users-permissions.auth.emailConfirmation	2025-10-21	2025-10-21	2025-10-21			
9	jf5lkj7m9pk0bpyh2t925dip	plugin::users-permissions.auth.sendEmailConfirmation	2025-10-21	2025-10-21	2025-10-21			
10	ng0t8x6jrd0foao8aw9q88h4	api::author.author.find	2025-10-26	2025-10-26	2025-10-26			
11	gt2n0r99musottccv5gpxmbp	api::author.author.findOne	2025-10-26	2025-10-26	2025-10-26			
12	afwmdeh10re4wj5qbdk9vvdt	api::blog.blog.find	2025-10-26	2025-10-26	2025-10-26			
13	me5odp0nlmvjknlg2bf0ex2l	api::blog.blog.findOne	2025-10-26	2025-10-26	2025-10-26			
\.


--
-- Data for Name: _up_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	1	1.0
2	2	1	2.0
3	3	2	1.0
4	4	2	2.0
5	5	2	3.0
6	6	2	4.0
7	7	2	5.0
8	8	2	6.0
9	9	2	7.0
10	10	2	8.0
11	11	2	9.0
12	12	2	10.0
13	13	2	11.0
\.


--
-- Data for Name: _up_roles; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	uqpl36obh8z8b91yz14jn750	Authenticated	Default role given to authenticated user.	authenticated	2025-10-21	2025-10-21	2025-10-21			
2	we6c1nur0log9zjerw284ikw	Public	Default role given to unauthenticated user.	public	2025-10-21	2025-10-26	2025-10-21			
\.


--
-- Data for Name: _up_users; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: _up_users_role_lnk; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
\.


--
-- Data for Name: _upload_folders; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: _upload_folders_parent_lnk; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

