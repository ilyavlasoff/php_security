--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-2.pgdg18.04+1)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-2.pgdg18.04+1)

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

--
-- Name: articles; Type: TABLE; Schema: public; Owner: government
--

CREATE TABLE public.articles (
    id integer NOT NULL,
    article text
);


ALTER TABLE public.articles OWNER TO government;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: government
--

CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO government;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: government
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: government
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: government
--

COPY public.articles (id, article) FROM stdin;
3	fjkhsdjkfsdlfjkshdfjahsdfjkhsdjkf
1	<div class="content-text">\n\t\t\t\t<p></p><p style="text-align: justify;">\n\tВ Государственную Думу поступил законопроект «<a name="news_linker" href="http://asozd.duma.gov.ru/main.nsf/(Spravka)?OpenAgent&RN=366426-7&11" class="external">О внесении изменений в статьи 12 и 25 Федерального закона «Об основах социального обслуживания граждан в Российской Федерации</a>».\n</p>\n<p style="text-align: justify;">\n</p>\n<p style="text-align: justify;">\n\t Его авторы - депутаты <a name="news_linker" href="/structure/deputies/1756687/" id="deputy_1756687" class="deputy-popup">Владимир Жириновский<span class="deputy-popup-content"><span class="dpc-box"><span class="dpc-name"><i>Жириновский</i><br>Владимир Вольфович</span><span class="dpc-fraction">Фракция ЛДПР</span></span>\n          <img src="/upload/iblock/f30/f30995e704f200a2f8f9b8a6d922bb0b.jpg" width="36" height="50"><span class="dpc-shad"><span></span></span></span></a>, <a name="news_linker" href="/structure/deputies/1756640/" id="deputy_1756640" class="deputy-popup">Ярослав Нилов<span class="deputy-popup-content"><span class="dpc-box"><span class="dpc-name"><i>Нилов</i><br>Ярослав Евгеньевич</span><span class="dpc-fraction">Фракция ЛДПР</span></span>\n          <img src="/upload/iblock/56d/56d0aa647bf2eb3855fd2f37a9273758.jpg" width="36" height="50"><span class="dpc-shad"><span></span></span></span></a> и член Совета Федерации Елена Афанасьева - предлагают для усиления контроля за деятельностью негосударственных домов престарелых и инвалидов в обязательном порядке включать такие организации в реестр поставщиков социальных услуг.\n</p>\n<p style="text-align: justify;">\n</p>\n<p style="text-align: justify;">\n\t В настоящее время указанный реестр формируется на добровольной основе и частные стационары предпочитают в него не входить, чтобы избежать проверок, в том числе на соответствие требованиям безопасности.\n</p>\n<p style="text-align: justify;">\n</p>\n<p style="text-align: justify;">\n\t «Недопустимо, когда о существовании таких организаций мы узнаем из сводок происшествий», - отметил <a name="news_linker" href="/structure/deputies/1756640/" id="deputy_1756640" class="deputy-popup">Ярослав Нилов<span class="deputy-popup-content"><span class="dpc-box"><span class="dpc-name"><i>Нилов</i><br>Ярослав Евгеньевич</span><span class="dpc-fraction">Фракция ЛДПР</span></span>\n          <img src="/upload/iblock/56d/56d0aa647bf2eb3855fd2f37a9273758.jpg" width="36" height="50"><span class="dpc-shad"><span></span></span></span></a>.\n</p>\n<p style="text-align: justify;">\n</p>\n<p style="text-align: justify;">\n\t По его словам, предложенная норма позволит бороться с мошенниками и недобросовестными предпринимателями, оказывающими социальные услуги в стационарах для престарелых и инвалидов.\n</p>\n<p style="text-align: justify;">\n</p>\n<p style="text-align: justify;">\n\t В то же время Я.Нилов сомневается в целесообразности введения лицензирования указанного вида деятельности.\n</p>\n<p style="text-align: justify;">\n\t «Сложный вопрос. Надо понимать, что конкретно лицензировать. Пока такого понимания нет», - сказал депутат.\n</p> \t\t<div class="signature-news">\n\t\t\t<div class="signature-news-date">18 января 2018 года</div>\n\t\t\t<div class="signature-news-text">   </div>\n\t</div>\n</div>
2	<div class="content-text">\n\t\t\t\t<p>\n</p><p>16 мая 2012 года в первом чтении принят <a href="http://ria.ru/defense_safety/20120306/585890377.html" target="_blank">правительственный законопроект "</a><a name="news_linker" href="http://asozd.duma.gov.ru/main.nsf/(Spravka)?OpenAgent&RN=31990-6&2" class="external">О государственном оборонном заказе</a>"<b>. </b></p>\n\n<p>В связи с этим председатель Комитета по обороне <b><a name="news_linker" href="/structure/deputies/131370/" id="deputy_131370" class="deputy-popup">Владимир Комоедов</a></b> отметил: </p>\n\n<p>«Этот законопроект архиважный для обороноспособности нашего государства, его концепция заключается в создании правовых основ решения проблем в сфере формирования, размещения и исполнения гособоронзаказа. Законопроектом структурированы и детализированы правовые нормы, регламентирующие процесс формирования, утверждения и исполнения государственного оборонного заказа». </p>\n\n<p>Кроме того, он подчеркнул, что в законопроекте определено понятие «основные показатели государственного оборонного заказа». </p>\n\n<p>«Федеральный закон от 1995 года №213-ФЗ о гособоронзаказе, уже давно устарел и требует модернизации. Несмотря на положительные стороны, в законопроекте есть над чем работать. С момента внесения законопроекта в Комитет по обороне поступило большое количество замечаний и предложений, которые будут учтены при подготовке законопроекта ко второму чтению. Впереди у нас сложная и ответственная работа», - отметил В. Комоедов. </p>\n \t\t<div class="signature-news">\n\t\t\t<div class="signature-news-date">16 мая 2012 года</div>\n\t\t\t<div class="signature-news-text">   </div>\n\t</div>\n</div>
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: government
--

SELECT pg_catalog.setval('public.articles_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

