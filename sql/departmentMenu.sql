SET NAMES 'utf8';
-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('部门管理', '2000', '1', 'department', 'mdm/department/index', 1, 0, 'C', '0', '0', 'mdm:department:list', '#', 'admin', sysdate(), '', null, '部门管理菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('部门管理查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'mdm:department:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('部门管理新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'mdm:department:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('部门管理修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'mdm:department:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('部门管理删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'mdm:department:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('部门管理导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'mdm:department:export',       '#', 'admin', sysdate(), '', null, '');