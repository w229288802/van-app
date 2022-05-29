create table process_model_node_page
(
    id                    bigint auto_increment
        primary key,
    process_key           varchar(64)                           not null,
    process_bpmn_id       bigint                                not null,
    node_id               varchar(64)                           null comment '节点ID',
    process_model_page_id bigint                                null comment 'seqFlow可以无需配置界面，只需要配置评论字段',
    page_width            varchar(32)                           null comment '页面总宽度',
    label_width           varchar(32)                           null comment '标签宽度',
    comment               tinyint     default 0                 null comment '0: 不需要备注, 1: 可选, 2: 必填',
    update_by             varchar(32) default 'admin'           not null,
    update_time           datetime    default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    create_time           datetime    default CURRENT_TIMESTAMP null,
    constraint page_bound_uindex
        unique (process_bpmn_id, node_id)
)
    comment '页面配置';

create index page_bound_uindex2
    on process_model_node_page (process_key, node_id);

INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (3, 'change_budget', 2, 'sid-F99CA3CA-785B-46CF-BB2B-8DB534AE3FAF', 1, '851px', '120px', 1, 'admin', '2022-05-19 22:51:06', '2022-05-17 22:45:42');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (5, 'change_budget', 2, 'sid-6EAD1BDB-F5EE-4F18-ACD2-88719DF05575', 1, '851px', '120px', 0, 'admin', '2022-05-17 22:49:25', '2022-05-17 22:49:25');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (6, 'change_budget', 2, 'Event_0cfphnc', 4, '851px', '120px', 1, 'admin', '2022-05-24 21:12:01', '2022-05-18 20:08:39');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (7, 'change_budget', 2, 'sid-7D7875DA-09BC-4720-ABC6-398E6B62790F', 4, '851px', '120px', 1, 'admin', '2022-05-24 21:11:54', '2022-05-18 20:08:57');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (8, 'change_budget', 2, 'sid-1F5A6456-402F-4760-9E14-FF44A176F7A5', 1, '851px', '120px', 1, 'admin', '2022-05-24 21:13:35', '2022-05-19 08:53:56');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (9, 'change_budget', 2, 'sid-C49483FE-9DD9-4DDD-A341-7EAFCA809FEC', 4, '851px', '120px', 1, 'admin', '2022-05-24 21:11:43', '2022-05-19 08:54:00');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (10, 'change_budget', 2, 'sid-85B02690-DD15-4842-8A02-8B3D7F960041', 4, '851px', '120px', 1, 'admin', '2022-05-24 21:11:46', '2022-05-19 08:54:03');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (11, 'change_budget', 2, 'sid-99757E3C-BB86-46AC-9328-64C7362EB7F3', 4, '851px', '120px', 1, 'admin', '2022-05-24 21:11:49', '2022-05-19 08:54:07');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (12, 'change_budget', 2, 'sid-E7C3221C-7839-459D-A54C-DEDD5852329C', 4, '851px', '120px', 1, 'admin', '2022-05-24 21:11:29', '2022-05-19 08:54:09');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (13, 'change_budget', 1, 'Task_04qlgi8', 1, '851px', '120px', 1, 'admin', '2022-05-22 21:12:02', '2022-05-22 21:07:30');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (16, 'change_budget', 1, 'Task_1bqt7q4', 4, '850px', '120px', 0, 'admin', '2022-05-22 21:14:44', '2022-05-22 21:14:37');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (18, 'change_budget', 3, 'sid-ACD912CD-5F25-459B-8683-B63991F2D6EC', 5, '851px', '120px', 1, 'admin', '2022-05-24 21:04:40', '2022-05-24 21:04:40');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (32, 'change_budget', 3, 'sid-1F5A6456-402F-4760-9E14-FF44A176F7A5', 1, '851px', '120px', 1, 'admin', '2022-05-24 21:15:30', '2022-05-24 21:15:30');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (33, 'change_budget', 3, 'sid-E7C3221C-7839-459D-A54C-DEDD5852329C', 4, '851px', '120px', 1, 'admin', '2022-05-24 21:15:41', '2022-05-24 21:15:41');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (34, 'change_budget', 3, 'sid-C49483FE-9DD9-4DDD-A341-7EAFCA809FEC', 4, '851px', '120px', 1, 'admin', '2022-05-24 21:15:44', '2022-05-24 21:15:44');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (35, 'change_budget', 3, 'sid-85B02690-DD15-4842-8A02-8B3D7F960041', 4, '851px', '120px', 1, 'admin', '2022-05-24 21:15:47', '2022-05-24 21:15:47');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (36, 'change_budget', 3, 'sid-99757E3C-BB86-46AC-9328-64C7362EB7F3', 4, '851px', '120px', 1, 'admin', '2022-05-24 21:15:52', '2022-05-24 21:15:52');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (37, 'change_budget', 3, 'sid-7D7875DA-09BC-4720-ABC6-398E6B62790F', 4, '851px', '120px', 1, 'admin', '2022-05-24 21:15:56', '2022-05-24 21:15:56');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (38, 'change_budget', 3, 'Event_0cfphnc', 4, '851px', '120px', 1, 'admin', '2022-05-24 21:16:00', '2022-05-24 21:16:00');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (39, 'change_budget', 3, 'sid-F99CA3CA-785B-46CF-BB2B-8DB534AE3FAF', 1, '851px', '120px', 1, 'admin', '2022-05-24 21:22:26', '2022-05-24 21:22:26');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (40, 'change_budget', 0, '$$START_PAGE_KEY$$', 6, '852px', '120px', null, 'admin', '2022-05-29 16:05:49', '2022-05-25 21:31:44');
INSERT INTO van.process_model_node_page (id, process_key, process_bpmn_id, node_id, process_model_page_id, page_width, label_width, comment, update_by, update_time, create_time) VALUES (43, 'change_budget', 3, 'sid-4889166D-2091-42A2-83CC-EACE1250842C', 1, '851px', '120px', 1, 'admin', '2022-05-29 16:14:13', '2022-05-29 16:14:13');
