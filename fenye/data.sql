
-- 创建数据库
create database `project7`;

-- 选择数据库
use `project7`;

-- 创建新闻表
create table `books`(
  `id` int not null primary key auto_increment,
  `title` varchar(100) not null comment '标题',
  `pic` varchar(255) not null  comment '封面图'
)charset=utf8;

-- 向新闻表中插入数据
insert into `books` values
(null, 'Spring Web Services 2.2.4 发布', 'img/1.jpg'),
(null, 'Firefox 43 发布，增强隐私浏览', 'img/2.jpg'),
(null, 'MongoDB 3.0.8 发布', 'img/3.gif'),
(null, 'PureScript 0.8.0 rc1 发布，静态类型语言', 'img/4.jpg'),
(null, 'Plotly.js v1.2.1 发布，JavaScript 图表', 'img/5.jpg'),
(null, 'Foundation 6.0.6 发布，Web 的 UI 框架', 'img/6.jpg'),
(null, 'Elasticsearch 1.7.4 发布，分布式搜索引擎', 'img/7.jpg'),
(null, 'Google Chrome 47.0.2526.106 发布', 'img/8.jpg'),
(null, 'JetBrains 系更换全新 LOGO，开发驱动力', 'img/9.jpg'),
(null, '加班要么是你笨，要么是工作安排不合理', 'img/10.jpg'),
(null, 'Google 发布 Angular 2 Beta', 'img/11.jpg'),
(null, '35 岁程序员的独家面试经历', 'img/12.jpg'),
(null, 'Windows 10 Redstone 首版完工：彻底抛弃 Win 7', 'img/13.jpg'),
(null, '.NET 开源一年之后，社区的贡献占几成？', 'img/14.jpg'),
(null, 'ZUI 1.3 发布，性感无比的 HTML5 前端 UI 框架', 'img/15.jpg'),
(null, 'MingGeJs 1.6 升级，挑战 JQUERY', 'img/16.jpg'),
(null, 'Elasticsearch 1.7.4 发布，分布式搜索引擎', 'img/17.jpg'),
(null, 'Parsix GNU/Linux 8.5 Test 2 发布', 'img/18.jpg'),
(null, 'KDE 发布 Plasma 5.5.1，bug 修复版本', 'img/1.jpg'),
(null, 'Apache Solr 5.4.0 参考指南发布', 'img/2.jpg'),
(null, 'GitLab 8.3.0 rc1 发布，代码托管平台', 'img/3.jpg'),
(null, 'BIND 9.10.3-P2 发布，DNS服务器软件', 'img/4.jpg');
