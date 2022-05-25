create table process_model_page_scheme
(
    id                    bigint auto_increment
        primary key,
    process_model_page_id bigint                   not null comment '节点页面ID',
    device                varchar(16) default 'pc' null comment 'H5/PAD/PC',
    field_id              bigint                   not null,
    field_name            varchar(64)              not null comment '字段名',
    field_label           varchar(64)              not null,
    order_no              int                      null comment '序号',
    span                  tinyint                  null comment '24栅格',
    writeable             tinyint     default 0    not null comment '0=no,1=yes',
    constraint process_node_page_uindex
        unique (process_model_page_id, device, field_name, order_no)
)
    comment '页面字段定义';

INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (150, 1, 'h5', 1, 'sub_finance', '子公司财务', 1, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (151, 1, 'h5', 2, 'sub_high_leader', '子公司高层', 2, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (152, 1, 'h5', 5, 'end_monthly', '是否月结调整', 3, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (153, 1, 'h5', 3, 'hq_high_leader', '总部高层', 4, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (154, 1, 'h5', 4, 'hq_finance', '总部财务', 5, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (155, 1, 'pad', 2, 'sub_high_leader', '子公司高层', 1, 12, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (156, 1, 'pad', 1, 'sub_finance', '子公司财务', 2, 12, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (157, 1, 'pad', 4, 'hq_finance', '总部财务', 3, 12, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (158, 1, 'pad', 3, 'hq_high_leader', '总部高层', 4, 12, 1);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (159, 1, 'pad', 5, 'end_monthly', '是否月结调整', 5, 24, 1);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (160, 1, 'pc', 2, 'sub_high_leader', '子公司高层', 1, 8, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (161, 1, 'pc', 3, 'hq_high_leader', '总部高层', 2, 8, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (162, 1, 'pc', 1, 'sub_finance', '子公司财务', 3, 8, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (163, 1, 'pc', 4, 'hq_finance', '总部财务', 4, 8, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (164, 1, 'pc', 5, 'end_monthly', '是否月结调整', 5, 8, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (285, 2, 'h5', 4, 'hq_finance', '总部财务', 1, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (286, 2, 'h5', 3, 'hq_high_leader', '总部高层', 2, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (287, 2, 'h5', 1, 'sub_finance', '子公司财务', 3, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (288, 2, 'h5', 2, 'sub_high_leader', '子公司高层', 4, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (289, 2, 'h5', 5, 'end_monthly', '是否月结调整', 5, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (290, 2, 'pad', 1, 'sub_finance', '子公司财务', 0, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (291, 2, 'pad', 2, 'sub_high_leader', '子公司高层', 1, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (292, 2, 'pad', 3, 'hq_high_leader', '总部高层', 2, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (293, 2, 'pad', 4, 'hq_finance', '总部财务', 3, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (294, 2, 'pad', 5, 'end_monthly', '是否月结调整', 4, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (295, 2, 'pc', 4, 'hq_finance', '总部财务', 1, 12, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (296, 2, 'pc', 3, 'hq_high_leader', '总部高层', 2, 12, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (297, 2, 'pc', 1, 'sub_finance', '子公司财务', 3, 24, 1);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (298, 2, 'pc', 2, 'sub_high_leader', '子公司高层', 4, 24, 1);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (299, 2, 'pc', 5, 'end_monthly', '是否月结调整', 5, 24, 1);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (330, 3, 'h5', 1, 'sub_finance', '子公司财务', 0, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (331, 3, 'h5', 2, 'sub_high_leader', '子公司高层', 1, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (332, 3, 'h5', 3, 'hq_high_leader', '总部高层', 2, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (333, 3, 'h5', 4, 'hq_finance', '总部财务', 3, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (334, 3, 'h5', 5, 'end_monthly', '是否月结调整', 4, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (335, 3, 'pad', 1, 'sub_finance', '子公司财务', 1, 12, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (336, 3, 'pad', 2, 'sub_high_leader', '子公司高层', 2, 12, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (337, 3, 'pad', 3, 'hq_high_leader', '总部高层', 3, 12, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (338, 3, 'pad', 4, 'hq_finance', '总部财务', 4, 12, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (339, 3, 'pad', 5, 'end_monthly', '是否月结调整', 5, 24, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (340, 3, 'pc', 1, 'sub_finance', '子公司财务', 1, 8, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (341, 3, 'pc', 2, 'sub_high_leader', '子公司高层', 2, 8, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (342, 3, 'pc', 3, 'hq_high_leader', '总部高层', 3, 8, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (343, 3, 'pc', 4, 'hq_finance', '总部财务', 4, 12, 0);
INSERT INTO van.process_model_page_scheme (id, process_model_page_id, device, field_id, field_name, field_label, order_no, span, writeable) VALUES (344, 3, 'pc', 5, 'end_monthly', '是否月结调整', 5, 12, 0);
