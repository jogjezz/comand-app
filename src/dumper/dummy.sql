

--
-- Name: account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account (
    id bigint NOT NULL,
    "namaAccount" character varying(200) NOT NULL,
    deskripsi character varying(500),
    date_updated timestamp without time zone DEFAULT now(),
    "noAccount" bigint
);


ALTER TABLE public.account OWNER TO postgres;

--
-- Name: account_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_id_seq OWNER TO postgres;

--
-- Name: account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_id_seq OWNED BY public.account.id;


--
-- Name: activitylog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activitylog (
    id bigint NOT NULL,
    username character varying DEFAULT 200 NOT NULL,
    "urlTransaksi" character varying(100),
    date timestamp without time zone,
    activity character varying(100) NOT NULL,
    "refId" character varying(100) NOT NULL,
    date_updated timestamp without time zone DEFAULT now(),
    "kapalId" bigint,
    "namaTransaksi" character varying(100),
    deskripsi character varying(200)
);


ALTER TABLE public.activitylog OWNER TO postgres;

--
-- Name: activitylog_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.activitylog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.activitylog_id_seq OWNER TO postgres;

--
-- Name: activitylog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.activitylog_id_seq OWNED BY public.activitylog.id;


--
-- Name: administratoradministrator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.administratoradministrator (
    id bigint NOT NULL,
    groupid bigint NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    email character varying(45) NOT NULL,
    fullname character varying(255) NOT NULL,
    img text,
    date_updated timestamp without time zone
);


ALTER TABLE public.administratoradministrator OWNER TO postgres;

--
-- Name: administratoradministrator_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.administratoradministrator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.administratoradministrator_id_seq OWNER TO postgres;

--
-- Name: administratoradministrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.administratoradministrator_id_seq OWNED BY public.administratoradministrator.id;


--
-- Name: administratorgroupaccess; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.administratorgroupaccess (
    id bigint NOT NULL,
    groupid bigint NOT NULL,
    accessid bigint NOT NULL,
    date_updated timestamp without time zone DEFAULT now()
);


ALTER TABLE public.administratorgroupaccess OWNER TO postgres;

--
-- Name: administratorgroupaccess_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.administratorgroupaccess_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.administratorgroupaccess_id_seq OWNER TO postgres;

--
-- Name: administratorgroupaccess_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.administratorgroupaccess_id_seq OWNED BY public.administratorgroupaccess.id;


--
-- Name: administratormenu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.administratormenu (
    id bigint NOT NULL,
    menuname character varying(45) NOT NULL,
    url character varying(45) NOT NULL,
    parentmenu bigint DEFAULT 0,
    icon character varying(45) NOT NULL,
    description character varying(255),
    "position" smallint,
    active smallint,
    date_updated timestamp without time zone DEFAULT now()
);


ALTER TABLE public.administratormenu OWNER TO postgres;

--
-- Name: administratormenu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.administratormenu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.administratormenu_id_seq OWNER TO postgres;

--
-- Name: administratormenu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.administratormenu_id_seq OWNED BY public.administratormenu.id;


--
-- Name: applicationparameter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.applicationparameter (
    id bigint NOT NULL,
    "variableName" character varying(200) NOT NULL,
    "variableValue" character varying(2000) NOT NULL,
    date_updated timestamp without time zone DEFAULT now()
);


ALTER TABLE public.applicationparameter OWNER TO postgres;

--
-- Name: applicationparameter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.applicationparameter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.applicationparameter_id_seq OWNER TO postgres;

--
-- Name: applicationparameter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.applicationparameter_id_seq OWNED BY public.applicationparameter.id;


--
-- Name: approver; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.approver (
    id bigint NOT NULL,
    "roleId" bigint NOT NULL,
    "formIdApprover" smallint NOT NULL,
    date_updated timestamp without time zone DEFAULT now()
);


ALTER TABLE public.approver OWNER TO postgres;

--
-- Name: approver_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.approver_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.approver_id_seq OWNER TO postgres;

--
-- Name: approver_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.approver_id_seq OWNED BY public.approver.id;


--
-- Name: item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item (
    id bigint NOT NULL,
    "namaItem" character varying(200) NOT NULL,
    deskripsi character varying(1000),
    category character varying(100),
    "UOM" character varying(100),
    harga bigint DEFAULT 0,
    image character varying(200),
    date_updated timestamp without time zone DEFAULT now(),
    expense_account bigint DEFAULT 51090106,
    destination_type_code character varying(50),
    item_price numeric(16,2),
    "kapalId" bigint,
    expense_account_id bigint
);


ALTER TABLE public.item OWNER TO postgres;

--
-- Name: item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.item_id_seq OWNER TO postgres;

--
-- Name: item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.item_id_seq OWNED BY public.item.id;


SET default_with_oids = false;

--
-- Name: item_onhand; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item_onhand (
    "INVENTORY_ITEM_ID" bigint NOT NULL,
    "SEGMENT1" character varying(200),
    "SUBINVENTORY_CODE" character varying(200),
    "ORGANIZATION_ID" bigint,
    "ACCT_PERIOD_ID" bigint,
    "PERIOD_NAME" character varying(40),
    "PERIOD_START_DATE" date,
    "SCHEDULE_CLOSE_DATE" date,
    "QTY" bigint,
    "ID" bigint NOT NULL
);


ALTER TABLE public.item_onhand OWNER TO postgres;

--
-- Name: item_onhand_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.item_onhand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.item_onhand_id_seq OWNER TO postgres;

--
-- Name: item_onhand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.item_onhand_id_seq OWNED BY public.item_onhand."ID";


SET default_with_oids = true;

--
-- Name: itempenerimaanbarang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itempenerimaanbarang (
    id bigint NOT NULL,
    "penerimaanBarangId" character varying(50) NOT NULL,
    "itemId" bigint NOT NULL,
    "receiptDate" timestamp without time zone,
    quantity bigint NOT NULL,
    "lokasiId" bigint NOT NULL,
    "lotNumber" character varying(100),
    status smallint DEFAULT 0 NOT NULL,
    date_updated timestamp without time zone DEFAULT now()
);


ALTER TABLE public.itempenerimaanbarang OWNER TO postgres;

--
-- Name: itempenerimaanbarang_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itempenerimaanbarang_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itempenerimaanbarang_id_seq OWNER TO postgres;

--
-- Name: itempenerimaanbarang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itempenerimaanbarang_id_seq OWNED BY public.itempenerimaanbarang.id;


--
-- Name: itempenerimaanbarangio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itempenerimaanbarangio (
    id bigint NOT NULL,
    "rcNumber" character varying(50) NOT NULL,
    "itemId" bigint NOT NULL,
    "receiptDate" timestamp without time zone,
    quantity bigint NOT NULL,
    "lokasiId" bigint NOT NULL,
    "lotNumber" character varying(100),
    date_updated timestamp without time zone DEFAULT now()
);


ALTER TABLE public.itempenerimaanbarangio OWNER TO postgres;

--
-- Name: itempenerimaanbarangio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itempenerimaanbarangio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itempenerimaanbarangio_id_seq OWNER TO postgres;

--
-- Name: itempenerimaanbarangio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itempenerimaanbarangio_id_seq OWNED BY public.itempenerimaanbarangio.id;


--
-- Name: itempenerimaanmakanan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itempenerimaanmakanan (
    id bigint NOT NULL,
    "mrNumber" character varying(50) NOT NULL,
    "itemId" bigint NOT NULL,
    quantity bigint NOT NULL,
    "lotNumber" character varying(100) NOT NULL,
    "locationId" bigint NOT NULL,
    date_updated timestamp without time zone DEFAULT now()
);


ALTER TABLE public.itempenerimaanmakanan OWNER TO postgres;

--
-- Name: itempenerimaanmakanan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itempenerimaanmakanan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itempenerimaanmakanan_id_seq OWNER TO postgres;

--
-- Name: itempenerimaanmakanan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itempenerimaanmakanan_id_seq OWNED BY public.itempenerimaanmakanan.id;


--
-- Name: itempenggunaanbarang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itempenggunaanbarang (
    id bigint NOT NULL,
    "miNumber" character varying(50) NOT NULL,
    "itemId" bigint NOT NULL,
    quantity integer NOT NULL,
    "lotNumber" character varying(100) NOT NULL,
    date_updated timestamp without time zone DEFAULT now()
);


ALTER TABLE public.itempenggunaanbarang OWNER TO postgres;

--
-- Name: itempenggunaanbarang_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itempenggunaanbarang_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itempenggunaanbarang_id_seq OWNER TO postgres;

--
-- Name: itempenggunaanbarang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itempenggunaanbarang_id_seq OWNED BY public.itempenggunaanbarang.id;


--
-- Name: itempenggunaanmakanan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itempenggunaanmakanan (
    id bigint NOT NULL,
    "msNumber" character varying(50) NOT NULL,
    "itemId" bigint NOT NULL,
    quantity bigint NOT NULL,
    "lotNumber" character varying(100) NOT NULL,
    "locationId" bigint NOT NULL,
    date_updated timestamp without time zone DEFAULT now(),
    "stokId" bigint
);


ALTER TABLE public.itempenggunaanmakanan OWNER TO postgres;

--
-- Name: itempenggunaanmakanan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itempenggunaanmakanan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itempenggunaanmakanan_id_seq OWNER TO postgres;

--
-- Name: itempenggunaanmakanan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itempenggunaanmakanan_id_seq OWNED BY public.itempenggunaanmakanan.id;


--
-- Name: itempermintaanbarang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itempermintaanbarang (
    id bigint NOT NULL,
    "prNumber" character varying(50) NOT NULL,
    "itemId" bigint NOT NULL,
    "needBy" timestamp without time zone,
    quantity integer NOT NULL,
    date_updated timestamp without time zone DEFAULT now()
);


ALTER TABLE public.itempermintaanbarang OWNER TO postgres;

--
-- Name: itempermintaanbarang_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itempermintaanbarang_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itempermintaanbarang_id_seq OWNER TO postgres;

--
-- Name: itempermintaanbarang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itempermintaanbarang_id_seq OWNED BY public.itempermintaanbarang.id;


--
-- Name: itempindahbarangio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itempindahbarangio (
    id bigint NOT NULL,
    "ioNumber" character varying(50) NOT NULL,
    "itemId" bigint NOT NULL,
    "lokasiId" bigint NOT NULL,
    quantity bigint NOT NULL,
    "lotNumber" character varying(100) NOT NULL,
    date_updated timestamp without time zone DEFAULT now(),
    "stokId" bigint
);


ALTER TABLE public.itempindahbarangio OWNER TO postgres;

--
-- Name: itempindahbarangio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itempindahbarangio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itempindahbarangio_id_seq OWNER TO postgres;

--
-- Name: itempindahbarangio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itempindahbarangio_id_seq OWNED BY public.itempindahbarangio.id;


--
-- Name: itempindahbarangsubinv; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itempindahbarangsubinv (
    id bigint NOT NULL,
    "moNumber" character varying(50) NOT NULL,
    "itemId" bigint NOT NULL,
    quantity bigint NOT NULL,
    "lotNumber" character varying(100),
    date_updated timestamp without time zone DEFAULT now(),
    "stokId" bigint
);


ALTER TABLE public.itempindahbarangsubinv OWNER TO postgres;

--
-- Name: itempindahbarangsubinv_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itempindahbarangsubinv_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itempindahbarangsubinv_id_seq OWNER TO postgres;

--
-- Name: itempindahbarangsubinv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itempindahbarangsubinv_id_seq OWNED BY public.itempindahbarangsubinv.id;


--
-- Name: itempopenerimaan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itempopenerimaan (
    id bigint NOT NULL,
    "poNumber" character varying(50) NOT NULL,
    "itemId" bigint NOT NULL,
    "lokasiId" bigint NOT NULL,
    "receiptDate" timestamp without time zone,
    "dateCreated" timestamp without time zone,
    quantity integer NOT NULL,
    "lotNumber" character varying(100),
    date_updated timestamp without time zone DEFAULT now(),
    "qtyRemaining" integer,
    status smallint DEFAULT 0
);


ALTER TABLE public.itempopenerimaan OWNER TO postgres;

--
-- Name: itempopenerimaan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itempopenerimaan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itempopenerimaan_id_seq OWNER TO postgres;

--
-- Name: itempopenerimaan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itempopenerimaan_id_seq OWNED BY public.itempopenerimaan.id;


--
-- Name: itempopenerimaanio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itempopenerimaanio (
    id bigint NOT NULL,
    "ioNumber" character varying(50) NOT NULL,
    "itemId" bigint NOT NULL,
    "receiptDate" timestamp without time zone,
    quantity integer NOT NULL,
    "lokasiId" bigint NOT NULL,
    "lotNumber" character varying(100),
    status smallint DEFAULT 0 NOT NULL,
    date_updated timestamp without time zone DEFAULT now(),
    "qtyRemaining" integer
);


ALTER TABLE public.itempopenerimaanio OWNER TO postgres;

--
-- Name: itempopenerimaanio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itempopenerimaanio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itempopenerimaanio_id_seq OWNER TO postgres;

--
-- Name: itempopenerimaanio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itempopenerimaanio_id_seq OWNED BY public.itempopenerimaanio.id;


--
-- Name: kapal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kapal (
    id bigint NOT NULL,
    "kodeKapal" character varying(5) NOT NULL,
    "namaKapal" character varying(200) NOT NULL,
    date_updated timestamp without time zone DEFAULT now()
);


ALTER TABLE public.kapal OWNER TO postgres;

--
-- Name: kapal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kapal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kapal_id_seq OWNER TO postgres;

--
-- Name: kapal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kapal_id_seq OWNED BY public.kapal.id;


--
-- Name: loginlog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loginlog (
    id bigint NOT NULL,
    "loginStartDate" timestamp without time zone,
    "loginEndDate" timestamp without time zone,
    date_updated timestamp without time zone DEFAULT now(),
    "kapalId" bigint,
    username character varying(200) NOT NULL
);


ALTER TABLE public.loginlog OWNER TO postgres;

--
-- Name: loginlog_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.loginlog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.loginlog_id_seq OWNER TO postgres;

--
-- Name: loginlog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.loginlog_id_seq OWNED BY public.loginlog.id;


SET default_with_oids = false;

--
-- Name: logsynckapal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logsynckapal (
    "ID" bigint NOT NULL,
    process_name character varying(200),
    process_date timestamp without time zone,
    status character varying(40),
    error_msg character varying(1000)
);
ALTER TABLE ONLY public.logsynckapal ALTER COLUMN "ID" SET STATISTICS 0;


ALTER TABLE public.logsynckapal OWNER TO postgres;

--
-- Name: logsyncoracle; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logsyncoracle (
    "ID" bigint NOT NULL,
    process_name character varying(200),
    process_date timestamp without time zone,
    status character varying(40),
    error_msg character varying(1000)
);
ALTER TABLE ONLY public.logsyncoracle ALTER COLUMN "ID" SET STATISTICS 0;


ALTER TABLE public.logsyncoracle OWNER TO postgres;

SET default_with_oids = true;

--
-- Name: lokasiitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lokasiitem (
    id bigint NOT NULL,
    "namaLokasi" character varying(200) NOT NULL,
    lokasi character varying(200),
    "alamatLokasi" character varying(200),
    "ORGCode" character varying(100),
    date_updated timestamp without time zone DEFAULT now(),
    "kapalId" bigint
);


ALTER TABLE public.lokasiitem OWNER TO postgres;

--
-- Name: lokasiitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lokasiitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lokasiitem_id_seq OWNER TO postgres;

--
-- Name: lokasiitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lokasiitem_id_seq OWNED BY public.lokasiitem.id;


SET default_with_oids = false;

--
-- Name: lotnumber; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lotnumber (
    lotnumber character varying(50) NOT NULL,
    refid character varying(50),
    date_updated timestamp without time zone DEFAULT now()
);


ALTER TABLE public.lotnumber OWNER TO postgres;

SET default_with_oids = true;

--
-- Name: notifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notifications (
    id bigint NOT NULL,
    "userId" bigint NOT NULL,
    "notificationType" smallint NOT NULL,
    "refId" bigint NOT NULL,
    date timestamp without time zone,
    "isRead" smallint NOT NULL,
    date_updated timestamp without time zone DEFAULT now(),
    "kapalId" bigint
);


ALTER TABLE public.notifications OWNER TO postgres;

--
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_id_seq OWNER TO postgres;

--
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- Name: penerimaanbarang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.penerimaanbarang (
    id bigint NOT NULL,
    "receiptNumber" character varying(50) NOT NULL,
    "poNumber" character varying(50) NOT NULL,
    "userId" bigint NOT NULL,
    "kapalId" bigint NOT NULL,
    "locationId" bigint NOT NULL,
    "unitOperasi" character varying(100),
    "tanggalPenerimaan" timestamp without time zone,
    "tanggalPO" timestamp without time zone,
    "qtyDiterima" bigint DEFAULT 0 NOT NULL,
    "voyageKode" character varying(10),
    "voyageStart" timestamp without time zone,
    "voyageEnd" timestamp without time zone,
    status smallint NOT NULL,
    date_updated timestamp without time zone DEFAULT now()
);


ALTER TABLE public.penerimaanbarang OWNER TO postgres;

--
-- Name: penerimaanbarang_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.penerimaanbarang_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.penerimaanbarang_id_seq OWNER TO postgres;

--
-- Name: penerimaanbarang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.penerimaanbarang_id_seq OWNED BY public.penerimaanbarang.id;


--
-- Name: penerimaanbarangio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.penerimaanbarangio (
    id bigint NOT NULL,
    "rcNumber" character varying(50) NOT NULL,
    "ioNumber" character varying(50) NOT NULL,
    "userId" bigint NOT NULL,
    "kapalId" bigint NOT NULL,
    "locationId" bigint NOT NULL,
    "unitOperasi" character varying(100),
    "tanggalPenerimaan" timestamp without time zone,
    "tanggalPO" timestamp without time zone,
    "qtyDiterima" bigint NOT NULL,
    "voyageKode" character varying(10),
    "voyageStart" timestamp without time zone,
    "voyageEnd" timestamp without time zone,
    status smallint NOT NULL,
    date_updated timestamp without time zone DEFAULT now()
);


ALTER TABLE public.penerimaanbarangio OWNER TO postgres;

--
-- Name: penerimaanbarangio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.penerimaanbarangio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.penerimaanbarangio_id_seq OWNER TO postgres;

--
-- Name: penerimaanbarangio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.penerimaanbarangio_id_seq OWNED BY public.penerimaanbarangio.id;


--
-- Name: penerimaanmakanan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.penerimaanmakanan (
    id bigint NOT NULL,
    "requesterId" bigint NOT NULL,
    "approverId" bigint,
    "kapalId" bigint NOT NULL,
    "mrNumber" character varying(50) NOT NULL,
    "locationId" bigint NOT NULL,
    type smallint NOT NULL,
    "accountId" bigint NOT NULL,
    date timestamp without time zone DEFAULT now() NOT NULL,
    "totalBarang" bigint DEFAULT 0,
    komentar text,
    "voyageKode" character varying(10),
    "voyageStart" timestamp without time zone,
    "voyageEnd" timestamp without time zone,
    status smallint DEFAULT 0 NOT NULL,
    "tglApproved" timestamp without time zone DEFAULT now(),
    date_updated timestamp without time zone DEFAULT now(),
    feedback text
);


ALTER TABLE public.penerimaanmakanan OWNER TO postgres;

--
-- Name: penerimaanmakanan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.penerimaanmakanan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.penerimaanmakanan_id_seq OWNER TO postgres;

--
-- Name: penerimaanmakanan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.penerimaanmakanan_id_seq OWNED BY public.penerimaanmakanan.id;


--
-- Name: penggunaanbarang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.penggunaanbarang (
    id bigint NOT NULL,
    "miNumber" character varying(50) NOT NULL,
    "requesterId" bigint NOT NULL,
    "approverId" bigint,
    "transactionType" smallint NOT NULL,
    "kapalId" bigint NOT NULL,
    "locationId" bigint NOT NULL,
    "destinationAccount" bigint NOT NULL,
    "tglPenggunaan" timestamp without time zone,
    "jlhBarang" bigint DEFAULT 0 NOT NULL,
    "voyageKode" character varying(10),
    "voyageStart" timestamp without time zone,
    "voyageEnd" timestamp without time zone,
    date_updated timestamp without time zone DEFAULT now()
);


ALTER TABLE public.penggunaanbarang OWNER TO postgres;

--
-- Name: penggunaanbarang_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.penggunaanbarang_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.penggunaanbarang_id_seq OWNER TO postgres;

--
-- Name: penggunaanbarang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.penggunaanbarang_id_seq OWNED BY public.penggunaanbarang.id;


--
-- Name: penggunaanmakanan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.penggunaanmakanan (
    id bigint NOT NULL,
    "requesterId" bigint NOT NULL,
    "approverId" bigint,
    "kapalId" bigint NOT NULL,
    "msNumber" character varying(50) NOT NULL,
    "locationId" bigint NOT NULL,
    type smallint NOT NULL,
    "accountId" bigint NOT NULL,
    date timestamp without time zone DEFAULT now() NOT NULL,
    "totalBarang" bigint DEFAULT 0,
    komentar text,
    "voyageKode" character varying(10),
    "voyageStart" timestamp without time zone,
    "voyageEnd" timestamp without time zone,
    status smallint DEFAULT 0 NOT NULL,
    "tglApproved" timestamp without time zone DEFAULT now(),
    date_updated timestamp without time zone DEFAULT now(),
    feedback text
);


ALTER TABLE public.penggunaanmakanan OWNER TO postgres;

--
-- Name: penggunaanmakanan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.penggunaanmakanan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.penggunaanmakanan_id_seq OWNER TO postgres;

--
-- Name: penggunaanmakanan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.penggunaanmakanan_id_seq OWNED BY public.penggunaanmakanan.id;


--
-- Name: permintaanbarang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permintaanbarang (
    id bigint NOT NULL,
    "prNumber" character varying(50) NOT NULL,
    "requesterId" bigint NOT NULL,
    "approverId" bigint,
    "kapalId" bigint NOT NULL,
    "locationId" bigint NOT NULL,
    "destinationType" character varying(200),
    "operatingUnit" character varying(200) NOT NULL,
    organization character varying(200),
    keperluan character varying(200),
    "totalHarga" bigint DEFAULT 0,
    "totalBarang" bigint DEFAULT 0,
    sumber character varying(200),
    komentar text,
    deskripsi character varying(200),
    "tglPermintaan" timestamp without time zone DEFAULT now() NOT NULL,
    "tglApproved" timestamp without time zone DEFAULT now() NOT NULL,
    "isApproved" smallint NOT NULL,
    "voyageKode" character varying(10),
    "voyageStart" timestamp without time zone,
    "voyageEnd" timestamp without time zone,
    date_updated timestamp without time zone DEFAULT now(),
    feedback text
);


ALTER TABLE public.permintaanbarang OWNER TO postgres;

--
-- Name: permintaanbarang_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.permintaanbarang_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permintaanbarang_id_seq OWNER TO postgres;

--
-- Name: permintaanbarang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.permintaanbarang_id_seq OWNED BY public.permintaanbarang.id;


--
-- Name: pindahbarangio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pindahbarangio (
    id bigint NOT NULL,
    "ioNumber" character varying(50) NOT NULL,
    type smallint DEFAULT 1,
    "requesterId" bigint NOT NULL,
    "approverId" bigint,
    "fromKapalId" bigint NOT NULL,
    "toKapalId" bigint NOT NULL,
    "fromLocationId" bigint NOT NULL,
    "toLocationId" bigint NOT NULL,
    "toOrganization" character varying(200) NOT NULL,
    "jlhBarang" bigint DEFAULT 0 NOT NULL,
    "expectedReceivedDate" timestamp without time zone,
    "tglTransaksi" timestamp without time zone DEFAULT now() NOT NULL,
    komentar text,
    status smallint DEFAULT 0 NOT NULL,
    "tglApproved" timestamp without time zone DEFAULT now() NOT NULL,
    "voyageKode" character varying(10),
    "voyageStart" timestamp without time zone,
    "voyageEnd" timestamp without time zone,
    date_updated timestamp without time zone DEFAULT now(),
    feedback text
);


ALTER TABLE public.pindahbarangio OWNER TO postgres;

--
-- Name: pindahbarangio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pindahbarangio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pindahbarangio_id_seq OWNER TO postgres;

--
-- Name: pindahbarangio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pindahbarangio_id_seq OWNED BY public.pindahbarangio.id;


--
-- Name: pindahbarangsubinv; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pindahbarangsubinv (
    id bigint NOT NULL,
    "moNumber" character varying(50) NOT NULL,
    "kapalId" bigint NOT NULL,
    type smallint NOT NULL,
    "requesterId" bigint NOT NULL,
    "approverId" bigint,
    "fromLocationId" bigint NOT NULL,
    "toLocationId" bigint NOT NULL,
    "transactionType" smallint NOT NULL,
    "voyageId" bigint,
    "voyageStart" timestamp without time zone,
    "voyageEnd" timestamp without time zone,
    "dateRequired" timestamp without time zone,
    quantity bigint NOT NULL,
    "dateCreated" timestamp without time zone DEFAULT now() NOT NULL,
    komentar character varying(765),
    status smallint NOT NULL,
    "tglApproved" timestamp without time zone DEFAULT now() NOT NULL,
    date_updated timestamp without time zone DEFAULT now(),
    feedback text
);


ALTER TABLE public.pindahbarangsubinv OWNER TO postgres;

--
-- Name: pindahbarangsubinv_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pindahbarangsubinv_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pindahbarangsubinv_id_seq OWNER TO postgres;

--
-- Name: pindahbarangsubinv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pindahbarangsubinv_id_seq OWNED BY public.pindahbarangsubinv.id;


--
-- Name: popenerimaan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.popenerimaan (
    id bigint NOT NULL,
    "poNumber" character varying(50) NOT NULL,
    "kapalId" bigint NOT NULL,
    date timestamp without time zone,
    status smallint NOT NULL,
    "operatingUnit" character varying(200),
    quantity character varying(200),
    "qtyReceiptNumber" bigint DEFAULT 0 NOT NULL,
    date_updated timestamp without time zone DEFAULT now(),
    "vendorId" bigint,
    "vendorName" character varying(200)
);


ALTER TABLE public.popenerimaan OWNER TO postgres;

--
-- Name: popenerimaan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.popenerimaan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.popenerimaan_id_seq OWNER TO postgres;

--
-- Name: popenerimaan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.popenerimaan_id_seq OWNED BY public.popenerimaan.id;


--
-- Name: popenerimaanio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.popenerimaanio (
    id bigint NOT NULL,
    "ioNumber" character varying(50) NOT NULL,
    "kapalId" bigint NOT NULL,
    date timestamp without time zone,
    status smallint NOT NULL,
    "operatingUnit" character varying(200),
    quantity character varying(200),
    "qtyReceiptNumber" bigint DEFAULT 0 NOT NULL,
    date_updated timestamp without time zone DEFAULT now(),
    "vendorId" bigint,
    "vendorName" character varying(200)
);


ALTER TABLE public.popenerimaanio OWNER TO postgres;

--
-- Name: popenerimaanio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.popenerimaanio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.popenerimaanio_id_seq OWNER TO postgres;

--
-- Name: popenerimaanio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.popenerimaanio_id_seq OWNED BY public.popenerimaanio.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    "roleName" character varying(100) NOT NULL,
    date_updated timestamp without time zone DEFAULT now(),
    "kapalId" bigint
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


SET default_with_oids = false;

--
-- Name: staging_sync_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staging_sync_table (
    id integer NOT NULL,
    staging_table character varying(25),
    target_table character varying(25),
    target_model character varying(25),
    last_sync timestamp without time zone
);


ALTER TABLE public.staging_sync_table OWNER TO postgres;

--
-- Name: staging_sync_table_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.staging_sync_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.staging_sync_table_id_seq OWNER TO postgres;

--
-- Name: staging_sync_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.staging_sync_table_id_seq OWNED BY public.staging_sync_table.id;


--
-- Name: stg_pelni_iot_int; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stg_pelni_iot_int (
    transaction_header_id bigint,
    transaction_interface_id bigint,
    source_code character varying(30),
    source_line_id bigint,
    source_header_id bigint,
    process_flag bigint,
    transaction_mode bigint,
    lock_flag bigint,
    last_update_date date,
    creation_date date,
    created_by bigint,
    last_update_login bigint,
    inventory_item_id bigint,
    item_segment1 character varying(40),
    organization_id bigint,
    transaction_quantity bigint,
    transaction_uom character varying(3),
    transaction_date date,
    subinventory_code character varying(10),
    locator_name character varying(2000),
    distribution_account_id bigint,
    transaction_source_type_id bigint,
    transaction_action_id bigint,
    transaction_type_id bigint,
    attribute1 character varying(150),
    attribute2 character varying(150),
    attribute3 character varying(150),
    attribute4 character varying(150),
    attribute5 character varying(150),
    attribute6 character varying(150),
    attribute7 character varying(150),
    attribute8 character varying(150),
    attribute9 character varying(150),
    attribute10 character varying(150),
    transfer_flag character varying(1),
    transfer_date timestamp without time zone,
    error_message character varying(240),
    process_id bigint,
    transaction_number character varying(200),
    to_org_id bigint,
    "inout" character varying(10),
    to_subinventory character varying(200)
);


ALTER TABLE public.stg_pelni_iot_int OWNER TO postgres;

--
-- Name: stg_pelni_item_onhand_int; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stg_pelni_item_onhand_int (
    organization_id bigint,
    inventory_item_id bigint,
    segment1 character varying(40),
    description character varying(240),
    primary_uom_code character varying(3),
    subinventory_code character varying(10),
    transaction_quantity bigint,
    lot_bigint character varying(80),
    attribute1 character varying(150),
    attribute2 character varying(150),
    attribute3 character varying(150),
    attribute4 character varying(150),
    attribute5 character varying(150),
    attribute6 character varying(150),
    attribute7 character varying(150),
    attribute8 character varying(150),
    attribute9 character varying(150),
    attribute10 character varying(150),
    transfer_flag character varying(1),
    transfer_date timestamp without time zone,
    error_message character varying(240),
    process_id bigint
);


ALTER TABLE public.stg_pelni_item_onhand_int OWNER TO postgres;

--
-- Name: stg_pelni_pr_int; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stg_pelni_pr_int (
    deliver_to_location_code character varying(60),
    deliver_to_location_id bigint,
    deliver_to_requestor_name character varying(240),
    deliver_to_requestor_id bigint,
    authorization_status character varying(25),
    requisition_header_id bigint,
    requisition_type character varying(25),
    creation_date timestamp without time zone,
    created_by bigint,
    quantity bigint,
    unit_price bigint,
    item_id bigint,
    item_segment1 character varying(40),
    item_segment2 character varying(40),
    item_segment3 character varying(40),
    item_segment4 character varying(40),
    item_segment5 character varying(40),
    item_description character varying(240),
    category_id bigint,
    currency_code character varying(15),
    preparer_id bigint,
    preparer_name character varying(240),
    approver_id bigint,
    apprver_name character varying(240),
    group_code character varying(30),
    charge_account_id bigint,
    charge_account_segment1 character varying(25),
    charge_account_segment2 character varying(25),
    charge_account_segment3 character varying(25),
    charge_account_segment4 character varying(25),
    charge_account_segment5 character varying(25),
    charge_account_segment6 character varying(25),
    document_type_code character varying(25),
    req_bigint_segment1 character varying(20),
    source_type_code character varying(25),
    header_description character varying(240),
    batch_id bigint,
    destination_type_code character varying(3),
    destination_organization_id bigint,
    interface_source_code character varying(25),
    unit_of_measure character varying(25),
    need_by_date timestamp without time zone,
    org_id bigint,
    header_attribute_category character varying(30),
    header_attribute1 character varying(150),
    header_attribute2 character varying(150),
    header_attribute3 character varying(150),
    header_attribute4 character varying(150),
    header_attribute5 character varying(150),
    header_attribute6 character varying(150),
    header_attribute7 character varying(150),
    header_attribute8 character varying(150),
    header_attribute9 character varying(150),
    header_attribute10 character varying(150),
    header_attribute11 character varying(150),
    header_attribute12 character varying(150),
    header_attribute13 character varying(150),
    header_attribute14 character varying(150),
    header_attribute15 character varying(150),
    line_attribute_category character varying(30),
    line_attribute1 character varying(150),
    line_attribute2 character varying(150),
    line_attribute3 character varying(150),
    line_attribute4 character varying(150),
    line_attribute5 character varying(150),
    line_attribute6 character varying(150),
    line_attribute7 character varying(150),
    line_attribute8 character varying(150),
    line_attribute9 character varying(150),
    line_attribute10 character varying(150),
    line_attribute11 character varying(150),
    line_attribute12 character varying(150),
    line_attribute13 character varying(150),
    line_attribute14 character varying(150),
    line_attribute15 character varying(150),
    transfer_flag character varying(20),
    transfer_msg character varying(2000),
    transfer_date timestamp without time zone,
    process_id bigint,
    req_number_segment1 character varying(20)
);


ALTER TABLE public.stg_pelni_pr_int OWNER TO postgres;

--
-- Name: stg_pelni_scm_misc_rcv_int; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stg_pelni_scm_misc_rcv_int (
    transaction_header_id bigint,
    transaction_interface_id bigint,
    source_code character varying(30),
    source_line_id bigint,
    source_header_id bigint,
    process_flag bigint,
    transaction_mode bigint,
    lock_flag bigint,
    inventory_item_id bigint,
    item_segment1 character varying(40),
    organization_id bigint,
    transaction_quantity bigint,
    transaction_uom character varying(3),
    transaction_date date,
    subinventory_code character varying(10),
    locator_name character varying(2000),
    distribution_account_id bigint,
    transaction_source_type_id bigint,
    transaction_action_id bigint,
    transaction_type_id bigint,
    transfer_flag character varying(1),
    transfer_date timestamp without time zone,
    error_message character varying(240),
    process_id bigint,
    transaction_number character varying(200),
    type_misc character varying(20),
    attribute2 character varying(150)
);


ALTER TABLE public.stg_pelni_scm_misc_rcv_int OWNER TO postgres;

--
-- Name: stg_pelni_scm_moi_int; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stg_pelni_scm_moi_int (
    transaction_header_id bigint,
    transaction_interface_id bigint,
    source_code character varying(30),
    source_line_id bigint,
    source_header_id bigint,
    process_flag bigint,
    transaction_mode bigint,
    lock_flag bigint,
    inventory_item_id bigint,
    item_segment1 character varying(40),
    organization_id bigint,
    transaction_quantity bigint,
    transaction_uom character varying(3),
    transaction_date date,
    subinventory_code character varying(10),
    locator_name character varying(2000),
    distribution_account_id bigint,
    transaction_source_type_id bigint,
    transaction_action_id bigint,
    transaction_type_id bigint,
    transfer_flag character varying(1),
    transfer_date timestamp without time zone,
    error_message character varying(240),
    process_id bigint,
    transaction_number character varying(200)
);


ALTER TABLE public.stg_pelni_scm_moi_int OWNER TO postgres;

--
-- Name: stg_pelni_scm_mot_int; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stg_pelni_scm_mot_int (
    transaction_header_id bigint,
    transaction_interface_id bigint,
    source_code character varying(30),
    source_line_id bigint,
    source_header_id bigint,
    process_flag bigint,
    transaction_mode bigint,
    lock_flag bigint,
    inventory_item_id bigint,
    item_segment1 character varying(40),
    organization_id bigint,
    transaction_quantity bigint,
    transaction_uom character varying(3),
    transaction_date date,
    subinventory_code character varying(10),
    locator_name character varying(2000),
    distribution_account_id bigint,
    transaction_source_type_id bigint,
    transaction_action_id bigint,
    transaction_type_id bigint,
    transfer_subinventory character varying(20),
    transfer_locator bigint,
    transfer_flag character varying(1),
    transfer_date timestamp without time zone,
    error_message character varying(240),
    process_id bigint,
    transaction_number character varying(200),
    attribute2 character varying(150)
);


ALTER TABLE public.stg_pelni_scm_mot_int OWNER TO postgres;

--
-- Name: stg_pelni_scm_rcv_int; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stg_pelni_scm_rcv_int (
    header_interface_id bigint,
    group_id bigint,
    processing_status_code character varying(25),
    receipt_source_code character varying(25),
    transaction_type character varying(25),
    receipt_num character varying(25),
    vendor_id bigint,
    vendor_name character varying(240),
    validation_flag character varying(1),
    auto_transact_code character varying(25),
    org_id bigint,
    attribute1 character varying(150),
    attribute2 character varying(150),
    attribute3 character varying(150),
    attribute4 character varying(150),
    attribute5 character varying(150),
    attribute6 character varying(150),
    attribute7 character varying(150),
    attribute8 character varying(150),
    attribute9 character varying(150),
    attribute10 character varying(150),
    attribute11 character varying(150),
    attribute12 character varying(150),
    attribute13 character varying(150),
    attribute14 character varying(150),
    attribute15 character varying(150),
    transfer_flag character varying(1),
    transfer_date timestamp without time zone,
    error_message character varying(240),
    process_id bigint,
    po_number character varying(200),
    transaction_number character varying(200),
    creation_date date,
    last_update_date date
);


ALTER TABLE public.stg_pelni_scm_rcv_int OWNER TO postgres;

--
-- Name: stg_pelni_scm_rcv_trx_int; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stg_pelni_scm_rcv_trx_int (
    interface_transaction_id bigint,
    header_interface_id bigint,
    group_id bigint,
    transaction_type character varying(25),
    transaction_date timestamp without time zone,
    processing_status_code character varying(25),
    transaction_status_code character varying(25),
    processing_mode_code character varying(25),
    quantity bigint,
    unit_of_measure character varying(25),
    auto_transact_code character varying(25),
    validation_flag character varying(1),
    to_organization_code character varying(3),
    item_id bigint,
    item_num character varying(81),
    ship_to_location_code character varying(60),
    po_header_id bigint,
    document_num character varying(50),
    po_line_id bigint,
    document_line_num character varying(50),
    transfer_flag character varying(1),
    transfer_date timestamp without time zone,
    error_message character varying(240),
    process_id bigint,
    transaction_number character varying(200),
    creation_date date,
    last_update_date date,
    attribute2 character varying(150)
);


ALTER TABLE public.stg_pelni_scm_rcv_trx_int OWNER TO postgres;

--
-- Name: stg_pelni_ship_int; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stg_pelni_ship_int (
    flex_value character varying(150),
    enabled_flag character varying(1),
    summary_flag character varying(1),
    description character varying(240),
    attribute1 character varying(150),
    attribute2 character varying(150),
    attribute3 character varying(150),
    attribute4 character varying(150),
    attribute5 character varying(150),
    attribute6 character varying(150),
    attribute7 character varying(150),
    attribute8 character varying(150),
    attribute9 character varying(150),
    attribute10 character varying(150),
    transfer_flag character varying(1),
    transfer_date timestamp without time zone,
    error_message character varying(240),
    process_id bigint
);


ALTER TABLE public.stg_pelni_ship_int OWNER TO postgres;

--
-- Name: stg_pelni_system_items_int; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stg_pelni_system_items_int (
    inventory_item_id bigint,
    organization_id bigint,
    enabled_flag character varying(1),
    description character varying(240),
    segment1 character varying(40),
    lot_control_code bigint,
    serial_bigint_control_code bigint,
    primary_uom_code character varying(3),
    inventory_item_status_code character varying(10),
    category_id bigint,
    concatenated_segments character varying(163),
    attribute1 character varying(150),
    attribute2 character varying(150),
    attribute3 character varying(150),
    attribute4 character varying(150),
    attribute5 character varying(150),
    attribute6 character varying(150),
    attribute7 character varying(150),
    attribute8 character varying(150),
    attribute9 character varying(150),
    attribute10 character varying(150),
    transfer_flag character varying(1),
    transfer_date timestamp without time zone,
    error_message character varying(240),
    process_id bigint
);


ALTER TABLE public.stg_pelni_system_items_int OWNER TO postgres;

--
-- Name: stg_pelni_wh_int; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stg_pelni_wh_int (
    organization_id bigint,
    organization_code character varying(3),
    name character varying(240),
    date_from date,
    date_to date,
    location_id bigint,
    location_code character varying(60),
    address_line_1 character varying(240),
    secondary_inventory_name character varying(10),
    description character varying(50),
    attribute1 character varying(150),
    attribute2 character varying(150),
    attribute3 character varying(150),
    attribute4 character varying(150),
    attribute5 character varying(150),
    attribute6 character varying(150),
    attribute7 character varying(150),
    attribute8 character varying(150),
    attribute9 character varying(150),
    attribute10 character varying(150),
    transfer_flag character varying(1),
    transfer_date timestamp without time zone,
    error_message character varying(240),
    process_id bigint
);


ALTER TABLE public.stg_pelni_wh_int OWNER TO postgres;

SET default_with_oids = true;

--
-- Name: stokkapal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stokkapal (
    id bigint NOT NULL,
    "itemId" bigint NOT NULL,
    "kapalId" bigint NOT NULL,
    "lokasiId" bigint NOT NULL,
    jumlah bigint NOT NULL,
    satuan character varying(50),
    status smallint NOT NULL,
    type smallint DEFAULT 1,
    date_updated timestamp without time zone DEFAULT now(),
    "lotNumber" character varying(50),
    "tglMasuk" timestamp without time zone
);


ALTER TABLE public.stokkapal OWNER TO postgres;

--
-- Name: stokkapal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stokkapal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stokkapal_id_seq OWNER TO postgres;

--
-- Name: stokkapal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stokkapal_id_seq OWNED BY public.stokkapal.id;


SET default_with_oids = false;

--
-- Name: sync; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sync (
    id bigint NOT NULL,
    local_id bigint,
    server_id bigint,
    table_name character varying(255) NOT NULL,
    marked_deleted smallint DEFAULT 0,
    need_sync smallint DEFAULT 1,
    sync_error text,
    sync_date timestamp without time zone,
    last_sync timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.sync OWNER TO postgres;

--
-- Name: sync_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sync_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sync_id_seq OWNER TO postgres;

--
-- Name: sync_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sync_id_seq OWNED BY public.sync.id;


--
-- Name: sync_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sync_table (
    id bigint NOT NULL,
    table_name character varying(255),
    last_sync timestamp without time zone
);


ALTER TABLE public.sync_table OWNER TO postgres;

--
-- Name: sync_table_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sync_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sync_table_id_seq OWNER TO postgres;

--
-- Name: sync_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sync_table_id_seq OWNED BY public.sync_table.id;


SET default_with_oids = true;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    "roleId" bigint NOT NULL,
    "kapalId" bigint NOT NULL,
    username character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    date_updated timestamp without time zone DEFAULT now(),
    "lokasiId" character varying(20),
    aplikasi character varying(20) DEFAULT 'KAPAL'::character varying,
    jabatan character varying(100),
    nrp character varying(100)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: voyages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.voyages (
    id bigint NOT NULL,
    "voyageKode" character varying(10) DEFAULT '0'::character varying,
    "voyageName" character varying(100) DEFAULT '0'::character varying,
    date_updated timestamp without time zone DEFAULT now()
);


ALTER TABLE public.voyages OWNER TO postgres;

--
-- Name: voyages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.voyages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.voyages_id_seq OWNER TO postgres;

--
-- Name: voyages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.voyages_id_seq OWNED BY public.voyages.id;


--
-- Name: workflow; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.workflow (
    id bigint NOT NULL,
    "kapalId" bigint NOT NULL,
    "tipeTransaksi" character varying(10) NOT NULL,
    "urlTransaksi" character varying(100) NOT NULL,
    "namaTransaksi" character varying(100) NOT NULL,
    "refId" character varying(100) NOT NULL,
    "dateUpdated" timestamp without time zone DEFAULT now(),
    "dateCreated" timestamp without time zone DEFAULT now(),
    "requesterId" bigint NOT NULL,
    "approverId" bigint DEFAULT 0,
    status smallint DEFAULT 0 NOT NULL,
    date_updated timestamp without time zone DEFAULT now()
);


ALTER TABLE public.workflow OWNER TO postgres;

--
-- Name: workflow_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.workflow_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_id_seq OWNER TO postgres;

--
-- Name: workflow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.workflow_id_seq OWNED BY public.workflow.id;


--
-- Name: account id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account ALTER COLUMN id SET DEFAULT nextval('public.account_id_seq'::regclass);


--
-- Name: activitylog id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activitylog ALTER COLUMN id SET DEFAULT nextval('public.activitylog_id_seq'::regclass);


--
-- Name: administratoradministrator id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administratoradministrator ALTER COLUMN id SET DEFAULT nextval('public.administratoradministrator_id_seq'::regclass);


--
-- Name: administratorgroupaccess id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administratorgroupaccess ALTER COLUMN id SET DEFAULT nextval('public.administratorgroupaccess_id_seq'::regclass);


--
-- Name: administratormenu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administratormenu ALTER COLUMN id SET DEFAULT nextval('public.administratormenu_id_seq'::regclass);


--
-- Name: applicationparameter id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicationparameter ALTER COLUMN id SET DEFAULT nextval('public.applicationparameter_id_seq'::regclass);


--
-- Name: approver id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.approver ALTER COLUMN id SET DEFAULT nextval('public.approver_id_seq'::regclass);


--
-- Name: item id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item ALTER COLUMN id SET DEFAULT nextval('public.item_id_seq'::regclass);


--
-- Name: item_onhand ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_onhand ALTER COLUMN "ID" SET DEFAULT nextval('public.item_onhand_id_seq'::regclass);


--
-- Name: itempenerimaanbarang id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itempenerimaanbarang ALTER COLUMN id SET DEFAULT nextval('public.itempenerimaanbarang_id_seq'::regclass);


--
-- Name: itempenerimaanbarangio id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itempenerimaanbarangio ALTER COLUMN id SET DEFAULT nextval('public.itempenerimaanbarangio_id_seq'::regclass);


--
-- Name: itempenerimaanmakanan id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itempenerimaanmakanan ALTER COLUMN id SET DEFAULT nextval('public.itempenerimaanmakanan_id_seq'::regclass);


--
-- Name: itempenggunaanbarang id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itempenggunaanbarang ALTER COLUMN id SET DEFAULT nextval('public.itempenggunaanbarang_id_seq'::regclass);


--
-- Name: itempenggunaanmakanan id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itempenggunaanmakanan ALTER COLUMN id SET DEFAULT nextval('public.itempenggunaanmakanan_id_seq'::regclass);


--
-- Name: itempermintaanbarang id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itempermintaanbarang ALTER COLUMN id SET DEFAULT nextval('public.itempermintaanbarang_id_seq'::regclass);


--
-- Name: itempindahbarangio id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itempindahbarangio ALTER COLUMN id SET DEFAULT nextval('public.itempindahbarangio_id_seq'::regclass);


--
-- Name: itempindahbarangsubinv id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itempindahbarangsubinv ALTER COLUMN id SET DEFAULT nextval('public.itempindahbarangsubinv_id_seq'::regclass);


--
-- Name: itempopenerimaan id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itempopenerimaan ALTER COLUMN id SET DEFAULT nextval('public.itempopenerimaan_id_seq'::regclass);


--
-- Name: itempopenerimaanio id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itempopenerimaanio ALTER COLUMN id SET DEFAULT nextval('public.itempopenerimaanio_id_seq'::regclass);


--
-- Name: kapal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kapal ALTER COLUMN id SET DEFAULT nextval('public.kapal_id_seq'::regclass);


--
-- Name: loginlog id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loginlog ALTER COLUMN id SET DEFAULT nextval('public.loginlog_id_seq'::regclass);


--
-- Name: lokasiitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lokasiitem ALTER COLUMN id SET DEFAULT nextval('public.lokasiitem_id_seq'::regclass);


--
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- Name: penerimaanbarang id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penerimaanbarang ALTER COLUMN id SET DEFAULT nextval('public.penerimaanbarang_id_seq'::regclass);


--
-- Name: penerimaanbarangio id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penerimaanbarangio ALTER COLUMN id SET DEFAULT nextval('public.penerimaanbarangio_id_seq'::regclass);


--
-- Name: penerimaanmakanan id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penerimaanmakanan ALTER COLUMN id SET DEFAULT nextval('public.penerimaanmakanan_id_seq'::regclass);


--
-- Name: penggunaanbarang id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penggunaanbarang ALTER COLUMN id SET DEFAULT nextval('public.penggunaanbarang_id_seq'::regclass);


--
-- Name: penggunaanmakanan id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penggunaanmakanan ALTER COLUMN id SET DEFAULT nextval('public.penggunaanmakanan_id_seq'::regclass);


--
-- Name: permintaanbarang id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permintaanbarang ALTER COLUMN id SET DEFAULT nextval('public.permintaanbarang_id_seq'::regclass);


--
-- Name: pindahbarangio id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pindahbarangio ALTER COLUMN id SET DEFAULT nextval('public.pindahbarangio_id_seq'::regclass);


--
-- Name: pindahbarangsubinv id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pindahbarangsubinv ALTER COLUMN id SET DEFAULT nextval('public.pindahbarangsubinv_id_seq'::regclass);


--
-- Name: popenerimaan id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.popenerimaan ALTER COLUMN id SET DEFAULT nextval('public.popenerimaan_id_seq'::regclass);


--
-- Name: popenerimaanio id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.popenerimaanio ALTER COLUMN id SET DEFAULT nextval('public.popenerimaanio_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: staging_sync_table id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staging_sync_table ALTER COLUMN id SET DEFAULT nextval('public.staging_sync_table_id_seq'::regclass);


--
-- Name: stokkapal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stokkapal ALTER COLUMN id SET DEFAULT nextval('public.stokkapal_id_seq'::regclass);


--
-- Name: sync id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sync ALTER COLUMN id SET DEFAULT nextval('public.sync_id_seq'::regclass);


--
-- Name: sync_table id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sync_table ALTER COLUMN id SET DEFAULT nextval('public.sync_table_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: voyages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voyages ALTER COLUMN id SET DEFAULT nextval('public.voyages_id_seq'::regclass);


--
-- Name: workflow id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workflow ALTER COLUMN id SET DEFAULT nextval('public.workflow_id_seq'::regclass);


--
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.account VALUES (1, 'Beban Perlengkapan Kapal', 'Beban Perlengkapan Kapal', NULL, 51090106);
INSERT INTO public.account VALUES (2, 'Beban Bahan Bakar', 'Beban Bahan Bakar', NULL, 51040101);
INSERT INTO public.account VALUES (3, 'Beban Pelumas', 'Beban Pelumas', '2018-08-24 10:30:57.428909', 51040103);
INSERT INTO public.account VALUES (4, 'Beban Suku Cadang Kapal', 'Beban Suku Cadang Kapal', '2018-08-24 10:30:57.428909', 51090101);
INSERT INTO public.account VALUES (5, 'Beban Makanan Penumpang', 'Beban Makanan Penumpang', '2018-08-24 10:30:57.428909', 51020101);
INSERT INTO public.account VALUES (6, 'Beban Cetak Tiket/Dokumen', 'Beban Cetak Tiket/Dokumen', '2018-08-24 10:30:57.428909', 52030104);


--
-- Data for Name: activitylog; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: administratoradministrator; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.administratoradministrator VALUES (1, 1, 'root', '$2y$12$U5BsEAXwbNHZgvSZx.Bqre8aXUgzLzNShrJ.3hXQZMcFSQh/unDP2', 'admin@admin.id', 'Administrator', 'NULL', NULL);


--
-- Data for Name: administratorgroupaccess; Type: TABLE DATA; Schema: public; Owner: postgres
--


INSERT INTO public.administratorgroupaccess VALUES (32, 1, 34, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (33, 1, 30, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (34, 1, 46, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (35, 1, 16, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (36, 1, 12, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (37, 1, 60, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (38, 1, 36, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (39, 1, 2, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (40, 1, 40, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (41, 1, 38, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (42, 1, 59, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (43, 1, 58, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (44, 1, 54, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (45, 1, 52, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (46, 1, 51, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (47, 1, 50, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (48, 1, 49, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (49, 1, 48, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (50, 1, 10, '2018-09-26 09:49:25.853578');
INSERT INTO public.administratorgroupaccess VALUES (51, 1, 18, '2018-09-26 09:49:25.853578');


--
-- Data for Name: administratormenu; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.administratormenu VALUES (1, 'Master', '', 0, 'fa fa-industry', 'NULL', 1, 1, NULL);
INSERT INTO public.administratormenu VALUES (2, 'Activitiy Logs', 'administrator/activitylog', 42, 'fa fa-circle-o', 'NULL', 31, 1, NULL);
INSERT INTO public.administratormenu VALUES (10, 'Permintaan Barang', 'administrator/permintaanbarang', 44, 'fa fa-bullhorn', 'NULL', 51, 1, NULL);
INSERT INTO public.administratormenu VALUES (12, 'Application Parameter', 'administrator/applicationparameter', 1, 'fa fa-circle-o', 'NULL', 14, 1, NULL);
INSERT INTO public.administratormenu VALUES (14, 'Item Penerimaan Barang', 'administrator/itempenerimaanbarang', 44, 'fa fa-laptop', 'NULL', 52, 0, NULL);
INSERT INTO public.administratormenu VALUES (16, 'Kapal', 'administrator/kapal', 1, 'fa fa-bookmark-o', 'NULL', 11, 1, NULL);
INSERT INTO public.administratormenu VALUES (20, 'Pindah Stok', 'administrator/pindahstokkapal', 41, 'fa fa-circle-o', 'NULL', 23, 0, NULL);
INSERT INTO public.administratormenu VALUES (26, 'Penerimaan Barang', 'administrator/penerimaanbarang', 44, 'fa fa-gear', 'NULL', 53, 0, NULL);
INSERT INTO public.administratormenu VALUES (28, 'Item Permintaan Barang', 'administrator/itempermintaanbarang', 44, 'fa fa-laptop', 'NULL', 54, 0, NULL);
INSERT INTO public.administratormenu VALUES (32, 'Penyesuaian Stok', 'administrator/penyesuaianstok', 41, 'fa fa-laptop', 'NULL', 22, 0, NULL);
INSERT INTO public.administratormenu VALUES (36, 'Login Log', 'administrator/loginlog', 42, 'fa fa-industry', 'NULL', 32, 1, NULL);
INSERT INTO public.administratormenu VALUES (38, 'Roles', 'administrator/roles', 43, 'fa fa-laptop', 'NULL', 42, 1, NULL);
INSERT INTO public.administratormenu VALUES (40, 'Users', 'administrator/users', 43, 'fa fa-gear', 'NULL', 41, 1, NULL);
INSERT INTO public.administratormenu VALUES (42, 'Logs', '', 0, 'fa fa-industry', 'NULL', 3, 1, NULL);
INSERT INTO public.administratormenu VALUES (43, 'Management Access', '', 0, 'fa fa-users', 'NULL', 4, 1, NULL);
INSERT INTO public.administratormenu VALUES (44, 'Transactions', '', 0, 'fa fa-pie-chart', 'NULL', 5, 1, NULL);
INSERT INTO public.administratormenu VALUES (47, 'Ga Tau', '', 0, 'fa fa-book', 'NULL', 6, 1, NULL);
INSERT INTO public.administratormenu VALUES (48, 'Transfer IO', 'administrator/transferio', 44, 'fa fa-anchor', 'NULL', 61, 1, NULL);
INSERT INTO public.administratormenu VALUES (49, 'Pindah Stok Subinv', 'administrator/pindahsubinv', 44, 'fa fa-balance-scale', 'NULL', 64, 1, NULL);
INSERT INTO public.administratormenu VALUES (50, 'Penggunaan Barang', 'administrator/penggunaanbarang', 44, 'fa fa-automobile', 'NULL', 66, 1, NULL);
INSERT INTO public.administratormenu VALUES (51, 'Penggunaan Makanan', 'administrator/penggunaanmakanan', 44, 'fa fa-birthday-cake', 'NULL', 69, 1, NULL);
INSERT INTO public.administratormenu VALUES (52, 'PO Penerimaan', 'administrator/popenerimaan', 44, 'fa fa-bomb', 'NULL', 56, 1, NULL);
INSERT INTO public.administratormenu VALUES (53, 'Item PO Penerimaan', 'administrator/itempopenerimaan', 44, 'fa fa-gear', 'NULL', 57, 0, NULL);
INSERT INTO public.administratormenu VALUES (54, 'Penerimaan IO', 'administrator/popenerimaanio', 44, 'fa fa-binoculars', 'NULL', 62, 1, NULL);
INSERT INTO public.administratormenu VALUES (55, 'Item PO Penerimaan IO', 'administrator/itempopenerimaanio', 44, 'fa fa-gear', 'NULL', 57, 0, NULL);
INSERT INTO public.administratormenu VALUES (56, 'Penerimaan Barang IO', 'administrator/penerimaanbarangio', 44, 'fa fa-gear', 'NULL', 53, 0, NULL);
INSERT INTO public.administratormenu VALUES (57, 'Item Penerimaan Barang IO', 'administrator/itempenerimaanbarangio', 44, 'fa fa-laptop', 'NULL', 52, 0, NULL);
INSERT INTO public.administratormenu VALUES (58, 'Workflow', 'administrator/workflow', 44, 'fa fa-cab', 'NULL', 70, 1, NULL);
INSERT INTO public.administratormenu VALUES (59, 'Penerimaan Makanan', 'administrator/penerimaanmakanan', 44, 'fa fa-coffee', 'NULL', 68, 1, NULL);
INSERT INTO public.administratormenu VALUES (46, 'Items', 'administrator/item', 1, 'fa fa-gears', 'NULL', 12, 1, NULL);
INSERT INTO public.administratormenu VALUES (30, 'Sub-Inventory', 'administrator/lokasiitem', 1, 'fa fa-industry', 'NULL', 13, 1, NULL);
INSERT INTO public.administratormenu VALUES (34, 'Stok Kapal', 'administrator/stokkapal', 1, 'fa fa-pie-chart', 'NULL', 21, 1, NULL);
INSERT INTO public.administratormenu VALUES (41, 'Report', '', 0, 'fa fa-gear', 'NULL', 2, 1, NULL);
INSERT INTO public.administratormenu VALUES (18, 'Rekapitulasi Layanan Makan', 'administrator/rekapitulasimakan', 41, 'fa fa-bookmark-o', 'NULL', 24, 1, NULL);
INSERT INTO public.administratormenu VALUES (60, 'Sync Logs', 'administrator/sync', 42, 'fa fa-music', NULL, 33, 1, '2018-09-26 09:38:37.08756');


--
-- Data for Name: applicationparameter; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.applicationparameter VALUES (1, 'LAST_LOT_NUMBER', '5', '2018-09-28 08:54:57.557238');


--
-- Data for Name: approver; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: item; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: item_onhand; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: itempenerimaanbarang; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: itempenerimaanbarangio; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: itempenerimaanmakanan; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: itempenggunaanbarang; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: itempenggunaanmakanan; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: itempermintaanbarang; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: itempindahbarangio; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: itempindahbarangsubinv; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: itempopenerimaan; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: itempopenerimaanio; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: kapal; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: loginlog; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: logsynckapal; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: logsyncoracle; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: lokasiitem; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: lotnumber; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: penerimaanbarang; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: penerimaanbarangio; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: penerimaanmakanan; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: penggunaanbarang; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: penggunaanmakanan; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: permintaanbarang; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: pindahbarangio; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: pindahbarangsubinv; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: popenerimaan; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: popenerimaanio; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.roles VALUES (1, 'administrator', NULL, 177);


--
-- Data for Name: staging_sync_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.staging_sync_table VALUES (3, 'pelni_scm_pr_to_po_v
', 'popenerimaan', NULL, '2001-01-01 01:01:01');
INSERT INTO public.staging_sync_table VALUES (4, 'pelni_scm_po_lines_v', 'itempopenerimaan', NULL, '2001-01-01 01:01:01');
INSERT INTO public.staging_sync_table VALUES (2, 'pelni_scm_io_v
', 'kapal', NULL, '2001-01-01 01:01:01');
INSERT INTO public.staging_sync_table VALUES (5, 'pelni_iot_v', 'popenerimaanio', NULL, '2001-01-01 01:01:01');
INSERT INTO public.staging_sync_table VALUES (6, 'pelni_iot_v', 'itempopenerimaanio', NULL, '2001-01-01 01:01:01');
INSERT INTO public.staging_sync_table VALUES (7, 'pelni_voyage_v', 'voyages', NULL, '2001-01-01 01:01:01');
INSERT INTO public.staging_sync_table VALUES (8, 'pelni_scm_item_onhand_v', 'item_onhand', NULL, '2001-01-01 01:01:01');
INSERT INTO public.staging_sync_table VALUES (9, 'pelni_scm_subinv_v', 'lokasiitem', NULL, '2001-01-01 01:01:01');
INSERT INTO public.staging_sync_table VALUES (1, 'pelni_scm_items_v', 'item', NULL, '2018-09-19 00:00:00');


--
-- Data for Name: stg_pelni_iot_int; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: stg_pelni_item_onhand_int; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: stg_pelni_pr_int; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: stg_pelni_scm_misc_rcv_int; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: stg_pelni_scm_moi_int; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: stg_pelni_scm_mot_int; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: stg_pelni_scm_rcv_int; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: stg_pelni_scm_rcv_trx_int; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: stg_pelni_ship_int; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: stg_pelni_system_items_int; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: stg_pelni_wh_int; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: stokkapal; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: sync; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- Data for Name: sync_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sync_table VALUES (3, 'users', '2001-01-01 01:01:01');
INSERT INTO public.sync_table VALUES (6, 'administratorgroupaccess', '2001-01-01 01:01:01');
INSERT INTO public.sync_table VALUES (7, 'roles', '2001-01-01 01:01:01');
INSERT INTO public.sync_table VALUES (9, 'popenerimaanio', '2001-01-01 01:01:01');
INSERT INTO public.sync_table VALUES (4, 'lokasiitem', '2001-01-01 01:01:01');
INSERT INTO public.sync_table VALUES (1, 'item', '2001-01-01 01:01:01');
INSERT INTO public.sync_table VALUES (5, 'administratormenu
', '2001-01-01 01:01:01');
INSERT INTO public.sync_table VALUES (2, 'kapal', '2001-01-01 01:01:01');
INSERT INTO public.sync_table VALUES (8, 'popenerimaan', '2001-01-01 01:01:01');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (4, 'daniel', 1, 177, 'Daniel', '$2y$12$m23NJrMdhbY0/QMzsDMy7ONiGFCjPt60EktL/5KJPt2kNgmGgvG0K', '2018-09-14 09:32:04.611558', '', 'KAPAL', 'Pekerja', '1122334455');
INSERT INTO public.users VALUES (5, 'agung', 1, 177, 'agung', '$2y$12$KSfXn1EOpEpQgIqbh01KJuASYmRDmjmS3cWt.FD5b0qkvM6OKg6z.', '2018-09-14 09:33:38.612117', '', 'KAPAL', 'pekerja', '223344');
INSERT INTO public.users VALUES (3, 'daniel', 2, 177, 'daniel', '$2y$12$d9ntpXzLyAwjpTwb3/J9dexU7AAjBu2/EAqTXNDDRkDMt7fIgorHK', '2018-09-06 09:16:07.749226', '', 'KAPAL', 'pekerja', '12345');
INSERT INTO public.users VALUES (1, 'Administrator', 1, 177, 'sioado', '$2y$12$U5BsEAXwbNHZgvSZx.Bqre8aXUgzLzNShrJ.3hXQZMcFSQh/unDP2', NULL, '', 'KAPAL', 'Janang', '123.456.987.0');
INSERT INTO public.users VALUES (2, 'Seth Setiadha', 1, 177, 'sethsetiadha', '$2y$12$6W0cF7UXB23Xq7qP3CHco.fVYJPjlTqfUqJ5z2oNUSoVGdbxV8rzC', NULL, '', 'KAPAL', 'TK. Nahkoda', '23423');


--
-- Data for Name: voyages; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- Data for Name: workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_id_seq', 2, true);


--
-- Name: activitylog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.activitylog_id_seq', 80, true);


--
-- Name: administratoradministrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.administratoradministrator_id_seq', 1, false);


--
-- Name: administratorgroupaccess_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.administratorgroupaccess_id_seq', 51, true);


--
-- Name: administratormenu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.administratormenu_id_seq', 1, false);


--
-- Name: applicationparameter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.applicationparameter_id_seq', 1, true);


--
-- Name: approver_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.approver_id_seq', 1, false);


--
-- Name: item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.item_id_seq', 1, false);


--
-- Name: item_onhand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.item_onhand_id_seq', 1, false);


--
-- Name: itempenerimaanbarang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itempenerimaanbarang_id_seq', 23, true);


--
-- Name: itempenerimaanbarangio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itempenerimaanbarangio_id_seq', 6, true);


--
-- Name: itempenerimaanmakanan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itempenerimaanmakanan_id_seq', 9, true);


--
-- Name: itempenggunaanbarang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itempenggunaanbarang_id_seq', 21, true);


--
-- Name: itempenggunaanmakanan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itempenggunaanmakanan_id_seq', 6, true);


--
-- Name: itempermintaanbarang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itempermintaanbarang_id_seq', 27, true);


--
-- Name: itempindahbarangio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itempindahbarangio_id_seq', 30, true);


--
-- Name: itempindahbarangsubinv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itempindahbarangsubinv_id_seq', 4, true);


--
-- Name: itempopenerimaan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itempopenerimaan_id_seq', 2, true);


--
-- Name: itempopenerimaanio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itempopenerimaanio_id_seq', 2, true);


--
-- Name: kapal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kapal_id_seq', 1, false);


--
-- Name: loginlog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.loginlog_id_seq', 74, true);


--
-- Name: lokasiitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lokasiitem_id_seq', 4, true);


--
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notifications_id_seq', 1, false);


--
-- Name: penerimaanbarang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.penerimaanbarang_id_seq', 14, true);


--
-- Name: penerimaanbarangio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.penerimaanbarangio_id_seq', 6, true);


--
-- Name: penerimaanmakanan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.penerimaanmakanan_id_seq', 2, true);


--
-- Name: penggunaanbarang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.penggunaanbarang_id_seq', 13, true);


--
-- Name: penggunaanmakanan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.penggunaanmakanan_id_seq', 5, true);


--
-- Name: permintaanbarang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permintaanbarang_id_seq', 17, true);


--
-- Name: pindahbarangio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pindahbarangio_id_seq', 7, true);


--
-- Name: pindahbarangsubinv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pindahbarangsubinv_id_seq', 1, true);


--
-- Name: popenerimaan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.popenerimaan_id_seq', 1, true);


--
-- Name: popenerimaanio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.popenerimaanio_id_seq', 1, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 2, true);


--
-- Name: staging_sync_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.staging_sync_table_id_seq', 1, false);


--
-- Name: stokkapal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stokkapal_id_seq', 39, true);


--
-- Name: sync_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sync_id_seq', 35, true);


--
-- Name: sync_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sync_table_id_seq', 9, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- Name: voyages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.voyages_id_seq', 1, false);


--
-- Name: workflow_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.workflow_id_seq', 54, true);


--
-- Name: account PRIMARY; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT "PRIMARY" PRIMARY KEY (id);


--
-- Name: item_onhand item_onhand_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_onhand
    ADD CONSTRAINT item_onhand_pkey PRIMARY KEY ("ID");


--
-- Name: logsynckapal logsynckapal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logsynckapal
    ADD CONSTRAINT logsynckapal_pkey PRIMARY KEY ("ID");


--
-- Name: logsyncoracle logsyncoracle_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logsyncoracle
    ADD CONSTRAINT logsyncoracle_pkey PRIMARY KEY ("ID");


--
-- Name: staging_sync_table staging_sync_table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staging_sync_table
    ADD CONSTRAINT staging_sync_table_pkey PRIMARY KEY (id);


--
-- Name: sync sync_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sync
    ADD CONSTRAINT sync_pkey PRIMARY KEY (id);


--
-- Name: email_admin_UNIQUE; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "email_admin_UNIQUE" ON public.administratoradministrator USING btree (email);


--
-- Name: poNumber; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "poNumber" ON public.popenerimaan USING btree ("poNumber");


--
-- Name: receiptNumber; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "receiptNumber" ON public.penerimaanbarang USING btree ("receiptNumber");


--
-- Name: username_UNIQUE; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "username_UNIQUE" ON public.users USING btree (username);


--
-- Name: username_admin_UNIQUE; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "username_admin_UNIQUE" ON public.administratoradministrator USING btree (username);


--
-- Name: variableName_UNIQUE; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "variableName_UNIQUE" ON public.applicationparameter USING btree ("variableName");


--
-- PostgreSQL database dump complete
--

